uint64_t InCallControlsMode.allowsHiding.getter(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (a1 >> 5)
  {
    if (v1 == 6)
    {
      if (a1 != 192)
      {
        return 0;
      }
    }

    else if (v1 != 4 || a1 != 129)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t InCallControlsMode.wantsStagingBehavior.getter(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      if (a1)
      {
        return 0;
      }
    }

    else if (v1 != 3 || a1 != 96)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t InCallControlsMode.supportsShareMenuButton.getter(unsigned __int8 a1)
{
  v1 = 1;
  switch(a1 >> 5)
  {
    case 1:
      v1 = a1 ^ 1;
      break;
    case 2:
    case 4:
    case 5:
    case 6:
      v1 = 0;
      break;
    case 3:
      v1 = a1 == 96;
      break;
    default:
      return v1 & 1;
  }

  return v1 & 1;
}

uint64_t getEnumTagSinglePayload for InCallControlsMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7A)
  {
    if (a2 + 134 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 134) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 135;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v5 >= 0x79)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for InCallControlsMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 134 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 134) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x79)
  {
    v6 = ((a2 - 122) >> 8) + 1;
    *result = a2 - 122;
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
          *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for InCallControlsMode(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x5F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 1 | (2 * (v1 >> 5))) - 3;
  }
}

_BYTE *destructiveInjectEnumTag for InCallControlsMode(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    LOBYTE(v2) = *result & 1 | (32 * a2);
  }

  else
  {
    v2 = ((a2 - 3) & 1 | (32 * ((a2 - 3) >> 1))) + 96;
  }

  *result = v2;
  return result;
}

uint64_t ConversationControlsShareCardHandle.__allocating_init()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D42A0]);
  v1 = @nonobjc SBSRemoteAlertDefinition.init(serviceName:viewControllerClassName:)(0xD000000000000017, 0x80000001BC506380, 0xD000000000000030, 0x80000001BC525320);
  v2 = [objc_opt_self() newHandleWithDefinition:v1 configurationContext:0];

  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t ConversationControlsShareCardHandle.__allocating_init(handle:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ConversationControlsShareCardHandle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(void *a1, void *a2)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationKit);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x1E69E7D40];
  if (v8)
  {
    v10 = a2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v168[0] = v12;
    *v11 = 136315138;
    (*((*v9 & *v5) + 0x928))();
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v168);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[HUDAssets] defaultHUD: mode=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_27();
    a2 = v10;
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_74_11();
  v17 = (*(v16 + 2344))();
  v18 = v17;
  v19 = v17 >> 5;
  if (v19 != 1)
  {
    if (v19 == 2)
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_33();
        *v39 = 0;
        _os_log_impl(&dword_1BBC58000, v37, v38, "[HUDAssets] defaultHUD: notApproved", v39, 2u);
        OUTLINED_FUNCTION_27();
      }

      v40 = [objc_opt_self() conversationKit];
      if (v18)
      {
        v41 = 0xD000000000000014;
        v42 = 0x80000001BC5111A0;
      }

      else
      {
        OUTLINED_FUNCTION_29_3();
        v41 = OUTLINED_FUNCTION_69_11();
        v42 = 0xE700000000000000;
      }

      v77.super.isa = v40;
      OUTLINED_FUNCTION_17_0(v41, v42, 0x61737265766E6F43, 0xEF74694B6E6F6974, v77);

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v35 = OUTLINED_FUNCTION_46();
      goto LABEL_34;
    }

    if (v19 == 3 && v17 == 96)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v21))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_132();
        _os_log_impl(v22, v23, v24, v25, v26, 2u);
        OUTLINED_FUNCTION_27();
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v27 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_69_11();
      OUTLINED_FUNCTION_5_5();
      v28.super.isa = v27;
      v32 = OUTLINED_FUNCTION_17_0(v29, 0xE700000000000000, v30, v31, v28);
      v34 = v33;

      v35 = v32;
      v36 = v34;
LABEL_34:
      NSAttributedString.__allocating_init(string:)(*&v35);
LABEL_81:
      OUTLINED_FUNCTION_77_13();
LABEL_82:
      OUTLINED_FUNCTION_44_0();
      return;
    }

LABEL_18:
    v167 = a2;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v44))
    {
      v45 = OUTLINED_FUNCTION_33();
      *v45 = 0;
      _os_log_impl(&dword_1BBC58000, v43, v44, "[HUDAssets] defaultHUD: default case", v45, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_74_11();
    v47 = (*(v46 + 672))();
    v49 = v48;
    swift_getObjectType();
    (*(v49 + 48))(v168);
    v50 = ConversationControlsHelper.badge(forCall:)(v168);
    __swift_destroy_boxed_opaque_existential_1(v168);
    if (ConversationControlsHelper.activityNameAndImage(controlsManager:)(v5))
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v52))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_132();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_27();
      }

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_77_13();
      goto LABEL_82;
    }

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v59))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_54_21();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      OUTLINED_FUNCTION_27();
    }

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v66))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_54_21();
      _os_log_impl(v67, v68, v69, v70, v71, 2u);
      OUTLINED_FUNCTION_27();
    }

    v72 = *(v49 + 208);
    v73 = OUTLINED_FUNCTION_16_72();
    v165 = v72;
    if (v72(v73) == 1)
    {
      if ([v167 state] == 3 && (v74 = OUTLINED_FUNCTION_16_72(), (v75(v74) & 1) != 0))
      {
        OUTLINED_FUNCTION_74_11();
        v166 = (*(v76 + 2360))() ^ 1;
      }

      else
      {
        LOBYTE(v166) = 0;
      }
    }

    else
    {
      LOBYTE(v166) = 0;
    }

    v78 = OUTLINED_FUNCTION_16_72();
    v164 = v72(v78) != 5 && (v79 = OUTLINED_FUNCTION_16_72(), v72(v79) != 6) && [v167 state] != 4;
    if ([v167 isOneToOneModeEnabled] & 1) == 0 && (v103 = OUTLINED_FUNCTION_16_72(), (v104(v103)) && (objc_msgSend(v167, sel_state) == 2 || objc_msgSend(v167, sel_state) == 3) && (v105 = OUTLINED_FUNCTION_16_72(), v72(v105) != 1) && (v106 = OUTLINED_FUNCTION_16_72(), (v107(v106)))
    {
      v108 = [v167 activeRemoteParticipants];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = specialized Set.count.getter();

      v110 = v109 != 0;
    }

    else
    {
      v110 = 1;
    }

    v163 = v110;
    if ([v167 isOneToOneModeEnabled])
    {
      v111 = OUTLINED_FUNCTION_16_72();
      v113 = v112(v111);
    }

    else
    {
      v113 = 0;
    }

    v114 = OUTLINED_FUNCTION_16_72();
    if ((v115(v114) & 1) == 0 && (OUTLINED_FUNCTION_74_11(), ((*(v116 + 2360))() & 1) == 0) && ([v167 state] != 2) | v113 & 1 && ((v117 = OUTLINED_FUNCTION_16_72(), v165(v117) != 3) || (objc_msgSend(v167, sel_isOneToOneModeEnabled) & 1) != 0 || objc_msgSend(v167, sel_letMeInRequestState)) && objc_msgSend(v167, sel_state))
    {
      if (!((static Platform.current.getter() != 2) | v166 & 1))
      {
LABEL_69:
        v118 = v164 & v163;
LABEL_72:
        v119 = v167;
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 67109376;
          *(v122 + 4) = v166 & 1;
          *(v122 + 8) = 1024;
          *(v122 + 10) = v118;
          OUTLINED_FUNCTION_54_21();
          _os_log_impl(v123, v124, v125, v126, v127, 0xEu);
          v119 = v167;
          OUTLINED_FUNCTION_27();
        }

        v128 = ConversationControlsManager.isOneToOneConversation.getter();
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        v131 = OUTLINED_FUNCTION_18_0(v130);
        if (v128)
        {
          if (v131)
          {
            v132 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_39_2(v132);
            OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v133, v130, "[HUDAssets] defaultHUD: oneToOne");
            OUTLINED_FUNCTION_27();
          }

          ConversationControlsStringProvider.individualCallSubtitle(conversation:call:isConnecting:)(v119, v47, v49, v118);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_77_13();
          goto LABEL_82;
        }

        if (v131)
        {
          v134 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v134);
          OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v135, v130, "[HUDAssets] defaultHUD: group call");
          OUTLINED_FUNCTION_27();
        }

        ConversationControlsStringProvider.groupCallSubtitle(conversation:isConnecting:)(v119, v118);
        swift_unknownObjectRelease();

        goto LABEL_81;
      }
    }

    else if ((v166 & 1) == 0)
    {
      goto LABEL_69;
    }

    v118 = 0;
    goto LABEL_72;
  }

  if ((v17 & 1) == 0 || [a2 letMeInRequestState] == 3)
  {
    goto LABEL_18;
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v81))
  {
    v82 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v82);
    OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v83, v81, "[HUDAssets] defaultHUD: staging mode");
    OUTLINED_FUNCTION_27();
  }

  v84 = [a2 pendingMembers];
  OUTLINED_FUNCTION_41();
  v88 = type metadata accessor for NSObject(v85, v86, v87);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v89, v90, v91);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v92 = specialized Set.count.getter();

  v93 = [a2 localParticipantAssociation];
  if (!v93 || (v93, [a2 state] != 1))
  {
    v136 = [a2 activeRemoteParticipants];
    v96 = 0x1E69D8B90;
    OUTLINED_FUNCTION_41();
    v140 = type metadata accessor for NSObject(v137, v138, v139);
    OUTLINED_FUNCTION_41();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(v141, v142, v143);
    v144 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v145 = specialized Set.count.getter();

    if (v145 || v92 < 1)
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for shared);
      }

      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_10_42();
      v92 = static Features.shared;
      v149 = Features.isICUIRedesignEnabled.getter();
      v150 = [objc_opt_self() conversationKit];
      v151 = "STAGING_AREA_FACETIME";
      if (v149)
      {
        v152 = 0xD00000000000001ALL;
      }

      else
      {
        v151 = "ionControlsShareCardHandle";
        v152 = 0xD000000000000015;
      }

      v96 = 0xE000000000000000;
      v153.super.isa = v150;
      OUTLINED_FUNCTION_17_0(v152, v151 | 0x8000000000000000, v140, v144, v153);

      if (Features.isICUIRedesignEnabled.getter())
      {
        v92 = 0;
      }

      else
      {
        v154 = [objc_opt_self() conversationKit];
        v155.super.isa = v154;
        OUTLINED_FUNCTION_17_0(0xD000000000000015, 0x80000001BC5253A0, 0x61737265766E6F43, v144, v155);
        OUTLINED_FUNCTION_175_0();
      }
    }

    else
    {
      String.localizedConversationControls.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v146 = swift_allocObject();
      v147 = MEMORY[0x1E69E6530];
      *(v146 + 16) = xmmword_1BC4BA940;
      v148 = MEMORY[0x1E69E65A8];
      *(v146 + 56) = v147;
      *(v146 + 64) = v148;
      *(v146 + 32) = v92;
      OUTLINED_FUNCTION_44_0();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_175_0();

      OUTLINED_FUNCTION_77_13();
    }

    goto LABEL_96;
  }

  v94 = MEMORY[0x1BFB209B0](0xD000000000000011, 0x80000001BC501510);
  v95 = TUStringKeyForProduct();

  if (v95)
  {
    v96 = 0xEF74694B6E6F6974;
    OUTLINED_FUNCTION_10_42();
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = objc_opt_self();
    v101 = [v100 conversationKit];
    OUTLINED_FUNCTION_29_3();
    v102.super.isa = v101;
    OUTLINED_FUNCTION_17_0(v97, v99, v88, 0xEF74694B6E6F6974, v102);

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v92 = 0;
      v96 = 0xE000000000000000;
LABEL_96:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v162._countAndFlagsBits = v92;
      v162._object = v96;
      NSAttributedString.__allocating_init(string:)(v162);
      goto LABEL_82;
    }

    v156 = MEMORY[0x1BFB209B0](0xD000000000000011, 0x80000001BC501510);
    v92 = TUStringKeyForProduct();

    if (v92)
    {
      v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v159 = v158;

      v160 = [v100 conversationKit];
      OUTLINED_FUNCTION_29_3();
      v161.super.isa = v160;
      OUTLINED_FUNCTION_17_0(v157, v159, v88, 0xEF74694B6E6F6974, v161);
      OUTLINED_FUNCTION_175_0();

      goto LABEL_96;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *ConversationControlsHelper.buttonShelfActions(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - v15;
  v17 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x380))(v14);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    swift_beginAccess();
    if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
    {
      if (one-time initialization token for avLessLeaveConfirmationActions != -1)
      {
        swift_once();
      }

      v19 = static ConversationControlsAction.avLessLeaveConfirmationActions;

      result = static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v66);
      v22 = v66[0];
      v21 = v66[1];
      v23 = v67 | 0x80;
      goto LABEL_42;
    }

    v62 = v12;
    *&v66[0] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    v29 = *(v5 + 72);
    v30 = *(v5 + 80);
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_76_8(v28, xmmword_1BC4BAA20);
    swift_storeEnumTagMultiPayload();
    *(((v30 + 32) & ~v30) + v29) = 1;
    swift_storeEnumTagMultiPayload();
    v63 = v30;
  }

  else
  {
    v62 = v12;
    *&v66[0] = MEMORY[0x1E69E7CC0];
    v24 = [objc_opt_self() currentDevice];
    v25 = [v24 userInterfaceIdiom];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    v26 = *(v5 + 72);
    v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v63 = *(v5 + 80);
    v28 = swift_allocObject();
    if (v25 == 5)
    {
      *(v28 + 16) = xmmword_1BC4BAA20;
      *(v28 + v27) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_76_8(v28, xmmword_1BC4BB980);
      swift_storeEnumTagMultiPayload();
      *(v27 + v26) = 0;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  specialized Array.append<A>(contentsOf:)(v28);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  v31 = v9;
  if (v17 & 1 | ((Features.isMoreMenuEnabled.getter() & 1) == 0))
  {
    v32 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x928))();
    switch(v32 >> 5)
    {
      case 1:
        if ((v32 & 1) == 0)
        {
          goto LABEL_23;
        }

        break;
      case 2:
      case 4:
      case 5:
      case 6:
        break;
      case 3:
        if (v32 == 96)
        {
          goto LABEL_23;
        }

        break;
      default:
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v33 = *&v66[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_38_40();
          v33 = v59;
        }

        v38 = *(v33 + 16);
        if (v38 >= *(v33 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v33 = v60;
        }

        *(v33 + 16) = v38 + 1;
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_14_77();
        v37 = v62;
        goto LABEL_28;
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v33 = *&v66[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_38_40();
      v33 = v57;
    }

    v34 = *(v33 + 16);
    if (v34 >= *(v33 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v33 = v58;
    }

    *(v33 + 16) = v34 + 1;
    OUTLINED_FUNCTION_40_3();
    OUTLINED_FUNCTION_14_77();
    v37 = v16;
LABEL_28:
    outlined init with take of ConversationControlsAction(v37, v35, v36);
    *&v66[0] = v33;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, &static Logger.conversationControls);
  v40 = a1;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v65 = v44;
    *v43 = 136315138;
    v45 = (*((*MEMORY[0x1E69E7D40] & *v40) + 0x2C0))();
    if (v45)
    {
      v46 = v45;
      v47 = [v45 state];

      v64 = v47;
      type metadata accessor for TUConversationState(0);
      v48 = String.init<A>(reflecting:)();
      v50 = v49;
    }

    else
    {
      v50 = 0xE300000000000000;
      v48 = 7104878;
    }

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v65);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_1BBC58000, v41, v42, "ConversationControlsRecipeGenerator: buttonShelfActions conversationState:%s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  static ConversationControlsAction.primaryCallAction(controlsManager:location:)();
  v19 = *&v66[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_40();
    v19 = v55;
  }

  v52 = *(v19 + 16);
  if (v52 >= *(v19 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v19 = v56;
  }

  *(v19 + 16) = v52 + 1;
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_14_77();
  result = outlined init with take of ConversationControlsAction(v31, v53, v54);
  v21 = xmmword_1BC4B6480;
  v22 = 0uLL;
  v23 = -127;
LABEL_42:
  *a2 = v19;
  *(a2 + 8) = v22;
  *(a2 + 24) = v21;
  *(a2 + 40) = v23;
  return result;
}

id ConversationControlsHelper.badge(forCall:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_44_0();
  dispatch thunk of BasicCall.underlyingObject.getter();
  v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  if (!OUTLINED_FUNCTION_83_9(v1))
  {
    return 0;
  }

  v2 = [v8 isRecording];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v3 = @nonobjc UIImage.__allocating_init(systemName:)(0x632E64726F636572, 0xED0000656C637269);
  if (v3)
  {
    v4 = [objc_opt_self() systemWhiteColor];
    v5 = [v3 imageWithTintColor:v4 renderingMode:1];

    v3 = UIImage.withPadding(_:)(3.0);
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  return v6;
}

uint64_t ConversationControlsHelper.assetsForCallHUD(controlsManager:)(void *a1)
{
  if (ConversationControlsHelper.activityNameAndImage(controlsManager:)(a1))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.conversationKit);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v3))
    {
      v4 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v4);
      OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v5, v3, "[HUDAssets] callHUD: found activity");
LABEL_10:
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationKit);
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v7))
    {
      v8 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v8);
      OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v9, v7, "[HUDAssets] callHUD: no activity");
      goto LABEL_10;
    }
  }

  return OUTLINED_FUNCTION_44_0();
}

id ConversationControlsHelper.badgeBackgroundColor(forCall:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_44_0();
  dispatch thunk of BasicCall.underlyingObject.getter();
  v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  if (OUTLINED_FUNCTION_83_9(v1) && (v2 = [v6 isRecording], v6, (v2 & 1) != 0))
  {
    v3 = &selRef_systemRedColor;
  }

  else
  {
    v3 = &selRef_clearColor;
  }

  v4 = [objc_opt_self() *v3];

  return v4;
}

NSAttributedString ConversationControlsHelper.unauthorizedParticipantAssets(controlsMode:conversation:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_28_4();
    if (v3 & 0xE0) == 0x40 && (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BC4BAC30;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
      v5 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      v6.super.isa = v5;
      v7 = OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC5111A0, 0x61737265766E6F43, v2, v6);
      v9 = v8;

      v10._countAndFlagsBits = v7;
      v10._object = v9;
      *(v4 + 32) = NSAttributedString.__allocating_init(string:)(v10);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v11 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    v12.super.isa = v11;
    v13 = OUTLINED_FUNCTION_17_0(0x454D495445434146, 0xE800000000000000, 0x61737265766E6F43, v2, v12);
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    return NSAttributedString.__allocating_init(string:)(v16);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Logger.conversationControls);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v20))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_132();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_27();
    }

    return 0;
  }
}

id ConversationControlsHelper.handoffBadgeImage(conversation:)(void *a1)
{
  result = [a1 resolvedAudioVideoMode];
  if (result)
  {
    if (result == 2 || result == 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = static UIImageView.appIcon(for:)(v3, v4);

      return v5;
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, &static Logger.conversationControls);
      v7 = a1;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        [v7 resolvedAudioVideoMode];
        v12 = String.init<A>(reflecting:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

        *(v10 + 4) = v14;
        OUTLINED_FUNCTION_132();
        _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      return 0;
    }
  }

  return result;
}

Class ConversationControlsHelper.activityNameAndImage(controlsManager:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v161 = v146 - v3;
  v164 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v153 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v157 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v158 = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v146 - v12;
  v152 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v163 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v162 = v16 - v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v149 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v146 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  OUTLINED_FUNCTION_17();
  v150 = v24 - v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v148 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v151 = v29;
  OUTLINED_FUNCTION_33_1();
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v154 = v146 - v32;
  v33 = MEMORY[0x1E69E7D40];
  v34 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v35 = (v34)(v31);
  v37 = v36;
  ObjectType = swift_getObjectType();
  (*(v37 + 48))(v166, ObjectType, v37);
  v39 = ConversationControlsHelper.badge(forCall:)(v166);
  v40 = __swift_destroy_boxed_opaque_existential_1(v166);
  (*((*v33 & *a1) + 0x980))(v166, v40);
  if (!*(&v166[1] + 1))
  {
    swift_unknownObjectRelease();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v166, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    return 0;
  }

  v155 = v35;
  v156 = v39;
  outlined init with take of TapInteractionHandler(v166, v168);
  v41 = v169;
  v42 = v170;
  __swift_project_boxed_opaque_existential_1(v168, v169);
  v43 = (*(v42 + 104))(v41, v42);
  if (!v43 || (v44 = v43, v45 = [v43 activity], v46 = objc_msgSend(v45, sel_isScreenSharingActivity), v44, v45, !v46))
  {
    OUTLINED_FUNCTION_68_11();
    v55 = OUTLINED_FUNCTION_2_14();
    v57 = v56(v55);
    if (v57)
    {

LABEL_8:
      OUTLINED_FUNCTION_68_11();
      v58 = OUTLINED_FUNCTION_2_14();
      v59(v58);
      OUTLINED_FUNCTION_187();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView, 0x1E69DCAE0);
      v60 = v169;
      v61 = v170;
      __swift_project_boxed_opaque_existential_1(v168, v169);
      v62 = (*(v61 + 32))(v60, v61);
      v54 = static UIImageView.appIcon(for:)(v62, v63);

      goto LABEL_63;
    }

    OUTLINED_FUNCTION_68_11();
    v64 = v161;
    v65 = OUTLINED_FUNCTION_2_14();
    v66(v65);
    v67 = type metadata accessor for Collaboration(0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v67) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
    }

    else
    {
      v93 = *(v64 + 16);
      _s15ConversationKit13CollaborationVWOhTm_0(v64, type metadata accessor for Collaboration);
      if (v93 == 2)
      {
        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v168);
    return 0;
  }

  (v34)();
  v48 = v47;
  v49 = swift_getObjectType();
  LOBYTE(v48) = (*(v48 + 352))(v49, v48);
  swift_unknownObjectRelease();
  if (v48)
  {
    v34 = "STAGING_AREA_FACETIME_JOIN";
    v50 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v51.super.isa = v50;
    OUTLINED_FUNCTION_17_0(0xD000000000000011, 0x80000001BC5253E0, v52, v53, v51);
    OUTLINED_FUNCTION_187();

    v54 = 0;
    goto LABEL_63;
  }

  v146[1] = *(a1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  v146[2] = a1;
  v68 = ConversationController.visibleParticipants.getter();
  v160 = *(v68 + 16);
  v161 = v68;
  if (v160)
  {
    v69 = 0;
    OUTLINED_FUNCTION_40_3();
    v159 = &v161[v70];
    v71 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
    while (1)
    {
      if (v69 >= *(v161 + 2))
      {
        __break(1u);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_36_40(*(v163 + 72));
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_4(v22, v13, v72);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v74 = *(v73 + 48);
      OUTLINED_FUNCTION_37(&v13[*(v73 + 64)]);
      memcpy(v166, &v13[v74], sizeof(v166));
      v75 = type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      v34 = *(v76 + 8);
      (v34)(v13, v75);
      v77 = OUTLINED_FUNCTION_79_17();
      outlined init with copy of Notice?(v77, v167, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      outlined destroy of Participant.MediaInfo(v166);
      if (v167[3] == 1)
      {
        goto LABEL_22;
      }

      v78 = OUTLINED_FUNCTION_72_15();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, v79, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      OUTLINED_FUNCTION_4_53();
      v80 = v158;
      _s15ConversationKit11ParticipantVWOcTm_4(v22, v158, v81);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        OUTLINED_FUNCTION_3_175();
        _s15ConversationKit13CollaborationVWOhTm_0(v80, v88);
        OUTLINED_FUNCTION_59_16();
        v83 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
LABEL_27:
        v86 = v165;
LABEL_23:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, v83, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
        goto LABEL_24;
      }

      v147 = *(v73 + 48);
      OUTLINED_FUNCTION_37((v80 + *(v73 + 64)));
      memcpy(v166, (v80 + v147), sizeof(v166));
      (v34)(v80, v75);
      v82 = OUTLINED_FUNCTION_79_17();
      outlined init with copy of Notice?(v82, v165, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      outlined destroy of Participant.MediaInfo(v166);
      v83 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
      if (v165[3] == 1)
      {
        goto LABEL_27;
      }

      memcpy(v167, v165, 0xD1uLL);
      v84 = v167[5];
      outlined destroy of Participant.ScreenInfo(v167);
      if (v84)
      {

        OUTLINED_FUNCTION_35_33();
        v34 = v154;
        outlined init with take of ConversationControlsAction(v22, v154, v132);
        v133 = 0;
        goto LABEL_29;
      }

LABEL_24:
      ++v69;
      OUTLINED_FUNCTION_0_227();
      _s15ConversationKit13CollaborationVWOhTm_0(v22, v87);
      v71 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
      if (v160 == v69)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_3_175();
    _s15ConversationKit13CollaborationVWOhTm_0(v13, v85);
    OUTLINED_FUNCTION_47_19();
LABEL_22:
    v86 = OUTLINED_FUNCTION_72_15();
    goto LABEL_23;
  }

LABEL_28:

  v133 = 1;
  v34 = v154;
LABEL_29:
  v22 = v152;
  __swift_storeEnumTagSinglePayload(v34, v133, 1, v152);
  if (ConversationControlsManager.isOneToOneConversation.getter())
  {
    v89 = v151;
    outlined init with copy of Notice?(v34, v151, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (__swift_getEnumTagSinglePayload(v89, 1, v22) == 1)
    {
      v90 = &_s15ConversationKit11ParticipantVSgMd;
      v91 = &_s15ConversationKit11ParticipantVSgMR;
      v92 = v89;
    }

    else
    {
      Participant.screenInfo.getter();
      OUTLINED_FUNCTION_0_227();
      _s15ConversationKit13CollaborationVWOhTm_0(v89, v117);
      if (*(&v166[1] + 1) != 1)
      {
        OUTLINED_FUNCTION_42_33();
        goto LABEL_58;
      }

      v90 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
      v91 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR;
      v92 = v166;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, v90, v91);
    OUTLINED_FUNCTION_65_16();
LABEL_58:
    v119 = String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v89, v34 & 1, 0x20676E6972616853, 0xEE006E6565726353);
    v121 = v120;
    v122 = [objc_opt_self() conversationKit];
LABEL_61:
    v124 = v122;
    OUTLINED_FUNCTION_5_5();
    v125.super.isa = v124;
    OUTLINED_FUNCTION_17_0(v119, v121, v126, v127, v125);
    OUTLINED_FUNCTION_187();

    goto LABEL_62;
  }

  v161 = ConversationController.visibleParticipants.getter();
  v95 = *(v161 + 2);
  v34 = v157;
  if (!v95)
  {
LABEL_50:

    v116 = v150;
    outlined init with copy of Notice?(v154, v150, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (__swift_getEnumTagSinglePayload(v116, 1, v152) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      OUTLINED_FUNCTION_65_16();
    }

    else
    {
      Participant.screenInfo.getter();
      OUTLINED_FUNCTION_0_227();
      _s15ConversationKit13CollaborationVWOhTm_0(v116, v118);
      if (*(&v166[1] + 1) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v166, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
        OUTLINED_FUNCTION_65_16();
      }

      else
      {
        OUTLINED_FUNCTION_42_33();
      }
    }

    v119 = String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v116, v34 & 1, 0x535F4E4545524353, 0xEE00474E49524148);
    v121 = v123;
    v122 = [objc_opt_self() conversationKit];
    goto LABEL_61;
  }

  v96 = 0;
  OUTLINED_FUNCTION_40_3();
  v159 = v95;
  v160 = &v161[v97];
  v71 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
  while (1)
  {
    if (v96 >= *(v161 + 2))
    {
      __break(1u);
      goto LABEL_73;
    }

    v22 = v162;
    OUTLINED_FUNCTION_36_40(*(v163 + 72));
    OUTLINED_FUNCTION_4_53();
    _s15ConversationKit11ParticipantVWOcTm_4(v22, v34, v98);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      OUTLINED_FUNCTION_3_175();
      _s15ConversationKit13CollaborationVWOhTm_0(v34, v111);
      OUTLINED_FUNCTION_47_19();
LABEL_45:
      v112 = OUTLINED_FUNCTION_72_15();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v112, v113, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      goto LABEL_46;
    }

    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v100 = *(v99 + 48);
    OUTLINED_FUNCTION_37((v34 + *(v99 + 64)));
    memcpy(v166, (v34 + v100), sizeof(v166));
    v101 = type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    v22 = *(v102 + 8);
    (v22)(v34, v101);
    v103 = OUTLINED_FUNCTION_79_17();
    outlined init with copy of Notice?(v103, v167, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of Participant.MediaInfo(v166);
    if (v167[3] == 1)
    {
      goto LABEL_45;
    }

    v104 = OUTLINED_FUNCTION_72_15();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v104, v105, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    OUTLINED_FUNCTION_4_53();
    v106 = v153;
    _s15ConversationKit11ParticipantVWOcTm_4(v162, v153, v107);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      OUTLINED_FUNCTION_3_175();
      _s15ConversationKit13CollaborationVWOhTm_0(v106, v115);
      OUTLINED_FUNCTION_59_16();
LABEL_49:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v34 = v157;
      goto LABEL_46;
    }

    v108 = *(v99 + 48);
    OUTLINED_FUNCTION_37((v106 + *(v99 + 64)));
    v109 = (v106 + v108);
    v95 = v159;
    memcpy(v166, v109, sizeof(v166));
    (v22)(v106, v101);
    v110 = OUTLINED_FUNCTION_79_17();
    outlined init with copy of Notice?(v110, v165, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of Participant.MediaInfo(v166);
    if (v165[3] == 1)
    {
      goto LABEL_49;
    }

    memcpy(v167, v165, 0xD1uLL);
    v22 = LOBYTE(v167[5]);
    outlined destroy of Participant.ScreenInfo(v167);
    v34 = v157;
    if (v22)
    {
      break;
    }

LABEL_46:
    ++v96;
    OUTLINED_FUNCTION_0_227();
    _s15ConversationKit13CollaborationVWOhTm_0(v162, v114);
    if (v95 == v96)
    {
      goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_35_33();
  outlined init with take of ConversationControlsAction(v162, v149, v134);
  v71 = v148;
  outlined init with copy of Notice?(v154, v148, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v152);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    OUTLINED_FUNCTION_65_16();
    goto LABEL_74;
  }

LABEL_70:
  Participant.screenInfo.getter();
  OUTLINED_FUNCTION_0_227();
  _s15ConversationKit13CollaborationVWOhTm_0(v71, v136);
  if (*(&v166[1] + 1) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v166, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    OUTLINED_FUNCTION_65_16();
  }

  else
  {
LABEL_73:
    OUTLINED_FUNCTION_42_33();
  }

LABEL_74:
  String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v71, v34 & 1, 0xD000000000000011, 0x80000001BC4FE920);
  OUTLINED_FUNCTION_175_0();
  v137 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v138.super.isa = v137;
  v34 = OUTLINED_FUNCTION_17_0(v71, v22, v139, v140, v138);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA940;
  v141 = v149;
  Participant.contactDetails.getter();
  v142 = *&v166[0];
  v143 = *(&v166[1] + 1);
  v144 = *&v166[2];

  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v143;
  *(v22 + 40) = v144;
  String.init(format:_:)();
  OUTLINED_FUNCTION_187();

  OUTLINED_FUNCTION_0_227();
  _s15ConversationKit13CollaborationVWOhTm_0(v141, v145);
LABEL_62:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v54 = 0;
LABEL_63:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
  v128 = v169;
  v129 = v170;
  __swift_project_boxed_opaque_existential_1(v168, v169);
  v130 = (*(v129 + 72))(v128, v129);
  memset(v166, 0, 32);
  LOBYTE(v166[2]) = 1;
  v94 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v22, v34, v130, v166);
  swift_unknownObjectRelease();

  if (v156)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v168);
  return v94;
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = OUTLINED_FUNCTION_49_24();
  _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_22_54();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GGMR);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit14NoticePriorityO_Tt1g5()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit14NoticePriorityOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit14NoticePriorityOGMR);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * v4 - 64;
  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5Tm()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = OUTLINED_FUNCTION_49_24();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = (2 * ((v4 - 32) / 8)) | 1;
  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ApplicationV_Tt1g5()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ApplicationVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ApplicationVGMR);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * ((v4 - 32) / 40);
  return v3;
}

uint64_t _s15ConversationKit13CollaborationVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of ConversationControlsAction(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

BOOL specialized MostActiveParticipantsController.mostActiveParticipantProminenceChangeReason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(*v0 + 112);
  swift_beginAccess();
  outlined init with copy of Participant?(v0 + v4, v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = type metadata accessor for UUID();
  v6 = __swift_getEnumTagSinglePayload(v3, 1, v5) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v6;
}

uint64_t specialized MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter()
{
  v13 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 152));
  OUTLINED_FUNCTION_24();
  v3 = swift_allocObject();
  *(v3 + 16) = &v13;
  *(v3 + 24) = v0;
  OUTLINED_FUNCTION_24();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for specialized closure #1 in MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter;
  *(v4 + 24) = v3;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_50_0;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  v7 = OUTLINED_FUNCTION_48_0();
  dispatch_sync(v7, v8);

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

double specialized closure #1 in MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v22 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*a2 + 128);
  swift_beginAccess();
  v12 = *(a2 + v11);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v23 = a1;
    v26 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v14 = v26;
    v15 = *(v5 + 80);
    v22 = v12;
    v16 = v12 + ((v15 + 32) & ~v15);
    v24 = *(v5 + 72);
    v17 = (v8 + 32);
    do
    {
      v18 = v25;
      outlined init with copy of Participant?(v16, v25, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v19 = *v17;
      (*v17)(v10, v18, v7);
      v26 = v14;
      v20 = *(v14 + 16);
      if (v20 >= *(v14 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v26;
      }

      *(v14 + 16) = v20 + 1;
      v19((v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20), v10, v7);
      v16 += v24;
      --v13;
    }

    while (v13);

    a1 = v23;
  }

  *a1 = v14;

  return result;
}

void specialized MostActiveParticipantsController.init(participantIdentifiers:configuration:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v37 = v3;
  v38 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v41 = v6;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v35 = v8;
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v39 = v14;
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  OUTLINED_FUNCTION_13_38();
  v19 = *(v18 + 112);
  v20 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v0 + v19, 1, 1, v20);
  OUTLINED_FUNCTION_13_38();
  v22 = MEMORY[0x1E69E7CC0];
  *(v0 + *(v21 + 128)) = MEMORY[0x1E69E7CC0];
  v23 = v22;
  OUTLINED_FUNCTION_13_38();
  *(v0 + *(v24 + 136)) = 0;
  OUTLINED_FUNCTION_13_38();
  static Date.distantPast.getter();
  OUTLINED_FUNCTION_13_38();
  v34 = *(v25 + 152);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v44[0] = v23;
  _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v26, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v35 + 104))(v11, *MEMORY[0x1E69E8090], v36);
  v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + v34) = v27;
  OUTLINED_FUNCTION_13_38();
  *(v1 + *(v28 + 120)) = v37;
  OUTLINED_FUNCTION_24();
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  *(v29 + 24) = v38;
  v44[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.init(participantIdentifiers:configuration:);
  v44[5] = v29;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 1107296256;
  v44[2] = thunk for @escaping @callee_guaranteed () -> ();
  v44[3] = &block_descriptor_102;
  v30 = _Block_copy(v44);
  v31 = v27;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v17, v41, v30);
  _Block_release(v30);

  (*(v43 + 8))(v41, v42);
  (*(v39 + 8))(v17, v40);

  OUTLINED_FUNCTION_30_0();
}

void specialized closure #1 in MostActiveParticipantsController.init(participantIdentifiers:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v26 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v22 = a1;
    v28[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v28[0];
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = (a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64)));
    v24 = *(v12 + 56);
    v25 = v13;
    v23 = (v12 - 8);
    do
    {
      v15 = v27;
      v16 = v25;
      v25(v27, v14, v4);
      v16(v9, v15, v4);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v17 = (*(*static Defaults.shared + 432))();
      (*v23)(v15, v4);
      *&v9[v7[9]] = 0;
      *&v9[v7[10]] = v17;
      v9[v7[11]] = 0;
      *&v9[v7[12]] = 1065353216;
      *&v9[v7[13]] = 0;
      *&v9[v7[14]] = 0;
      v28[0] = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v11 = v28[0];
      }

      *(v11 + 16) = v19 + 1;
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v9, v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v14 += v24;
      --v10;
    }

    while (v10);
    a1 = v22;
  }

  v20 = *(*a1 + 128);
  swift_beginAccess();
  *(a1 + v20) = v11;
}

void specialized MostActiveParticipantsController.update(_:mediaPriorities:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v31 = v8;
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32_34();
  v30 = *(v3 + *(*v3 + 152));
  v15 = OUTLINED_FUNCTION_26_55();
  v16(v15);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  (*(v11 + 32))(v18 + v17, v2, v9);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v5[1];
  *v19 = *v5;
  v19[1] = v20;
  v19[2] = v5[2];
  v34[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:);
  v34[5] = v18;
  OUTLINED_FUNCTION_5_73();
  v34[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v34[2] = v21;
  v34[3] = &block_descriptor_80;
  v22 = _Block_copy(v34);
  v23 = v30;

  outlined init with copy of ParticipantMediaPriorities(v5, &v33);
  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v24, v25);
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_47_20(v26);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v27);
  _Block_release(v22);

  v28 = OUTLINED_FUNCTION_181();
  v29(v28);
  (*(v31 + 8))(v1, v32);

  OUTLINED_FUNCTION_30_0();
}

void specialized closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v53 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v17 = *(*a1 + 128);
  swift_beginAccess();
  v18 = *(a1 + v17);
  v56 = a2;
  v58 = a2;

  v54 = specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:), v57, v18);
  LODWORD(v55) = v19;

  v21 = *(a3 + 40);
  v20 = *(a3 + 44);
  v22 = v20 + 0.01;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static Defaults.shared;
  v24 = (*static Defaults.shared + 344);
  v25 = *v24;
  if ((*v24)() < v22)
  {
    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 16))(v8, v56, v27);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v27);
    v28 = *(*a1 + 112);
    swift_beginAccess();
    outlined assign with take of Participant?(v8, a1 + v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v26 = swift_endAccess();
  }

  v29 = v21 + 0.01;
  if ((v25)(v26) < (v21 + 0.01) || v25() < v22)
  {
    if (v55)
    {
      v30 = 1;
      v31 = 1.0;
LABEL_15:
      v37 = type metadata accessor for UUID();
      v38 = (*(*(v37 - 8) + 16))(v16, v56, v37);
      v39 = (*(*v23 + 432))(v38);
      *&v16[v9[9]] = v31;
      *&v16[v9[10]] = v39;
      v16[v9[11]] = v30;
      *&v16[v9[12]] = 1065353216;
      *&v16[v9[13]] = v21;
      *&v16[v9[14]] = v20;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v40 = *(*(a1 + v17) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v40);
      v41 = *(a1 + v17);
      *(v41 + 16) = v40 + 1;
      outlined init with copy of Participant?(v16, v41 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
LABEL_22:
      *(a1 + v17) = v41;
      swift_endAccess();
      specialized MostActiveParticipantsController.startEMATimerIfNecessary()();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      return;
    }

    if ((v54 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v32 = *(a1 + v17);
    if (v54 >= *(v32 + 16))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v33 = *(v53 + 80);
    v55 = *(v53 + 72);
    v34 = outlined init with copy of Participant?(v32 + ((v33 + 32) & ~v33) + v55 * v54, v13, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    v35 = v13[v9[11]];
    if (v35 == (v25)(v34) >= v29)
    {
      v36 = (*(*v23 + 432))();
    }

    else
    {
      v36 = *&v13[v9[10]];
    }

    v42 = 1;
LABEL_18:
    v43 = type metadata accessor for UUID();
    (*(*(v43 - 8) + 16))(v16, v56, v43);
    v44 = *&v13[v9[9]];
    v45 = *&v13[v9[12]];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    *&v16[v9[9]] = v44;
    *&v16[v9[10]] = v36;
    v16[v9[11]] = v42;
    *&v16[v9[12]] = v45;
    *&v16[v9[13]] = v21;
    *&v16[v9[14]] = v20;
    swift_beginAccess();
    v41 = *(a1 + v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v17) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v41 = v50;
      *(a1 + v17) = v50;
    }

    if (v54 < *(v41 + 16))
    {
      outlined assign with copy of MostActiveParticipantsController<UUID>.ActivityDetails(v16, v41 + ((v33 + 32) & ~v33) + v55 * v54);
      goto LABEL_22;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v55)
  {
    v30 = 0;
    v31 = 0.0;
    goto LABEL_15;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v47 = *(a1 + v17);
  v13 = v52;
  if (v54 < *(v47 + 16))
  {
    v33 = *(v53 + 80);
    v55 = *(v53 + 72);
    v48 = outlined init with copy of Participant?(v47 + ((v33 + 32) & ~v33) + v55 * v54, v52, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    v49 = v13[v9[11]];
    if (v49 == (v25)(v48) >= v29)
    {
      v36 = (*(*v23 + 432))();
      v42 = 0;
    }

    else
    {
      v42 = 0;
      v36 = *&v13[v9[10]];
    }

    goto LABEL_18;
  }

LABEL_32:
  __break(1u);
}

uint64_t specialized MostActiveParticipantsController.startEMATimerIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - v11;
  ObjectType = type metadata accessor for OS_dispatch_source.TimerFlags();
  v44 = *(ObjectType - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(*v1 + 152);
  v21 = *(v1 + v20);
  *v19 = v21;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15, v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + *(*v1 + 136)))
  {
    return result;
  }

  v42 = *(*v1 + 136);
  v43 = v2;
  v41 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_source, 0x1E69E9630);
  v24 = *(v1 + v20);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x1E69E80B0]);
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v44 + 8))(v14, ObjectType);
  v44 = v26;
  ObjectType = swift_getObjectType();
  static DispatchTime.now()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v27 = (*static Defaults.shared + 440);
  v28 = *v27;
  v29 = (*v27)();
  v30 = v45;
  + infix(_:_:)(v29);
  v31 = v47;
  v32 = *(v46 + 8);
  v33 = v32(v9, v47);
  v34 = (v28)(v33);
  v35 = v48;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v48);
  MEMORY[0x1BFB21730](v30, v35, ObjectType, v34);
  (*(v49 + 8))(v35, v50);
  v32(v30, v31);
  v36 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.startEMATimerIfNecessary();
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_86;
  v37 = _Block_copy(aBlock);

  v38 = v51;
  static DispatchQoS.unspecified.getter();
  v39 = v53;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  v40 = v44;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v37);
  (*(v55 + 8))(v39, v43);
  (*(v52 + 8))(v38, v54);

  OS_dispatch_source.resume()();
  *(v1 + v42) = v40;
  return swift_unknownObjectRelease();
}

void specialized MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)()
{
  OUTLINED_FUNCTION_29();
  v29 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v30 = v6;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_34();
  OUTLINED_FUNCTION_0_1();
  v14 = *(v0 + *(v13 + 152));
  v15 = OUTLINED_FUNCTION_26_55();
  v16(v15);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  (*(v9 + 32))(v18 + v17, v2, v7);
  *(v18 + v17 + v11) = v29;
  v32[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:);
  v32[5] = v18;
  OUTLINED_FUNCTION_5_73();
  v32[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v32[2] = v19;
  v32[3] = &block_descriptor_29_2;
  v20 = _Block_copy(v32);
  v21 = v14;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v22, v23);
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_3_8();
  v25 = OUTLINED_FUNCTION_47_20(v24);
  OUTLINED_FUNCTION_26_32(v25);
  v26 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v26);
  _Block_release(v20);

  v27 = OUTLINED_FUNCTION_181();
  v28(v27);
  (*(v30 + 8))(v1, v31);

  OUTLINED_FUNCTION_30_0();
}

void specialized closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)(uint64_t a1, uint64_t a2, char a3)
{
  specialized MostActiveParticipantsController.boostParticipantEMAToMax(_:)(a2);
  if ((a3 & 1) == 0)
  {
    specialized MostActiveParticipantsController.updateActiveParticipantsEMA()();
    specialized MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)(0);
  }
}

void specialized MostActiveParticipantsController.boostParticipantEMAToMax(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36[-v13];
  OUTLINED_FUNCTION_13_38();
  v16 = *(v15 + 128);
  OUTLINED_FUNCTION_4_0(v3 + v16, v38);
  v17 = *(v3 + v16);
  v37 = a1;

  v18 = specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in MostActiveParticipantsController.boostParticipantEMAToMax(_:), v36, v17);
  v20 = v19;

  if (v20)
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    (*(v21 + 16))(v11, a1);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_0_1();
    v23 = (*(v22 + 432))();
    OUTLINED_FUNCTION_0_1();
    v25 = (*(v24 + 448))();
    *(v11 + v5[9]) = 1065353216;
    *(v11 + v5[10]) = v23;
    *(v11 + v5[11]) = 1;
    *(v11 + v5[12]) = v25 + 0.01;
    *(v11 + v5[13]) = 0;
    *(v11 + v5[14]) = 0;
    OUTLINED_FUNCTION_46_28();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v26 = *(*(v3 + v16) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v26);
    v27 = *(v3 + v16);
    *(v27 + 16) = v26 + 1;
    OUTLINED_FUNCTION_25_57();
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v11, v28 + *(v7 + 72) * v26, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    goto LABEL_12;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v3 + v16);
    if (v18 < *(v29 + 16))
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v7 = *(v7 + 72) * v18;
      v30 = v29 + v11 + v7;
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_0();
      (*(v31 + 16))(v14, a1);
      v2 = *(v30 + v5[10]);
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
LABEL_8:
  OUTLINED_FUNCTION_0_1();
  v33 = (*(v32 + 448))();
  *&v14[v5[9]] = 1065353216;
  *&v14[v5[10]] = v2;
  v14[v5[11]] = 1;
  *&v14[v5[12]] = v33 + 0.01;
  *&v14[v5[13]] = 0;
  *&v14[v5[14]] = 0;
  OUTLINED_FUNCTION_46_28();
  v27 = *(v3 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v16) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v27 = v35;
    *(v3 + v16) = v35;
  }

  if (v18 < *(v27 + 16))
  {
    outlined assign with take of Participant?(v14, v27 + v11 + v7, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
LABEL_12:
    *(v3 + v16) = v27;
    swift_endAccess();
    return;
  }

  __break(1u);
}

void specialized MostActiveParticipantsController.updateActiveParticipantsEMA()()
{
  v2 = v0;
  v81 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v80 = v6;
  OUTLINED_FUNCTION_4_24();
  v79 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  v78 = v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v73 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMd, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v73 = (&v73 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtSgMd, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtSgMR);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v83 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_32();
  v82 = v22;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_13_38();
  v25 = *(v2 + *(v24 + 152));
  *v1 = v25;
  v26 = OUTLINED_FUNCTION_61_0();
  v27(v26);
  v28 = v25;
  v29 = _dispatchPreconditionTest(_:)();
  v30 = OUTLINED_FUNCTION_33_0();
  v31(v30);
  if (v29)
  {
    OUTLINED_FUNCTION_13_38();
    v33 = *(v32 + 128);
    OUTLINED_FUNCTION_4_0(v2 + v33, v97);
    v91 = v33;
    v34 = *(*(v2 + v33) + 16);
    v74 = *(v2 + v33);

    OUTLINED_FUNCTION_4_0(v2 + 32, v96);
    v35 = 0;
    v77 = v94;
    v76 = (v4 + 8);
    v75 = (v8 + 8);
    v36 = v84;
    v37 = v83;
    v38 = v82;
    v85 = v34;
    while (1)
    {
      if (v35 == v34)
      {
        v39 = 1;
        v89 = v34;
      }

      else
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v35 >= *(v74 + 16))
        {
          goto LABEL_23;
        }

        v40 = v35 + 1;
        v41 = v74 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35;
        v42 = *(v36 + 48);
        v43 = v73;
        *v73 = v35;
        outlined init with copy of Participant?(v41, v43 + v42, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v43, v37, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMd, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMR);
        v39 = 0;
        v89 = v40;
      }

      __swift_storeEnumTagSinglePayload(v37, v39, 1, v36);
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v37, v38, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtSgMd, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtSgMR);
      if (__swift_getEnumTagSinglePayload(v38, 1, v36) == 1)
      {

        return;
      }

      v44 = *v38;
      v45 = *(v36 + 48);
      v46 = v86;
      v92 = swift_allocBox();
      v48 = v47;
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v38 + v45, v47, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      OUTLINED_FUNCTION_3_5(v48, v95);
      v49 = v46[10];
      v50 = *(v48 + v49) + 1.0;
      if (*(v48 + v46[11]))
      {
        v51 = 1.0;
      }

      else
      {
        v51 = 0.0;
      }

      v52 = (v51 * (2.0 / (v50 + 1.0))) + (*(v48 + v46[9]) * (1.0 - (2.0 / (v50 + 1.0))));
      *(v48 + v49) = v50;
      *(v48 + v46[9]) = v52;
      outlined init with copy of Participant?(v48, v90, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v53 = v91;
      swift_beginAccess();
      v54 = *(v2 + v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v53) = v54;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew()();
        v54 = v72;
        *(v2 + v91) = v72;
      }

      v56 = v92;
      if ((v44 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v44 >= *(v54 + 16))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_25_57();
      outlined assign with take of Participant?(v90, v57 + *(v12 + 72) * v44, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      *(v2 + v91) = v54;
      swift_endAccess();
      v58 = *(v2 + 32);
      if (v58)
      {
        v59 = *(v2 + 40);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);

        v88 = static OS_dispatch_queue.main.getter();
        v60 = swift_allocObject();
        *(v60 + 16) = v58;
        *(v60 + 24) = v59;
        *(v60 + 32) = v56;
        *(v60 + 40) = v52;
        v94[2] = partial apply for specialized closure #1 in MostActiveParticipantsController.updateActiveParticipantsEMA();
        v94[3] = v60;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v94[0] = thunk for @escaping @callee_guaranteed () -> ();
        v94[1] = &block_descriptor_41_3;
        v87 = _Block_copy(aBlock);
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v58, v59);

        v61 = v78;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_0_228();
        _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        OUTLINED_FUNCTION_3_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        v63 = v12;
        v64 = v2;
        v65 = v80;
        v66 = v81;
        v38 = v82;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v67 = v87;
        v68 = v88;
        MEMORY[0x1BFB215C0](0, v61, v65, v87);
        _Block_release(v67);

        v69 = v59;
        v36 = v84;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v58, v69);
        v70 = v65;
        v2 = v64;
        v12 = v63;
        (*v76)(v70, v66);
        v71 = v61;
        v37 = v83;
        (*v75)(v71, v79);
      }

      v34 = v85;
      v35 = v89;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void specialized MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v53 = v6;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v51 = v7;
  OUTLINED_FUNCTION_4_24();
  v52 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v50 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  v49 = v10;
  OUTLINED_FUNCTION_4_24();
  v11 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v27 = (v26 - v25);
  v28 = *(v3 + *(*v3 + 152));
  *(v26 - v25) = v28;
  (*(v23 + 104))(v26 - v25, *MEMORY[0x1E69E8020], v21);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v21);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    goto LABEL_4;
  }

  v30 = *(*v3 + 128);
  OUTLINED_FUNCTION_3_5(v3 + v30, v58);
  aBlock[0] = *(v3 + v30);
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(aBlock);

  v27 = specialized MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:)(aBlock[0]);

  if ((a1 & 1) == 0)
  {
    *(v3 + v30) = v27;
    goto LABEL_9;
  }

  Date.init()();
  a1 = *(*v3 + 144);
  OUTLINED_FUNCTION_4_0(v3 + a1, v57);
  (*(v13 + 16))(v17, v3 + a1, v11);
  Date.timeIntervalSince(_:)();
  v2 = v32;
  v33 = *(v13 + 8);
  v33(v17, v11);
  v33(v20, v11);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  OUTLINED_FUNCTION_0_1();
  if ((*(v34 + 480))() >= v2)
  {
LABEL_9:

    return;
  }

  v36 = specialized MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:)(v35, v27);

  *(v3 + v30) = v27;

  OUTLINED_FUNCTION_4_0((v3 + 2), v56);
  v37 = v3[2];
  if (v37)
  {
    if (v36)
    {
      v38 = v3[3];

      Date.init()();
      swift_beginAccess();
      (*(v13 + 40))(v3 + a1, v20, v11);
      swift_endAccess();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v39 = static OS_dispatch_queue.main.getter();
      v40 = swift_allocObject();
      v40[2] = v37;
      v40[3] = v38;
      v40[4] = v3;
      aBlock[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:);
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_35_2;
      v41 = _Block_copy(aBlock);
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v37, v38);

      v42 = v49;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_0_228();
      _s10Foundation4UUIDVACSHAAWlTm_10(v43, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      OUTLINED_FUNCTION_3_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v45, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v46 = v51;
      v47 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1BFB215C0](0, v42, v46, v41);
      _Block_release(v41);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v37, v38);
      (*(v53 + 8))(v46, v47);
      (*(v50 + 8))(v42, v52);
    }
  }
}

void specialized MostActiveParticipantsController.markParticipantAsOffline(_:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v28[1] = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v31 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v29 = v7;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_1();
  v15 = *(v0 + *(v14 + 152));
  (*(v10 + 16))(v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v8);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  v33[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:);
  v33[5] = v17;
  OUTLINED_FUNCTION_5_73();
  v33[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v33[2] = v18;
  v33[3] = &block_descriptor_92;
  v19 = _Block_copy(v33);
  v20 = v15;

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v21, v22);
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_3_8();
  v24 = OUTLINED_FUNCTION_47_20(v23);
  OUTLINED_FUNCTION_26_32(v24);
  v25 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v25);
  _Block_release(v19);

  v26 = OUTLINED_FUNCTION_181();
  v27(v26);
  (*(v29 + 8))(v1, v30);

  OUTLINED_FUNCTION_30_0();
}

void specialized closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = (*(*static Defaults.shared + 432))();
  *&v7[v4[9]] = 0;
  *&v7[v4[10]] = v9;
  v7[v4[11]] = 0;
  *&v7[v4[12]] = 1065353216;
  *&v7[v4[13]] = 0;
  *&v7[v4[14]] = 0;
  v10 = *(*a2 + 128);
  v11 = swift_beginAccess();
  v12 = *(a2 + v10);
  MEMORY[0x1EEE9AC00](v11);
  *(&v21 - 2) = a1;

  v13 = specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:), (&v21 - 4), v12);
  v15 = v14;

  if (v15)
  {
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v16 = *(*(a2 + v10) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
    v17 = *(a2 + v10);
    *(v17 + 16) = v16 + 1;
    outlined init with copy of Participant?(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    *(a2 + v10) = v17;
LABEL_9:
    swift_endAccess();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    return;
  }

  swift_beginAccess();
  v18 = *(a2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v10) = v18;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v18 = v20;
  *(a2 + v10) = v20;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v13 < *(v18 + 16))
  {
    outlined assign with copy of MostActiveParticipantsController<UUID>.ActivityDetails(v7, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
    *(a2 + v10) = v18;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized closure #1 in closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_11_111();
  _s10Foundation4UUIDVACSHAAWlTm_10(v2, v3);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized closure #1 in MostActiveParticipantsController.updateActiveParticipantsEMA()(void (*a1)(char *, float, float, float), float a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v11 = swift_projectBox();
  swift_beginAccess();
  (*(v7 + 16))(v9, v11, v6);
  a1(v9, a2, *(v11 + *(v10 + 52)), *(v11 + *(v10 + 56)));
  return (*(v7 + 8))(v9, v6);
}

uint64_t specialized MostActiveParticipantsController.applyProminenceWeights(sortedParticipants:)(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMd, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMR);
  MEMORY[0x1EEE9AC00](v47);
  v3 = (&v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v42 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = *(a1 + 16);
  if (v16 > 2)
  {
    v43 = v13;
    v45 = v12;
    v49 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v25 = 0;
    v17 = v49;
    v44 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = a1 + v44;
    v27 = &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd;
    v42 = *(v6 + 72);
    do
    {
      v28 = v27;
      v30 = v46;
      v29 = v47;
      v31 = *(v47 + 48);
      outlined init with copy of Participant?(v26, &v46[v31], v28, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      *v3 = v25;
      v32 = *(v29 + 48);
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(&v30[v31], v3 + v32, v28, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v33 = v3 + v32;
      v27 = v28;
      v34 = v43;
      v35 = outlined init with copy of Participant?(v33, v43, v27, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      if (v25 == 2)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        (*(*static Defaults.shared + 464))();
      }

      else if (v25 == 1)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        (*(*static Defaults.shared + 456))();
      }

      else if (v25)
      {
        if (one-time initialization token for shared != -1)
        {
          v35 = swift_once();
        }

        v36 = (*(*static Defaults.shared + 472))(v35);
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          v35 = swift_once();
        }

        (*(*static Defaults.shared + 448))(v35);
      }

      *(v34 + *(v48 + 48)) = v36;
      v37 = v45;
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v34, v45, v27, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMd, &_sSi6offset_15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G7elementtMR);
      v49 = v17;
      v39 = *(v17 + 16);
      v38 = *(v17 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
        v37 = v45;
        v17 = v49;
      }

      ++v25;
      *(v17 + 16) = v39 + 1;
      v40 = v42;
      outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v37, v17 + v44 + v39 * v42, v27, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v26 += v40;
    }

    while (v16 != v25);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v49 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v49;
      v47 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = a1 + v47;
      v19 = &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd;
      v46 = *(v6 + 72);
      do
      {
        outlined init with copy of Participant?(v18, v10, v19, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        outlined init with copy of Participant?(v10, v15, v19, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v20 = (*(*static Defaults.shared + 472))();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, v19, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        *&v15[*(v48 + 48)] = v20;
        v49 = v17;
        v21 = v19;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
          v17 = v49;
        }

        *(v17 + 16) = v23 + 1;
        v24 = v46;
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v15, v17 + v47 + v23 * v46, v21, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        v18 += v24;
        --v16;
        v19 = v21;
      }

      while (v16);
    }
  }

  return v17;
}

BOOL specialized MostActiveParticipantsController.shouldPostMostActiveParticipantsDidChange(oldParticipantsDetails:newParticipantsDetails:)(uint64_t a1, char **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v66 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v58 - v6;
  v7 = type metadata accessor for UUID();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = (&v58 - v11);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + *(*v2 + 19));
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    goto LABEL_29;
  }

  v20 = *(*v2 + 15);
  swift_beginAccess();
  v21 = *(v2 + v20);

  v22 = specialized Collection.prefix(_:)(v21, a1);
  v64 = v24;
  v26 = v25 >> 1;
  v12 = (v25 >> 1) - v23;
  if (__OFSUB__(v25 >> 1, v23))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = v2;
  v63 = a2;
  if (v12)
  {
    v28 = v23;
    v61 = v22;
    v68 = MEMORY[0x1E69E7CC0];
    v2 = &v68;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v12 < 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v59 = v20;
    v60 = v27;
    v29 = v68;
    v30 = (v67 + 32);
    v2 = v62;
    while (v28 < v26)
    {
      v31 = v65;
      outlined init with copy of Participant?(v64 + *(v66 + 72) * v28, v65, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v32 = *v30;
      (*v30)(v2, v31, v7);
      v68 = v29;
      v33 = v29[2];
      v12 = v33 + 1;
      if (v33 >= v29[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v62;
        v29 = v68;
      }

      v29[2] = v12;
      v32((v29 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v33), v2, v7);
      if (v26 == ++v28)
      {
        v62 = v29;
        swift_unknownObjectRelease();
        v20 = v59;
        v27 = v60;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  swift_unknownObjectRelease();
  v62 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v34 = *(v27 + v20);
  v2 = v63;

  v35 = specialized Collection.prefix(_:)(v34, v2);
  v64 = v37;
  v39 = v38 >> 1;
  v12 = (v38 >> 1) - v36;
  if (__OFSUB__(v38 >> 1, v36))
  {
    goto LABEL_31;
  }

  v40 = v35;
  if (v12)
  {
    v41 = v36;
    v68 = MEMORY[0x1E69E7CC0];
    v2 = &v68;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v12 < 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v63 = v40;
    v2 = v68;
    v42 = (v67 + 32);
    while (v41 < v39)
    {
      v43 = v65;
      outlined init with copy of Participant?(v64 + *(v66 + 72) * v41, v65, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v44 = *v42;
      (*v42)(v9, v43, v7);
      v68 = v2;
      v45 = v2[2];
      v12 = v45 + 1;
      if (v45 >= v2[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = v68;
      }

      v2[2] = v12;
      v44(v2 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v45, v9, v7);
      if (v39 == ++v41)
      {
        swift_unknownObjectRelease();
        goto LABEL_22;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_unknownObjectRelease();
  v2 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v9 = v62;
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5();
  LOBYTE(v12) = v46;
  if ((v46 & 1) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_25:
      v47 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1BC4BAA20;
      v68 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
      v49 = String.init<A>(reflecting:)();
      v51 = v50;
      v52 = MEMORY[0x1E69E6158];
      *(v48 + 56) = MEMORY[0x1E69E6158];
      v53 = lazy protocol witness table accessor for type String and conformance String();
      *(v48 + 64) = v53;
      *(v48 + 32) = v49;
      *(v48 + 40) = v51;
      v68 = v2;
      v54 = String.init<A>(reflecting:)();
      *(v48 + 96) = v52;
      *(v48 + 104) = v53;
      *(v48 + 72) = v54;
      *(v48 + 80) = v55;
      v56 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Top 4 sorted participants changed from %@\nto %@", 47, 2, &dword_1BBC58000, v47, v56, v48);
      goto LABEL_26;
    }

LABEL_34:
    swift_once();
    goto LABEL_25;
  }

LABEL_26:

  return (v12 & 1) == 0;
}

uint64_t default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t specialized closure #1 in MostActiveParticipantsController.startEMATimerIfNecessary()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized MostActiveParticipantsController.updateActiveParticipantsEMA()();
    specialized MostActiveParticipantsController.activityDetailsAboveThreshold()();
    if (v2)
    {
      specialized MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)(1);
    }
  }

  return result;
}

void specialized MostActiveParticipantsController.activityDetailsAboveThreshold()()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  v1 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v3 = v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GSgMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + *(*v0 + 152));
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v17)
  {
    v28 = v6;
    v18 = *(*v0 + 112);
    swift_beginAccess();
    outlined init with copy of Participant?(v0 + v18, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v19 = type metadata accessor for UUID();
    v27[3] = __swift_getEnumTagSinglePayload(v9, 1, v19) != 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v20 = *(*v0 + 128);
    swift_beginAccess();
    v21 = *(v0 + v20);
    v22 = *(v21 + 16);

    for (i = 0; ; ++i)
    {
      if (v22 == i)
      {

        v25 = 1;
        v26 = v28;
LABEL_11:
        __swift_storeEnumTagSinglePayload(v26, v25, 1, v29);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GSgMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GSgMR);
        return;
      }

      if (i >= *(v21 + 16))
      {
        break;
      }

      outlined init with copy of Participant?(v21 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * i, v3, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
      v24 = *&v3[*(v29 + 36)];
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((*(*static Defaults.shared + 488))() < v24)
      {

        v26 = v28;
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v3, v28, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
        v25 = 0;
        goto LABEL_11;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v2, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t one-time initialization function for conversationStateManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.conversationStateManager);
  __swift_project_value_buffer(v0, static Logger.conversationStateManager);
  return Logger.init(subsystem:category:)();
}

void ConversationStateManager.init(call:callCenter:defaults:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v249 = v3;
  v240 = v4;
  v6 = v5;
  v247 = v7;
  v9 = v8;
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v223 = v11;
  v224 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v221 = v12;
  OUTLINED_FUNCTION_4_24();
  v222 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v220 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40();
  v219 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v225 = &v216 - v18;
  OUTLINED_FUNCTION_4_24();
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v251 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v218 = &v216 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_32();
  v226 = v24;
  v217 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_32();
  v227 = v27;
  v28 = OUTLINED_FUNCTION_4_24();
  v250 = type metadata accessor for Participant(v28);
  OUTLINED_FUNCTION_1();
  v234 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_40();
  v252 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_140_0();
  *&v0[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_cancellables] = MEMORY[0x1E69E7CD0];
  v248 = type metadata accessor for ConversationController(0);
  v34 = objc_opt_self();
  v243 = v9;
  swift_unknownObjectRetain();
  v35 = [v34 sharedInstance];
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_94;
  }

  while (1)
  {
    v36 = static PlaceholderCallCenter.shared;
    v37 = type metadata accessor for CallCenter();
    v38 = objc_allocWithZone(v37);
    v39 = v36;
    v40 = OUTLINED_FUNCTION_170();
    v42 = CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v40, v41, 1, 1);
    v259 = v37;
    v260 = &protocol witness table for CallCenter;
    *&v257 = v42;
    v277 = 0;
    memset(v276, 0, sizeof(v276));
    v274 = &type metadata for DefaultParticipantMediaProviderCreator;
    v275 = &protocol witness table for DefaultParticipantMediaProviderCreator;
    OUTLINED_FUNCTION_20();
    *&v272 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v270 = &type metadata for DefaultParticipantCaptionsProviderCreator;
    v271 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
    OUTLINED_FUNCTION_24();
    v267 = swift_allocObject();
    *(v267 + 24) = 0;
    swift_unknownObjectWeakInit();
    v43 = [objc_opt_self() sharedManager];
    type metadata accessor for IDSCapabilitiesChecker();
    v44 = swift_allocObject();
    v266[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager, 0x1E69D8C08);
    v266[4] = &protocol witness table for TUIDSLookupManager;
    v266[0] = v43;
    OUTLINED_FUNCTION_11_111();
    _s10Foundation4UUIDVACSHAAWlTm_10(v45, v46);
    v47 = MEMORY[0x1E69E7CC0];
    v44[2] = Dictionary.init(dictionaryLiteral:)();
    v44[3] = Dictionary.init(dictionaryLiteral:)();
    v44[5] = 0;
    swift_unknownObjectWeakInit();
    v44[6] = v47;
    outlined init with copy of IDSLookupManager(v266, (v44 + 7));
    v48 = [objc_opt_self() defaultCenter];
    [v48 addObserver:v44 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v43];

    __swift_destroy_boxed_opaque_existential_1(v266);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
    }

    v49 = static Defaults.shared;
    v50 = v243;
    v51 = swift_getObjectType();

    v52 = v247;
    v246 = v51;
    specialized ConversationController.__allocating_init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v50, &v257, &v272, &v267, 1, v276, 1, v44, v49, &protocol witness table for Defaults, v248, v51, v247, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226);
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController] = v53;
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter] = v6;
    v54 = v53;
    v55 = v6;
    v6 = v2;
    v2 = v54;
    v56 = v55;
    v57 = [v56 neighborhoodActivityConduit];
    *&v6[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conduit] = v57;
    v232 = v57;
    v242 = v56;
    v58 = [v56 videoDeviceController];
    v233 = OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localVideoController;
    *&v6[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localVideoController] = v58;
    v59 = &v6[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_defaults];
    v60 = v249;
    *v59 = v240;
    *(v59 + 1) = v60;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
    v61 = objc_opt_self();
    v62 = v50;
    swift_unknownObjectRetain();
    v63 = [v61 mainRunLoop];
    v64 = type metadata accessor for NSRunLoop.SchedulerOptions();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v64);
    v65 = static NSTimer.publish(every:tolerance:on:in:options:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
    v237 = v6;
    *&v6[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callDurationStringTimer] = v65;
    closure #1 in ConversationStateManager.init(call:callCenter:defaults:)(v52, &v257, v50);
    v238 = v257;
    v239 = v258;
    v244 = v2;
    ConversationController.lookupActiveConversation()();
    outlined init with copy of Participant?(v276, &v257, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v235 = isUniquelyReferenced_nonNull_native;
    if (v259)
    {
      break;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v257, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
LABEL_33:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CNContactCSgMd, &_sSo9CNContactCSgMR);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v249 = Dictionary.init(dictionaryLiteral:)();
    v96 = [v242 callWithStatus_];
    if (v96)
    {
      v97 = v96;
      v99 = v246;
      v98 = v247;
      v100 = OUTLINED_FUNCTION_48_0();
      v102 = v101(v100);
      v228 = v103;
      v229 = v102;
    }

    else
    {
      v228 = 0;
      v229 = 0;
      v99 = v246;
      v98 = v247;
    }

    v104 = OUTLINED_FUNCTION_48_0();
    v106 = v105(v104);
    v107 = 1;
    if ((v106 & 1) == 0)
    {
      v107 = 2;
    }

    v248 = v107;
    OUTLINED_FUNCTION_48_0();
    Call.displayStatus.getter(v108, v109);
    LOWORD(v266[0]) = v267;
    HIDWORD(v266[0]) = HIDWORD(v267);
    v110 = OUTLINED_FUNCTION_48_0();
    LODWORD(v245) = v111(v110);
    v112 = OUTLINED_FUNCTION_48_0();
    LODWORD(v236) = v113(v112);
    v272 = v238;
    v273 = v239;
    v264[0] = v62;
    v114 = *(v98 + 8);
    v115 = *(v114 + 16);
    v116 = outlined copy of CallDisplayInfo(v238, *(&v238 + 1), v239);
    v117 = v115(v99, v114, v116);
    v230 = v118;
    v231 = v117;
    outlined init with copy of Participant?(v276, &v257, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v119 = v259;
    if (v259)
    {
      v120 = v260;
      __swift_project_boxed_opaque_existential_1(&v257, v259);
      v119 = (*(v120 + 6))(v119, v120);
      __swift_destroy_boxed_opaque_existential_1(&v257);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v257, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    v121 = ConversationController.isOneToOneModeEnabled.getter();
    v122 = v243;
    Call.isCallingEmergencyServices.getter(v246, v247);
    v124 = v123;
    outlined init with copy of Participant?(v276, &v257, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v125 = v259;
    if (v259)
    {
      v126 = v260;
      __swift_project_boxed_opaque_existential_1(&v257, v259);
      (*(v126 + 31))(v125, v126);
      __swift_destroy_boxed_opaque_existential_1(&v257);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v257, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    v127 = v247;
    (*(v247 + 176))(v246, v247);
    v6 = v244;
    ConversationController.shouldShowRTTUpgrade.getter();
    type metadata accessor for ConversationPresentationStateProvider();
    swift_allocObject();
    v128 = ConversationPresentationStateProvider.init(avMode:callDisplayStatus:isSendingVideo:isMuted:callDisplayInfo:callDurationString:image:isOneToOneModeEnabled:isEmergency:heldCallDisplayName:contactsByHandle:ignoreLetMeInRequests:isRTTCall:shouldShowRTTUpgrade:unknownHandlesBlocked:)(v248, v266, v245 & 1, v236 & 1, &v272, v231, v230, v119, v121 & 1, v124 & 1, v229, v228, v249);
    v129 = &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd;
    v2 = v237;
    *&v237[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_presentationStateProvider] = v128;
    v130 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_4_0(&v6[OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant], &v267);
    v131 = v252;
    outlined init with copy of Participant(&v6[v130], v252);
    v132 = *&v2[v233];
    TUVideoDeviceController.currentCameraEffectsState.getter(&v257);

    LODWORD(v272) = v257;
    type metadata accessor for ConversationLocalParticipantStateProvider();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localParticipantStateProvider] = ConversationLocalParticipantStateProvider.init(localParticipant:localParticipantCameraEffectsState:isMutedTalking:isReacting:)(v131, &v272, 0, 0);
    OUTLINED_FUNCTION_4_0(&v6[OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants], v266);
    type metadata accessor for ConversationRemoteParticipantsStateProvider();
    swift_allocObject();

    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_remoteParticipantsStateProvider] = ConversationRemoteParticipantsStateProvider.init(remoteParticipants:)(v133);
    v134 = type metadata accessor for CaptioningStateManager(0);
    v135 = one-time initialization token for shared;
    swift_unknownObjectRetain();
    if (v135 != -1)
    {
      swift_once();
    }

    v136 = static ConversationCapabilities.shared;
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_captioningStateManager] = specialized CaptioningStateManager.__allocating_init(capabilities:call:)(v136, v122, v134, v246, v127);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    v137 = (*(v234 + 80) + 32) & ~*(v234 + 80);
    v249 = *(v234 + 72);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_1BC4BA940;
    outlined init with copy of Participant(&v6[v130], v138 + v137);
    *&v257 = v138;

    specialized Array.append<A>(contentsOf:)(v139);
    v140 = v257;
    v141 = *(v257 + 16);
    if (v141)
    {
      *&v257 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v142 = v257;
      v248 = v140;
      v143 = v140 + v137;
      v144 = (v251 + 16);
      v6 = (v251 + 32);
      isUniquelyReferenced_nonNull_native = v235;
      v145 = v227;
      do
      {
        v146 = v252;
        outlined init with copy of Participant(v143, v252);
        (*v144)(v145, &v146[*(v250 + 20)], isUniquelyReferenced_nonNull_native);
        outlined destroy of Participant(v146);
        *&v257 = v142;
        v147 = *(v142 + 16);
        if (v147 >= *(v142 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v142 = v257;
        }

        *(v142 + 16) = v147 + 1;
        OUTLINED_FUNCTION_25_57();
        (*(v149 + 32))(v148 + *(v149 + 72) * v147, v145, isUniquelyReferenced_nonNull_native);
        v143 += v249;
        --v141;
      }

      while (v141);

      v2 = v237;
      v129 = &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit22VideoMessageControllerC5StateO_GGMd;
    }

    else
    {

      isUniquelyReferenced_nonNull_native = v235;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerCy10Foundation4UUIDVGMd, &_s15ConversationKit32MostActiveParticipantsControllerCy10Foundation4UUIDVGMR);
    swift_allocObject();
    specialized MostActiveParticipantsController.init(participantIdentifiers:configuration:)();
    *&v2[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_mostActiveParticipantsController] = v150;
    v265.receiver = v2;
    v265.super_class = ObjectType;
    v151 = objc_msgSendSuper2(&v265, sel_init);
    v152 = *&v151[v129[368]];
    OUTLINED_FUNCTION_3_5(v152 + 136, v264);
    *(v152 + 144) = &protocol witness table for ConversationStateManager;
    swift_unknownObjectWeakAssign();
    v153 = *&v151[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localParticipantStateProvider];
    OUTLINED_FUNCTION_3_5(v153 + 48, &v263);
    *(v153 + 56) = &protocol witness table for ConversationStateManager;
    swift_unknownObjectWeakAssign();
    v154 = *&v151[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_remoteParticipantsStateProvider];
    OUTLINED_FUNCTION_3_5(v154 + 40, &v262);
    *(v154 + 48) = &protocol witness table for ConversationStateManager;
    swift_unknownObjectWeakAssign();
    v155 = v151;

    CaptioningStateManager.captionsRecognizerStateManager.setter(v151, &protocol witness table for ConversationStateManager);

    ConversationStateManager.registerForCallStateUpdates()();
    ConversationStateManager.registerConversationControllerCallbacks()();
    v248 = v155;
    ConversationStateManager.registerForMostActiveParticipantControllerCallbacks()();
    v156 = v244;
    ConversationController.lookupActiveConversation()();
    if (!v274)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v272, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v187 = OUTLINED_FUNCTION_30_39();
      v189 = v188(v187);
      v190 = [v189 isTelephonyProvider];

      if (v190)
      {
        v191 = v225;
        v192 = OUTLINED_FUNCTION_30_39();
        v193(v192);
        if (__swift_getEnumTagSinglePayload(v191, 1, isUniquelyReferenced_nonNull_native) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v191, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v194 = OUTLINED_FUNCTION_30_39();
          v196 = v195(v194);
          v197 = specialized _copyCollectionToContiguousArray<A>(_:)(v196);

          ConversationStateManager.updateDisplayProperties(using:)(v197);

          OUTLINED_FUNCTION_49_25();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v276, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        }

        else
        {
          v198 = v251;
          v199 = *(v251 + 32);
          v200 = v226;
          v199(v226, v191, isUniquelyReferenced_nonNull_native);
          v252 = [v242 queue];
          OUTLINED_FUNCTION_20();
          v201 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v202 = v218;
          (*(v198 + 16))(v218, v200, isUniquelyReferenced_nonNull_native);
          v203 = isUniquelyReferenced_nonNull_native;
          v204 = (*(v198 + 80) + 24) & ~*(v198 + 80);
          v205 = swift_allocObject();
          *(v205 + 16) = v201;
          v199(v205 + v204, v202, v203);
          v260 = partial apply for closure #5 in ConversationStateManager.init(call:callCenter:defaults:);
          v261 = v205;
          *&v257 = MEMORY[0x1E69E9820];
          *(&v257 + 1) = 1107296256;
          OUTLINED_FUNCTION_6_5();
          v258 = v206;
          v259 = &block_descriptor_126;
          v207 = _Block_copy(&v257);

          v208 = v219;
          static DispatchQoS.unspecified.getter();
          *&v272 = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_0_228();
          _s10Foundation4UUIDVACSHAAWlTm_10(v209, v210);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          OUTLINED_FUNCTION_3_8();
          lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v211, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v212 = v221;
          v213 = v224;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v214 = v252;
          MEMORY[0x1BFB215C0](0, v208, v212, v207);
          _Block_release(v207);

          OUTLINED_FUNCTION_49_25();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v223 + 1))(v212, v213);
          (*(v220 + 8))(v208, v222);
          (*(v198 + 8))(v226, v235);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v276, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        }
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v276, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);

        OUTLINED_FUNCTION_49_25();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

LABEL_85:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    outlined init with take of TapInteractionHandler(&v272, &v257);
    __swift_project_boxed_opaque_existential_1(&v257, v259);
    v157 = OUTLINED_FUNCTION_36_41();
    v1 = v158(v157);
    v159 = specialized Set.count.getter();
    if (!v159)
    {

      v186 = MEMORY[0x1E69E7CC0];
LABEL_82:
      ConversationStateManager.updateDisplayProperties(using:)(v186);

      OUTLINED_FUNCTION_49_25();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v276, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v257);
      goto LABEL_85;
    }

    v160 = v159;
    v256 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v253 = specialized Set.startIndex.getter();
    v254 = v161;
    v255 = v162 & 1;
    if (v160 < 0)
    {
      goto LABEL_96;
    }

    v163 = 0;
    OUTLINED_FUNCTION_44_22();
    v251 = v164;
    v252 = v165;
    v249 = v1 + 64;
    v250 = v1 + 56;
    while (1)
    {
      v75 = __OFADD__(v163++, 1);
      if (v75)
      {
        break;
      }

      v166 = v253;
      v6 = v254;
      v167 = v255;
      v168 = OUTLINED_FUNCTION_5_81();
      specialized Set.subscript.getter(v168, v169, v167, v1);
      v171 = v170;
      isUniquelyReferenced_nonNull_native = [v170 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v2 = *(v256 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v252)
      {
        if (!v167)
        {
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_5_81();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd, &_sSh5IndexVySo20TUConversationMemberC_GMR);
        v175 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v175(&v272, 0);
      }

      else
      {
        if (v167)
        {
          goto LABEL_100;
        }

        if (v166 < 0)
        {
          goto LABEL_91;
        }

        v172 = 1 << *(v1 + 32);
        if (v166 >= v172)
        {
          goto LABEL_91;
        }

        v173 = *(v250 + 8 * (v166 >> 6));
        if (((v173 >> v166) & 1) == 0)
        {
          goto LABEL_92;
        }

        if (*(v1 + 36) != v6)
        {
          goto LABEL_93;
        }

        v174 = v173 & (-2 << (v166 & 0x3F));
        if (v174)
        {
          v172 = __clz(__rbit64(v174)) | v166 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          OUTLINED_FUNCTION_42_34();
          v179 = (v249 + 8 * v178);
          while (v177 < v176)
          {
            v180 = *v179++;
            isUniquelyReferenced_nonNull_native = v180;
            v167 += 64;
            ++v177;
            if (v180)
            {
              v181 = OUTLINED_FUNCTION_5_81();
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v181, v182, 0);
              v172 = __clz(__rbit64(isUniquelyReferenced_nonNull_native)) + v167;
              goto LABEL_75;
            }
          }

          v183 = OUTLINED_FUNCTION_5_81();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v183, v184, 0);
        }

LABEL_75:
        v185 = *(v1 + 36);
        v253 = v172;
        v254 = v185;
        v255 = 0;
      }

      if (v163 == v160)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v253, v254, v255);
        v186 = v256;
        goto LABEL_82;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
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
    __break(1u);
LABEL_94:
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(&v257, v259);
  v66 = OUTLINED_FUNCTION_36_41();
  v1 = v67(v66);
  v68 = specialized Set.count.getter();
  if (!v68)
  {

LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(&v257);

    goto LABEL_33;
  }

  v69 = v68;
  v266[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v267 = specialized Set.startIndex.getter();
  v268 = v70;
  v269 = v71 & 1;
  if ((v69 & 0x8000000000000000) == 0)
  {
    v72 = 0;
    OUTLINED_FUNCTION_44_22();
    v248 = v73;
    v249 = v74;
    v245 = v1 + 56;
    v236 = v1 + 64;
    while (1)
    {
      v75 = __OFADD__(v72++, 1);
      if (v75)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = v267;
      v6 = v268;
      v76 = v269;
      v77 = OUTLINED_FUNCTION_41_30();
      specialized Set.subscript.getter(v77, v78, v76, v1);
      v80 = v79;
      v2 = [v79 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v81 = *(v266[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v249)
      {
        if (!v76)
        {
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_41_30();
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        }

        else
        {
          isUniquelyReferenced_nonNull_native = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd, &_sSh5IndexVySo20TUConversationMemberC_GMR);
        v85 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        v85(&v272, 0);
      }

      else
      {
        if (v76)
        {
          goto LABEL_99;
        }

        if (isUniquelyReferenced_nonNull_native < 0)
        {
          goto LABEL_88;
        }

        v82 = 1 << *(v1 + 32);
        if (isUniquelyReferenced_nonNull_native >= v82)
        {
          goto LABEL_88;
        }

        v83 = *(v245 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
        if (((v83 >> isUniquelyReferenced_nonNull_native) & 1) == 0)
        {
          goto LABEL_89;
        }

        if (*(v1 + 36) != v6)
        {
          goto LABEL_90;
        }

        v84 = v83 & (-2 << (isUniquelyReferenced_nonNull_native & 0x3F));
        if (v84)
        {
          v82 = __clz(__rbit64(v84)) | isUniquelyReferenced_nonNull_native & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          OUTLINED_FUNCTION_42_34();
          v89 = (v236 + 8 * v88);
          while (v87 < v86)
          {
            v90 = *v89++;
            v2 = v90;
            v81 += 64;
            ++v87;
            if (v90)
            {
              v91 = OUTLINED_FUNCTION_41_30();
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v91, v92, 0);
              v82 = __clz(__rbit64(v2)) + v81;
              goto LABEL_27;
            }
          }

          v93 = OUTLINED_FUNCTION_41_30();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v93, v94, 0);
        }

LABEL_27:
        v95 = *(v1 + 36);
        v267 = v82;
        v268 = v95;
        v269 = 0;
      }

      if (v72 == v69)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v267, v268, v269);
        v62 = v243;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_87;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

uint64_t closure #1 in ConversationStateManager.init(call:callCenter:defaults:)@<X0>(uint64_t (**a1)(void, void)@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v5 = static ConversationStateManager.displayName(call:conversationController:)(a3, a1);
  v7 = v6;
  ObjectType = swift_getObjectType();
  result = a1[15](ObjectType, a1);
  if (result)
  {
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  else
  {

    result = Call.continuityCall.getter(ObjectType, a1);
    if (result)
    {
      *a2 = result;
      *(a2 + 8) = 0;
      v10 = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      v10 = 4;
    }

    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t static ConversationStateManager.displayName(call:conversationController:)(uint64_t a1, uint64_t (**a2)(void, void))
{
  ObjectType = swift_getObjectType();
  v4 = a2[23](ObjectType, a2);
  v5 = [v4 isTelephonyProvider];

  if (v5)
  {
    return a2[9](ObjectType, a2);
  }

  if ((a2[15](ObjectType, a2) & 1) == 0 || (v6 = ConversationController.conversationDisplayName.getter(), !v7))
  {
    v9 = [objc_opt_self() conversationKit];
    v14._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0x454D495445434146;
    v11.value._countAndFlagsBits = 0x61737265766E6F43;
    v11.value._object = 0xEF74694B6E6F6974;
    v10._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v14)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  return v6;
}

id Call.continuityCall.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - v18;
  v55 = *(a2 + 56);
  v55(a1, a2, v17);
  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v21 = closure #1 in Call.continuityCall.getter(v2);
    v51 = v22;
    v52 = v21;
    v50 = closure #2 in Call.continuityCall.getter(v2);
    v49 = closure #3 in Call.continuityCall.getter(v2);
    v53 = v13;
    v54 = v15;
    (*(v13 + 16))(v15, v19, v12);
    v23 = (*(a2 + 504))(a1, a2);
    if (v23)
    {
      v24 = v23;
      v25 = [v23 UUID];

      v26 = v56;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v56;
    }

    __swift_storeEnumTagSinglePayload(v26, v27, 1, v12);
    (*(a2 + 64))(a1, a2);
    v48 = (*(a2 + 208))(a1, a2);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v28 = (*(a2 + 376))(a1, a2);
    isa = NSNumber.init(BOOLeanLiteral:)(v28 & 1).super.super.isa;
    v29 = (*(a2 + 328))(a1, a2);
    v46 = NSNumber.init(BOOLeanLiteral:)(v29 & 1).super.super.isa;
    v30 = (v55)(a1, a2);
    v32 = v31;
    v33 = (*(a2 + 72))(a1, a2);
    v35 = v34;
    v36 = Dictionary.init(dictionaryLiteral:)();
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    v38 = v53;
    if (v37)
    {
      v39 = [v37 isBlocked];
    }

    else
    {
      v39 = 0;
    }

    v40 = v54;
    v41 = objc_allocWithZone(MEMORY[0x1E69D8B18]);
    v42 = @nonobjc TUContinuityCallInfo.init(callIdentifier:callerIdSubstring:displayName:isBranded:isEmergency:contactIdentifiersByHandle:senderIdentityShortName:senderIdentityName:handlesHash:handlesBlocked:)(v30, v32, v52, v51, v33, v35, v50 & 1, v49 & 1, v36, 0, 0, 0, 0, 0, 0xF000000000000000, v39);
    v43 = objc_allocWithZone(MEMORY[0x1E69D8B10]);
    v20 = @nonobjc TUContinuityCall.init(uuid:conversationUUID:callGroupUUID:status:isMuted:isCameraEnabled:callInfo:)(v40, v56, v57, v48, isa, v46, v42);
    (*(v38 + 8))(v19, v12);
  }

  return v20;
}

uint64_t Call.displayStatus.getter@<X0>(uint64_t (**a1)(void, void)@<X1>, uint64_t a2@<X8>)
{
  swift_unknownObjectRetain();

  return CallDisplayStatus.init(call:)(a1, a2);
}

void specialized Call.isCallingEmergencyServices.getter()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if ((v2 & 1) != 0 || (v3 = [v0 provider], v4 = objc_msgSend(v3, sel_isSuperboxProvider), v3, v4))
  {
    v5 = [v0 handle];
    if (v5)
    {
      v6 = v5;
      v7 = [v0 provider];
      v8 = [v7 emergencyHandles];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v6;
      MEMORY[0x1EEE9AC00](v10);
      v20[2] = &v21;
      LOBYTE(v7) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v20, v9);

      if (v7)
      {
LABEL_17:
      }

      else
      {
        v11 = [v0 provider];
        v12 = [v11 emergencyLabeledHandles];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULabeledHandle, 0x1E69D8C18);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = specialized Array.count.getter();
        v15 = 0;
        while (1)
        {
          if (v14 == v15)
          {
LABEL_16:

            goto LABEL_17;
          }

          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1BFB22010](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
          v18 = [v17 handle];
          v19 = static NSObject.== infix(_:_:)();

          ++v15;
          if (v19)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }
  }
}

void Call.isCallingEmergencyServices.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 184);
  v5 = v4();
  v6 = [v5 isTelephonyProvider];

  if ((v6 & 1) != 0 || (v7 = (v4)(a1, a2), v8 = [v7 isSuperboxProvider], v7, v8))
  {
    v9 = (*(a2 + 80))(a1, a2);
    if (v9)
    {
      v10 = v9;
      v11 = (v4)(a1, a2);
      v12 = [v11 emergencyHandles];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v10;
      MEMORY[0x1EEE9AC00](v14);
      v24[2] = &v25;
      LOBYTE(v11) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v24, v13);

      if (v11)
      {
LABEL_17:
      }

      else
      {
        v15 = (v4)(a1, a2);
        v16 = [v15 emergencyLabeledHandles];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TULabeledHandle, 0x1E69D8C18);
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = specialized Array.count.getter();
        v19 = 0;
        while (1)
        {
          if (v18 == v19)
          {
LABEL_16:

            goto LABEL_17;
          }

          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1BFB22010](v19, v17);
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
          v22 = [v21 handle];
          v23 = static NSObject.== infix(_:_:)();

          ++v19;
          if (v23)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }
  }
}

id TUVideoDeviceController.currentCameraEffectsState.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 currentInputSupportsCinematicFraming];
  v4 = [v1 isCinematicFramingEnabled];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v1 supportsCameraBlur];
  v7 = [v1 cameraBlurEnabled];
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  v9 = [v1 currentInputSupportsStudioLight];
  v10 = [v1 isStudioLightEnabled];
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 2;
  }

  v12 = [v1 currentInputSupportsReactionEffects];
  result = [v1 isReactionEffectGestureEnabled];
  *a1 = v5;
  if (v12)
  {
    v14 = result;
  }

  else
  {
    v14 = 2;
  }

  a1[1] = v8;
  a1[2] = v11;
  a1[3] = v14;
  return result;
}

uint64_t ConversationStateManager.registerForCallStateUpdates()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So7NSTimerC10FoundationE14TimerPublisherCSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So7NSTimerC10FoundationE14TimerPublisherCSo17OS_dispatch_queueCGMR);
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v58 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVAJGMd, &_s7Combine10PublishersO5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVAJGMR);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVALGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVALGSo17OS_dispatch_queueCGMR);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for NSNotificationCenter.Publisher();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  v65 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v19 = &v42 - v18;
  v50 = objc_opt_self();
  v20 = [v50 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v61 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v21 = static OS_dispatch_queue.main.getter();
  v68[0] = v21;
  v63 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v63);
  v62 = _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
  v66 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v43 = v12;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v22 = *(v13 + 8);
  v46 = v13 + 8;
  v47 = v22;
  v22(v17, v12);
  swift_allocObject();
  v23 = v49;
  swift_unknownObjectWeakInit();
  v64 = MEMORY[0x1E695BE98];
  v45 = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  v24 = v48;
  Publisher<>.sink(receiveValue:)();

  v25 = *(v65 + 8);
  v65 += 8;
  v44 = v25;
  v25(v19, v24);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v26 = v50;
  v27 = [v50 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v28 = static OS_dispatch_queue.main.getter();
  v68[0] = v28;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v63);
  v29 = v43;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v47(v17, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v44(v19, v24);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v30 = [v26 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v31 = [v26 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v32 = v52;
  Publishers.Merge.init(_:_:)();
  v33 = static OS_dispatch_queue.main.getter();
  v68[0] = v33;
  v34 = v63;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v63);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Merge<NSNotificationCenter.Publisher, NSNotificationCenter.Publisher> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVAJGMd, &_s7Combine10PublishersO5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVAJGMR);
  v35 = v53;
  v36 = v54;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v55 + 8))(v32, v36);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Merge<NSNotificationCenter.Publisher, NSNotificationCenter.Publisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVALGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVALGSo17OS_dispatch_queueCGMR);
  v37 = v56;
  Publisher<>.sink(receiveValue:)();

  (*(v57 + 8))(v35, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v68[0] = *(v23 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callDurationStringTimer);

  v38 = static OS_dispatch_queue.main.getter();
  v67 = v38;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v34);
  type metadata accessor for NSTimer.TimerPublisher();
  _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70]);
  v39 = v58;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSTimer.TimerPublisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So7NSTimerC10FoundationE14TimerPublisherCSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So7NSTimerC10FoundationE14TimerPublisherCSo17OS_dispatch_queueCGMR);
  v40 = v59;
  Publisher<>.sink(receiveValue:)();

  (*(v60 + 8))(v39, v40);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  NSTimer.TimerPublisher.connect()();
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  swift_beginAccess();
  Cancellable.store(in:)();
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t ConversationStateManager.registerConversationControllerCallbacks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = partial apply for closure #1 in ConversationStateManager.registerConversationControllerCallbacks();
  v3[1] = v2;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = partial apply for closure #2 in ConversationStateManager.registerConversationControllerCallbacks();
  v7[1] = v6;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = partial apply for closure #3 in ConversationStateManager.registerConversationControllerCallbacks();
  v11[1] = v10;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v12, v13);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = partial apply for closure #4 in ConversationStateManager.registerConversationControllerCallbacks();
  v15[1] = v14;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v16, v17);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = partial apply for closure #5 in ConversationStateManager.registerConversationControllerCallbacks();
  v19[1] = v18;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v20, v21);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = partial apply for closure #6 in ConversationStateManager.registerConversationControllerCallbacks();
  v23[1] = v22;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v24, v25);

  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];
  *v27 = partial apply for closure #7 in ConversationStateManager.registerConversationControllerCallbacks();
  v27[1] = v26;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v28, v29);

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  *v31 = partial apply for closure #8 in ConversationStateManager.registerConversationControllerCallbacks();
  v31[1] = v30;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v32, v33);

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  swift_beginAccess();
  v36 = *v35;
  v37 = v35[1];
  *v35 = partial apply for closure #9 in ConversationStateManager.registerConversationControllerCallbacks();
  v35[1] = v34;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v36, v37);

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  *v39 = partial apply for closure #10 in ConversationStateManager.registerConversationControllerCallbacks();
  v39[1] = v38;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v40, v41);

  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  swift_beginAccess();
  v44 = *v43;
  v45 = v43[1];
  *v43 = partial apply for closure #11 in ConversationStateManager.registerConversationControllerCallbacks();
  v43[1] = v42;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v44, v45);

  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  swift_beginAccess();
  v48 = *v47;
  v49 = v47[1];
  *v47 = partial apply for closure #12 in ConversationStateManager.registerConversationControllerCallbacks();
  v47[1] = v46;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v48, v49);

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  *v51 = partial apply for closure #13 in ConversationStateManager.registerConversationControllerCallbacks();
  v51[1] = v50;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v52, v53);

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  *v55 = partial apply for closure #14 in ConversationStateManager.registerConversationControllerCallbacks();
  v55[1] = v54;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v56, v57);

  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  swift_beginAccess();
  v60 = *v59;
  v61 = v59[1];
  *v59 = partial apply for closure #14 in ConversationStateManager.registerConversationControllerCallbacks();
  v59[1] = v58;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v60, v61);

  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  swift_beginAccess();
  v64 = *v63;
  v65 = v63[1];
  *v63 = partial apply for closure #14 in ConversationStateManager.registerConversationControllerCallbacks();
  v63[1] = v62;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v64, v65);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  *v67 = partial apply for closure #14 in ConversationStateManager.registerConversationControllerCallbacks();
  v67[1] = v66;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v68, v69);

  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = *v7;
  v72 = v7[1];
  *v7 = partial apply for closure #18 in ConversationStateManager.registerConversationControllerCallbacks();
  v7[1] = v70;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v71, v72);

  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  swift_beginAccess();
  v75 = *v74;
  v76 = v74[1];
  *v74 = partial apply for closure #19 in ConversationStateManager.registerConversationControllerCallbacks();
  v74[1] = v73;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v75, v76);

  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  *v78 = partial apply for closure #20 in ConversationStateManager.registerConversationControllerCallbacks();
  v78[1] = v77;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v79, v80);

  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  *v82 = partial apply for closure #21 in ConversationStateManager.registerConversationControllerCallbacks();
  v82[1] = v81;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v83, v84);

  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v86 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  *v86 = partial apply for closure #22 in ConversationStateManager.registerConversationControllerCallbacks();
  v86[1] = v85;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v87, v88);

  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  swift_beginAccess();
  v91 = *v90;
  v92 = v90[1];
  *v90 = partial apply for closure #23 in ConversationStateManager.registerConversationControllerCallbacks();
  v90[1] = v89;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v91, v92);

  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  *v94 = partial apply for closure #24 in ConversationStateManager.registerConversationControllerCallbacks();
  v94[1] = v93;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v95, v96);
}

Swift::Void __swiftcall ConversationStateManager.registerForMostActiveParticipantControllerCallbacks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_mostActiveParticipantsController);
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_5(v1 + 16, v5);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = partial apply for closure #1 in ConversationStateManager.registerForMostActiveParticipantControllerCallbacks();
  *(v1 + 24) = v2;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v3, v4);
}

void ConversationStateManager.updateDisplayProperties(using:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  ConversationStateManager.updateImage(using:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CNContactCSgMd, &_sSo9CNContactCSgMR);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v1 = Dictionary.init(dictionaryLiteral:)();
  ConversationPresentationStateProvider.onContactsByHandleUpdated(_:)(v1);
}

void closure #5 in ConversationStateManager.init(call:callCenter:defaults:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter);

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v6 = [v4 callsWithGroupUUID_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = specialized Array.count.getter();
  for (i = 0; v8 != i; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB22010](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v12 = [v10 remoteParticipantHandles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v13);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    ConversationStateManager.updateDisplayProperties(using:)(v2);
  }
}

uint64_t ConversationStateManager.updateImage(using:)()
{
  ConversationController.lookupActiveConversation()();
  if (!v5)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v4, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  outlined init with take of TapInteractionHandler(&v4, v6);
  v0 = v7;
  v1 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9.value.super.isa = (*(v1 + 48))(v0, v1);
  isa = v9.value.super.isa;
  ConversationPresentationStateProvider.onImageUpdated(_:)(v9);

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

id ConversationStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationStateManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ConversationStateManager.toggleSendingVideo()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v14 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v5 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = partial apply for closure #1 in ConversationStateManager.toggleSendingVideo();
  v15[5] = v6;
  OUTLINED_FUNCTION_5_73();
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed () -> ();
  v15[3] = &block_descriptor_14_3;
  v7 = _Block_copy(v15);

  static DispatchQoS.unspecified.getter();
  v15[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v8, v9);
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_47_20(v10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v11);
  _Block_release(v7);

  v12 = OUTLINED_FUNCTION_181();
  v13(v12);
  (*(v3 + 8))(v0, v14);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationStateManager.toggleSendingVideo()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController);

    ConversationController.toggleLocalVideo(shouldPauseIfStopped:)(0);
  }
}

Swift::Void __swiftcall ConversationStateManager.endCall()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v53 = v2;
  v54 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_40();
  v51 = v3;
  OUTLINED_FUNCTION_4_24();
  v52 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v50 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v49 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v48 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v55 = v17;
  v47 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_4_0(v18, &v58);
  v19 = *(v18 + 8);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 184);
  swift_unknownObjectRetain();
  v22 = OUTLINED_FUNCTION_33_0();
  v23 = v21(v22);
  v24 = [v23 isTelephonyProvider];

  if (v24)
  {
    v25 = OUTLINED_FUNCTION_33_0();
    v26(v25);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      v27 = v48;
      v28 = *(v48 + 32);
      v28(v55, v10, v11);
      v46 = [*(v47 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter) queue];
      OUTLINED_FUNCTION_20();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = OUTLINED_FUNCTION_26_55();
      v31 = v11;
      v45 = v11;
      v32(v30);
      v33 = v27;
      v34 = (*(v27 + 80) + 24) & ~*(v27 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v29;
      v28(v35 + v34, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      v57[4] = partial apply for closure #1 in ConversationStateManager.endCall();
      v57[5] = v35;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 1107296256;
      OUTLINED_FUNCTION_6_5();
      v57[2] = v36;
      v57[3] = &block_descriptor_21_2;
      v37 = _Block_copy(v57);

      v38 = v49;
      static DispatchQoS.unspecified.getter();
      v56 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_0_228();
      _s10Foundation4UUIDVACSHAAWlTm_10(v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      OUTLINED_FUNCTION_3_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v41, &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v42 = v51;
      v43 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v46;
      MEMORY[0x1BFB215C0](0, v38, v42, v37);
      _Block_release(v37);
      swift_unknownObjectRelease();

      (*(v53 + 8))(v42, v43);
      (*(v50 + 8))(v38, v52);
      (*(v33 + 8))(v55, v45);

      goto LABEL_6;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  (*(v19 + 488))(0, ObjectType, v19);
  swift_unknownObjectRelease();
LABEL_6:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationStateManager.endCall()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter;
    v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v6 = [v4 callsWithGroupUUID_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = specialized Array.count.getter();
    if (v8)
    {
      v9 = v8;
      if (v8 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v9; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB22010](i, v7);
        }

        else
        {
          v11 = *(v7 + 8 * i + 32);
        }

        v12 = v11;
        [*&v2[v3] disconnectCall:v11 withReason:0];
      }
    }
  }
}

Swift::Void __swiftcall ConversationStateManager.updatePresentationSize(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  OUTLINED_FUNCTION_4_0(*(v1 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call, v5);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 setRemoteVideoPresentationSize_];
  }
}

void *ConversationStateManager.updateRemoteVideoPresentationState(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(*(v1 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call, v15);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = result;
    v5 = one-time initialization token for conversationStateManager;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationStateManager);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      type metadata accessor for TUCallRemoteVideoPresentationState(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BBC58000, v7, v8, "Updating remote video presentation state: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }

    [v4 setRemoteVideoPresentationState_];
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ConversationStateManager.upgradeToRTT()()
{
  OUTLINED_FUNCTION_4_0(*(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call, v5);
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = [v2 provider];
    v4 = [v3 isTelephonyProvider];

    if (v4)
    {
      [*(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter) setTTYType:1 forCall:v2];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationStateManager.toggleCameraBlurEffectState()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localVideoController);
  if ([v1 supportsCameraBlur])
  {
    TUVideoDeviceController.setCameraBlurEnabled(_:)([v1 cameraBlurEnabled] != 1);
  }
}

id ConversationStateManager.toggleCinematicFramingEffectState()(SEL *a1, SEL *a2, const char **a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_localVideoController);
  result = [v6 *a1];
  if (result)
  {
    v8 = [v6 *a2];
    v9 = *a3;

    return [v6 v9];
  }

  return result;
}

char *closure #1 in ConversationStateManager.registerForCallStateUpdates()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController] + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 328);
    swift_unknownObjectRetain();
    LOBYTE(v4) = v7(ObjectType, v5);
    swift_unknownObjectRelease();

    ConversationPresentationStateProvider.onSendingVideoStateUpdated(_:)(v4 & 1);
  }

  return result;
}

char *closure #2 in ConversationStateManager.registerForCallStateUpdates()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController] + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 376);
    swift_unknownObjectRetain();
    LOBYTE(v4) = v7(ObjectType, v5);
    swift_unknownObjectRelease();

    ConversationPresentationStateProvider.onMutedStateUpdated(_:)(v4 & 1);
  }

  return result;
}

void closure #3 in ConversationStateManager.registerForCallStateUpdates()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ConversationStateManager.updateRTTState()();
  }
}

void ConversationStateManager.updateRTTState()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 176);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  ConversationPresentationStateProvider.onRTTCallStateChange(_:)(v1 & 1);
  ConversationController.shouldShowRTTUpgrade.getter();
  ConversationPresentationStateProvider.onShouldShowRTTUpgradeChange(_:)(v5 & 1);
}

double closure #4 in ConversationStateManager.registerForCallStateUpdates()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8.value._countAndFlagsBits = (*(*(v6 + 8) + 16))(ObjectType);
    ConversationPresentationStateProvider.onCallDurationUpdated(_:)(v8);
  }

  return result;
}

void closure #1 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_61_0();
  v10(v9);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_33_0();
  v13(v12);
  if (v11)
  {
    OUTLINED_FUNCTION_4_0(a5 + 16, v16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      ConversationLocalParticipantStateProvider.onLocalParticipantChanged(_:)(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #4 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (!*(a1 + *(type metadata accessor for Participant(0) + 28)))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        ConversationLocalParticipantStateProvider.onReactingStateChanged(_:)(1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #5 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (!*(a1 + *(type metadata accessor for Participant(0) + 28)))
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        ConversationLocalParticipantStateProvider.onReactingStateChanged(_:)(0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      ConversationStateManager.conversationControllerParticipantsDidChange()();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #8 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      ConversationStateManager.conversationControllerDidUpdateRemoteParticipant(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t ConversationStateManager.conversationControllerDidUpdateRemoteParticipant(_:)()
{
  if ((Participant.isActive.getter() & 1) == 0)
  {
    type metadata accessor for Participant(0);
    specialized MostActiveParticipantsController.markParticipantAsOffline(_:)();
  }

  return ConversationStateManager.conversationControllerParticipantsDidChange()();
}

void closure #6 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v3, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v3, v5);
  if (v9)
  {
    OUTLINED_FUNCTION_4_0(a3 + 16, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      ConversationStateManager.conversationControllerParticipantsDidChange()();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #10 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_61_0();
  v8(v7);
  v9 = _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_33_0();
  v11(v10);
  if (v9)
  {
    if (*(a1 + *(type metadata accessor for Participant(0) + 28)))
    {
      OUTLINED_FUNCTION_4_0(a3 + 16, v14);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        ConversationStateManager.conversationControllerDidUpdateRemoteParticipant(_:)();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #12 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      ConversationStateManager.conversationControllerMediaPrioritiesDidChange(_:)(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

double ConversationStateManager.conversationControllerMediaPrioritiesDidChange(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v34 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v34);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_defaults + 8);
  ObjectType = swift_getObjectType();
  v33 = (*(v7 + 288))(ObjectType, v7);
  v32 = (*(v7 + 296))(ObjectType, v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v30[0] = v5;
    v30[1] = v1;
    *&v40[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = *&v40[0];
    v11 = (a1 + 76);
    do
    {
      v12 = *(v11 - 11);
      v13 = *(v11 - 9);
      v14 = *(v11 - 28);
      v35 = *(v11 - 5);
      v15 = *(v11 - 3);
      if (v33)
      {
        v16 = *(v11 - 1);
      }

      else
      {
        v16 = 0.0;
      }

      if (v32)
      {
        v17 = *v11;
      }

      else
      {
        v17 = 0.0;
      }

      *&v40[0] = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      v20 = v19 + 1;
      v21 = v12;

      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v10 = *&v40[0];
      }

      *(v10 + 16) = v20;
      v22 = v10 + 48 * v19;
      *(v22 + 32) = v21;
      *(v22 + 40) = v13;
      *(v22 + 48) = v14;
      *(v22 + 56) = v35;
      *(v22 + 64) = v15;
      *(v22 + 72) = v16;
      *(v22 + 76) = v17;
      v11 += 12;
      --v9;
    }

    while (v9);
    v5 = v30[0];
    goto LABEL_14;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v20 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v20)
  {
LABEL_14:
    v23 = 32;
    v24 = v31;
    do
    {
      v25 = *(v10 + v23);
      v26 = *(v10 + v23 + 32);
      v40[1] = *(v10 + v23 + 16);
      v40[2] = v26;
      v40[0] = v25;
      v27 = *(v10 + v23);
      v28 = *(v10 + v23 + 16);
      v41 = *(v10 + v23 + 32);
      v40[3] = v27;
      v40[4] = v28;
      v37 = v27;
      v38 = v28;
      v39 = v41;
      outlined init with copy of ParticipantMediaPriorities(v40, v36);
      outlined init with copy of ParticipantMediaPriorities(v40, v36);
      ConversationController.participant(with:)();

      if (__swift_getEnumTagSinglePayload(v5, 1, v34) == 1)
      {
        outlined destroy of ParticipantMediaPriorities(v40);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else
      {
        outlined init with take of Participant(v5, v24);
        specialized MostActiveParticipantsController.update(_:mediaPriorities:)();
        outlined destroy of ParticipantMediaPriorities(v40);
        outlined destroy of Participant(v24);
      }

      v23 += 48;
      --v20;
    }

    while (v20);
    goto LABEL_22;
  }

LABEL_22:

  return result;
}

uint64_t ConversationStateManager.cameraEffectsStateDidChange()()
{
  TUVideoDeviceController.currentCameraEffectsState.getter(&v2);
  v1 = v2;
  return ConversationLocalParticipantStateProvider.onCameraEffectsStateChanged(_:)(&v1);
}

void closure #13 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_0(a2 + 16, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ConversationStateManager.cameraEffectsStateDidChange()();
  }
}

void closure #18 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    ConversationStateManager.cameraEffectsStateDidChange()();
  }
}

void closure #19 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #20 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      ConversationPresentationStateProvider.onAudioVideoModeUpdated(_:)(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #21 in ConversationStateManager.registerConversationControllerCallbacks()(char a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      ConversationPresentationStateProvider.onOneToOneModeEnabledStateUpdated(_:)(a1 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #22 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *(Strong + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_callCenter);
      ObjectType = swift_getObjectType();
      v13 = *(a2 + 56);
      v14 = v11;
      v15 = v13(ObjectType, a2);
      v16 = MEMORY[0x1BFB209B0](v15);

      v17 = [v14 callWithCallUUID_];

      if (v17)
      {
        v18 = v17;
        v19 = [v18 isConnecting];
        v20 = [v18 isConnected];
        v21 = [v18 status];

        v22[0] = v19;
        v22[1] = v20;
        v23 = v21;
        ConversationStateManager.conversationControllerCallStatusDidChange(_:)(v22);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void ConversationStateManager.conversationControllerCallStatusDidChange(_:)(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 4);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = v2;
  ConversationPresentationStateProvider.onCallDisplayStatusUpdated(_:)(v3);

  ConversationStateManager.updateRTTState()();
}

void closure #3 in ConversationStateManager.registerConversationControllerCallbacks()(char a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = (v12 - v11);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v7);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_4_0(a2 + 16, v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      a4(a1 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #24 in ConversationStateManager.registerConversationControllerCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    ConversationStateManager.conversationControllerParticipantsDidChange()();
  }
}

uint64_t ConversationStateManager.conversationControllerParticipantsDidChange()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit24ConversationStateManager_conversationController);
  swift_beginAccess();

  ConversationRemoteParticipantsStateProvider.onParticipantsChanged(_:)(v6);

  v7 = ConversationController.conversationDisplayName.getter();
  if (v8)
  {
    countAndFlagsBits = v7;
    object = v8;
  }

  else
  {
    v11 = [objc_opt_self() conversationKit];
    v62._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0x454D495445434146;
    v13.value._countAndFlagsBits = 0x61737265766E6F43;
    v13.value._object = 0xEF74694B6E6F6974;
    v12._object = 0xE800000000000000;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v62._countAndFlagsBits = 0;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v62);
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
  }

  *&v60 = countAndFlagsBits;
  *(&v60 + 1) = object;
  v61 = 0;
  ConversationPresentationStateProvider.onCallDisplayInfoUpdated(_:)(&v60);
  outlined consume of CallDisplayInfo(v60, *(&v60 + 1), v61);
  ConversationController.lookupActiveConversation()();
  outlined init with copy of Participant?(&v60, v57, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  v16 = v58;
  if (!v58)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v44 = MEMORY[0x1E69E7CC0];
LABEL_34:
    ConversationStateManager.updateDisplayProperties(using:)(v44);

    if (CaptioningStateManager.isCaptioningEnabled.getter())
    {
      ConversationController.captionsRecognizerShouldBeRunning.setter();
    }

    v45 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    outlined init with copy of Participant(v5 + v45, v4);
    ConversationLocalParticipantStateProvider.onLocalParticipantChanged(_:)(v4);
    outlined destroy of Participant(v4);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v60, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  v17 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v18 = (*(v17 + 96))(v16, v17);
  v19 = specialized Set.count.getter();
  if (!v19)
  {

    v44 = MEMORY[0x1E69E7CC0];
LABEL_33:
    __swift_destroy_boxed_opaque_existential_1(v57);
    goto LABEL_34;
  }

  v20 = v19;
  v56 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = specialized Set.startIndex.getter();
  v53 = result;
  v54 = v22;
  v55 = v23 & 1;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v46 = v5;
    v47 = v4;
    v48 = v1;
    v24 = 0;
    v25 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v18 < 0)
    {
      v25 = v18;
    }

    v51 = v25;
    v50 = v18 + 56;
    v49 = v18 + 64;
    while (!__OFADD__(v24++, 1))
    {
      v28 = v53;
      v27 = v54;
      v29 = v55;
      specialized Set.subscript.getter(v53, v54, v55, v18);
      v31 = v30;
      v32 = [v30 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if ((v18 & 0xC000000000000001) != 0)
      {
        if (!v29)
        {
          goto LABEL_42;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd, &_sSh5IndexVySo20TUConversationMemberC_GMR);
        v37 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v37(v52, 0);
      }

      else
      {
        if (v29)
        {
          goto LABEL_43;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v33 = 1 << *(v18 + 32);
        if (v28 >= v33)
        {
          goto LABEL_38;
        }

        v34 = v28 >> 6;
        v35 = *(v50 + 8 * (v28 >> 6));
        if (((v35 >> v28) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v18 + 36) != v27)
        {
          goto LABEL_40;
        }

        v36 = v35 & (-2 << (v28 & 0x3F));
        if (v36)
        {
          v33 = __clz(__rbit64(v36)) | v28 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v38 = v34 << 6;
          v39 = v34 + 1;
          v40 = (v49 + 8 * v34);
          while (v39 < (v33 + 63) >> 6)
          {
            v42 = *v40++;
            v41 = v42;
            v38 += 64;
            ++v39;
            if (v42)
            {
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v28, v27, 0);
              v33 = __clz(__rbit64(v41)) + v38;
              goto LABEL_28;
            }
          }

          result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v28, v27, 0);
        }

LABEL_28:
        v43 = *(v18 + 36);
        v53 = v33;
        v54 = v43;
        v55 = 0;
      }

      if (v24 == v20)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v53, v54, v55);
        v44 = v56;
        v4 = v47;
        v5 = v46;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void closure #1 in ConversationStateManager.registerForMostActiveParticipantControllerCallbacks()(char a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      ConversationStateManager.mostActiveParticipantDidChange(with:)();
    }
  }

  else
  {
    __break(1u);
  }
}

double ConversationStateManager.mostActiveParticipantDidChange(with:)()
{
  active = specialized MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter();
  ConversationRemoteParticipantsStateProvider.onMostActiveParticipantsChanged(_:)(active);

  return result;
}

void *closure #1 in Call.continuityCall.getter(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = [v1 localizedLabel];
    if (v2)
    {
      v3 = v2;
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return v1;
}

uint64_t closure #2 in Call.continuityCall.getter(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v9 = result;
    swift_unknownObjectRetain();
    v10 = [v9 imageURL];
    if (v10)
    {
      v11 = v10;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v2 + 32))(v7, v4, v1);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v1);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v12 = [v9 localizedLabel];
      if (v12)
      {

        v13 = [v9 callDirectoryName];
        if (!v13)
        {
          swift_unknownObjectRelease();
          return 1;
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v1);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    return 0;
  }

  return result;
}

uint64_t closure #3 in Call.continuityCall.getter(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    swift_unknownObjectRetain();
    specialized Call.isCallingEmergencyServices.getter();
    v3 = v2;
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

id @nonobjc TUContinuityCallInfo.init(callIdentifier:callerIdSubstring:displayName:isBranded:isEmergency:contactIdentifiersByHandle:senderIdentityShortName:senderIdentityName:handlesHash:handlesBlocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, char a16)
{
  v17 = v16;
  v32 = MEMORY[0x1BFB209B0](a1);

  if (a4)
  {
    v23 = MEMORY[0x1BFB209B0](a3, a4);
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x1BFB209B0](a5, a6);

  v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a11)
  {
    v26 = MEMORY[0x1BFB209B0](a10, a11);
  }

  else
  {
    v26 = 0;
  }

  if (a13)
  {
    v27 = MEMORY[0x1BFB209B0](a12, a13);
  }

  else
  {
    v27 = 0;
  }

  if (a15 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a14, a15);
  }

  LOBYTE(v31) = a16 & 1;
  v29 = [v17 initWithCallIdentifier:v32 callerIdSubstring:v23 displayName:v24 isBranded:a7 & 1 isEmergency:a8 & 1 contactIdentifiersByHandle:v25.super.isa senderIdentityShortName:v26 senderIdentityName:v27 handlesHash:isa handlesBlocked:v31];

  return v29;
}

id @nonobjc TUContinuityCall.init(uuid:conversationUUID:callGroupUUID:status:isMuted:isCameraEnabled:callInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, void *a6, void *a7)
{
  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = type metadata accessor for UUID();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v14) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v14 - 8) + 8))(a2, v14);
  }

  if (__swift_getEnumTagSinglePayload(a3, 1, v14) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v14 - 8) + 8))(a3, v14);
  }

  v17 = [v19 initWithUUID:v13.super.isa conversationUUID:isa callGroupUUID:v16 status:a4 isMuted:a5 isCameraEnabled:a6 callInfo:a7];

  (*(*(v14 - 8) + 8))(a1, v14);
  return v17;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_10(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_226();
  v1(v0);

  return swift_deallocObject();
}

uint64_t partial apply for closure #5 in ConversationStateManager.init(call:callCenter:defaults:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

void partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v1);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v6 = *(v5 + *(v3 + 64));

  specialized closure #1 in MostActiveParticipantsController.markParticipantAsUserSelected(_:shouldPostCallback:)(v4, v5, v6);
}

void partial apply for specialized closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_45_31();
  v4 = *(v0 + 16);

  specialized closure #1 in MostActiveParticipantsController.update(_:mediaPriorities:)(v4, v0 + v2, v0 + v3);
}

uint64_t outlined assign with copy of MostActiveParticipantsController<UUID>.ActivityDetails(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_45_31();
  v4 = *(v0 + v3);

  specialized closure #1 in MostActiveParticipantsController.markParticipantAsOffline(_:)(v0 + v2, v4);
}

uint64_t FTServerBag.isServerFaceTimeMyselfEnabled.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD00000000000001ALL, 0x80000001BC525510, result);

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
    }

    v6[0] = v4;
    v6[1] = v5;
    if (*(&v5 + 1))
    {
      if (swift_dynamicCast())
      {
        return v3;
      }
    }

    else
    {
      outlined destroy of Any?(v6);
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FTServerBag.remoteControlEnabled.getter()
{
  if (outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(0xD00000000000001FLL, 0x80000001BC525530, v0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    outlined destroy of Any?(v6);
    return 1;
  }

  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v1 = [v3 BOOLValue];

  return v1;
}

id outlined bridged method (mbnn) of @objc FTServerBag.object(forKey:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  v5 = [a3 objectForKey_];

  return v5;
}

uint64_t Conversation.currentSharePlayActivity.getter(uint64_t a1, uint64_t a2)
{
  v3 = Conversation.activities.getter(a1, a2);
  Array<A>.currentSharePlayActivity.getter(v3);
  OUTLINED_FUNCTION_28_0();

  return v2;
}

double Conversation.currentCollaboration.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = Conversation.activities.getter(a1, a2);
  Array<A>.currentCollaboration.getter(v4, a3);

  return result;
}

BOOL Conversation.isContinuitySession.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 280))(a1);
  v3 = [v2 mode];

  return v3 == 2;
}

uint64_t Conversation.avModeForSystemAperture.getter()
{
  OUTLINED_FUNCTION_55();
  if ((*(v0 + 56))() == 4 && (v1 = OUTLINED_FUNCTION_45_1(), v2(v1), v3 = specialized Set.count.getter(), , v3 == 1))
  {
    v4 = OUTLINED_FUNCTION_45_1();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_45_1();
  }

  return v5(v4);
}

double Conversation.currentActivity.getter@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v4 = Conversation.activities.getter(a2, a3);
  v5 = Array<A>.sortedActivities.getter(v4);

  specialized Collection.first.getter(v5, a1);

  return result;
}

id TUConversation.stagedSharePlayActivity.getter()
{
  v1 = [v0 stagedActivitySession];

  return v1;
}

uint64_t Conversation.currentScreenSharingRequest(ignoring:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_39_1(a1, a2);
  if (!Conversation.canDisplayScreenSharingRequest.getter())
  {
    return 0;
  }

  (*(a3 + 360))(a2, a3);
  OUTLINED_FUNCTION_28_0();

  specialized Set._Variant.filter(_:)(v3, a1);
  specialized Collection.first.getter(v7);
  OUTLINED_FUNCTION_28_0();

  return v3;
}

BOOL Conversation.isLinkSharingSupported.getter()
{
  OUTLINED_FUNCTION_55();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = OUTLINED_FUNCTION_45_1();
  v4(v3);
  v5 = type metadata accessor for UUID();
  v6 = __swift_getEnumTagSinglePayload(v2, 1, v5) == 1;
  outlined destroy of UUID?(v2, &_s10Foundation4UUIDVSgMd);
  return v6;
}

Swift::Bool __swiftcall Conversation.isLocalMemberAuthorizedToChangeGroupMembership()()
{
  OUTLINED_FUNCTION_55();
  v1 = (*(v0 + 168))();
  if (v1)
  {

    v2 = OUTLINED_FUNCTION_45_1();
    v4 = v3(v2);
    if (!v4)
    {
      return 1;
    }

    v5 = v4;
    v6 = [v4 canCreateConversations];

    return v6;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_45_1();

    return v8(v7);
  }
}

uint64_t TUConversation.isRestricted.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*((*MEMORY[0x1E69E7D40] & *static RestrictedConversationChecker.shared) + 0x80))(v0) & 1;
}

uint64_t Conversation.cnk_allowsVideoMessaging.getter()
{
  OUTLINED_FUNCTION_55();
  result = (*(v1 + 272))();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_45_1();
    v4(v3);
    specialized Set.count.getter();
    OUTLINED_FUNCTION_28_0();

    return v0 == 1;
  }

  return result;
}

uint64_t Conversation.containsAuthorizedToChangeGroupMembership(participantWithHandle:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_39_1(a1, a2);
  v4 = v3(v2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = OUTLINED_FUNCTION_33_0();
  v8 = Conversation.containsInvited(participantWithHandle:inLink:)(v6, v7);

  return v8 & 1;
}

void Conversation.allHandles(excludeOtherInvitedHandles:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(v6) = a1;
  v104 = *MEMORY[0x1E69E9840];
  v7 = OUTLINED_FUNCTION_39_1(a1, a2);
  v9 = v8(v7);
  v10 = OUTLINED_FUNCTION_33_0();
  v12 = v11(v10);
  specialized Set.union<A>(_:)(v12, v9, v13, v14, v15, v16, v17, v18, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
  v20 = v19;
  LOBYTE(v95) = v6;
  v89 = a3;
  v90 = v3;
  v88 = a2;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1E69E7CD0];
    v97 = MEMORY[0x1E69E7CD0];
    v22 = __CocoaSet.makeIterator()();
    v20 = &lazy cache variable for type metadata for TUConversationMember;
    while (1)
    {
      while (1)
      {
        v23 = __CocoaSet.Iterator.next()();
        if (!v23)
        {

          goto LABEL_35;
        }

        v91 = v23;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        swift_dynamicCast();
        if ((v6 & 1) == 0 || ([v101 isOtherInvitedHandle] & 1) == 0)
        {
          break;
        }
      }

      v24 = v101;
      v25 = *(v21 + 16);
      if (*(v21 + 24) <= v25)
      {
        specialized _NativeSet.resize(capacity:)(v25 + 1);
      }

      v21 = v97;
      v26 = NSObject._rawHashValue(seed:)(*(v97 + 40)) & ~(-1 << *(v97 + 32));
      if (((-1 << v26) & ~*(v97 + 56 + 8 * (v26 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_18:
      *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(*(v21 + 48) + 8 * v28) = v24;
      ++*(v21 + 16);
    }

    OUTLINED_FUNCTION_15_33();
    while (++v30 != v32 || (v31 & 1) == 0)
    {
      v33 = v30 == v32;
      if (v30 == v32)
      {
        v30 = 0;
      }

      v31 |= v33;
      if (*(v29 + 8 * v30) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
    v34 = *(v19 + 32);
    v21 = ((1 << v34) + 63) >> 6;
    v22 = (8 * v21);
    if ((v34 & 0x3Fu) > 0xD)
    {
      goto LABEL_74;
    }

LABEL_21:
    v87 = &v87;
    MEMORY[0x1EEE9AC00](v19);
    v22 = &v87 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v21, v22);
    v35 = 0;
    v36 = 0;
    OUTLINED_FUNCTION_33_2();
    v39 = v38 & v37;
    v41 = (v40 + 63) >> 6;
    while (v39)
    {
      OUTLINED_FUNCTION_93();
LABEL_29:
      v46 = v42 | (v36 << 6);
      if ((v6 & 1) == 0 || ([*(v20[6] + 8 * v46) isOtherInvitedHandle] & 1) == 0)
      {
        *&v22[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
        v47 = __OFADD__(v35++, 1);
        if (v47)
        {
          __break(1u);
LABEL_34:
          specialized _NativeSet.extractSubset(using:count:)(v22, v21, v35, v20);
          v21 = v48;
          goto LABEL_35;
        }
      }
    }

    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v36 >= v41)
      {
        goto LABEL_34;
      }

      ++v43;
      if (v20[v36 + 7])
      {
        OUTLINED_FUNCTION_7_1();
        v39 = v45 & v44;
        goto LABEL_29;
      }
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_74:

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    v21 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20TUConversationMemberCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So20iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v22, v21, v20, partial apply for closure #1 in Conversation.allHandles(excludeOtherInvitedHandles:), &v93);

    MEMORY[0x1BFB23DF0](v22, -1, -1);
LABEL_35:
    specialized Sequence.compactMap<A>(_:)(v21);
    v50 = v49;

    v6 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v50);
    v51 = OUTLINED_FUNCTION_33_0();
    active = Conversation.displayableActiveParticipants.getter(v51, v52);
    v54 = specialized Set.count.getter();
    if (!v54)
    {
      break;
    }

    v55 = v54;
    v91 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v101 = specialized Set.startIndex.getter();
    v102 = v56;
    LOBYTE(v103) = v57 & 1;
    if ((v55 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      if (active < 0)
      {
        v58 = active;
      }

      else
      {
        v58 = (active & 0xFFFFFFFFFFFFFF8);
      }

      v89 = active + 56;
      v90 = v58;
      v87 = v6;
      v88 = active + 64;
      while (1)
      {
        v47 = __OFADD__(v22++, 1);
        if (v47)
        {
          goto LABEL_68;
        }

        v59 = v101;
        v20 = v102;
        v60 = v103;
        v61 = OUTLINED_FUNCTION_112();
        specialized Set.subscript.getter(v61, v62, v60, active);
        v64 = v63;
        v65 = [v63 handle];
        v6 = TUNormalizedHandleForTUHandle();

        if (!v6)
        {
          v66 = [v64 handle];
          LOBYTE(v6) = v66;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v21 = *(v91 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if ((active & 0xC000000000000001) != 0)
        {
          if (!v60)
          {
            __break(1u);
LABEL_78:
            __break(1u);
          }

          OUTLINED_FUNCTION_112();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            LOBYTE(v6) = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo25TUConversationParticipantC_GMd, &_sSh5IndexVySo25TUConversationParticipantC_GMR);
          v71 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v71(&v97, 0);
        }

        else
        {
          if (v60)
          {
            goto LABEL_78;
          }

          if ((v59 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          v67 = (1 << *(active + 32));
          if (v59 >= v67)
          {
            goto LABEL_70;
          }

          v68 = v59 >> 6;
          v69 = *(v89 + 8 * (v59 >> 6));
          if (((v69 >> v59) & 1) == 0)
          {
            goto LABEL_71;
          }

          if (*(active + 36) != v20)
          {
            goto LABEL_72;
          }

          v70 = v69 & (-2 << (v59 & 0x3F));
          if (v70)
          {
            v67 = (__clz(__rbit64(v70)) | v59 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v6 = v68 << 6;
            v72 = v68 + 1;
            v73 = (v88 + 8 * v68);
            while (v72 < (v67 + 63) >> 6)
            {
              v74 = *v73++;
              v21 = v74;
              v6 += 64;
              ++v72;
              if (v74)
              {
                v75 = OUTLINED_FUNCTION_112();
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v75, v76, 0);
                v67 = (__clz(__rbit64(v21)) + v6);
                goto LABEL_62;
              }
            }

            v77 = OUTLINED_FUNCTION_112();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v77, v78, 0);
          }

LABEL_62:
          v101 = v67;
          v102 = v20;
          LOBYTE(v103) = 0;
        }

        if (v22 == v55)
        {

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v101, v102, v103);
          v79 = v91;
          v6 = v87;
          goto LABEL_66;
        }
      }
    }
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_66:
  v80 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v79);
  specialized Set.union<A>(_:)(v80, v6, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
}

uint64_t Conversation.containsKickable(participantWithHandle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 216);
  v5 = OUTLINED_FUNCTION_39_1(a1, a2);
  v6 = v4(v5);
  if (v6)
  {
    v7 = v6;
    v8 = Conversation.containsInvited(participantWithHandle:inLink:)(a1, v6);

    v9 = v8 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v11 = a1;
    v12 = String.init<A>(reflecting:)();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v16 = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 64) = v16;
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    v17 = OUTLINED_FUNCTION_33_0();
    if (v4(v17))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
      v18 = String.init<A>(reflecting:)();
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    *(v10 + 96) = v15;
    *(v10 + 104) = v16;
    *(v10 + 72) = v18;
    *(v10 + 80) = v19;
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Unable to determine kickable status for handle %@, %@", 53, 2, &dword_1BBC58000, v22, v20, v10);

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t Conversation.activities.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 328))();
  specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  specialized _arrayForceCast<A, B>(_:)();
  v6 = v5;

  (*(a2 + 312))(a1, a2);
  specialized _arrayForceCast<A, B>(_:)();
  v8 = v7;

  specialized Array.append<A>(contentsOf:)(v8);
  return v6;
}

uint64_t Array<A>.currentSharePlayActivity.getter(uint64_t a1)
{
  result = Array<A>.sortedActivities.getter(a1);
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return 0;
    }

    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of IDSLookupManager(i, &v9);
    v6 = v10;
    v7 = v11;
    v8 = __swift_project_boxed_opaque_existential_1(&v9, v10);
    if ((*(v7 + 104))(v6, v7))
    {
      break;
    }

    ++v3;
    result = __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  OUTLINED_FUNCTION_28_0();

  outlined init with take of TapInteractionHandler(&v9, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

BOOL Conversation.canDisplayScreenSharingRequest.getter()
{
  OUTLINED_FUNCTION_55();
  v1 = *(v0 + 272);
  if (v1() == 2)
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_45_1();
  return (v1)(v3) == 1;
}

uint64_t Array<A>.currentCollaboration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  result = Array<A>.sortedActivities.getter(a1);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v9 == v8)
    {

      v14 = type metadata accessor for Collaboration(0);
      v15 = v19;
      v16 = 1;
      return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    outlined init with copy of IDSLookupManager(i, &v20);
    v11 = v21;
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    (*(v12 + 112))(v11, v12);
    v13 = type metadata accessor for Collaboration(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v13) != 1)
    {

      outlined destroy of UUID?(v5, &_s15ConversationKit13CollaborationVSgMd);
      outlined init with take of TapInteractionHandler(&v20, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd, &_s15ConversationKit8Activity_pMR);
      v17 = v19;
      v16 = swift_dynamicCast() ^ 1;
      v15 = v17;
      v14 = v13;
      return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
    }

    ++v8;
    outlined destroy of UUID?(v5, &_s15ConversationKit13CollaborationVSgMd);
    result = __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  __break(1u);
  return result;
}

void Conversation.untrustedActiveLightweightParticipants.getter()
{
  OUTLINED_FUNCTION_55();
  v4 = (*(v3 + 112))();
  v6 = v2;
  v7 = v0;
  v8 = v1;
  specialized Set._Variant.filter(_:)(partial apply for closure #1 in Conversation.untrustedActiveLightweightParticipants.getter, &v5, v4);
}

void closure #1 in Conversation.untrustedActiveLightweightParticipants.getter(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *a1;
  v4 = (*(a4 + 144))(a3, a4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v6 = v24;
    v5 = v25;
    v8 = v26;
    v7 = v27;
    v9 = v28;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v7 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v9;
  v15 = v7;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v18 = v17;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v19 = v18;
        v20 = [v18 handle];
        v21 = [v23 handle];
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          break;
        }

        v7 = v15;
        v9 = v16;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
          swift_dynamicCast();
          v17 = v29;
          v15 = v7;
          v16 = v9;
          if (v29)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      outlined consume of Set<TUHandle>.Iterator._Variant(v6);

      [v19 isValidated];
    }

    else
    {
LABEL_19:
      outlined consume of Set<TUHandle>.Iterator._Variant(v6);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t closure #1 in Conversation.displayableActiveParticipants.getter(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 608))() & 1) == 0)
  {
    return 1;
  }

  v7 = [v6 identifier];
  v8 = (*(a4 + 176))(a3, a4);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = [v8 identifier];

  if (v7 != v10)
  {
    return 1;
  }

  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationController);
  v12 = v6;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1BBC58000, v13, v14, "Excluding participant %@ from displayable participants because it's the local participant", v15, 0xCu);
    outlined destroy of UUID?(v16, &_sSo8NSObjectCSgMd);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
    MEMORY[0x1BFB23DF0](v15, -1, -1);
  }

  return 0;
}

void Conversation.containsPending(participantWithHandle:)(void *a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_39_1(a1, a2);
  v4 = v3(v2);
  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v6 = v40;
    v5 = v41;
    v7 = v42;
    v8 = v43;
    v9 = v44;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v34 = v6;
  v35 = v5;
  v36 = v13;
  while (1)
  {
    v14 = v9;
    v15 = v8;
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), swift_dynamicCast(), v21 = v39, v19 = v14, !v39))
    {
LABEL_26:
      v31 = OUTLINED_FUNCTION_45_1();
      outlined consume of Set<TUHandle>.Iterator._Variant(v31);

      return;
    }

LABEL_17:
    v37 = v19;
    v22 = [v21 handles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = a1;
      v25 = __CocoaSet.contains(_:)();

      v13 = v36;
      v9 = v37;
      if (v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v32 = v14;
      v33 = v15;
      if (*(v23 + 16))
      {
        v26 = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v27 = ~(-1 << *(v23 + 32));
        while (1)
        {
          v28 = v26 & v27;
          if (((*(v23 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
          {
            break;
          }

          v29 = *(*(v23 + 48) + 8 * v28);
          v30 = static NSObject.== infix(_:_:)();

          v26 = v28 + 1;
          if (v30)
          {

            goto LABEL_26;
          }
        }
      }

      v6 = v34;
      v5 = v35;
      v13 = v36;
      v9 = v37;
    }
  }

  v16 = v8;
  if (v9)
  {
LABEL_13:
    OUTLINED_FUNCTION_7_1();
    v19 = v18 & v17;
    v21 = *(*(v6 + 48) + ((v8 << 9) | (8 * v20)));
    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_26;
    }

    ++v16;
    if (*(v5 + 8 * v8))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t Conversation.containsInvited(participantWithHandle:inLink:)(void *a1, id a2)
{
  v3 = [a2 invitedMemberHandles];
  v4 = MEMORY[0x1E69E6158];
  if (v3 && (v3, (v5 = [a2 originatorHandle]) != 0))
  {
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v6 = 7104878;
    v38 = static OS_os_log.conversationKit;
    v37 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BB980;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
    v8 = a2;
    v9 = String.init<A>(reflecting:)();
    v11 = v10;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    v12 = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 64) = v12;
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    v13 = [v8 invitedMemberHandles];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGMd, &_sShySo8TUHandleCGMR);
      v15 = String.init<A>(reflecting:)();
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    v4 = MEMORY[0x1E69E6158];
    *(v7 + 96) = MEMORY[0x1E69E6158];
    *(v7 + 104) = v12;
    *(v7 + 72) = v15;
    *(v7 + 80) = v16;
    if ([v8 originatorHandle])
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v6 = String.init<A>(reflecting:)();
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    *(v7 + 136) = v4;
    *(v7 + 144) = v12;
    *(v7 + 112) = v6;
    *(v7 + 120) = v17;
    os_log(_:dso:log:type:_:)("Unable to correctly determine participant status for link %@, invitedMemberHandles: %@, originatorHandle: %@,", 109, 2, &dword_1BBC58000, v38, v37, v7);
  }

  v18 = [a2 invitedMemberHandles];
  if (v18)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.contains(_:)(a1, v19);
    LODWORD(v18) = v20;
  }

  v21 = [a2 originatorHandle];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isEquivalentToHandle_];
  }

  else
  {
    v23 = 0;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BC4BB980;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v26 = a1;
  v27 = String.init<A>(reflecting:)();
  v29 = v28;
  *(v25 + 56) = v4;
  v30 = lazy protocol witness table accessor for type String and conformance String();
  *(v25 + 64) = v30;
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  v31 = String.init<A>(reflecting:)();
  *(v25 + 96) = v4;
  *(v25 + 104) = v30;
  *(v25 + 72) = v31;
  *(v25 + 80) = v32;
  v33 = String.init<A>(reflecting:)();
  *(v25 + 136) = v4;
  *(v25 + 144) = v30;
  *(v25 + 112) = v33;
  *(v25 + 120) = v34;
  v35 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Participant with handle: %@, isInvited: %@, isOriginator: %@", 60, 2, &dword_1BBC58000, v24, v35, v25);

  return (v18 | v23) & 1;
}

uint64_t TUConversation.reportUUID.getter()
{
  v1 = [v0 report];
  v2 = [v1 conversationID];

  if (v2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t TUConversation.collaborations.getter()
{
  v0 = type metadata accessor for Collaboration(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 288))() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = TUConversation.highlight.getter();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = TUConversation.highlightState.getter();
  if (v6 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0x201u >> (8 * v6);
  }

  v8 = v5;
  Collaboration.init(highlight:state:)(v8, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit13CollaborationVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit13CollaborationVGMR);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA940;
  outlined init with take of Collaboration(v3, v10 + v9);

  return v10;
}

id TUConversation.highlight.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 conversationManager];

  v3 = [v2 collaborationForConversation_];
  return v3;
}

id TUConversation.highlightState.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 conversationManager];

  v3 = [v2 collaborationStateForConversation_];
  return v3;
}

uint64_t TUConversation.participantListDisplayName.getter(SEL *a1)
{
  v3 = [v1 *a1];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [v1 *a1];
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = [objc_opt_self() conversationKit];
    v15._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0x454D495445434146;
    v11.value._countAndFlagsBits = 0x61737265766E6F43;
    v11.value._object = 0xEF74694B6E6F6974;
    v10._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v8, v12, v15)._countAndFlagsBits;
  }

  v13 = countAndFlagsBits;

  return v13;
}

uint64_t TUConversation.bundleIdentifier.getter()
{
  v1 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([v0 provider]);
  if (v2)
  {
    return v1;
  }

  v4 = [v0 provider];
  v5 = [v4 identifier];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

id TUConversation.messagesGroupPhoto.getter()
{
  v1 = outlined bridged method (pb) of @objc TUConversation.messagesGroupPhotoData.getter(v0);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  return UIImage.__allocating_init(data:)(v4, v5);
}

void @nonobjc TUConversation.uuid.getter()
{
  v1 = [v0 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

id @nonobjc TUConversation.initiator.getter()
{
  v1 = [v0 initiator];

  return v1;
}

uint64_t @nonobjc TUConversation.messagesGroupUUID.getter()
{
  v1 = [v0 messagesGroupUUID];
  if (v1)
  {
    v2 = v1;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

id @nonobjc TUConversation.localMember.getter()
{
  v1 = [v0 localMember];

  return v1;
}

id @nonobjc TUConversation.localParticipantAssociation.getter()
{
  v1 = [v0 localParticipantAssociation];

  return v1;
}

id @nonobjc TUConversation.handoffEligibility.getter()
{
  v1 = [v0 handoffEligibility];

  return v1;
}

id @nonobjc TUConversation.link.getter()
{
  v1 = [v0 link];

  return v1;
}

id @nonobjc TUConversation.presentationContext.getter()
{
  v1 = [v0 presentationContext];

  return v1;
}

id @nonobjc TUConversation.joinedActivitySession.getter()
{
  v1 = [v0 joinedActivitySession];

  return v1;
}

uint64_t @nonobjc TUConversation.remoteMembers.getter(SEL *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v8 = [v4 *a1];
  type metadata accessor for NSObject(0, a2, a3);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(a4, a2, a3);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

uint64_t Array<A>.sortedActivities.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    outlined init with copy of IDSLookupManager(v2, &v24);
    v4 = v25;
    v5 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    v6 = (*(v5 + 104))(v4, v5);
    if (v6 && (v7 = v6, v8 = [v6 state], v7, v8 == 2))
    {
      __swift_destroy_boxed_opaque_existential_1(&v24);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v24, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 16) + 1, 1);
        i = v27;
      }

      v11 = *(i + 16);
      v10 = *(i + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1);
      }

      v12 = v22;
      v13 = v23;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      v15 = MEMORY[0x1EEE9AC00](v14);
      v17 = &v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v11, v17, &v27, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v21);
      i = v27;
    }

    v2 += 40;
  }

  *&v24 = i;

  specialized MutableCollection<>.sort(by:)(&v24);

  return v24;
}

uint64_t closure #2 in Array<A>.sortedActivities.getter(void *a1, void *a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 104))(v12, v13);
  if (v14)
  {
    v15 = v14;
    v25[1] = v2;
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v18 = (*(v17 + 104))(v16, v17);
    if (v18)
    {
      v19 = v18;
      v20 = [v15 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = [v19 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = static Date.> infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v11, v5);
    }

    else
    {

      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

void specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for UUID();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v33 = v2;
    v34 = MEMORY[0x1E69E7CD0];
    v43 = MEMORY[0x1E69E7CD0];

    v10 = __CocoaSet.makeIterator()();
    v37 = v5 + 16;
    v35 = v10;
    v36 = v5 + 8;
    v40 = a2;
    while (1)
    {
      while (1)
      {
        v11 = __CocoaSet.Iterator.next()();
        if (!v11)
        {
          swift_bridgeObjectRelease_n();

          return;
        }

        v41 = v11;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
        swift_dynamicCast();
        v12 = v42;
        if ([v42 originType] != 1 || !objc_msgSend(v12, sel_isLocallyOriginated) || objc_msgSend(v12, sel_type) != 1)
        {
          break;
        }

LABEL_10:
      }

      v13 = 0;
      v14 = *(v40 + 16);
      while (v14 != v13)
      {
        v15 = v39;
        (*(v5 + 16))(v9, v40 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13++, v39);
        v16 = [v12 UUID];
        v17 = v38;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v16) = static UUID.== infix(_:_:)();
        v18 = *(v5 + 8);
        v18(v17, v15);
        v19 = OUTLINED_FUNCTION_112();
        (v18)(v19);
        if (v16)
        {
          goto LABEL_10;
        }
      }

      v20 = v42;
      v21 = *(v34 + 16);
      if (*(v34 + 24) <= v21)
      {
        specialized _NativeSet.resize(capacity:)(v21 + 1);
      }

      v22 = v43;
      v23 = NSObject._rawHashValue(seed:)(*(v43 + 40)) & ~(-1 << *(v22 + 32));
      if (((-1 << v23) & ~*(v22 + 56 + 8 * (v23 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_16_9();
LABEL_22:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v26 + 48) + 8 * v25) = v20;
      v32 = *(v26 + 16) + 1;
      v34 = v26;
      *(v26 + 16) = v32;
    }

    OUTLINED_FUNCTION_15_33();
    while (++v28 != v30 || (v29 & 1) == 0)
    {
      v31 = v28 == v30;
      if (v28 == v30)
      {
        v28 = 0;
      }

      v29 |= v31;
      if (*(v27 + 8 * v28) != -1)
      {
        OUTLINED_FUNCTION_13_8();
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    specialized _NativeSet.filter(_:)(a1, a2);
  }
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  specialized closure #1 in _NativeSet.filter(_:)(a1, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
}

{
  specialized closure #1 in _NativeSet.filter(_:)(a1, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
}

{
  specialized closure #1 in _NativeSet.filter(_:)(a1, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
}

{
  specialized closure #1 in _NativeSet.filter(_:)(a1, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v23 = a4;
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  OUTLINED_FUNCTION_33_2();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v17 = v13 | (v6 << 6);
    outlined init with copy of CallGameController.GameControllerEventBox(*(a3 + 48) + 40 * v17, v22);
    v18 = v23(v22);
    outlined destroy of CallGameController.GameControllerEventBox(v22);
    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_14:

        specialized _NativeSet.extractSubset(using:count:)();
        return;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v12)
    {
      goto LABEL_14;
    }

    ++v14;
    if (*(v7 + 8 * v6))
    {
      OUTLINED_FUNCTION_7_1();
      v10 = v16 & v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = 0;
  v7 = 0;
  v8 = a3 + 56;
  OUTLINED_FUNCTION_33_2();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  while (v11)
  {
    OUTLINED_FUNCTION_93();
LABEL_9:
    v18 = v14 | (v7 << 6);
    v28 = *(*(a3 + 48) + 8 * v18);
    v19 = v28;
    v20 = a4(&v28);

    if (v6)
    {
      return;
    }

    if (v20)
    {
      *(a1 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_14:

        a6(a1, a2, v25, a3);
        return;
      }
    }
  }

  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_14;
    }

    ++v15;
    if (*(v8 + 8 * v7))
    {
      OUTLINED_FUNCTION_7_1();
      v11 = v17 & v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo22TUScreenSharingRequestCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So22ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n041_s15ConversationKit0A0PAAE27currentScreenJ68Request8ignoringSo08TUScreeneF0CSgSay10Foundation4UUIDVG_tFSbAGXEfU_Say10Foundation4UUIDVGTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20TUConversationMemberCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So20iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5, specialized _NativeSet.extractSubset(using:count:));
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc TUConversation.messagesGroupName.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t partial apply for closure #1 in Conversation.allHandles(excludeOtherInvitedHandles:)(id *a1)
{
  if (*(v1 + 16) == 1)
  {
    return [*a1 isOtherInvitedHandle] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t outlined init with take of Collaboration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Collaboration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of TapInteractionHandler(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_39_1(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *SharedContentVideoView.ViewModel.init(screenProvider:screenTransform:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  return OUTLINED_FUNCTION_2_15((a3 + 40), a2);
}

BOOL static SharedContentVideoView.ViewModel.== infix(_:_:)()
{
  Hasher.init(_seed:)();
  SharedContentVideoView.ViewModel.hash(into:)();
  v0 = Hasher._finalize()();
  Hasher.init(_seed:)();
  SharedContentVideoView.ViewModel.hash(into:)();
  return v0 == Hasher._finalize()();
}

id SharedContentVideoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SharedContentVideoView.configure(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_viewModel];
  swift_beginAccess();
  outlined init with copy of Participant?(v4, v23, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
  v5 = v24;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
  if (v5 == 1)
  {
    goto LABEL_2;
  }

  v7 = *(v4 + 3);
  if (v7 >= 2)
  {
    v10 = *(v4 + 4);
    v11 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    v12 = *(v7 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v12 + 16))(v15, v13);
    v8 = (*(v10 + 8))(v7, v10);
    v9 = v16;
    (*(v12 + 8))(v15, v7);
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  outlined init with copy of Participant?(a1, v23, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  v17 = v24;
  if (!v24)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    if (v9)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v19 = (*(v18 + 8))(v17, v18);
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v9)
  {
    if (v21)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if ((v21 & 1) != 0 || v8 != v19)
  {
LABEL_2:
    SharedContentVideoView.registerVideoLayers(with:)(a1);
  }

LABEL_3:
  outlined init with copy of SharedContentVideoView.ViewModel(a1, v23);
  swift_beginAccess();
  outlined assign with take of Participant?(v23, v4, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
  swift_endAccess();
  v6 = [v2 layer];
  MEMORY[0x1EEE9AC00](v6);
  CALayer.withoutActions(_:)(partial apply for closure #1 in closure #1 in SharedContentVideoView.configure(with:));
}

uint64_t SharedContentVideoView.registerVideoLayers(with:)(uint64_t a1)
{
  outlined init with copy of Participant?(a1, v5, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  if (!v6)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  }

  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = [*(v1 + OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView) layer];
  (*(v2 + 120))();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

double SharedContentVideoView.ViewModel.contentsRect.getter()
{
  outlined init with copy of Participant?(v0, v4, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v2 + 64))(&v7, v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  }

  return 0.0;
}

char *SharedContentVideoView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView;
  v3 = type metadata accessor for ParticipantVideoCameraView();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 1;
  v10.receiver = v4;
  v10.super_class = v3;
  *&v0[v2] = OUTLINED_FUNCTION_0_3(&v10, sel_initWithFrame_);
  v5 = &v0[OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_viewModel];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 1;
  bzero(v5 + 32, 0x88uLL);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = OUTLINED_FUNCTION_0_3(&v9, sel_initWithFrame_);
  [v6 setClipsToBounds_];
  v7 = OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView;
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000021, 0x80000001BC525640, *&v6[OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView]);
  [v6 addSubview_];

  return v6;
}

id SharedContentVideoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SharedContentVideoView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView;
  v2 = type metadata accessor for ParticipantVideoCameraView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 1;
  v9.receiver = v3;
  v9.super_class = v2;
  *(v0 + v1) = OUTLINED_FUNCTION_0_3(&v9, sel_initWithFrame_);
  v4 = (v0 + OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_viewModel);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 1;
  bzero(v4 + 4, 0x88uLL);
  OUTLINED_FUNCTION_2_179("Fatal error", v5, v6, v7, v8, "ConversationKit/SharedContentVideoView.swift");
  __break(1u);
}

id SharedContentVideoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void SharedContentVideoView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView;
  v2 = type metadata accessor for ParticipantVideoCameraView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC15ConversationKit26ParticipantVideoCameraView_style] = 1;
  v9.receiver = v3;
  v9.super_class = v2;
  *(v0 + v1) = OUTLINED_FUNCTION_0_3(&v9, sel_initWithFrame_);
  v4 = (v0 + OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_viewModel);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 1;
  bzero(v4 + 4, 0x88uLL);
  OUTLINED_FUNCTION_2_179("Fatal error", v5, v6, v7, v8, "ConversationKit/SharedContentVideoView.swift");
  __break(1u);
}

Swift::Void __swiftcall SharedContentVideoView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  SharedContentVideoView._layout()();
}

void SharedContentVideoView._layout()()
{
  v1 = v0;
  [v0 bounds];
  if (CGRectIsInfinite(v24))
  {
    return;
  }

  [v0 bounds];
  if (CGRectIsEmpty(v25))
  {
    return;
  }

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 312))())
  {
    v22 = v0;
    v6 = outlined bridged method (ob) of @objc CALayer.sublayers.getter([*&v0[OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView] layer]);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v8 = specialized Array.count.getter();
    if (v8)
    {
      v9 = v8;
      v10 = objc_opt_self();
      if (v9 < 1)
      {
        goto LABEL_29;
      }

      v11 = v10;
      v12 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB22010](v12, v7);
        }

        else
        {
          v13 = *(v7 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        [v11 begin];
        [v11 setDisableActions_];
        [v14 setFrame_];
        [v11 commit];
      }

      while (v9 != v12);
    }

    v1 = v22;
  }

  v15 = [v1 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = specialized Array.count.getter();
  if (v17)
  {
    v18 = v17;
    if (v17 >= 1)
    {
      for (i = 0; i != v18; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1BFB22010](i, v16);
        }

        else
        {
          v20 = *(v16 + 8 * i + 32);
        }

        v21 = v20;
        [v20 setFrame_];
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_25:
}

void closure #1 in closure #1 in SharedContentVideoView.configure(with:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 312))() & 1) == 0)
  {
    v4 = *(a1 + OBJC_IVAR____TtC15ConversationKit22SharedContentVideoView_screenSharingCameraView);
    v5 = [v4 layer];
    SharedContentVideoView.ViewModel.contentsRect.getter();
    [v5 setContentsRect_];

    v6 = [v4 layer];
    memcpy(v7, (a2 + 40), sizeof(v7));
    [v6 setTransform_];
  }
}

id SharedContentVideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int SharedContentVideoView.ViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  SharedContentVideoView.ViewModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SharedContentVideoView.ViewModel.hash(into:)()
{
  v1 = v0;
  outlined init with copy of Participant?(v0, v10, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  v2 = v10[3];
  if (!v10[3])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    goto LABEL_5;
  }

  v3 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v10);
  if (v6)
  {
LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1BFB22640](v4);
LABEL_6:
  memcpy(v10, (v1 + 40), sizeof(v10));
  CATransform3D.hash(into:)();
  SharedContentVideoView.ViewModel.contentsRect.getter();
  return CGRect.hash(into:)(0.0, 0.0, v7, v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharedContentVideoView.ViewModel(uint64_t a1)
{
  Hasher.init(_seed:)();
  SharedContentVideoView.ViewModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined bridged method (ob) of @objc CALayer.sublayers.getter(void *a1)
{
  v2 = [a1 sublayers];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer, 0x1E6979398);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type SharedContentVideoView.ViewModel and conformance SharedContentVideoView.ViewModel()
{
  result = lazy protocol witness table cache variable for type SharedContentVideoView.ViewModel and conformance SharedContentVideoView.ViewModel;
  if (!lazy protocol witness table cache variable for type SharedContentVideoView.ViewModel and conformance SharedContentVideoView.ViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedContentVideoView.ViewModel and conformance SharedContentVideoView.ViewModel);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedContentVideoView.ViewModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 168))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SharedContentVideoView.ViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall LocalParticipantControlsView.updateViews()()
{
  v1 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21SymbolImageDescribersV20LocalParticipantViewO_So9UIControlCtGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit21SymbolImageDescribersV20LocalParticipantViewO_So9UIControlCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB450;
  *(inited + 32) = 1;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
  *(inited + 40) = v5;
  *(inited + 48) = 0;
  v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
  *(inited + 56) = v6;
  *(inited + 64) = 2;
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
  *(inited + 72) = v7;
  *(inited + 80) = 3;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
  *(inited + 88) = v8;
  *(inited + 96) = 11;
  v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
  *(inited + 104) = v9;
  *(inited + 112) = 12;
  v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
  *(inited + 120) = v10;
  v66 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIControl, 0x1E69DC8F0);
  lazy protocol witness table accessor for type SymbolImageDescribers.LocalParticipantView and conformance SymbolImageDescribers.LocalParticipantView();
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = 0;
  v20 = v17 + 64;
  v19 = *(v17 + 64);
  v65 = v17;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v63 = *MEMORY[0x1E69DDDC8];
  v61 = *MEMORY[0x1E69DDD10];
  v25 = MEMORY[0x1E69E7D40];
  v60 = *MEMORY[0x1E69DDCF8];
  v66 = v0;
  v64 = v17 + 64;
  v62 = v24;
  if (v23)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v18;
    if (v23)
    {
      v18 = v26;
      do
      {
LABEL_8:
        v27 = __clz(__rbit64(v23)) | (v18 << 6);
        v28 = *(*(v65 + 48) + v27);
        v29 = *(*(v65 + 56) + 8 * v27);
        SymbolImageDescribers.LocalParticipantView.symbolImageDescription.getter(v28, &v72);
        v77 = v74;
        v30 = (*((*v25 & *v0) + 0x250))();
        v31 = [objc_opt_self() currentDevice];
        v32 = [v31 userInterfaceIdiom];

        v33 = v63;
        if (v30 - 2 >= 2)
        {
          v34 = v30 || v32 == 1;
          v33 = v61;
          if (v34)
          {
            v33 = v60;
          }
        }

        v35 = v33;
        outlined destroy of UIFontTextStyle(&v77, type metadata accessor for UIFontTextStyle);
        type metadata accessor for InCallControlButton();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v68 = v72;
          *&v69 = v73;
          *(&v69 + 1) = v35;
          v70 = v75;
          v71 = v76;
          v37 = *MEMORY[0x1E69E7D40] & *v36;
          v78[0] = v72;
          v78[1] = v69;
          v78[2] = v75;
          v78[3] = v76;
          v38 = *(v37 + 416);
          v39 = v29;
          outlined init with copy of SymbolImageDescription(&v68, &v67);
          v38(v78);
          v0 = v66;
        }

        v23 &= v23 - 1;
        [v29 setNeedsLayout];

        v68 = v72;
        *&v69 = v73;
        *(&v69 + 1) = v35;
        v70 = v75;
        v71 = v76;
        outlined destroy of SymbolImageDescription(&v68);
        v25 = MEMORY[0x1E69E7D40];
        v20 = v64;
        v24 = v62;
      }

      while (v23);
    }
  }

  OUTLINED_FUNCTION_5_27();
  if ((*(v40 + 896))())
  {
    LocalParticipantControlsView.addVideoMessageControls()();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5_27();
  v42 = (*(v41 + 352))();
  if (v42)
  {
    v43 = v42;
    v44 = [v42 view];

    if (v44)
    {
      v45 = [v44 superview];

      if (v45)
      {

        OUTLINED_FUNCTION_5_27();
        if ((*(v46 + 904))())
        {
          LocalParticipantControlsView.removeVideoMessageControls()();
        }
      }

      goto LABEL_26;
    }

LABEL_40:
    __break(1u);
    return;
  }

LABEL_26:
  OUTLINED_FUNCTION_5_27();
  v48 = v59;
  (*(v47 + 712))();
  OUTLINED_FUNCTION_13_2();
  v50 = (*((*v25 & v49) + 0x430))(v48);
  OUTLINED_FUNCTION_0_229();
  outlined destroy of UIFontTextStyle(v48, v51);
  v52 = specialized Array.count.getter();
  for (i = 0; v52 != i; ++i)
  {
    if ((v50 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x1BFB22010](i, v50);
    }

    else
    {
      if (i >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v54 = *(v50 + 8 * i + 32);
    }

    v55 = v54;
    if (__OFADD__(i, 1))
    {
      goto LABEL_38;
    }

    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (v56)
    {
      v57 = v56;
      OUTLINED_FUNCTION_5_18();
      [v57 setEnabled_];
    }
  }

  [v66 setNeedsLayout];
}

void LocalParticipantControlsView.changed(_:from:)(_BYTE *a1, _BYTE *a2)
{
  v156 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_17();
  v151 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v154 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v153 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v155 = v15;
  OUTLINED_FUNCTION_13_2();
  v17 = *((*MEMORY[0x1E69E7D40] & v16) + 0x430);
  v157 = a1;
  v18 = v17(a1);
  v152 = a2;
  v158 = v2;
  v19 = v17(a2);
  v160 = MEMORY[0x1E69E7CC0];
  v20 = specialized Array.count.getter();
  v21 = 0;
  v22 = 0;
  v23 = v19 & 0xC000000000000001;
  while (v20 != v21)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v21, v23 == 0, v19);
    if (v23)
    {
      v24 = MEMORY[0x1BFB22010](v21, v19);
    }

    else
    {
      v24 = *(v19 + 8 * v21 + 32);
    }

    v3 = v24;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v98 = v151;
      outlined init with copy of ConversationControlsRecipe(v19, v151);
      v99 = objc_allocWithZone(type metadata accessor for CallAgainHUDView(0));
      v100 = CallAgainHUDView.init(recipe:)(v98);
      [v100 setTranslatesAutoresizingMaskIntoConstraints_];
      [v100 setAccessibilityViewIsModal_];
      OUTLINED_FUNCTION_16_73(*&v100[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageButton], v101, v102, sel_handleVideoMessageButtonTapped);
      OUTLINED_FUNCTION_16_73(*&v100[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_callBackButton], v103, v104, sel_callBack);
      OUTLINED_FUNCTION_16_73(*&v100[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_showCallDetailsButton], v105, v106, sel_showCallDetails);
      OUTLINED_FUNCTION_16_73(*&v100[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_closeButton], v107, v108, sel_close);
      [v20 addSubview_];
      v109 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x198);
      v95 = v100;
      v109(v100);
      v47 = 0x1FAEA9000;
      v39 = v157;
LABEL_82:

      goto LABEL_83;
    }

    v159 = v24;
    MEMORY[0x1EEE9AC00](v24);
    v150 = &v159;
    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v149, v18))
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_20_64();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v21;
  }

  v25 = v160;
  v19 = specialized Array.count.getter();
  v20 = 0;
  v23 = v158;
  while (v19 != v20)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1BFB22010](v20, v25);
    }

    else
    {
      if (v20 >= *(v25 + 16))
      {
        goto LABEL_80;
      }

      v26 = *(v25 + 8 * v20 + 32);
    }

    v3 = v26;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_79;
    }

    [v26 removeFromSuperview];

    ++v20;
  }

  v27 = specialized Array.count.getter();
  if (v27)
  {
    v28 = v27;
    if (v27 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v28; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1BFB22010](i, v18);
      }

      else
      {
        v30 = *(v18 + 8 * i + 32);
      }

      v31 = v30;
      type metadata accessor for InCallControlButton();
      if (swift_dynamicCastClass())
      {
        v32 = one-time initialization token for localCameraControls;
        v33 = v31;
        if (v32 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_5_18();
        v35 = *(v34 + 464);

        v35(v36);

        v23 = v158;
      }

      [v23 addSubview_];
    }
  }

  v3 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x190);
  v38 = (v3)(v37);
  v39 = v157;
  if (v38)
  {

    v40 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
    v41 = v155;
    outlined init with copy of ConversationControlsRecipe?(&v39[*(v40 + 32)], v155);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v156);
    v43 = outlined destroy of ConversationControlsRecipe?(v41);
    if (EnumTagSinglePayload == 1)
    {
      v44 = (v3)(v43);
      if (v44)
      {
        v45 = v44;
        [v44 removeFromSuperview];
      }

      (*((*MEMORY[0x1E69E7D40] & *v23) + 0x198))(0);
    }
  }

  v46 = [objc_opt_self() clearColor];
  [v23 setBackgroundColor_];

  v47 = &off_1E7FE9000;
  [*(v23 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton) addTarget:v23 action:sel_handleCollapseButtonTapped forControlEvents:64];
  v22 = v39[7];
  v49 = VideoMessageController.State.rawValue.getter(v39[7]) == 0x7964616552746F6ELL && v48 == 0xE800000000000000;
  if (v49)
  {
    goto LABEL_46;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_47;
  }

  v18 = 0xEB00000000656C62;
  v23 = 0x616C696176616E75;
  if (VideoMessageController.State.rawValue.getter(v22) == 0x616C696176616E75 && v52 == 0xEB00000000656C62)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  if (v39[8])
  {
    goto LABEL_47;
  }

LABEL_53:
  static Platform.current.getter();
  OUTLINED_FUNCTION_12_102();
  if (v49)
  {
    goto LABEL_47;
  }

  v61 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v62 = v153;
  outlined init with copy of ConversationControlsRecipe?(&v39[*(v61 + 32)], v153);
  if (__swift_getEnumTagSinglePayload(v62, 1, v156) == 1)
  {
    v63 = &off_1E7FE9000;
    outlined destroy of ConversationControlsRecipe?(v62);
  }

  else
  {
    v19 = v154;
    v92 = outlined init with take of ConversationControlsRecipe(v62, v154);
    v20 = v158;
    v93 = (v3)(v92);
    if (!v93)
    {
      goto LABEL_81;
    }

    v94 = (v3)();
    if (v94)
    {
      v95 = v94;
      v96 = v151;
      outlined init with copy of ConversationControlsRecipe(v154, v151);
      OUTLINED_FUNCTION_34_40();
      (*(v97 + 200))(v96);
      goto LABEL_82;
    }

LABEL_83:
    v110 = (v3)();
    if (v110)
    {
      v111 = v110;
      v112 = *(v110 + OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageButton);

      if (VideoMessageController.State.rawValue.getter(v22) == v23 && v113 == v18)
      {

        v116 = 0;
      }

      else
      {
        v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v116 = v115 ^ 1;
      }

      [v112 setEnabled_];
    }

    v63 = v47;
    outlined destroy of UIFontTextStyle(v154, type metadata accessor for ConversationControlsRecipe);
  }

  v117 = v158;
  v118 = *(v158 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction, 0x1E69DC628);
  MEMORY[0x1BFB209B0](0xD000000000000021, 0x80000001BC5256F0);
  v119 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v149[1] = partial apply for closure #3 in LocalParticipantControlsView.changed(_:from:);
  v150 = v119;
  v149[0] = 0;
  v120 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v118 addAction:v120 forControlEvents:64];

  if ((v22 & 0xFE) == 2)
  {
    v121 = MEMORY[0x1E69E7D40];
    v122 = (*((*MEMORY[0x1E69E7D40] & *v117) + 0x410))(0);
    v123 = *((*v121 & *v117) + 0x178);
    v124 = (v123)(v122);
    OUTLINED_FUNCTION_42_35();
    OUTLINED_FUNCTION_13_2();
    (*((*v121 & v125) + 0x158))();

    v126 = v123();
    v39 = v157;
    v127 = v126;
    (*((*v121 & *v126) + 0xF8))(3);

LABEL_111:
    v47 = v63;
    goto LABEL_47;
  }

  v128 = v152[7];
  if (v128 == 5)
  {
    v129 = VideoMessageController.State.rawValue.getter(v22);
    v119 = v130;
    v131 = VideoMessageController.State.rawValue.getter(5);
    if (v129 == v131 && v119 == v132)
    {
    }

    else
    {
      v134 = OUTLINED_FUNCTION_15_4(v131);

      if ((v134 & 1) == 0)
      {
        v51 = (*((*MEMORY[0x1E69E7D40] & *v117) + 0x410))(0);
        goto LABEL_111;
      }
    }
  }

  if (v22 == 6)
  {
    LocalParticipantControlsView.showLoading()();
    goto LABEL_111;
  }

  if (v22 == 5)
  {
    v135 = VideoMessageController.State.rawValue.getter(v128);
    v119 = v136;
    v137 = VideoMessageController.State.rawValue.getter(5);
    if (v135 == v137 && v119 == v138)
    {
    }

    else
    {
      v140 = OUTLINED_FUNCTION_15_4(v137);

      if ((v140 & 1) == 0)
      {
        v141 = MEMORY[0x1E69E7D40];
        v142 = (*((*MEMORY[0x1E69E7D40] & *v117) + 0x178))(v51);
        OUTLINED_FUNCTION_42_35();
        OUTLINED_FUNCTION_13_2();
        (*((*v141 & v143) + 0x158))();

        LocalParticipantControlsView.startElapsedTimeCounter()();
        goto LABEL_111;
      }
    }
  }

  v47 = v63;
  if (v128 == 6)
  {
    OUTLINED_FUNCTION_38_41();
    if (VideoMessageController.State.rawValue.getter(v22) != v119 || v144 != 0xEF676E6964726F63)
    {
      v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v146 & 1) == 0)
      {
        OUTLINED_FUNCTION_5_18();
        v148 = (*(v147 + 448))();
        [v148 removeFromSuperview];
      }

      goto LABEL_47;
    }

LABEL_46:
  }

LABEL_47:
  v55 = v158;
  v56 = *((*MEMORY[0x1E69E7D40] & *v158) + 0x280);
  if (((v56)(v51) & 0x10000) != 0)
  {
    static Platform.current.getter();
    OUTLINED_FUNCTION_12_102();
    if (!v49)
    {
      v57 = *&v55[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton];
      [v57 v47[489]];
      v58 = *&v55[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_controlsLayoutGuide];
      [v55 addLayoutGuide_];
      if (static Platform.current.getter() == 1)
      {
        v59 = [v58 widthAnchor];
        v60 = [v59 constraintEqualToConstant_];
      }

      else
      {
        v64 = [v58 leadingAnchor];
        v59 = [v57 leadingAnchor];
        v60 = [v64 constraintEqualToAnchor_];
      }

      if ((v56() & 0x1000000) != 0)
      {
        v65 = [*&v55[OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton] trailingAnchor];
      }

      else
      {
        v65 = [v55 trailingAnchor];
      }

      v66 = v65;
      v156 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1BC4BA7F0;
      v68 = [v58 topAnchor];
      v69 = [v57 topAnchor];
      v70 = [v68 constraintEqualToAnchor_];

      *(v67 + 32) = v70;
      v71 = [v58 bottomAnchor];
      v72 = [v57 bottomAnchor];
      v73 = [v71 constraintEqualToAnchor_];

      *(v67 + 40) = v73;
      v74 = [v58 trailingAnchor];
      v75 = [v74 constraintEqualToAnchor_];

      *(v67 + 48) = v75;
      *(v67 + 56) = v60;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      v76 = v60;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v156 activateConstraints_];

      v39 = v157;
    }
  }

  if (v39[1] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v78 v79];
  }

  if (*v39 == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v80 v81];
  }

  if (v39[3] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v82 v83];
    static Platform.current.getter();
    OUTLINED_FUNCTION_12_102();
    if (!v49)
    {
      OUTLINED_FUNCTION_13_86();
      [v84 v85];
    }
  }

  if (v39[4] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v86 v87];
  }

  if (v39[5] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v88 v89];
  }

  if (v39[6] == 1)
  {
    OUTLINED_FUNCTION_13_86();
    [v90 v91];
  }

  LocalParticipantControlsView.updateViews()();
  LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
}