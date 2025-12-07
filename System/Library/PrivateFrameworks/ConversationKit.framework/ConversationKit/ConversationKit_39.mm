uint64_t key path setter for ConversationControlsManager.$secondaryPillButtonType : ConversationControlsManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA20))(v7);
}

uint64_t ConversationControlsManager.$shouldOpenMessages.getter(void *a1)
{
  OUTLINED_FUNCTION_30_2(v1 + *a1, v5);
  v2 = OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_55_2();
  return swift_endAccess();
}

uint64_t ConversationControlsManager.$secondaryPillButtonType.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMR);
  OUTLINED_FUNCTION_1_17();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMd, &_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t ConversationControlsManager.$secondaryPillButtonType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMR);
  v1[4] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_139_1(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager__secondaryPillButtonType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMd, &_s7Combine9PublishedVy15ConversationKit0C31ControlsSecondaryPillButtonTypeOGMR);
  OUTLINED_FUNCTION_55_2();
  swift_endAccess();
  return OUTLINED_FUNCTION_38_0();
}

Swift::Void __swiftcall ConversationControlsManager.configureSecondaryPillButtonType()()
{
  OUTLINED_FUNCTION_29();
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v145 = v137 - v8;
  v9 = OUTLINED_FUNCTION_4_24();
  v144 = type metadata accessor for Collaboration(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v143 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationVSgMd, &_s15ConversationKit19StagedCollaborationVSgMR);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_363();
  v15 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v142 = v17 - v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_39_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_34();
  v22 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  v24 = OUTLINED_FUNCTION_417();
  v25 = (*(v1 + 688))(v24);
  v26 = MEMORY[0x1E69E7D40];
  if ((v25 & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v35))
    {
      v36 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v36);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_18();
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_23();
    (*((*v26 & v42) + 0xA08))();
    goto LABEL_49;
  }

  v140 = v3;
  v141 = v15;
  OUTLINED_FUNCTION_36_23();
  v27 += 84;
  v28 = *v27;
  v146 = v27;
  (v28)();
  v29 = OUTLINED_FUNCTION_255();
  (*(v1 + 112))(v29);
  v30 = OUTLINED_FUNCTION_280_0();
  v31 = v26;
  if (v1)
  {
    v32 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_293();
    v30 = (*(v43 + 2360))();
    v32 = v30 ^ 1;
  }

  v139 = v28;
  (v28)(v30);
  v44 = OUTLINED_FUNCTION_255();
  (*(v1 + 104))(v44);
  OUTLINED_FUNCTION_340();
  if (ConversationController.isOneToOneModeEnabled.getter() & 1) == 0 || (v28 & 1) != 0 || (v32)
  {
    v47 = v31;
    OUTLINED_FUNCTION_293();
    if ((*(v48 + 2344))() >= 0x20u)
    {
      if (![*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) sharePlayInCallsEnabled] || (v139(), OUTLINED_FUNCTION_208_0(), ObjectType = swift_getObjectType(), (*(v28 + 152))(ObjectType, v28), OUTLINED_FUNCTION_340(), (v28 & 1) == 0))
      {
        if ((ConversationControlsManager.isOneToOneConversation.getter() & 1) == 0 || (OUTLINED_FUNCTION_36_23(), (v60 = (*(v59 + 704))()) == 0) || (v61 = v60, v62 = [v60 state], v61, v62 != 1))
        {
          v63 = v140;
LABEL_48:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_11_23();
          (*((*v47 & v96) + 0xA08))(v63);
LABEL_49:
          v97 = v5;
LABEL_50:
          $defer #1 () in ConversationControlsManager.configureSecondaryPillButtonType()(v97);
          OUTLINED_FUNCTION_30_0();
          return;
        }
      }
    }

    OUTLINED_FUNCTION_36_23();
    v49 += 88;
    v50 = *v49;
    v137[1] = v49;
    v138 = v50;
    v51 = v50();
    if (v51)
    {
      v52 = v51;
      OUTLINED_FUNCTION_36_23();
      v54 = (*(v53 + 720))();
      v55 = specialized Conversation.currentScreenSharingRequest(ignoring:)(v54);

      v47 = MEMORY[0x1E69E7D40];

      if (v55)
      {
        if ([v55 type] == 1)
        {
          v56 = [v55 handle];
          ConversationController.participant(with:)();

          OUTLINED_FUNCTION_115(v2, 1, v22);
          if (v57)
          {

            outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          }

          else
          {
            v137[0] = v55;
            OUTLINED_FUNCTION_62_8();
            outlined init with take of Collaboration();
            if ([*(v5 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) requestToScreenShareEnabled])
            {
              v65 = v141;
              if (one-time initialization token for conversationControls != -1)
              {
                OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
              }

              v66 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v66, &static Logger.conversationControls);
              v67 = v5;
              v68 = Logger.logObject.getter();
              v69 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v68, v69))
              {
                v70 = 7104878;
                OUTLINED_FUNCTION_42();
                v149[0] = OUTLINED_FUNCTION_37_7();
                *v65 = 136315138;
                v71 = v138();
                if (v71 && (v72 = v71, v73 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]), v72, v73))
                {
                  *&v147 = v73;
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest, 0x1E69D8CC8);
                  v70 = String.init<A>(reflecting:)();
                  v75 = v74;
                }

                else
                {
                  v75 = 0xE300000000000000;
                }

                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v75, v149);
                OUTLINED_FUNCTION_359();
                *(v65 + 4) = v70;
                OUTLINED_FUNCTION_341(&dword_1BBC58000, v68, v69, "Setting app launch button to requestedRemoteToScreenShare %s");
                OUTLINED_FUNCTION_72_8();
                OUTLINED_FUNCTION_2_2();

                v114 = v140;
                v47 = MEMORY[0x1E69E7D40];
              }

              else
              {

                v114 = v140;
              }

              OUTLINED_FUNCTION_56_10();
              _s15ConversationKit11ParticipantVWOcTm_8();
              OUTLINED_FUNCTION_139();
              swift_storeEnumTagMultiPayload();
              (*((*v47 & *v67) + 0xA08))(v114);

              OUTLINED_FUNCTION_3_106();
              _s15ConversationKit11ParticipantVWOhTm_10();
              v97 = v67;
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_3_106();
            _s15ConversationKit11ParticipantVWOhTm_10();
          }
        }

        else
        {
        }
      }
    }

    OUTLINED_FUNCTION_36_23();
    v63 = v5;
    (*(v76 + 2512))(&v147);
    if (!v148)
    {
      outlined destroy of CallControlsService?(&v147, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
      OUTLINED_FUNCTION_161();
      goto LABEL_48;
    }

    outlined init with take of TapInteractionHandler(&v147, v149);
    OUTLINED_FUNCTION_181_0();
    v77 = OUTLINED_FUNCTION_2_14();
    v78(v77);
    v79 = type metadata accessor for StagedCollaboration(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v79);
    outlined destroy of CallControlsService?(v4, &_s15ConversationKit19StagedCollaborationVSgMd, &_s15ConversationKit19StagedCollaborationVSgMR);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_118();
      v81 = OUTLINED_FUNCTION_2_14();
      v83 = v82(v81);
      if (!v83 || (v84 = v83, v85 = [v83 state], v84, v85 != 2))
      {
        v84 = v150;
        v86 = v151;
        __swift_project_boxed_opaque_existential_1(v149, v150);
        OUTLINED_FUNCTION_31_2();
        if (specialized ConversationControlsManager.shouldShowCollaborationNotice(for:)(v87, v88, v89, v86))
        {
          OUTLINED_FUNCTION_118();
          v90 = OUTLINED_FUNCTION_2_14();
          if (v91(v90))
          {
            v84 = v5;
            v139();
            v92 = OUTLINED_FUNCTION_255();
            (*(v86 + 352))(v92, v86);
            OUTLINED_FUNCTION_280_0();
            if ((v86 & 1) == 0 || (OUTLINED_FUNCTION_118(), v93 = OUTLINED_FUNCTION_2_14(), (v95 = v94(v93)) == 0))
            {
              OUTLINED_FUNCTION_118();
              v108 = OUTLINED_FUNCTION_2_14();
              v110 = v109(v108);
              v111 = v140;
              if (!v110 || (v112 = v110, v113 = TUConversationActivitySession.generateSplitSessionState.getter(), v112, (v113 & 1) == 0))
              {
                OUTLINED_FUNCTION_181_0();
                v115 = OUTLINED_FUNCTION_2_14();
                v116(v115);
                if (v147 != 13)
                {
                  OUTLINED_FUNCTION_181_0();
                  v117 = v145;
                  v118 = OUTLINED_FUNCTION_2_14();
                  v119(v118);
                  OUTLINED_FUNCTION_115(v117, 1, v144);
                  if (v57)
                  {
                    v120 = outlined destroy of CallControlsService?(v117, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_18_42();
                    v121 = v143;
                    outlined init with take of Collaboration();
                    if (*(v121 + 16) != 2)
                    {
                      OUTLINED_FUNCTION_299();
                      swift_storeEnumTagMultiPayload();
                      OUTLINED_FUNCTION_11_23();
                      (*((*v47 & v136) + 0xA08))(v111);
                      OUTLINED_FUNCTION_2_113();
                      _s15ConversationKit11ParticipantVWOhTm_10();
                      goto LABEL_64;
                    }

                    OUTLINED_FUNCTION_2_113();
                    v120 = _s15ConversationKit11ParticipantVWOhTm_10();
                  }

                  v122 = (v138)(v120);
                  if (v122)
                  {
                    v123 = v122;
                    v124 = specialized Conversation.activities.getter();
                    v125 = Array<A>.currentSharePlayActivity.getter(v124);
                  }

                  else
                  {
                    v125 = 0;
                  }

                  OUTLINED_FUNCTION_36_23();
                  v126 = OUTLINED_FUNCTION_399();
                  v128 = v127(v126);

                  if ((v128 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_36_23();
                    v131 = (*(v130 + 2448))();
                    if (v131)
                    {
                      v132 = v131;
                      v133 = [v131 activity];
                      [v133 isPlaceholderActivity];

                      v134 = v142;
                      OUTLINED_FUNCTION_243();
                      swift_storeEnumTagMultiPayload();
                      OUTLINED_FUNCTION_11_23();
                      (*((*v47 & v135) + 0xA08))(v134);

                      goto LABEL_64;
                    }
                  }
                }
              }

              OUTLINED_FUNCTION_299();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_11_23();
              v102 = *((*v47 & v129) + 0xA08);
              v103 = v111;
              goto LABEL_57;
            }

            OUTLINED_FUNCTION_161();
LABEL_56:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_11_23();
            v102 = *((*v47 & v101) + 0xA08);
            v103 = v84;
LABEL_57:
            v102(v103);
            goto LABEL_64;
          }

          OUTLINED_FUNCTION_118();
          v104 = OUTLINED_FUNCTION_2_14();
          v105(v104);
          if (!v106)
          {
            goto LABEL_64;
          }

          OUTLINED_FUNCTION_36_23();
          v84 = (*(v107 + 2200))();

          if (v84)
          {
            goto LABEL_64;
          }
        }
      }

      OUTLINED_FUNCTION_161();
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_161();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_23();
    (*((*v47 & v98) + 0xA08))(EnumTagSinglePayload);
    if (tcc_metrics_create())
    {
      if (*(v5 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_tccServer))
      {
        swift_unknownObjectRetain();
        v99 = CFStringCreateWithCString(0, "com.apple.InCallService: InCallCollaborationNotice", 0x8000100u);
        if (v99)
        {
          v100 = v99;
          OUTLINED_FUNCTION_208();
          tcc_metrics_set_service_name();
          OUTLINED_FUNCTION_4_31();
          tcc_server_send_analytics();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_64;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

LABEL_64:
    __swift_destroy_boxed_opaque_existential_1(v149);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_391();
  OUTLINED_FUNCTION_30_0();

  $defer #1 () in ConversationControlsManager.configureSecondaryPillButtonType()(v45);
}

void $defer #1 () in ConversationControlsManager.configureSecondaryPillButtonType()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd, &_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - v13);
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA00))(v12);
  swift_storeEnumTagMultiPayload();
  v16 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)(v14, v10);
  _s15ConversationKit11ParticipantVWOhTm_10();
  v17 = _s15ConversationKit11ParticipantVWOhTm_10();
  if (v16)
  {
    v18 = (*((*v15 & *a1) + 0x2C0))(v17);
    if (v18)
    {
      v19 = v18;
      if ([v18 avMode])
      {
        v20 = (*((*v15 & *a1) + 0x578))();
        if (!v20)
        {

          __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
          goto LABEL_8;
        }

        v21 = v20;
        swift_beginAccess();
        outlined init with copy of RecentCallDetailControllerFactoryProtocol?();

        if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
        {

LABEL_8:
          outlined destroy of CallControlsService?(v4, &_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd, &_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMR);
          return;
        }

        outlined init with take of Collaboration();
        if ((v7[*(v5 + 24)] & 1) == 0)
        {
          v22 = *&v7[*(v5 + 20)];
          *v14 = v22;
          swift_storeEnumTagMultiPayload();
          v23 = *((*v15 & *a1) + 0xA08);
          v24 = v22;
          v23(v14);

          _s15ConversationKit11ParticipantVWOhTm_10();
          return;
        }

        _s15ConversationKit11ParticipantVWOhTm_10();
      }
    }
  }
}

uint64_t ConversationControlsManager.shouldShowCollaborationNotice(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized ConversationControlsManager.shouldShowCollaborationNotice(for:)(v4, v1, v2, v3);
}

uint64_t ConversationControlsManager.isAlertAvailable.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4B8))();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 8))(v3, v0);
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    return v0 & 1;
  }

  return result;
}

char *ConversationControlsManager.__allocating_init(activeCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_55();
  swift_getObjectType();
  v11 = OUTLINED_FUNCTION_4_31();

  return specialized ConversationControlsManager.__allocating_init(activeCall:)(v11, v12, v13, v10, v14, v15, v16, v17, a9, a10);
}

void ConversationControlsManager.__allocating_init(activeCall:callCenter:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_15_25();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  (*(v6 + 16))(v1);
  v7 = OUTLINED_FUNCTION_1_5();
  specialized ConversationControlsManager.__allocating_init(activeCall:callCenter:)(v7, v8, v1, v0, v3, v4);
  v9 = OUTLINED_FUNCTION_28_0();
  __swift_destroy_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_49();
}

void ConversationControlsManager.__allocating_init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)()
{
  OUTLINED_FUNCTION_29();
  v20 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v14);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  (*(v16 + 16))(v1);
  ObjectType = swift_getObjectType();
  v18 = swift_getObjectType();
  specialized ConversationControlsManager.__allocating_init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(v11, v1, v9, v5, v3, v20, ObjectType, v18, v14, v7, v13);
  v19 = OUTLINED_FUNCTION_28_0();
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v14);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  (*(v17 + 16))(v1);
  specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(v13, v1, v9, v7, v5, v3, v0, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_391();
  OUTLINED_FUNCTION_30_0();
}

id ConduitApprovalDelegate.__allocating_init(_:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_247());
  OUTLINED_FUNCTION_28_0();
  return ConduitApprovalDelegate.init(_:)();
}

void closure #2 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(uint64_t a1)
{
  OUTLINED_FUNCTION_247_0(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))(), v2, (v3 & 0xE0) == 0x20) && (v3 & 1) != 0)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return;
    }

    v5 = v4;
    ConversationControlsManager.joinButtonTapped()();
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v5 = v6;
    [v6 acceptCallButtonTappedWithIgnoresSmartHoldingSession_];
  }
}

Swift::Void __swiftcall ConversationControlsManager.joinButtonTapped()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v10))
  {
    v11 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v11);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_18();
  }

  [v0 gameControllerDidRequestDismissal];
  ConversationController.joinConversation()();
}

void closure #3 in ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)(uint64_t a1)
{
  OUTLINED_FUNCTION_247_0(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong rejectCallButtonTapped];
  }
}

Swift::Void __swiftcall ConversationControlsManager.updateControlsState()()
{
  OUTLINED_FUNCTION_262();
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v2) + 0x380))())
  {
    ConversationControlsManager.localAudioEnabled.setter(0, v3, v4, v5, v6, v7, v8, v9, v58, v61, SWORD2(v61), SBYTE6(v61), HIBYTE(v61));
    v12 = ConversationControlsManager.localVideoButtonState.getter(v10, v11) & 1;
  }

  else
  {
    v20 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v21 = *(v20 + 16) >> 7;
    ConversationControlsManager.localAudioEnabled.setter((*v20 & 1) == 0, v22, v23, v24, v25, v26, v27, v28, v58, v61, SWORD2(v61), SBYTE6(v61), HIBYTE(v61));
    v12 = ConversationControlsManager.localVideoButtonState.getter(v29, v30) & 1 | ((v21 & 1) << 8);
  }

  ConversationControlsManager.localVideoButtonState.setter(v12, v13, v14, v15, v16, v17, v18, v19, v59, v62, SWORD2(v62), BYTE6(v62), SHIBYTE(v62));
  v31 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  ConversationController.hasMessageCapableRemoteParticipants.getter();
  ConversationControlsManager.shouldOpenMessages.setter(v32 & 1);
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v31 + v33) == 3)
  {
    v34 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_41_1();
    (*(v35 + 672))();
    v37 = v36;
    ObjectType = swift_getObjectType();
    v34 = (*(v37 + 152))(ObjectType, v37);
    swift_unknownObjectRelease();
  }

  ConversationControlsManager.shouldEnableStartingStagedActivity.setter(v34 & 1);
  if (ConversationController.audioRoute.getter())
  {
    OUTLINED_FUNCTION_41_1();
    v40 = *(v39 + 1616);
    v42 = v41;
    v43 = v40();
    if (v43)
    {
      v44 = v43;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute, 0x1E69D8CA8);
      OUTLINED_FUNCTION_40_2();
      v45 = static NSObject.== infix(_:_:)();

      if (v45)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v46 = ConversationController.audioRoute.getter();
    ConversationControlsManager.audioRoute.setter(v46, v47, v48, v49, v50, v51, v52, v53, v60, v63);
LABEL_13:
  }

  ConversationControlsManager.updateShareButtonState()();
  OUTLINED_FUNCTION_41_1();
  (*(v54 + 2608))();
  OUTLINED_FUNCTION_11_23();
  (*((*v1 & v55) + 0x358))();
  OUTLINED_FUNCTION_11_23();
  (*((*v1 & v56) + 0x2A0))();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_236_0();
  v57();
  OUTLINED_FUNCTION_280_0();
  ConversationControlsManager.updateGameControllerForCallStatus(_:)(v31);
}

Swift::Void __swiftcall ConversationControlsManager.updateConversation()()
{
  ConversationController.lookupActiveConversation()();
  ConversationController.update(with:)();
  outlined destroy of CallControlsService?(v0, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
}

Swift::Void __swiftcall ConversationControlsManager.updateControlsCornerRadius()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x4B8))())
  {
    v2 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 24))(v2);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationControlsManager.reviewLMIRequests()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_6();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_293();
  v10 += 157;
  v11 = *v10;
  if (*v10)() && (v12 = OUTLINED_FUNCTION_255(), (*(v1 + 32))(v12), v13 = OUTLINED_FUNCTION_280_0(), (v1))
  {
    if (!(v11)(v13))
    {
      return;
    }

    v14 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 128))(v14);
  }

  else
  {
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_293();
    (*(v15 + 920))(1);
    OUTLINED_FUNCTION_11_23();
    if (!(*((*v9 & v16) + 0x4B8))())
    {
      return;
    }

    v17 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 48))(v17);
  }

  swift_unknownObjectRelease();
}

void ConversationControlsManager.reloadDetailsView(participant:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_32_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-1] - v9;
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_205_0();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v14 = MEMORY[0x1E69E7D40];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    OUTLINED_FUNCTION_11_23();
    if ((*((*v14 & v15) + 0x500))())
    {
      OUTLINED_FUNCTION_423();
      ConversationController.visibleParticipants.getter();
      LOWORD(v31[0]) = 513;
      (*(v4 + 48))();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    OUTLINED_FUNCTION_62_8();
    OUTLINED_FUNCTION_15_14();
    outlined init with take of Collaboration();
    OUTLINED_FUNCTION_11_23();
    if ((*((*v14 & v16) + 0x500))())
    {
      OUTLINED_FUNCTION_175_0();
      ObjectType = swift_getObjectType();
      (*(v4 + 32))(v1, 0x7FFFFFCFELL, 0, 0, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_3_106();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  OUTLINED_FUNCTION_128_0();
  v18 += 145;
  v19 = *v18;
  (*v18)(v31);
  if (v32)
  {
    outlined init with copy of IDSLookupManager(v31, v30);
    outlined destroy of CallControlsService?(v31, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
    v20 = OUTLINED_FUNCTION_422(v30);
    (*((*v14 & *v2) + 0x928))(v20);
    OUTLINED_FUNCTION_41();
    v21();
    v22 = __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v22 = outlined destroy of CallControlsService?(v31, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
  }

  (v19)(v31, v22);
  if (v32)
  {
    outlined init with copy of IDSLookupManager(v31, v30);
    outlined destroy of CallControlsService?(v31, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
    v23 = OUTLINED_FUNCTION_422(v30);
    v24 = (*((*v14 & *v2) + 0x2C0))(v23);
    v25 = v24;
    if (v24)
    {
      v24 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
      v26 = &protocol witness table for TUConversation;
    }

    else
    {
      v26 = 0;
      v29[1] = 0;
      v29[2] = 0;
    }

    v29[0] = v25;
    v29[3] = v24;
    v29[4] = v26;
    OUTLINED_FUNCTION_41();
    v27();
    outlined destroy of CallControlsService?(v29, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    outlined destroy of CallControlsService?(v31, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.reloadDetailsView(isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x500))())
  {
    OUTLINED_FUNCTION_423();
    ConversationController.visibleParticipants.getter();
    (*(v2 + 56))();

    swift_unknownObjectRelease();
  }
}

uint64_t ConversationControlsManager.reloadDetailsView(participant:isKickingAvailable:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_36();
  result = (*((*MEMORY[0x1E69E7D40] & v5) + 0x500))();
  if (result)
  {
    OUTLINED_FUNCTION_175_0();
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(v2, a2 & 1, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsManager.updateDetailsViewMode()()
{
  OUTLINED_FUNCTION_262();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_128_0();
  v3 += 145;
  v4 = *v3;
  (*v3)(v14);
  if (v15)
  {
    outlined init with copy of IDSLookupManager(v14, v13);
    outlined destroy of CallControlsService?(v14, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
    OUTLINED_FUNCTION_422(v13);
    OUTLINED_FUNCTION_11_23();
    (*((*v2 & v5) + 0x2A0))();
    OUTLINED_FUNCTION_208_0();
    ObjectType = swift_getObjectType();
    (*(v1 + 208))(ObjectType);
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_41();
    v7();
    v8 = __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v8 = outlined destroy of CallControlsService?(v14, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
  }

  (v4)(v14, v8);
  if (v15)
  {
    outlined init with copy of IDSLookupManager(v14, v13);
    outlined destroy of CallControlsService?(v14, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
    OUTLINED_FUNCTION_422(v13);
    OUTLINED_FUNCTION_11_23();
    (*((*v2 & v9) + 0x928))();
    OUTLINED_FUNCTION_41();
    v10();
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    outlined destroy of CallControlsService?(v14, &_s15ConversationKit19CallControlsService_pSgMd, &_s15ConversationKit19CallControlsService_pSgMR);
  }

  OUTLINED_FUNCTION_36_23();
  if ((*(v11 + 1280))())
  {
    v12 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 8))(v12);
    swift_unknownObjectRelease();
  }
}

uint64_t ConversationControlsManager.updateDetails(for:)()
{
  OUTLINED_FUNCTION_4_36();
  result = (*((*MEMORY[0x1E69E7D40] & v0) + 0x500))();
  if (result)
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_330();
    v2 = OUTLINED_FUNCTION_26_25();
    v3(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsManager.layoutStyleUpdated()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x500))())
  {
    v2 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 16))(v2);

    swift_unknownObjectRelease();
  }
}

void ConversationControlsManager.bannerPresentationManagerDidDismissBanner(type:reason:)(uint64_t a1, uint64_t a2)
{
  v4 = outlined init with copy of ConversationControlsType(a1, &v14);
  if (v17 == 3)
  {
    v10 = v14;
    v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x578))(v4);
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      OUTLINED_FUNCTION_45_1();
      ConduitLagunaNoticeManager.systemBannerWasDismissed(for:reason:)();
    }

    else
    {
    }
  }

  else if (v17 == 7 && ((v5 = vorrq_s8(v15, v16), v6 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)), v14 == 25) ? (v7 = *&v6 == 0) : (v7 = 0), v7))
  {
    if ((a2 - 1) <= 1)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA30))(v4);
    }
  }

  else
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x578))(v4);
    if (v8)
    {
      v9 = v8;
      ConduitLagunaNoticeManager.systemBannerWasDismissed(for:reason:)();
    }

    outlined destroy of ConversationControlsType(&v14);
  }
}

void ConduitLagunaNoticeManager.systemBannerWasDismissed(for:reason:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v7 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_37_0();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v2;
  v8[4] = v0;
  OUTLINED_FUNCTION_7_6(v8);
  v24[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v24[2] = v9;
  v24[3] = &block_descriptor_91_0;
  v10 = _Block_copy(v24);
  v11 = v4;
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  v24[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_52();
  lazy protocol witness table accessor for type URL and conformance URL(v13, v14);
  v15 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v17, v18, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_39_13();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v19);
  _Block_release(v10);

  v20 = OUTLINED_FUNCTION_45_16();
  v21(v20);
  v22 = OUTLINED_FUNCTION_107_1();
  v23(v22);
  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsManager.updateActiveCallForAVModeChange(_:)()
{
  OUTLINED_FUNCTION_408();
  v31 = v3;
  v32 = v4;
  OUTLINED_FUNCTION_55();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = v1;
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (OUTLINED_FUNCTION_418())
  {
    v8 = OUTLINED_FUNCTION_23();
    v30[0] = swift_slowAlloc();
    *v8 = 136315650;
    swift_getObjectType();
    v9 = _typeName(_:qualified:)();
    v13 = OUTLINED_FUNCTION_360(v9, v10, v11, v12);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x2A0))(v14);
    OUTLINED_FUNCTION_250();
    swift_getObjectType();
    OUTLINED_FUNCTION_308_0();
    v15();
    OUTLINED_FUNCTION_348();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v2, v30);
    OUTLINED_FUNCTION_300();

    *(v8 + 14) = v6;
    *(v8 + 22) = 2080;
    ObjectType = swift_getObjectType();
    v17 = (*(v0 + 56))(ObjectType, v0);
    v21 = OUTLINED_FUNCTION_360(v17, v18, v19, v20);

    *(v8 + 24) = v21;
    OUTLINED_FUNCTION_212_0();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_3_26();
  }

  OUTLINED_FUNCTION_45_1();
  ConversationController.updateCallForAVModeChange(_:)();
  v27 = OUTLINED_FUNCTION_73_7();
  ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v27, v28, v29);
  OUTLINED_FUNCTION_415();
}

uint64_t key path getter for ConversationControlsManager.updateForegroundCollaborationStateTask : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xAA8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationControlsManager.updateForegroundCollaborationStateTask : ConversationControlsManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xAB0);

  return v2(v3);
}

uint64_t ConversationControlsManager.incomingScreenSharingRequestActivity.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_3_12(a1);
  *(v2 + v4) = a1;
}

Swift::Void __swiftcall ConversationControlsManager.updateForegroundCollaborationState()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_13_2();
  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v5) + 0xAA8))())
  {
    MEMORY[0x1BFB21000]();
  }

  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_379(v6, v7, v8, v9);
  v10 = v0;
  v11 = static MainActor.shared.getter();
  OUTLINED_FUNCTION_109();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = ObjectType;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  (*((*v4 & *v10) + 0xAB0))();
}

uint64_t closure #1 in ConversationControlsManager.updateForegroundCollaborationState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v5 = type metadata accessor for Date();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for StagedCollaboration(0);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[41] = v6;
  v4[42] = *(v6 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = type metadata accessor for Collaboration(0);
  v4[50] = swift_task_alloc();
  v4[51] = type metadata accessor for ForegroundCollaborationState(0);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[57] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[58] = v8;
  v4[59] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.updateForegroundCollaborationState(), v8, v7);
}

uint64_t closure #1 in ConversationControlsManager.updateForegroundCollaborationState()()
{
  v69 = v0;
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x8C0);
  v2();
  OUTLINED_FUNCTION_316();
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shareableContent != -1)
  {
    OUTLINED_FUNCTION_218_0(&one-time initialization token for shareableContent);
  }

  v3 = *(v0 + 160);
  v4 = type metadata accessor for Logger();
  *(v0 + 480) = __swift_project_value_buffer(v4, static Logger.shareableContent);
  v5 = v3;
  v6 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_418())
  {
    v7 = OUTLINED_FUNCTION_42();
    v68 = OUTLINED_FUNCTION_23();
    v8 = v68;
    *v7 = 136315138;
    v9 = (v2)();
    v10 = ForegroundCollaborationState.description.getter(v9);
    v12 = v11;
    OUTLINED_FUNCTION_0_130();
    v1 = MEMORY[0x1E69E7D40];
    _s15ConversationKit11ParticipantVWOhTm_10();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v68);
    OUTLINED_FUNCTION_300();

    *(v7 + 4) = v10;
    OUTLINED_FUNCTION_212_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  v18 = *(*(v0 + 160) + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8);
  ObjectType = swift_getObjectType();
  if (((*(v18 + 664))(ObjectType, v18) & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_106_2();
  v21 = (*(v20 + 2144))();
  *(v0 + 488) = v21;
  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = v21;
  OUTLINED_FUNCTION_106_2();
  if (((*(v23 + 128))() & 1) != 0 || (v24 = (*(v0 + 160) + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_entitlementsChecker), v25 = v24[3], v26 = v24[4], __swift_project_boxed_opaque_existential_1(v24, v25), v27 = *&v22[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier], v28 = *&v22[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8], v67 = &v22[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier], v29 = *(v26 + 8), , v30 = v29(v27, v28, 0, v25, v26), v1 = MEMORY[0x1E69E7D40], , (v30 & 1) == 0))
  {

LABEL_13:

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_163(v37))
    {
      v38 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v38);
      OUTLINED_FUNCTION_140();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_4_4();
    }

LABEL_16:
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      v44 = *(v0 + 432);
      v45 = *(v0 + 160);
      OUTLINED_FUNCTION_4_97();
      OUTLINED_FUNCTION_32_2();
      _s15ConversationKit11ParticipantVWOcTm_8();
      (*((*v1 & *v45) + 0x8C8))(v44);
    }

    _s15ConversationKit11ParticipantVWOhTm_10();
    OUTLINED_FUNCTION_4_31();
    _s15ConversationKit11ParticipantVWOhTm_10();
    OUTLINED_FUNCTION_82_6();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_403();

    __asm { BRAA            X1, X16 }
  }

  v32 = *(v0 + 384);
  v31 = *(v0 + 392);
  OUTLINED_FUNCTION_106_2();
  v33 += 308;
  v34 = *v33;
  *(v0 + 496) = *v33;
  *(v0 + 504) = v33 & 0xFFFFFFFFFFFFLL | 0x2BC8000000000000;
  v34();
  OUTLINED_FUNCTION_115(v32, 1, v31);
  if (v50)
  {
    v35 = *(v0 + 384);
    OUTLINED_FUNCTION_0_130();
    _s15ConversationKit11ParticipantVWOhTm_10();
    outlined destroy of CallControlsService?(v35, &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
    goto LABEL_32;
  }

  v48 = *(v0 + 400);
  OUTLINED_FUNCTION_18_42();
  outlined init with take of Collaboration();
  v49 = *(v48 + 40);
  if (!v49)
  {
    OUTLINED_FUNCTION_0_130();
    _s15ConversationKit11ParticipantVWOhTm_10();
    goto LABEL_29;
  }

  v50 = *(v48 + 32) == *v67 && v49 == *(v67 + 1);
  if (!v50)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_0_130();
    _s15ConversationKit11ParticipantVWOhTm_10();
    if (v31)
    {
      goto LABEL_31;
    }

LABEL_29:
    OUTLINED_FUNCTION_2_113();
    _s15ConversationKit11ParticipantVWOhTm_10();
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_0_130();
  _s15ConversationKit11ParticipantVWOhTm_10();
LABEL_31:
  (*(*(v0 + 336) + 16))(*(v0 + 440), *(v0 + 400) + *(*(v0 + 392) + 44), *(v0 + 328));
  OUTLINED_FUNCTION_2_113();
  _s15ConversationKit11ParticipantVWOhTm_10();
LABEL_32:
  v51 = *(v0 + 160);
  v52 = swift_storeEnumTagMultiPayload();
  v53 = (*((*v1 & *v51) + 0x368))(v52);
  *(v0 + 512) = v53;
  if (!v53)
  {

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_163(v60))
    {
      v61 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_296(v61);
      OUTLINED_FUNCTION_85();
      _os_log_impl(v62, v63, v64, v65, v31, 2u);
      OUTLINED_FUNCTION_2_2();
    }

    goto LABEL_16;
  }

  v54 = v53;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  v55 = OUTLINED_FUNCTION_344();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo18SWShareableContentCGs5Error_pGMd, &_sSccySaySo18SWShareableContentCGs5Error_pGMR);
  OUTLINED_FUNCTION_30_22(v56);
  OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray, @unowned NSError?) -> () with result type [SWShareableContent];
  *(v0 + 104) = &block_descriptor_634;
  *(v0 + 112) = v55;
  [v54 retrieveShareableContentWithCompletion_];
  OUTLINED_FUNCTION_403();

  return MEMORY[0x1EEE6DEC8](v57);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 520) = v4;
  v5 = v3[59];
  v6 = v3[58];
  if (v4)
  {
    v7 = closure #1 in ConversationControlsManager.updateForegroundCollaborationState();
  }

  else
  {
    v7 = closure #1 in ConversationControlsManager.updateForegroundCollaborationState();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  v24 = v0;
  v3 = v0[65];

  swift_willThrow();
  v4 = v3;
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_317())
  {
    v6 = v0[65];
    v7 = v0[64];
    v8 = v0[61];
    OUTLINED_FUNCTION_42();
    v23 = OUTLINED_FUNCTION_38_3();
    *v1 = 136315138;
    v0[19] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = >> prefix<A>(_:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);
    OUTLINED_FUNCTION_420();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v16 = v0[65];
    v17 = v0[64];
    v18 = v0[61];
  }

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v19 = v0[54];
    v20 = v0[20];
    OUTLINED_FUNCTION_4_97();
    OUTLINED_FUNCTION_4_31();
    _s15ConversationKit11ParticipantVWOcTm_8();
    (*((*MEMORY[0x1E69E7D40] & *v20) + 0x8C8))(v19);
  }

  _s15ConversationKit11ParticipantVWOhTm_10();
  OUTLINED_FUNCTION_46();
  _s15ConversationKit11ParticipantVWOhTm_10();
  OUTLINED_FUNCTION_82_6();
  OUTLINED_FUNCTION_169();

  OUTLINED_FUNCTION_13();

  return v21();
}

void closure #1 in ConversationControlsManager.updateForegroundCollaborationState()()
{

  v1 = v0[18];
  v2 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      v6 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_173_0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v8);
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v9, v10, v11, v12, v13, 2u);
        OUTLINED_FUNCTION_26();
      }

      v14 = v0[64];
      v15 = v0[61];

LABEL_22:
      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB22010](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v4 hasPossibleCollaborationRepresentation])
    {

      v16 = v5;
      v17 = [v16 highlightURL];
      if (v17)
      {
        v18 = v17;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v19 = v0[41];
      v20 = v0[39];
      OUTLINED_FUNCTION_290();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      OUTLINED_FUNCTION_206();
      outlined init with take of URL?();
      OUTLINED_FUNCTION_115(v20, 1, v19);
      if (v33)
      {
        v25 = v0[41];
        outlined destroy of CallControlsService?(v0[39], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
      }

      else
      {
        v29 = v0[42];
        v30 = v0[40];
        URL.withoutFragment.getter(v30);
        v31 = *(v29 + 8);
        v32 = OUTLINED_FUNCTION_15_14();
        v31(v32);
        OUTLINED_FUNCTION_3_62(v30);
        if (!v33)
        {
          v44 = v0[62];
          v45 = v0[47];
          v159 = *(v0[42] + 32);
          v46 = (v159)(v0[46], v0[40], v0[41]);
          v44(v46);
          OUTLINED_FUNCTION_3_62(v45);
          v160 = v31;
          if (v47)
          {
            v48 = v0[41];
            outlined destroy of CallControlsService?(v0[47], &_s15ConversationKit13CollaborationVSgMd, &_s15ConversationKit13CollaborationVSgMR);
            OUTLINED_FUNCTION_10_0();
            __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
          }

          else
          {
            v52 = v0[41];
            v53 = v0[37];
            (*(v0[42] + 16))(v0[44], v0[47] + *(v0[49] + 44), v52);
            OUTLINED_FUNCTION_2_113();
            _s15ConversationKit11ParticipantVWOhTm_10();
            URL.withoutFragment.getter(v53);
            v54 = OUTLINED_FUNCTION_316();
            v31(v54);
            OUTLINED_FUNCTION_115(v53, 1, v52);
            if (!v55)
            {
              (v159)(v0[45], v0[37], v0[41]);
              OUTLINED_FUNCTION_15_14();
              v64 = static URL.== infix(_:_:)();
              if (v64)
              {

                v65 = Logger.logObject.getter();
                v66 = static os_log_type_t.debug.getter();
                if (OUTLINED_FUNCTION_163(v66))
                {
                  v67 = OUTLINED_FUNCTION_33();
                  OUTLINED_FUNCTION_182_0(v67);
                  OUTLINED_FUNCTION_140();
                  _os_log_impl(v68, v69, v70, v71, v72, 2u);
                  OUTLINED_FUNCTION_4_4();
                }

                v73 = v0[64];
                v74 = v0[61];
                v75 = v0[55];
                v77 = v0[45];
                v76 = v0[46];
                v78 = v0[41];

                (v160)(v76, v78);
                OUTLINED_FUNCTION_0_130();
                _s15ConversationKit11ParticipantVWOhTm_10();
                (v159)(v75, v77, v78);
                swift_storeEnumTagMultiPayload();
                if (static Task<>.isCancelled.getter())
                {
LABEL_24:
                  _s15ConversationKit11ParticipantVWOhTm_10();
                  OUTLINED_FUNCTION_4_31();
                  _s15ConversationKit11ParticipantVWOhTm_10();
                  OUTLINED_FUNCTION_82_6();
                  OUTLINED_FUNCTION_169();

                  OUTLINED_FUNCTION_13();
                  OUTLINED_FUNCTION_403();

                  __asm { BRAA            X1, X16 }
                }

LABEL_23:
                v40 = v0[54];
                OUTLINED_FUNCTION_4_97();
                _s15ConversationKit11ParticipantVWOcTm_8();
                OUTLINED_FUNCTION_11_23();
                (*((*MEMORY[0x1E69E7D40] & v41) + 0x8C8))(v40);
                goto LABEL_24;
              }

              (v31)(v0[45], v0[41]);
LABEL_33:
              OUTLINED_FUNCTION_10_0();
              __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
              OUTLINED_FUNCTION_4_97();
              OUTLINED_FUNCTION_15_14();
              _s15ConversationKit11ParticipantVWOcTm_8();
              OUTLINED_FUNCTION_316();
              switch(swift_getEnumCaseMultiPayload())
              {
                case 1u:
                  v79 = v0[53];
                  v80 = v0[21];
                  v81 = v0[22];
                  v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR) + 48);
                  v83 = OUTLINED_FUNCTION_4_31();
                  v159(v83);
                  (*(v81 + 8))(v79 + v82, v80);
                  goto LABEL_43;
                case 2u:
                  (v159)(v0[43], v0[53], v0[41]);
LABEL_43:
                  v84 = v0[36];
                  URL.withoutFragment.getter(v0[35]);
                  v85 = OUTLINED_FUNCTION_15_14();
                  v31(v85);
                  outlined destroy of CallControlsService?(v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                  goto LABEL_44;
                case 3u:
                case 4u:
                  goto LABEL_45;
                default:
                  v61 = v0[28];
                  v60 = v0[29];
                  OUTLINED_FUNCTION_20_35();
                  outlined init with take of Collaboration();
                  v62 = [*(v60 + *(v61 + 40)) highlightURL];
                  if (v62)
                  {
                    v63 = v62;
                    static URL._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  v140 = v0[41];
                  v141 = v0[33];
                  OUTLINED_FUNCTION_290();
                  __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
                  OUTLINED_FUNCTION_206();
                  outlined init with take of URL?();
                  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v141, 1, v140);
                  v147 = v0[41];
                  v148 = v0[36];
                  if (EnumTagSinglePayload == 1)
                  {
                    outlined destroy of CallControlsService?(v0[36], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                    OUTLINED_FUNCTION_32_17();
                    _s15ConversationKit11ParticipantVWOhTm_10();
                    v149 = OUTLINED_FUNCTION_334();
                    outlined destroy of CallControlsService?(v149, v150, &_s10Foundation3URLVSgMR);
                    OUTLINED_FUNCTION_10_0();
                    __swift_storeEnumTagSinglePayload(v151, v152, v153, v147);
                  }

                  else
                  {
                    URL.withoutFragment.getter(v0[34]);
                    outlined destroy of CallControlsService?(v148, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                    OUTLINED_FUNCTION_32_17();
                    _s15ConversationKit11ParticipantVWOhTm_10();
                    v154 = OUTLINED_FUNCTION_15_14();
                    v31(v154);
                  }

LABEL_44:
                  outlined init with take of URL?();
LABEL_45:
                  v86 = v0[41];
                  v88 = v0[26];
                  v87 = v0[27];
                  (*(v0[42] + 16))(v0[31], v0[46], v86);
                  OUTLINED_FUNCTION_12();
                  __swift_storeEnumTagSinglePayload(v89, v90, v91, v86);
                  v92 = *(v88 + 48);
                  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
                  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
                  if (__swift_getEnumTagSinglePayload(v87, 1, v86) == 1)
                  {
                    outlined destroy of CallControlsService?(v0[31], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                    OUTLINED_FUNCTION_3_62(v87 + v92);
                    if (!v33)
                    {
                      goto LABEL_52;
                    }

                    v93 = v0[27];

                    outlined destroy of CallControlsService?(v93, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                  }

                  else
                  {
                    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
                    OUTLINED_FUNCTION_3_62(v87 + v92);
                    if (v33)
                    {
                      outlined destroy of CallControlsService?(v0[31], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                      v94 = OUTLINED_FUNCTION_4_31();
                      v160(v94);
LABEL_52:
                      outlined destroy of CallControlsService?(v0[27], &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
                      goto LABEL_53;
                    }

                    v121 = v0[41];
                    v123 = v0[30];
                    v122 = v0[31];
                    v158 = v0[27];
                    (v159)(v0[44], v87 + v92, v121);
                    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
                    v124 = dispatch thunk of static Equatable.== infix(_:_:)();
                    v125 = OUTLINED_FUNCTION_316();
                    v160(v125);
                    outlined destroy of CallControlsService?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                    (v160)(v123, v121);
                    outlined destroy of CallControlsService?(v158, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                    if ((v124 & 1) == 0)
                    {
LABEL_53:
                      OUTLINED_FUNCTION_4_97();
                      _s15ConversationKit11ParticipantVWOcTm_8();
                      OUTLINED_FUNCTION_15_14();
                      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                      v96 = v0[52];
                      if (EnumCaseMultiPayload == 1)
                      {
                        v98 = v0[24];
                        v97 = v0[25];
                        v100 = v0[22];
                        v99 = v0[23];
                        v101 = v0[21];
                        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR);
                        (*(v100 + 32))(v97, v96 + *(v102 + 48), v101);
                        v103 = OUTLINED_FUNCTION_15_14();
                        v160(v103);
                        Date.addingTimeInterval(_:)();
                        static Date.now.getter();
                        OUTLINED_FUNCTION_43_0();
                        v104 = static Date.> infix(_:_:)();
                        v105 = *(v100 + 8);
                        v105(v99, v101);
                        v105(v98, v101);
                        if (v104)
                        {

                          v106 = Logger.logObject.getter();
                          v107 = static os_log_type_t.debug.getter();
                          if (OUTLINED_FUNCTION_163(v107))
                          {
                            v108 = OUTLINED_FUNCTION_33();
                            OUTLINED_FUNCTION_182_0(v108);
                            OUTLINED_FUNCTION_140();
                            _os_log_impl(v109, v110, v111, v112, v113, 2u);
                            OUTLINED_FUNCTION_4_4();
                          }

                          v114 = v0[64];
                          v115 = v0[61];
                          v157 = v0[46];
                          v155 = v0[36];
                          v156 = v0[41];
                          v116 = v0[25];
                          v117 = v0[21];

                          v105(v116, v117);
                          outlined destroy of CallControlsService?(v155, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                          v118 = v157;
                          v119 = v156;
LABEL_64:
                          (v160)(v118, v119);
                          static Task<>.isCancelled.getter();
                          goto LABEL_24;
                        }

                        v137 = v105;
                        v138 = v0[36];
                        v137(v0[25], v0[21]);
                        outlined destroy of CallControlsService?(v138, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                        v139 = OUTLINED_FUNCTION_139();
                        v160(v139);
                      }

                      else
                      {
                        outlined destroy of CallControlsService?(v0[36], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                        v120 = OUTLINED_FUNCTION_316();
                        v160(v120);
                        OUTLINED_FUNCTION_0_130();
                        _s15ConversationKit11ParticipantVWOhTm_10();
                      }

                      goto LABEL_21;
                    }
                  }

                  v126 = Logger.logObject.getter();
                  v127 = static os_log_type_t.debug.getter();
                  if (OUTLINED_FUNCTION_163(v127))
                  {
                    v128 = OUTLINED_FUNCTION_33();
                    OUTLINED_FUNCTION_182_0(v128);
                    OUTLINED_FUNCTION_140();
                    _os_log_impl(v129, v130, v131, v132, v133, 2u);
                    OUTLINED_FUNCTION_4_4();
                  }

                  v134 = v0[64];
                  v135 = v0[61];
                  v136 = v0[36];

                  outlined destroy of CallControlsService?(v136, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                  v118 = OUTLINED_FUNCTION_43_0();
                  goto LABEL_64;
              }
            }
          }

          outlined destroy of CallControlsService?(v0[37], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          goto LABEL_33;
        }
      }

      outlined destroy of CallControlsService?(v0[40], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_21:
      v34 = v0[64];
      v35 = v0[54];
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd, &_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMR) + 48);
      v37 = OUTLINED_FUNCTION_38_2();
      StagedCollaboration.init(foregroundApp:shareableContent:)(v37, v38, v39);

      OUTLINED_FUNCTION_0_130();
      _s15ConversationKit11ParticipantVWOhTm_10();
      *(v35 + v36) = 0;
      OUTLINED_FUNCTION_32_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_206();
      outlined init with take of Collaboration();
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray, @unowned NSError?) -> () with result type [SWShareableContent](uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SWShareableContent, 0x1E697B6C0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)();
  }
}

uint64_t ConversationControlsManager.suppressingSystemNotices.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4E8))();
  if (result)
  {
    v3 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 16))(v3, v0);
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    return v0 & 1;
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsManager.invalidateAndRescheduleDismissTimer(reschedule:)(Swift::Bool reschedule)
{
  OUTLINED_FUNCTION_143_1();
  if ((*(v4 + 1184))())
  {
    OUTLINED_FUNCTION_175_0();
    ObjectType = swift_getObjectType();
    (*(*(v2 + 8) + 8))(reschedule, ObjectType);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_120_0();
  if ((*(v6 + 1256))())
  {
    v7 = OUTLINED_FUNCTION_255();
    (*(*(v1 + 8) + 8))(reschedule, v7);

    swift_unknownObjectRelease();
  }
}

uint64_t key path getter for ConversationControlsManager.screenShareCountdownTimer : ConversationControlsManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xAE8))();
  *a2 = result;
  return result;
}

void key path setter for ConversationControlsManager.screenShareCountdownTimer : ConversationControlsManager(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ConversationControlsManager.screenShareCountdownTimer.setter(v1, v3);
}

id ConversationControlsManager.screenShareCountdownTimer.willset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

void ConversationControlsManager.screenShareCountdownTimer.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer;
  v5 = swift_beginAccess();
  v6 = *(v2 + v4);
  v7 = MEMORY[0x1E69E7D40];
  if (v6)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
    v8 = v6;
    v9 = a1;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return;
    }

    if (*(v2 + v4))
    {
      goto LABEL_8;
    }
  }

  else if (!a1)
  {
    return;
  }

  v11 = (*((*v7 & *v2) + 0x720))(v13);
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v5 = v11(v13, 0);
LABEL_8:
  (*((*v7 & *v2) + 0xAD0))(v5);
}

void *ConversationControlsManager.screenShareCountdownTimer.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer;
  OUTLINED_FUNCTION_19_1(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void ConversationControlsManager.screenShareCountdownTimer.setter(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_screenShareCountdownTimer, a2);
  v5 = *(v2 + v4);
  v6 = v5;
  ConversationControlsManager.screenShareCountdownTimer.willset();
  v7 = *(v2 + v4);
  *(v2 + v4) = a1;
  v8 = a1;

  ConversationControlsManager.screenShareCountdownTimer.didset(v5);
}

uint64_t ConversationControlsManager.handleToggleLayoutAction()(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_417();
  v3 = (*(v1 + 248))(v2, v1);
  (*(v1 + 256))((v3 & 1) == 0, v2, v1);
  OUTLINED_FUNCTION_11_23();
  v5 = *((*MEMORY[0x1E69E7D40] & v4) + 0xA90);

  return v5();
}

id ConversationControlsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall ConversationControlsManager.leaveButtonTapped()()
{
  OUTLINED_FUNCTION_29();
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  v11 = OUTLINED_FUNCTION_213_0();
  v12(v11);
  _dispatchPreconditionTest(_:)();
  v13 = OUTLINED_FUNCTION_377();
  v14(v13);
  if (v10)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v15, &static Logger.conversationControls);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v17))
  {
    v18 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_203_0(v18);
    OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v19, v20, "leaveButtonTapped");
    OUTLINED_FUNCTION_104_2();
  }

  v21 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_293();
  v23 = (*(v22 + 704))();
  if (v23)
  {
    v24 = v23;
    if ([v23 avMode] && objc_msgSend(v24, sel_eligibleForDowngradeToAVModeNoneFromUI))
    {
      ConversationController.downgradeToAVLess()();
      OUTLINED_FUNCTION_11_23();
      if ((*((*v21 & v25) + 0x4B8))())
      {
        v26 = OUTLINED_FUNCTION_255();
        v1[8](v26);
        swift_unknownObjectRelease();
      }

      type metadata accessor for ConversationControlsManager(0);
      static ConversationControlsManager.shouldShowAVLessLeaveConfirmation.setter(1);
      v27 = OUTLINED_FUNCTION_73_7();
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v27, v28, v29);
      if (Features.sharePlayInCallsEnabled.getter())
      {
        OUTLINED_FUNCTION_293();
        v30 += 84;
        v31 = *v30;
        (*v30)();
        OUTLINED_FUNCTION_255();
        OUTLINED_FUNCTION_237_0();
        v32();
        OUTLINED_FUNCTION_173();
        swift_unknownObjectRelease();
        v33 = [v1 isTelephonyProvider];

        if (v33)
        {
          v31();
          v34 = OUTLINED_FUNCTION_254_0();
          (*(v5 + 488))(52, v34, v5);
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_23;
    }
  }

  ConversationControlsManager.declineIncomingScreenShareRequests()();
  ConversationController.leaveConversation(reason:)();
  OUTLINED_FUNCTION_11_23();
  if ((*((*v21 & v35) + 0x4B8))())
  {
    OUTLINED_FUNCTION_264();
    swift_getObjectType();
    OUTLINED_FUNCTION_165_0();
    v36 = OUTLINED_FUNCTION_156_0(19);
    v37(v36);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for avLessLeaveConfirmationPresentedDate != -1)
  {
    OUTLINED_FUNCTION_77_8(&one-time initialization token for avLessLeaveConfirmationPresentedDate);
  }

  OUTLINED_FUNCTION_52(v6, static ConversationControlsManager.avLessLeaveConfirmationPresentedDate);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_208();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_3_62(v2);
  if (v38)
  {
    outlined destroy of CallControlsService?(v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_33_0();
    v40(v39);
    CNKCoreAnalyticsReporter.reportAVLessLeaveConfirmation(presentedAt:action:)(v3, 1);
    v41 = OUTLINED_FUNCTION_206();
    v42(v41);
  }

  type metadata accessor for ConversationControlsManager(0);
  static ConversationControlsManager.shouldShowAVLessLeaveConfirmation.setter(0);
LABEL_23:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.dismissTapped(button:)(UIControl *button)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x4E8))(button))
  {
    v3 = OUTLINED_FUNCTION_254_0();
    (*(v1 + 160))(v3);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationControlsManager.openApp(withBundleIdentifier:)(Swift::String withBundleIdentifier)
{
  OUTLINED_FUNCTION_402();
  v39 = v2;
  v40 = v4;
  if (v5 != 0xD000000000000017 || 0x80000001BC506380 != v3)
  {
    OUTLINED_FUNCTION_385();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for FBSOpenApplicationOptions, 0x1E699FB70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAA20;
      aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v11;
      AnyHashable.init<A>(_:)();
      v12 = MEMORY[0x1E69E6370];
      *(inited + 96) = MEMORY[0x1E69E6370];
      *(inited + 72) = 1;
      aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v13;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = v12;
      *(inited + 144) = 1;
      v14 = Dictionary.init(dictionaryLiteral:)();
      v15 = @nonobjc FBSOpenApplicationOptions.__allocating_init(dictionary:)(v14);
      v16 = [objc_opt_self() serviceWithDefaultShellEndpoint];
      if (v16)
      {
        v17 = v16;
        v18 = OUTLINED_FUNCTION_33_0();
        v19 = MEMORY[0x1BFB209B0](v18);
        OUTLINED_FUNCTION_20();
        v20 = swift_allocObject();
        OUTLINED_FUNCTION_275(v20);
        swift_unknownObjectWeakInit();
        v37 = partial apply for closure #1 in ConversationControlsManager.openApp(withBundleIdentifier:);
        v38 = v1;
        aBlock = MEMORY[0x1E69E9820];
        v34 = 1107296256;
        v35 = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
        v36 = &block_descriptor_100;
        v21 = _Block_copy(&aBlock);

        OUTLINED_FUNCTION_398();
        [v22 v23];
        _Block_release(v21);
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v24 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v24, &static Logger.conversationControls);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_163(v26))
        {
          v27 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v27);
          OUTLINED_FUNCTION_219();
          _os_log_impl(v28, v29, v30, v31, v32, 2u);
          OUTLINED_FUNCTION_18();
        }
      }

      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_176();
  if (!(*(v7 + 1208))())
  {
LABEL_17:
    OUTLINED_FUNCTION_282_0();
    return;
  }

  OUTLINED_FUNCTION_254_0();
  OUTLINED_FUNCTION_222_0();
  v8();
  OUTLINED_FUNCTION_282_0();

  swift_unknownObjectRelease();
}

id @nonobjc FBSOpenApplicationOptions.__allocating_init(dictionary:)(uint64_t a1)
{
  if (a1)
  {
    v1.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

void closure #1 in ConversationControlsManager.openApp(withBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4B8))();
    v7 = v6;

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 32))(0x6E6968636E75614CLL, 0xED00007070612067, 1, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

void closure #1 in ConversationControlsManager.openMessagesButtonTapped()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Present HUD: openMessagesButtonTapped (transition)", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4B8))();
    v10 = v9;

    if (v8)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 56))(ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall ConversationControlsManager.toggleMicButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_388();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_12_3();
  v7(v6);
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_9_37();
  v9(v8);
  if (v5)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
  v11 = v2;
  v12 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_317())
  {
    v13 = OUTLINED_FUNCTION_42();
    v31 = OUTLINED_FUNCTION_23();
    *v13 = 136315138;
    v14 = [v11 isSelected];
    v15 = v14 == 0;
    if (v14)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v15)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v31);

    *(v13 + 4) = v18;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_18();
  }

  ConversationController.toggleLocalAudio()();
  v24 = OUTLINED_FUNCTION_73_7();
  ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v24, v25, v26);
  v27 = [*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) frontmostCall];
  if (v27)
  {
    v28 = v27;
    OUTLINED_FUNCTION_293();
    v30 = (*(v29 + 1328))();
    if (v30)
    {
      [v30 localAudioToggledWithIsMuted_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall ConversationControlsManager.toggleVideoButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_272();
  v21 = v1;
  v22 = v2;
  v4 = v3;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = v4;
  v7 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_317())
  {
    v8 = OUTLINED_FUNCTION_42();
    v20 = OUTLINED_FUNCTION_23();
    *v8 = 136315138;
    v9 = [v6 isSelected];
    v10 = v9 == 0;
    if (v9)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v10)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_194_0();

  ConversationControlsManager.toggleVideoButtonTapped()();
}

Swift::Void __swiftcall ConversationControlsManager.toggleVideoButtonTapped()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    ConversationController.toggleLocalVideo(shouldPauseIfStopped:)(0);
    v7 = OUTLINED_FUNCTION_73_7();
    ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

void *closure #1 in ConversationControlsManager.startScreenShareWithCountdown(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    v8 = v6 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults;
    v9 = *(v6 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 384))(ObjectType, v9);
    *(v7 + 16) = v11;
    v12 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x720))(aBlock);
    *(v13 + 8) = v11;
    *(v13 + 16) = 0;
    v12(aBlock, 0);
    v14 = objc_opt_self();
    v15 = *(v8 + 1);
    v16 = swift_getObjectType();
    v17 = (*(v15 + 392))(v16, v15);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v7;
    v19[4] = a2;
    v19[5] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in ConversationControlsManager.startScreenShareWithCountdown(completion:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_686;
    v20 = _Block_copy(aBlock);

    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);

    v21 = [v14 scheduledTimerWithTimeInterval:1 repeats:v20 block:v17];
    _Block_release(v20);
    ConversationControlsManager.screenShareCountdownTimer.setter(v21, v22);
  }

  return result;
}

void closure #1 in closure #1 in ConversationControlsManager.startScreenShareWithCountdown(completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(a3 + 16);
    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      *(a3 + 16) = v10;
      if (v10 < 0)
      {
        [a1 invalidate];
        ConversationControlsManager.screenShareCountdownTimer.setter(0, v13);
        (*((*MEMORY[0x1E69E7D40] & *v8) + 0x8E0))(0, 0, 0);
        v14 = *(v8 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
        ConversationController.startScreenSharingSession()();

        if (a4)
        {
          a4();
        }
      }

      else
      {
        v11 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x720))(v15);
        *(v12 + 8) = v10;
        *(v12 + 16) = 0;
        v11(v15, 0);
      }
    }
  }
}

void closure #2 in ConversationControlsManager.startScreenShareWithCountdown(completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    v5 = type metadata accessor for SpringBoardUtilities();

    specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(v5, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v7, "Ignoring starting screen sharing. User opted to not replace current activity.", v8, 2u);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }
  }
}

void closure #1 in closure #2 in ConversationControlsManager.startScreenShareWithCountdown(completion:)(char a1, void (*a2)(void))
{
  if (a1)
  {
    a2();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_173_0();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v5);
      OUTLINED_FUNCTION_361(&dword_1BBC58000, oslog, v2, "Ignoring starting screen sharing. Springboard wasn't unlocked.");
      OUTLINED_FUNCTION_3_83();
    }
  }
}

void specialized ConversationControlsManager.promptForReplaceAlertIfNeeded(_:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v105 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0);

  v13 = v11(v12);
  if (v13)
  {
    v106 = v13;
    v14 = (*((*v10 & *a1) + 0x988))();
    if (!v14)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, &static Logger.conversationControls);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1BBC58000, v29, v30, "No current activity, not prompting to replace", v31, 2u);
        MEMORY[0x1BFB23DF0](v31, -1, -1);
      }

      v32 = type metadata accessor for SpringBoardUtilities();

      specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(v32, a2, a3);

      v20 = v106;
      goto LABEL_21;
    }

    v104 = v14;
    if ([v14 isLocallyInitiated])
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, &static Logger.conversationControls);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1BBC58000, v16, v17, "Activity was locally initiated, not prompting to replace", v18, 2u);
        MEMORY[0x1BFB23DF0](v18, -1, -1);
      }

      v19 = type metadata accessor for SpringBoardUtilities();

      specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(v19, a2, a3);

      v20 = v104;
LABEL_21:

      return;
    }

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v101 = v8;
    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, &static Logger.conversationControls);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BBC58000, v34, v35, "Prompting to replace current activity with screen sharing activity", v36, 2u);
      MEMORY[0x1BFB23DF0](v36, -1, -1);
    }

    v103 = v9;

    v100 = Dictionary.init(dictionaryLiteral:)();
    v37 = TUConversationActivitySession.title.getter();
    v102 = v6;
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v98[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = objc_opt_self();
      v41 = [v99 conversationKit];
      v42._countAndFlagsBits = 0xD000000000000015;
      v115._object = 0xE000000000000000;
      v42._object = 0x80000001BC509850;
      v43.value._countAndFlagsBits = 0x61737265766E6F43;
      v43.value._object = 0xEF74694B6E6F6974;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      v115._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v115);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1BC4BA940;
      v46 = MEMORY[0x1E69E6158];
      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v45 + 32) = v39;
      *(v45 + 40) = v40;
      v47 = String.init(format:_:)();
      v49 = v48;

      *(&v108 + 1) = v46;
      aBlock._countAndFlagsBits = v47;
      aBlock._object = v49;
      outlined init with take of Any(&aBlock, &v112);
      v50 = v100;
      swift_isUniquelyReferenced_nonNull_native();
      v111 = v50;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

      v51 = v111;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = [v99 conversationKit];
      v116._object = 0xE000000000000000;
      v53._object = 0x80000001BC509870;
      v53._countAndFlagsBits = 0xD000000000000017;
      v54.value._countAndFlagsBits = 0x61737265766E6F43;
      v54.value._object = 0xEF74694B6E6F6974;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      v116._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v116);

      v56 = String.init(format:_:)();
      v58 = v57;

      *(&v108 + 1) = v46;
      aBlock._countAndFlagsBits = v56;
      aBlock._object = v58;
      outlined init with take of Any(&aBlock, &v112);
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = [objc_opt_self() conversationKit];
      v60._countAndFlagsBits = 0xD000000000000016;
      v117._object = 0xE000000000000000;
      v60._object = 0x80000001BC5097F0;
      v61.value._countAndFlagsBits = 0x61737265766E6F43;
      v61.value._object = 0xEF74694B6E6F6974;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      v117._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v117);

      v63 = String.init(format:_:)();
      v65 = v64;

      *(&v108 + 1) = MEMORY[0x1E69E6158];
      aBlock._countAndFlagsBits = v63;
      aBlock._object = v65;
      outlined init with take of Any(&aBlock, &v112);
      v51 = v100;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v111 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

    v66 = v111;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = objc_opt_self();
    v68 = [v67 &off_1E7FE9588];
    v69._countAndFlagsBits = 0xD000000000000010;
    v118._object = 0xE000000000000000;
    v69._object = 0x80000001BC509810;
    v70.value._countAndFlagsBits = 0x61737265766E6F43;
    v70.value._object = 0xEF74694B6E6F6974;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v118._countAndFlagsBits = 0;
    v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v70, v68, v71, v118);

    *(&v108 + 1) = MEMORY[0x1E69E6158];
    aBlock = v72;
    outlined init with take of Any(&aBlock, &v112);
    swift_isUniquelyReferenced_nonNull_native();
    v111 = v66;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

    v73 = v111;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = [v67 &off_1E7FE9588];
    v119._object = 0xE000000000000000;
    v75._countAndFlagsBits = 0x4C45434E4143;
    v75._object = 0xE600000000000000;
    v76.value._countAndFlagsBits = 0x61737265766E6F43;
    v76.value._object = 0xEF74694B6E6F6974;
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    v119._countAndFlagsBits = 0;
    v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v76, v74, v77, v119);

    *(&v108 + 1) = MEMORY[0x1E69E6158];
    aBlock = v78;
    outlined init with take of Any(&aBlock, &v112);
    swift_isUniquelyReferenced_nonNull_native();
    v111 = v73;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();

    v79 = v111;
    v80 = objc_opt_self();
    v81 = [v106 groupUUID];
    v82 = v101;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v83 = v102;
    v112._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v112._object = v84;
    (*(v105 + 8))(v82, v83);
    MEMORY[0x1BFB20B10](46, 0xE100000000000000);
    v85 = TUConversationActivitySession.uniqueIdentifier.getter();
    MEMORY[0x1BFB20B10](v85);

    v86 = MEMORY[0x1BFB209B0](v112._countAndFlagsBits, v112._object);

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v79);
    v88 = v87;

    v89 = outlined bridged method (mnnnnbnn) of @objc static IMUserNotification.userNotification(withIdentifier:timeout:alertLevel:displayFlags:displayInformation:)(v86, 3, 0, 0.0, v88, v80);

    if (v89)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v112 = 0;
      v113 = 0u;
    }

    v90 = v103;
    aBlock = v112;
    v108 = v113;
    if (*(&v113 + 1))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotification, 0x1E69A6188);
      if (swift_dynamicCast())
      {
        v91 = v111;
        [v111 setUsesNotificationCenter_];
        v92 = v91;
        v93 = MEMORY[0x1BFB209B0](0xD000000000000017, 0x80000001BC506380);
        [v92 setRepresentedApplicationBundle_];

        if ([objc_opt_self() sharedInstance])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v112 = 0;
          v113 = 0u;
        }

        aBlock = v112;
        v108 = v113;
        if (!*(&v113 + 1))
        {

          outlined destroy of CallControlsService?(&aBlock, &_sypSgMd, &_sypSgMR);

          return;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
        if (swift_dynamicCast())
        {
          v94 = v111;
          v95 = swift_allocObject();
          *(v95 + 16) = partial apply for closure #2 in ConversationControlsManager.startScreenShareWithCountdown(completion:);
          *(v95 + 24) = v90;
          v109 = partial apply for closure #1 in ConversationControlsManager.promptForReplaceAlertIfNeeded(_:);
          v110 = v95;
          aBlock._countAndFlagsBits = MEMORY[0x1E69E9820];
          aBlock._object = 1107296256;
          *&v108 = thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ();
          *(&v108 + 1) = &block_descriptor_676;
          v96 = _Block_copy(&aBlock);
          v97 = v92;

          [v94 addUserNotification:v97 listener:0 completionHandler:v96];

          _Block_release(v96);

          return;
        }

LABEL_40:
        return;
      }
    }

    else
    {
      outlined destroy of CallControlsService?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    goto LABEL_40;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, &static Logger.conversationControls);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1BBC58000, v22, v23, "No current conversation, not starting screen sharing", v24, 2u);
    MEMORY[0x1BFB23DF0](v24, -1, -1);
  }

  (*((*v10 & *a1) + 0x2A0))();
  v26 = v25;
  ObjectType = swift_getObjectType();
  LOBYTE(v26) = (*(v26 + 152))(ObjectType, v26);
  swift_unknownObjectRelease();
  closure #2 in ConversationControlsManager.startScreenShareWithCountdown(completion:)(v26 & 1, a2, a3);
}

uint64_t closure #1 in ConversationControlsManager.promptForReplaceAlertIfNeeded(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    if ([a1 response])
    {
      a1 = 0;
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, &static Logger.conversationControls);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1BBC58000, v4, v5, "User accepted replacing current activity with screen sharing activity.", v6, 2u);
        MEMORY[0x1BFB23DF0](v6, -1, -1);
      }

      a1 = 1;
    }
  }

  return a2(a1);
}

Swift::Void __swiftcall ConversationControlsManager.declineOrCancelScreenShareRequest()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_17();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_18_10(v7))
  {
    v8 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_373(v8);
    OUTLINED_FUNCTION_24_6();
    _os_log_impl(v9, v10, v11, v12, v1, 2u);
    OUTLINED_FUNCTION_3_26();
  }

  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_53_12();
  v15 = (*(v14 + 704))();
  if (v15 && (v16 = v15, v17 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]), v16, v17))
  {
    v18 = [v17 UUID];
    OUTLINED_FUNCTION_362();

    OUTLINED_FUNCTION_11_23();
    v20 = (*((*v13 & v19) + 0x2E0))(v31);
    v22 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v23 = *(*v22 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
    v24 = *v22;
    *(v24 + 16) = v23 + 1;
    (*(v3 + 32))(v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23);
    v20(v31, 0);
    ConversationController.declineOrCancelScreenShareRequest(for:)();
    OUTLINED_FUNCTION_11_23();
    (*((*v13 & v25) + 0xA30))();

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v30 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_173_0();
    if (os_log_type_enabled(v30, v26))
    {
      v27 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v27);
      OUTLINED_FUNCTION_361(&dword_1BBC58000, v30, v0, "Cannot decline nil current screen share request");
      OUTLINED_FUNCTION_3_83();
    }

    OUTLINED_FUNCTION_30_0();
  }
}

void ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_29();
  v22 = v21;
  v24 = v23;
  v73 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (v75)
  {
    v66 = a21;
    outlined init with take of TapInteractionHandler(&v74, v77);
    type metadata accessor for FTMenuItemRegistry();
    v72 = v31;
    v68 = v29;
    v69 = v33;
    v36 = static FTMenuItemRegistry.shared.getter();
    v70 = v35;
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    OUTLINED_FUNCTION_40_2();
    dispatch thunk of FTMenuItemStateProviding.uniqueProxyIdentifier.getter();
    v71 = FTMenuItemRegistry.container(for:)();

    v67 = type metadata accessor for MoreMenuViewModel(0);
    outlined init with copy of IDSLookupManager(v77, &v74);
    v37 = OUTLINED_FUNCTION_3_54();
    OUTLINED_FUNCTION_278(v37);
    v65 = v36;
    swift_unknownObjectWeakInit();
    v38 = OUTLINED_FUNCTION_3_54();
    swift_unknownObjectWeakInit();
    v39 = OUTLINED_FUNCTION_3_54();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_283();
    v40 = MEMORY[0x1E69E7D40];
    v42 = *((*MEMORY[0x1E69E7D40] & v41) + 0x860);

    v44 = v42(v43);
    OUTLINED_FUNCTION_283();
    (*((*v40 & v45) + 0x2A0))();
    OUTLINED_FUNCTION_175_0();
    ObjectType = swift_getObjectType();
    v47 = (*(v40 + 184))(ObjectType, v40);
    swift_unknownObjectRelease();
    v48 = [v47 isTelephonyProvider];

    OUTLINED_FUNCTION_3_0();
    v64[0] = static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)(v49, v50, v51, v52, v53);

    v54 = OUTLINED_FUNCTION_3_54();
    OUTLINED_FUNCTION_278(v54);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_24();
    v55 = swift_allocObject();
    v56 = v73;
    *(v55 + 16) = v27;
    *(v55 + 24) = v56;
    OUTLINED_FUNCTION_24();
    v57 = swift_allocObject();
    *(v57 + 16) = v24;
    *(v57 + 24) = v66;
    v58 = v75;
    v59 = v76;
    __swift_mutable_project_boxed_opaque_existential_1(&v74, v75);
    v64[1] = v64;
    OUTLINED_FUNCTION_2_7();
    MEMORY[0x1EEE9AC00](v60);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_159();
    (*(v61 + 16))(v22);

    v62 = v68;

    specialized MoreMenuViewModel.__allocating_init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(v22, v71, v72, v62, TPNumberPadCharacter.rawValue.getter, 0, partial apply for closure #2 in ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:), v65, partial apply for closure #3 in ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:), v38, partial apply for closure #4 in ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:), v39, v64[0], partial apply for closure #5 in ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:), v48, v70, v63, partial apply for thunk for @escaping @callee_guaranteed () -> (), v55, partial apply for closure #1 in DropdownMenuButton.primaryButton(action:text:color:), v57, v67, v58, v59);
    __swift_destroy_boxed_opaque_existential_1(&v74);

    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    outlined destroy of CallControlsService?(&v74, &_s20CommunicationsUICore24FTMenuItemStateProviding_pSgMd, &_s20CommunicationsUICore24FTMenuItemStateProviding_pSgMR);
  }

  OUTLINED_FUNCTION_391();
  OUTLINED_FUNCTION_30_0();
}

void closure #3 in ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ConversationControlsManager.stopScreenShare()();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0xA48))();
  }
}

void closure #4 in ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)()
{
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v0();
  }
}

Swift::Void __swiftcall ConversationControlsManager.cancelJoinCountdown()()
{
  OUTLINED_FUNCTION_50_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_159();
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_13_2();
  v8 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & v9) + 0x928))() != 96)
  {
    goto LABEL_7;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v1, *MEMORY[0x1E69E8020], v4);
  v10 = _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_33_0();
  v12(v11);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (one-time initialization token for conversationControls != -1)
  {
LABEL_9:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v13, &static Logger.conversationControls);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_240(v15))
  {
    v16 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v16);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  ConversationController.cancelJoinCountdown()();
  OUTLINED_FUNCTION_11_23();
  v23 = *(*((*v8 & v22) + 0x328))();
  (*(v23 + 264))();

  ConversationControlsManager.showHUD()();
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_11_23();
  (*((*v8 & v28) + 0xA68))();
  outlined destroy of CallControlsService?(v0, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_7:
  OUTLINED_FUNCTION_49();
}

void ConversationControlsManager.noticeTapped(notice:isSystemAperturePresentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_427();
  a20 = v22;
  a21 = v23;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_20();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_275(v28);
  swift_unknownObjectWeakInit();
  outlined init with copy of IDSLookupManager(v27, &a10);
  v29 = swift_allocObject();
  *(v29 + 16) = v21;
  outlined init with take of TapInteractionHandler(&a10, v29 + 24);
  *(v29 + 64) = v25;
  OUTLINED_FUNCTION_180_1();
  ConversationControlsNoticeCoordinator.noticeTapped(notice:completionHandler:)();

  OUTLINED_FUNCTION_52_5();
}

void closure #1 in ConversationControlsManager.noticeTapped(notice:isSystemAperturePresentation:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for AppLaunchNotice(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1)
    {
      outlined init with copy of IDSLookupManager(a3, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd, &_s15ConversationKit6Notice_pMR);
      if (swift_dynamicCast())
      {
        _s15ConversationKit11ParticipantVWOhTm_10();
        ConversationControlsManager.showHUD()();
        if ((a4 & 1) != 0 && (*((*MEMORY[0x1E69E7D40] & *v9) + 0x4B8))())
        {
          v11 = v10;
          ObjectType = swift_getObjectType();
          (*(v11 + 96))(0x7420656369746F4ELL, 0xED00006465707061, ObjectType, v11);

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, &static Logger.conversationControls);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1BBC58000, v17, v18, "Present HUD: noticeTapped (transition)", v19, 2u);
          MEMORY[0x1BFB23DF0](v19, -1, -1);
        }

        v20 = MEMORY[0x1E69E7D40];
        v21 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x4A0))();
        if (v21)
        {
          v23 = v22;
          v24 = swift_getObjectType();
          outlined init with copy of IDSLookupManager(a3, v31);
          v32 = 1;
          (*(v23 + 16))(0, v31, 0, 0, v24, v23);
          swift_unknownObjectRelease();
          v21 = outlined destroy of ConversationControlsType(v31);
        }

        if (a4)
        {
          v21 = (*((*v20 & *v9) + 0x4B8))(v21);
          if (v21)
          {
            v26 = v25;
            v27 = swift_getObjectType();
            (*(v26 + 96))(0x7420656369746F4ELL, 0xED00006465707061, v27, v26);
            v21 = swift_unknownObjectRelease();
          }
        }

        if ((*((*v20 & *v9) + 0x4E8))(v21))
        {
          v29 = v28;
          v30 = swift_getObjectType();
          outlined init with copy of IDSLookupManager(a3, v31);
          v32 = 1;
          (*(v29 + 80))(v31, 1, 0, v30, v29);
          swift_unknownObjectRelease();

          outlined destroy of ConversationControlsType(v31);
          return;
        }
      }
    }

    else if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4B8))())
    {
      v14 = v13;
      v15 = swift_getObjectType();
      (*(v14 + 32))(0x7420656369746F4ELL, 0xED00006465707061, 1, v15, v14);
      swift_unknownObjectRelease();
    }
  }
}

void ConversationControlsManager.presentCollaboration(_:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for Collaboration(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8);
  ObjectType = swift_getObjectType();
  if (((*(v10 + 720))(ObjectType, v10) & 1) == 0)
  {
LABEL_19:
    if (!a2)
    {
      return;
    }

    v32 = 1;
    goto LABEL_21;
  }

  if (!*(a1 + 16) && *(a1 + 40))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, &static Logger.conversationControls);
    _s15ConversationKit11ParticipantVWOcTm_8();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = a2;
      v26 = swift_slowAlloc();
      v42 = v26;
      *v24 = 136315138;
      v27 = >> prefix<A>(_:)();
      v29 = v28;
      _s15ConversationKit11ParticipantVWOhTm_10();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v42);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1BBC58000, v22, v23, "App not installed for collaboration activity %s, opening app store", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v31 = v26;
      a2 = v25;
      MEMORY[0x1BFB23DF0](v31, -1, -1);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_10();
    }

    ConversationControlsManager.presentAppStore()();
    goto LABEL_19;
  }

  v12 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2C0))();
  if (!v12)
  {
    if (!a2)
    {
      return;
    }

    v32 = 0;
LABEL_21:
    a2(v32);
    return;
  }

  v38 = v12;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v39 = a2;
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, &static Logger.conversationControls);
  _s15ConversationKit11ParticipantVWOcTm_8();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v16 = 136315138;
    v17 = >> prefix<A>(_:)();
    v19 = v18;
    _s15ConversationKit11ParticipantVWOhTm_10();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v42);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v14, v15, "Opening collaboration activity %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1BFB23DF0](v37, -1, -1);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
  }

  else
  {

    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  type metadata accessor for SpringBoardUtilities();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit11ParticipantVWOcTm_8();
  v34 = (v7 + ((*(v40 + 80) + 40) & ~*(v40 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v35[2] = v33;
  v35[3] = v39;
  v35[4] = a3;
  outlined init with take of Collaboration();
  *(v35 + v34) = v38;

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v39, a3);
  v36 = v38;
  static SpringBoardUtilities.requestPasscodeUnlock(_:)(partial apply for closure #1 in ConversationControlsManager.presentCollaboration(_:completion:), v35);
}

Swift::Void __swiftcall ConversationControlsManager.presentAppStore()()
{
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_174();
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  type metadata accessor for URLComponents();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v9) + 0x9D0))(v38);
  if (!v39)
  {
    outlined destroy of CallControlsService?(v38, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(v38, v39);
  v10 = OUTLINED_FUNCTION_299();
  v12 = v11(v10);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v38);
  if (!v14)
  {
LABEL_10:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v21, &static Logger.conversationControls);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v23))
    {
      v24 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v24);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v25, v26, "Unable to present App Store page, no bundleIdentifier");
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_19;
  }

  URLComponents.init()();
  URLComponents.scheme.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  v15 = type metadata accessor for URLQueryItem();
  OUTLINED_FUNCTION_9_0(v15);
  *(swift_allocObject() + 16) = xmmword_1BC4BA940;

  URLQueryItem.init(name:value:)();

  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  OUTLINED_FUNCTION_115(v1, 1, v4);
  if (v16)
  {
    outlined destroy of CallControlsService?(v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_42();
      v38[0] = OUTLINED_FUNCTION_37_7();
      *v0 = 136315138;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v38);

      *(v0 + 4) = v20;
      OUTLINED_FUNCTION_341(&dword_1BBC58000, v18, v19, "Unable to create app store url from %s");
      OUTLINED_FUNCTION_72_8();
      OUTLINED_FUNCTION_2_2();
    }

    else
    {
    }

    v36 = OUTLINED_FUNCTION_45_1();
    v37(v36);
    goto LABEL_19;
  }

  v27 = OUTLINED_FUNCTION_43_0();
  v28(v27);
  v29 = [objc_opt_self() defaultWorkspace];
  if (v29)
  {
    v30 = v29;

    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    [v30 openURL:v32 configuration:0 completionHandler:0];

    (*(v6 + 8))(v0, v4);
    v34 = OUTLINED_FUNCTION_45_1();
    v35(v34);
LABEL_19:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  __break(1u);
}

void ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v105 = v3;
  v106 = v2;
  LODWORD(v102) = v4;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v99 = v6;
  v100 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v98 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v103 = v94 - v11;
  v12 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for ForegroundCollaborationState(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for StagedCollaboration(0);
  OUTLINED_FUNCTION_1();
  v101 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v97 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32();
  v104 = v19;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_32();
  v23 = v22;
  OUTLINED_FUNCTION_13_2();
  v25 = (*((*MEMORY[0x1E69E7D40] & v24) + 0x2C0))();
  if (v25)
  {
    v26 = v25;
    OUTLINED_FUNCTION_283_0();
    (*(v27 + 2240))();
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_0_130();
      _s15ConversationKit11ParticipantVWOhTm_10();
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v28 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v28, &static Logger.conversationControls);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      v31 = OUTLINED_FUNCTION_25(v30);
      v32 = v106;
      if (v31)
      {
        v33 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v33);
        OUTLINED_FUNCTION_8_57();
        OUTLINED_FUNCTION_98_2();
        _os_log_impl(v34, v35, v36, v37, v38, v39);
        OUTLINED_FUNCTION_18();
      }

      if (v32)
      {
        v32(0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_20_35();
      v96 = v48;
      v49 = v23;
      outlined init with take of Collaboration();
      OUTLINED_FUNCTION_20();
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s15ConversationKit11ParticipantVWOcTm_8();
      _s15ConversationKit11ParticipantVWOcTm_8();
      v51 = *(v101 + 80);
      v95 = v16 + 7;
      v52 = (v16 + 7 + ((v51 + 40) & ~v51)) & 0xFFFFFFFFFFFFFFF8;
      v101 = v51;
      v53 = swift_allocObject();
      v54 = v105;
      v55 = v106;
      *(v53 + 2) = v50;
      *(v53 + 3) = v55;
      *(v53 + 4) = v54;
      v56 = v54;
      outlined init with take of Collaboration();
      *(v53 + v52) = v26;
      v57 = v55;

      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v55, v56);
      v58 = v26;
      v59 = SWShareableContent.collaborationInitiator.getter();
      if (v102)
      {
        v103 = v59;
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v60 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v60, &static Logger.conversationControls);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.info.getter();
        v63 = OUTLINED_FUNCTION_25(v62);
        v64 = v104;
        if (v63)
        {
          v65 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v65);
          OUTLINED_FUNCTION_8_57();
          OUTLINED_FUNCTION_98_2();
          _os_log_impl(v66, v67, v68, v69, v70, v71);
          OUTLINED_FUNCTION_18();
        }

        v72 = [v58 UUID];
        v73 = v98;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = v103;
        v75 = OUTLINED_FUNCTION_29_6();
        CollaborationInitiationManager.addDisclosedInitiator(_:toConversationUUID:)(v75);
        (*(v99 + 8))(v73, v100);
        closure #1 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(v50, v57, v105, v64, v58);

        _s15ConversationKit11ParticipantVWOhTm_10();
      }

      else
      {
        v94[1] = v49;
        v76 = v101;
        v100 = ~v101;
        OUTLINED_FUNCTION_32_17();
        v102 = v77;
        v79 = v78;
        _s15ConversationKit11ParticipantVWOhTm_10();

        type metadata accessor for TaskPriority();
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
        _s15ConversationKit11ParticipantVWOcTm_8();
        type metadata accessor for MainActor();
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v55, v56);
        v84 = v58;
        v85 = v1;
        v86 = v79;

        v87 = static MainActor.shared.getter();
        v88 = (v95 + ((v76 + 56) & v100)) & 0xFFFFFFFFFFFFFFF8;
        v89 = swift_allocObject();
        v90 = MEMORY[0x1E69E85E0];
        v89[2] = v87;
        v89[3] = v90;
        v89[4] = v85;
        v89[5] = v84;
        v89[6] = v86;
        OUTLINED_FUNCTION_20_35();
        outlined init with take of Collaboration();
        v91 = (v89 + v88);
        *v91 = partial apply for closure #1 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:);
        v91[1] = v53;
        v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
        v93 = v105;
        *v92 = v106;
        v92[1] = v93;
        OUTLINED_FUNCTION_59();
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
      }

      _s15ConversationKit11ParticipantVWOhTm_10();
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v40 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v40, &static Logger.conversationControls);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = OUTLINED_FUNCTION_25(v42);
    v44 = v106;
    if (v43)
    {
      v45 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v45);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v46, v47, "Cannot start collaboration as no conversation is being tracked by ConversationControlsManager");
      OUTLINED_FUNCTION_26();
    }

    if (v44)
    {
      v44(0);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsManager.presentTVRemote()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Presenting TV remote control for split session", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = [*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) neighborhoodActivityConduit];
  v7 = [v6 activeSplitSessionTV];

  if (v7)
  {
    v8 = [v7 knownIdentifiersByHandleType];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type NSNumber and conformance NSObject, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v11 = specialized Dictionary.subscript.getter(isa, v9);
    v13 = v12;

    if (v13)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TVRViewServiceConfigContext, 0x1E69D60F8);
      v32 = TVRViewServiceConfigContext.__allocating_init(deviceIdentifier:identifierType:deviceType:launchContext:launchMethod:)(v11, v13, 0, 1, 12, 1);
      v14 = objc_opt_self();
      v15 = [v14 sharedInstance];
      [v15 dismiss];

      v16 = [v14 sharedInstance];
      [v16 presentWithContext_];

      if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x4B8))())
      {
        v18 = v17;
        ObjectType = swift_getObjectType();
        (*(v18 + 32))(0xD000000000000014, 0x80000001BC5095B0, 1, ObjectType, v18);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v32 = v7;
      oslog = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(oslog, v22))
      {

        v30 = oslog;
        goto LABEL_17;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      v25 = [v32 debugDescription];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1BBC58000, oslog, v22, "Unable to get deviceIdentifier for activeSplitSessionTV:%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
      MEMORY[0x1BFB23DF0](v23, -1, -1);
    }
  }

  else
  {
    v32 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BBC58000, v32, v20, "Unable to present TV remote, no active TV.", v21, 2u);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
    }
  }

  v30 = v32;
LABEL_17:
}

void closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:)(char a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    if (!a2)
    {
      return;
    }

LABEL_15:
    a2(a1 & 1);
    return;
  }

  v10 = Strong;
  if ((a1 & 1) == 0)
  {

    if (!a2)
    {
      return;
    }

    a1 = 0;
    goto LABEL_15;
  }

  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x9F0))(0);
  v13 = (*((*v11 & *v10) + 0x998))(v12);
  if (v13)
  {
    v14 = v13;
    v27 = TUConversationActivitySession.uniqueIdentifier.getter();
    v16 = v15;
    v17 = type metadata accessor for TaskPriority();
    a1 = 1;
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    v20[2] = v19;
    v20[3] = v21;
    v22 = v27;
    v20[4] = v18;
    v20[5] = v22;
    v20[6] = v16;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    (*((*MEMORY[0x1E69E7D40] & *v10) + 0x970))();

    goto LABEL_5;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, &static Logger.conversationControls);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1BBC58000, v24, v25, "Not kicking applicationState timer because we couldn't find an activity", v26, 2u);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
  }

  if (a2)
  {
    a1 = 1;
    goto LABEL_15;
  }
}

uint64_t closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[12] = v8;
  v6[13] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:), v8, v7);
}

uint64_t closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:);

    return MEMORY[0x1EEE6DA60](10000000000);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v3();
  }
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:);
  }

  else
  {
    v7 = closure #1 in closure #3 in ConversationControlsManager.secondaryPillButtonTapped(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_106_2();
    v4 = (*(v3 + 2456))();
    if (!v4)
    {
LABEL_17:

      goto LABEL_18;
    }

    v5 = v4;
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    if (TUConversationActivitySession.uniqueIdentifier.getter() == v7 && v8 == v6)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_288();

      if ((v6 & 1) == 0)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_53_12();
    (*(v10 + 2416))(0);
    if ([v5 applicationState] == 1)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v11 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
      v12 = v5;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_42();
        v16 = OUTLINED_FUNCTION_18_18();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v16 = v5;
        v17 = v12;
        OUTLINED_FUNCTION_279();
        _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
        outlined destroy of CallControlsService?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_104_2();
        OUTLINED_FUNCTION_3_26();
      }

      OUTLINED_FUNCTION_53_12();
      (*(v23 + 2544))(1);
    }

    goto LABEL_16;
  }

LABEL_18:
  OUTLINED_FUNCTION_13();

  return v24();
}

{
  OUTLINED_FUNCTION_48();

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Logger.conversationControls);

  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v3 = OUTLINED_FUNCTION_317();
  v4 = *(v0 + 120);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_42();
    v15 = OUTLINED_FUNCTION_23();
    *v5 = 136315138;
    v6 = OUTLINED_FUNCTION_7_8();
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v8);
    OUTLINED_FUNCTION_85();
    _os_log_impl(v9, v10, v11, v12, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_3_26();
  }

  OUTLINED_FUNCTION_13();

  return v13();
}

void ConversationControlsManager.presentCurrentActivity(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x998))();
  if (v5)
  {
    oslog = v5;
    specialized ConversationControlsManager.presentActivity(activity:completion:)(v5, a1, a2, v2);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v7, "No activity to launch", v8, 2u);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }
  }
}

Swift::Void __swiftcall ConversationControlsManager.collaborateButtonTapped()()
{
  OUTLINED_FUNCTION_262();
  if ((*((*MEMORY[0x1E69E7D40] & v0) + 0x4A0))())
  {
    OUTLINED_FUNCTION_255();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_67_7(v1, 10);
    *(v2 + 72) = 7;
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_386();
    v3();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_5_6();

  ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)();
}

Swift::Void __swiftcall ConversationControlsManager.notNowButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_262();
  if ((*((*MEMORY[0x1E69E7D40] & v1) + 0x4A0))())
  {
    OUTLINED_FUNCTION_255();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_67_7(v2, 10);
    *(v3 + 72) = 7;
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_386();
    v4();

    swift_unknownObjectRelease();
  }

  ConversationControlsManager.suppressCollaborationHUD()();
}

uint64_t ConversationControlsManager.suppressCollaborationHUD()()
{
  v1 = type metadata accessor for ForegroundCollaborationState(0);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x8D0))(v13, v2);
  v7 = v6;
  _s15ConversationKit11ParticipantVWOcTm_8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd, &_s10Foundation3URLV09highlightB0_AA4DateV7startedtMR) + 48);
      v10 = type metadata accessor for Date();
      (*(*(v10 - 8) + 8))(&v4[v9], v10);
      goto LABEL_4;
    case 2u:
LABEL_4:
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 8))(v4, v11);
      break;
    case 3u:
    case 4u:
      return v5(v13, 0);
    default:
      _s15ConversationKit11ParticipantVWOhTm_10();
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd, &_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMR) + 48);
      outlined init with take of Collaboration();
      *(v7 + v8) = 1;
      swift_storeEnumTagMultiPayload();
      break;
  }

  return v5(v13, 0);
}

Swift::Void __swiftcall ConversationControlsManager.okAndDismissButtonTapped(button:)(UIControl *button)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Logger.conversationControls);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v4);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
  }

  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_293();
    if ((*(v10 + 1208))())
    {
      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_271_0();
      (*(v11 + 80))(0xD000000000000018, v12 | 0x8000000000000000);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    OUTLINED_FUNCTION_293_0();
  }

  OUTLINED_FUNCTION_115_1();
  if ((*(v13 + 1208))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_35_17();
    v14 = OUTLINED_FUNCTION_58_10(24);
    v15(v14);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationControlsManager.swapButtonTapped(button:)(UIControl *button)
{
  v2 = v1;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v6);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_18();
  }

  ConversationControlsManager.jumpToAppIfNeeded()();
  OUTLINED_FUNCTION_11_23();
  if ((*((*MEMORY[0x1E69E7D40] & v12) + 0x4A0))())
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_159_0();
    v13();
    swift_unknownObjectRelease();
  }

  v14 = *(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);

  [v14 swapCalls];
}

void ConversationControlsManager.jumpToAppIfNeeded()()
{
  v1 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  [v1 setNeedsUserInteractivePriority_];
  v68 = [objc_opt_self() monitorWithConfiguration_];
  v2 = [v68 currentLayout];
  if (!v2)
  {
    goto LABEL_72;
  }

  v65 = v2;
  v66 = v1;
  v3 = [v2 elements];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for FBSDisplayLayoutElement, 0x1E699FAD8);
  v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  v5 = [v4 currentCalls];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      goto LABEL_70;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB22010](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      return;
    }

    if ([v9 status] == 2)
    {
      break;
    }
  }

  v11 = [v4 currentCalls];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized Array.count.getter();
  for (j = 0; ; ++j)
  {
    if (v13 == j)
    {

      goto LABEL_70;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB22010](j, v12);
    }

    else
    {
      if (j >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v15 = *(v12 + 8 * j + 32);
    }

    v16 = v15;
    if (__OFADD__(j, 1))
    {
      goto LABEL_82;
    }

    if ([v15 status] == 1)
    {
      break;
    }
  }

  v17 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([v10 provider]);
  v64 = ConversationControlsManager.phoneToICSBundleID(_:)(v17, v18);
  v20 = v19;

  if (!v20)
  {

    goto LABEL_70;
  }

  v63 = v20;
  v21 = [v10 provider];
  v22 = [v21 isSystemProvider];

  if (v22)
  {
    v23 = [v16 provider];
    v24 = [v23 isSystemProvider];

    if (v24)
    {

      goto LABEL_77;
    }
  }

  v25 = [v4 currentCalls];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = specialized Array.count.getter();
  v28 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  while (v27 != v28)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1BFB22010](v28, v26);
    }

    else
    {
      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v29 = *(v26 + 8 * v28 + 32);
    }

    v30 = v29;
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_84;
    }

    v32 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([v29 provider]);
    v34 = ConversationControlsManager.phoneToICSBundleID(_:)(v32, v33);
    v36 = v35;

    ++v28;
    if (v36)
    {
      v37 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v37 = v40;
      }

      v38 = *(v37 + 16);
      if (v38 >= *(v37 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v37 = v41;
      }

      *(v37 + 16) = v38 + 1;
      v62 = v37;
      v39 = v37 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v28 = v31;
    }
  }

  v67 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v62);

  v71 = MEMORY[0x1BFB21140](0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v42 = specialized Array.count.getter();
  v43 = 0;
  v44 = v69 & 0xC000000000000001;
  while (v42 != v43)
  {
    if (v44)
    {
      v45 = MEMORY[0x1BFB22010](v43, v69);
    }

    else
    {
      if (v43 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v45 = *(v69 + 8 * v43 + 32);
    }

    v46 = v45;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_86;
    }

    if ([v45 isUIApplicationElement])
    {
      v47 = outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(v46);
      v49 = v48;

      if (v49)
      {
        specialized Set._Variant.insert(_:)(v70, v47, v49);
      }
    }

    else
    {
    }

    ++v43;
  }

  v50 = specialized _NativeSet.intersection(_:)(v71, v67);

  v51 = v50[2];

  if (!v51)
  {

LABEL_77:

LABEL_70:

    goto LABEL_71;
  }

  v52 = specialized Array.count.getter();

  for (k = 0; ; ++k)
  {
    if (v52 == k)
    {

      v61._countAndFlagsBits = v64;
      v61._object = v63;
      ConversationControlsManager.openApp(withBundleIdentifier:)(v61);

      goto LABEL_70;
    }

    if (v44)
    {
      v54 = MEMORY[0x1BFB22010](k, v69);
    }

    else
    {
      if (k >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v54 = *(v69 + 8 * k + 32);
    }

    v55 = v54;
    if (__OFADD__(k, 1))
    {
      goto LABEL_88;
    }

    if (![v54 isUIApplicationElement])
    {

      continue;
    }

    v56 = outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(v55);
    v58 = v57;

    if (!v58)
    {
      continue;
    }

    if (v56 == v64 && v58 == v63)
    {
      break;
    }

    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v60)
    {

      goto LABEL_79;
    }
  }

LABEL_79:

LABEL_71:
  v1 = v66;
LABEL_72:
  [v68 invalidate];
}

Swift::Void __swiftcall ConversationControlsManager.resumeCallButtonTapped()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v5);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  (*(v11 + 672))();
  objc_opt_self();
  OUTLINED_FUNCTION_170();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
    [v14 unholdCall_];
  }

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall ConversationControlsManager.acceptNameTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_29();
  v1 = OUTLINED_FUNCTION_129();
  type metadata accessor for ConversationControlsSecondaryPillButtonType(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_70();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_39_3();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v7))
  {
    v8 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_203_0(v8);
    OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v9, v10, "Accept incoming Name button tapped");
    OUTLINED_FUNCTION_104_2();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_18_4(&one-time initialization token for shared);
  }

  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_53_12();
  (*(v12 + 672))();
  OUTLINED_FUNCTION_372();
  NameAndPhotoUtilities.acceptIncomingName(from:)(v13, v14);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_11_23();
  (*((*v11 & v15) + 0xA00))();
  OUTLINED_FUNCTION_71_8();
  OUTLINED_FUNCTION_33_0();
  if (swift_getEnumCaseMultiPayload() - 9 >= 3)
  {
    OUTLINED_FUNCTION_14_44();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  else
  {
    OUTLINED_FUNCTION_62_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_11_23();
    v16 = OUTLINED_FUNCTION_399();
    v17(v16);
  }

  OUTLINED_FUNCTION_53_12();
  if ((*(v18 + 1208))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_35_17();
    v19 = OUTLINED_FUNCTION_58_10(18);
    v20(v19);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.acceptScreenShareRequestTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_50_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, &static Logger.conversationControls);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_42();
    v22 = OUTLINED_FUNCTION_38_3();
    *v2 = 136315138;
    OUTLINED_FUNCTION_183();
    v10 = >> prefix<A>(_:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);
    OUTLINED_FUNCTION_420();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  type metadata accessor for TaskPriority();
  v17 = OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_379(v17, v18, v19, v20);
  v7;
  static MainActor.shared.getter();
  OUTLINED_FUNCTION_37_0();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_370(v21, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_49();
}

uint64_t closure #1 in ConversationControlsManager.acceptScreenShareRequestTapped(button:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for UUID();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.acceptScreenShareRequestTapped(button:), v7, v6);
}

uint64_t closure #1 in ConversationControlsManager.acceptScreenShareRequestTapped(button:)()
{
  v1 = v0[6];

  v2 = ConversationControlsManager.removeIncomingScreenShareRequest()();
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(v2);
  if (v4)
  {
    v5 = v4;
    v6 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]);

    if (v6)
    {
      v8 = v0[8];
      v7 = v0[9];
      v9 = v0[6];
      v10 = v0[7];
      v11 = [v6 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = (*((*v3 & *v9) + 0x2E0))(v0 + 2);
      v14 = v13;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = *(*v14 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v15);
      v16 = *v14;
      *(v16 + 16) = v15 + 1;
      (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v7, v10);
      v12(v0 + 2, 0);
    }
  }

  v17 = type metadata completion function for SyncedScreeningAlphaGradientView();
  ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v17, v18, 1);
  ConversationControlsManager.showHUD()();
  ConversationControlsManager.startScreenShareWithCountdown(completion:)(TPNumberPadCharacter.rawValue.getter, 0, v19, v20, v21, v22, v23, v24, v27, oslog, v29, v30, v31, v32, v33, v34, v35, v0);

  OUTLINED_FUNCTION_13();

  return v25();
}

uint64_t ConversationControlsManager.removeIncomingScreenShareRequest()()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    if ((*((*v6 & *v2) + 0x620))())
    {
      type metadata accessor for HUDActivity(0);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v20);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    type metadata accessor for ConversationControlsManager(0);
    v15 = >> prefix<A>(_:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Ending incomingScreenShareRequest activity %s %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  else
  {
  }

  v18 = (*((*v6 & *v2) + 0x620))(v12, v13);
  if (v18)
  {
    (*(*v18 + 304))(v18);
  }

  return (*((*v6 & *v2) + 0x628))(0);
}

uint64_t closure #1 in ConversationControlsManager.stopLocalScreenSharingTapped(button:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.stopLocalScreenSharingTapped(button:), v6, v5);
}

uint64_t closure #1 in ConversationControlsManager.stopLocalScreenSharingTapped(button:)()
{
  OUTLINED_FUNCTION_24_0();

  ConversationControlsManager.stopScreenShare()();
  OUTLINED_FUNCTION_13();

  return v0();
}

void ConversationControlsManager.stopLocalScreenSharingTapped(button:)()
{
  OUTLINED_FUNCTION_50_2();
  v4 = v3;
  v5 = v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v10))
  {
    v11 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_203_0(v11);
    _os_log_impl(&dword_1BBC58000, v9, v1, v4, v2, 2u);
    OUTLINED_FUNCTION_104_2();
  }

  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  v16 = OUTLINED_FUNCTION_379(v12, v13, v14, v15);
  v17 = v5;
  static MainActor.shared.getter();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_37_0();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v16;
  v18[3] = v19;
  v18[4] = v17;
  type metadata completion function for SyncedScreeningAlphaGradientView();
  OUTLINED_FUNCTION_398();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_49();
}

uint64_t closure #1 in ConversationControlsManager.cancelScreenShareRequestTapped(button:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.cancelScreenShareRequestTapped(button:), v6, v5);
}

uint64_t closure #1 in ConversationControlsManager.cancelScreenShareRequestTapped(button:)()
{
  OUTLINED_FUNCTION_24_0();

  ConversationControlsManager.removeIncomingScreenShareRequest()();
  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v0) + 0x4B8))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_35_17();
    v1 = OUTLINED_FUNCTION_58_10(41);
    v2(v1);
    swift_unknownObjectRelease();
  }

  ConversationControlsManager.declineOrCancelScreenShareRequest()();
  OUTLINED_FUNCTION_13();

  return v3();
}

Swift::Void __swiftcall ConversationControlsManager.declineScreenShareRequestTapped(button:)(UIControl *button)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Logger.conversationControls);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v4);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  if ((*(v10 + 1208))())
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_165_0();
    v11 = OUTLINED_FUNCTION_156_0(21);
    v12(v11);
    swift_unknownObjectRelease();
  }

  ConversationControlsManager.declineOrCancelScreenShareRequest()();
}

Swift::Void __swiftcall ConversationControlsManager.acceptRemoteControlRequestTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_29();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v7;
  v8 = OUTLINED_FUNCTION_4_24();
  v53 = type metadata accessor for Participant(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_82();
  v10 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, &static Logger.conversationControls);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_42();
    v52 = OUTLINED_FUNCTION_23();
    v55 = v15;
    v56[0] = v52;
    *v18 = 136315138;
    OUTLINED_FUNCTION_183();
    v19 = >> prefix<A>(_:)();
    v21 = v3;
    v22 = v4;
    v23 = v12;
    v24 = v10;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v56);

    *(v18 + 4) = v25;
    v10 = v24;
    v12 = v23;
    v4 = v22;
    v3 = v21;
    _os_log_impl(&dword_1BBC58000, v16, v17, "Allow remote control request tapped %s", v18, 0xCu);
    v1 = v52;
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_27();
  }

  v26 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_176();
  if ((*(v27 + 1208))())
  {
    OUTLINED_FUNCTION_351();
    OUTLINED_FUNCTION_165_0();
    v28 = OUTLINED_FUNCTION_156_0(20);
    v29(v28);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  v31 = (*(v30 + 928))();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_44_1(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_1_57();
  (*(v32 + 376))(v56);
  v33 = v56[0];
  switch(v56[0] >> 61)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:

      outlined consume of RemoteControlState(v33);
      goto LABEL_13;
    case 5uLL:

      goto LABEL_13;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd, &_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMR);
      OUTLINED_FUNCTION_247();
      v35 = swift_projectBox();
      (*(v12 + 16))(v4, v35 + *(v1 + 12), v10);
      outlined consume of RemoteControlState(v33);
      OUTLINED_FUNCTION_283();
      v37 = (*((*v26 & v36) + 0x9D8))();
      MEMORY[0x1EEE9AC00](v37);
      OUTLINED_FUNCTION_313();
      *(v38 - 16) = v4;
      specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #5 in ScreenSharingBroadcasterView.body.getter, v39, v40);
      v41 = v54;
      specialized Collection.first.getter(v42, v54);

      OUTLINED_FUNCTION_115(v41, 1, v53);
      if (v43)
      {

        outlined destroy of CallControlsService?(v41, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else
      {
        v53 = v10;
        OUTLINED_FUNCTION_62_8();
        OUTLINED_FUNCTION_139();
        outlined init with take of Collaboration();
        Participant.contactDetails.getter();
        v44 = v56[0];

        if (v44)
        {
          v54 = v3;
          v45 = [v44 identifier];

          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          Participant.handle.getter();
          v47._countAndFlagsBits = OUTLINED_FUNCTION_32_2();
          String.hashWithSalt(salt:)(v47);
          OUTLINED_FUNCTION_87();

          v56[0] = v4;
          v56[1] = v46;
          MEMORY[0x1EEE9AC00](v48);
          OUTLINED_FUNCTION_313();
          *(v49 - 16) = v56;
          LOBYTE(v45) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v50, v31);

          if ((v45 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_57();
            (*(v51 + 496))();
            OUTLINED_FUNCTION_3_106();
            _s15ConversationKit11ParticipantVWOhTm_10();
            (*(v12 + 8))(v4, v53);
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_3_106();
          _s15ConversationKit11ParticipantVWOhTm_10();
        }

        else
        {
          OUTLINED_FUNCTION_3_106();
          _s15ConversationKit11ParticipantVWOhTm_10();
        }

        v10 = v53;
      }

      (*(v12 + 8))(v4, v10);
LABEL_13:
      OUTLINED_FUNCTION_1_57();
      (*(v34 + 504))(1);
LABEL_14:
      OUTLINED_FUNCTION_30_0();
      return;
  }
}

Swift::Void __swiftcall ConversationControlsManager.declineRemoteControlRequestTapped(button:)(UIControl *button)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Logger.conversationControls);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v4);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  if ((*(v10 + 1208))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_35_17();
    v11 = OUTLINED_FUNCTION_58_10(21);
    v12(v11);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_44_1(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_137();
  (*(v13 + 504))(0);
}

Swift::Void __swiftcall ConversationControlsManager.cancelRemoteControlRequestTapped(button:)(UIControl *button)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Logger.conversationControls);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v4);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
  }

  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_293();
    if ((*(v10 + 1208))())
    {
      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_271_0();
      (*(v11 + 80))(0xD000000000000025, v12 | 0x8000000000000000);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    OUTLINED_FUNCTION_293_0();
  }

  OUTLINED_FUNCTION_115_1();
  if ((*(v13 + 1208))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_35_17();
    v14 = OUTLINED_FUNCTION_58_10(20);
    v15(v14);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_44_1(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_153();
  (*(v16 + 512))();
}

Swift::Void __swiftcall ConversationControlsManager.endRemoteControlSessionTapped(button:)(UIControl *button)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Logger.conversationControls);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v4);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
  }

  if (SBUIIsSystemApertureEnabled())
  {
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_293_0();
    OUTLINED_FUNCTION_293();
    if ((*(v10 + 1208))())
    {
      OUTLINED_FUNCTION_255();
      OUTLINED_FUNCTION_271_0();
      v11 = OUTLINED_FUNCTION_384();
      v12(v11);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    OUTLINED_FUNCTION_293_0();
  }

  OUTLINED_FUNCTION_115_1();
  if ((*(v13 + 1208))())
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_35_17();
    v14 = OUTLINED_FUNCTION_58_10(33);
    v15(v14);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_44_1(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_153();
  (*(v16 + 520))();
}

Swift::Void __swiftcall ConversationControlsManager.learnMoreNotTrustedContactTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_29();
  v3 = v1;
  v55[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v6 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v54 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v9 = type metadata accessor for Logger();
  v10 = __swift_project_value_buffer(v9, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v12))
  {
    v13 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_203_0(v13);
    OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v14, v15, "Learn more about not trusted contacts tapped");
    OUTLINED_FUNCTION_104_2();
  }

  v16 = SBUIIsSystemApertureEnabled();
  v17 = MEMORY[0x1E69E7D40];
  if (v16)
  {
    v18 = v3 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x4B8))())
    {
      OUTLINED_FUNCTION_264();
      swift_getObjectType();
      v19 = OUTLINED_FUNCTION_384();
      v20(v19);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v18 = v3 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  }

  OUTLINED_FUNCTION_106_2();
  if ((*(v21 + 1208))())
  {
    OUTLINED_FUNCTION_208_0();
    ObjectType = swift_getObjectType();
    (*(v18 + 32))(0xD00000000000002CLL, 0x80000001BC508600, 1, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  URL.init(string:)();
  OUTLINED_FUNCTION_115(v2, 1, v6);
  if (v23)
  {
    outlined destroy of CallControlsService?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_25(v25))
    {
      v26 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v26);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v27, v28, "Failed to create URL");
      OUTLINED_FUNCTION_26();
    }
  }

  else
  {
    v29 = OUTLINED_FUNCTION_62_0();
    v30(v29);
    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    v55[0] = 0;
    OUTLINED_FUNCTION_12();
    v34 = TUOpenURLWithError();

    if (v34)
    {
      v35 = *(v54 + 8);
      v36 = v55[0];
      v37 = OUTLINED_FUNCTION_6_4();
      v35(v37, v6);
    }

    else
    {
      v38 = v55[0];
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_18_0(v40))
      {
        OUTLINED_FUNCTION_42();
        v55[0] = OUTLINED_FUNCTION_38_3();
        *v10 = 136315138;
        if (v38)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
          v41 = v38;
          v42 = String.init<A>(reflecting:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v55);
        OUTLINED_FUNCTION_17_2();
        *(v10 + 4) = v17;
        OUTLINED_FUNCTION_130_1();
        _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
        OUTLINED_FUNCTION_72_8();
        OUTLINED_FUNCTION_4_4();

        v52 = OUTLINED_FUNCTION_45_1();
        v53(v52);
      }

      else
      {

        v45 = OUTLINED_FUNCTION_45_1();
        v46(v45);
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.dismissEnhancedEmergencyRequestTapped(button:)(UIControl *button)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_240(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v5);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_293();
  if ((*(v11 + 1208))())
  {
    OUTLINED_FUNCTION_175_0();
    swift_getObjectType();
    v12 = OUTLINED_FUNCTION_170_1();
    v13(v12);
    swift_unknownObjectRelease();
    outlined destroy of ConversationControlsType(v68);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v15))
  {
    v16 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v16);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  v22 += 148;
  v23 = *v22;
  if ((*v22)())
  {
    v24 = OUTLINED_FUNCTION_255();
    (*(v2 + 88))(v71, v24, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0;
    memset(v71, 0, sizeof(v71));
    v73 = -1;
  }

  v69 = 18;
  OUTLINED_FUNCTION_387();
  v70 = v25;
  OUTLINED_FUNCTION_289();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_289();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (v68[40] == 255)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of CallControlsService?(v45, v46, v47);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of CallControlsService?(v48, v49, v50);
    OUTLINED_FUNCTION_376();
    if (v34)
    {
      outlined destroy of CallControlsService?(v68, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      goto LABEL_19;
    }

LABEL_23:
    outlined destroy of CallControlsService?(v68, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd, &_s15ConversationKit0A12ControlsTypeOSg_ADtMR);
LABEL_24:
    v51 = [objc_opt_self() defaultCenter];
    v52 = v51;
    if (one-time initialization token for enhancedEmergencyRequestWannaDismissNotification != -1)
    {
      v51 = swift_once();
    }

    v53 = &static Strings.Notifications.enhancedEmergencyRequestWannaDismissNotification;
    goto LABEL_27;
  }

  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_376();
  if (v34)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of CallControlsService?(v54, v55, v56);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of CallControlsService?(v57, v58, v59);
    outlined destroy of ConversationControlsType(v67);
    goto LABEL_23;
  }

  v35 = OUTLINED_FUNCTION_316_0(v26, v27, v28, v29, v30, v31, v32, v33, v64[0], v64[1], v65, v66);
  outlined destroy of ConversationControlsType(v64);
  OUTLINED_FUNCTION_41();
  outlined destroy of CallControlsService?(v36, v37, v38);
  OUTLINED_FUNCTION_41();
  outlined destroy of CallControlsService?(v39, v40, v41);
  outlined destroy of ConversationControlsType(v67);
  OUTLINED_FUNCTION_41();
  outlined destroy of CallControlsService?(v42, v43, v44);
  if ((v35 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v51 = [objc_opt_self() defaultCenter];
  v52 = v51;
  if (one-time initialization token for enhancedEmergencyUploadDismissDuringStreamingNotification != -1)
  {
    v51 = swift_once();
  }

  v53 = &static Strings.Notifications.enhancedEmergencyUploadDismissDuringStreamingNotification;
LABEL_27:
  OUTLINED_FUNCTION_424(v51, sel_postNotificationName_object_, *v53);

  if (v23())
  {
    OUTLINED_FUNCTION_254_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMR);
    v60 = swift_allocObject();
    v61.n128_f64[0] = OUTLINED_FUNCTION_57_10(v60, xmmword_1BC4BB980);
    OUTLINED_FUNCTION_286_0(v62, v61);
    OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_114_0();
    v63();

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationControlsManager.previewEnhancedEmergencyRequestTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_427();
  v28 = v1;
  v29 = v2;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v5))
  {
    v6 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v6);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_18();
  }

  v12 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_293();
  v13 += 151;
  v14 = *v13;
  v15 = (*v13)();
  if (v15)
  {
    OUTLINED_FUNCTION_255();
    v24 = 6;
    v25 = 0u;
    v26 = 0u;
    v27 = 7;
    OUTLINED_FUNCTION_294();
    v16(&v24, 1);
    swift_unknownObjectRelease();
    v15 = outlined destroy of ConversationControlsType(&v24);
  }

  if ((v14)(v15))
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_159_0();
    v17();
    swift_unknownObjectRelease();
  }

  v18 = [objc_opt_self() defaultCenter];
  v19 = v18;
  if (one-time initialization token for enhancedEmergencyPreviewRequestNotification != -1)
  {
    v18 = swift_once();
  }

  OUTLINED_FUNCTION_424(v18, sel_postNotificationName_object_, static Strings.Notifications.enhancedEmergencyPreviewRequestNotification);

  OUTLINED_FUNCTION_11_23();
  if ((*((*v12 & v20) + 0x4A0))())
  {
    OUTLINED_FUNCTION_254_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMR);
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_57_10(v21, xmmword_1BC4BAA20);
    *(v22 + 120) = 7;
    OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_114_0();
    v23();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_52_5();
}

Swift::Void __swiftcall ConversationControlsManager.choosePhotoEnhancedEmergencyRequestTapped(button:)(UIControl *button)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_240(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v5);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_293();
  v11 += 151;
  v12 = *v11;
  if ((*v11)())
  {
    OUTLINED_FUNCTION_175_0();
    swift_getObjectType();
    v13 = OUTLINED_FUNCTION_170_1();
    v14(v13);
    swift_unknownObjectRelease();
    outlined destroy of ConversationControlsType(v71);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v16))
  {
    v17 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v17);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_36_23();
  v23 += 148;
  v24 = *v23;
  if ((*v23)())
  {
    v25 = OUTLINED_FUNCTION_255();
    (*(v2 + 88))(v74, v25, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    v76 = -1;
  }

  v72 = 18;
  OUTLINED_FUNCTION_387();
  v73 = v26;
  OUTLINED_FUNCTION_289();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_289();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (v71[40] == 255)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of CallControlsService?(v46, v47, v48);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of CallControlsService?(v49, v50, v51);
    OUTLINED_FUNCTION_376();
    if (v35)
    {
      outlined destroy of CallControlsService?(v71, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
      goto LABEL_19;
    }

LABEL_23:
    outlined destroy of CallControlsService?(v71, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd, &_s15ConversationKit0A12ControlsTypeOSg_ADtMR);
LABEL_24:
    v52 = [objc_opt_self() defaultCenter];
    v53 = v52;
    if (one-time initialization token for enhancedEmergencyRequestToChoosePhotoNotification != -1)
    {
      v52 = swift_once();
    }

    v54 = &static Strings.Notifications.enhancedEmergencyRequestToChoosePhotoNotification;
    goto LABEL_27;
  }

  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_376();
  if (v35)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of CallControlsService?(v55, v56, v57);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of CallControlsService?(v58, v59, v60);
    outlined destroy of ConversationControlsType(v70);
    goto LABEL_23;
  }

  v36 = OUTLINED_FUNCTION_316_0(v27, v28, v29, v30, v31, v32, v33, v34, v67[0], v67[1], v68, v69);
  outlined destroy of ConversationControlsType(v67);
  OUTLINED_FUNCTION_41();
  outlined destroy of CallControlsService?(v37, v38, v39);
  OUTLINED_FUNCTION_41();
  outlined destroy of CallControlsService?(v40, v41, v42);
  outlined destroy of ConversationControlsType(v70);
  OUTLINED_FUNCTION_41();
  outlined destroy of CallControlsService?(v43, v44, v45);
  if ((v36 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v52 = [objc_opt_self() defaultCenter];
  v53 = v52;
  if (one-time initialization token for enhancedEmergencyUploadPickerDuringStreamingNotification != -1)
  {
    v52 = swift_once();
  }

  v54 = &static Strings.Notifications.enhancedEmergencyUploadPickerDuringStreamingNotification;
LABEL_27:
  OUTLINED_FUNCTION_424(v52, sel_postNotificationName_object_, *v54);

  v61 = v12();
  if (v61)
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_159_0();
    v62();
    v61 = swift_unknownObjectRelease();
  }

  if ((v24)(v61))
  {
    OUTLINED_FUNCTION_254_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMR);
    v63 = swift_allocObject();
    v64.n128_f64[0] = OUTLINED_FUNCTION_57_10(v63, xmmword_1BC4BB980);
    OUTLINED_FUNCTION_286_0(v65, v64);
    OUTLINED_FUNCTION_46_14();
    OUTLINED_FUNCTION_114_0();
    v66();

    swift_unknownObjectRelease();
  }
}

uint64_t ConversationControlsManager.phoneToICSBundleID(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = a1 == 0xD000000000000015 && 0x80000001BC509590 == a2;
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000017;
    }
  }

  return v2;
}

Swift::Void __swiftcall ConversationControlsManager.pttMarkChannelActive()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for PushToTalkChannelState();
  OUTLINED_FUNCTION_1_17();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_13_2();
  v10 = *((*MEMORY[0x1E69E7D40] & v9) + 0x2A0);
  v10();
  OUTLINED_FUNCTION_208_0();
  ObjectType = swift_getObjectType();
  (*(v1 + 464))(ObjectType);
  OUTLINED_FUNCTION_340();
  if (v1)
  {
    OUTLINED_FUNCTION_293();
    (*(v12 + 1896))();
    v19 = *(v3 + 104);
    v19(v7, *MEMORY[0x1E6995F20]);
    OUTLINED_FUNCTION_40_2();
    v13 = static PushToTalkChannelState.== infix(_:_:)();
    v14 = *(v3 + 8);
    v15 = OUTLINED_FUNCTION_206();
    v14(v15);
    v16 = OUTLINED_FUNCTION_1_5();
    v17 = (v14)(v16);
    if (v13)
    {
      (v10)(v17);
      OUTLINED_FUNCTION_87();
      v18 = swift_getObjectType();
      (*(v7 + 248))(v18, v7);
      OUTLINED_FUNCTION_288();
      swift_unknownObjectRelease();
      if (!v7)
      {
        v19(v0, *MEMORY[0x1E6995F38]);
        ConversationControlsManager.pttChannelState.setter();
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.pttLeaveButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v8 = OUTLINED_FUNCTION_23_6();
  v9(v8);
  _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_3_7();
  v11(v10);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_293();
  v12 += 84;
  v13 = *v12;
  v5 = v12;
  (*v12)();
  v14 = OUTLINED_FUNCTION_255();
  (*(v2 + 464))(v14);
  v15 = OUTLINED_FUNCTION_280_0();
  if ((v2 & 1) == 0)
  {
    goto LABEL_14;
  }

  (v13)(v15);
  objc_opt_self();
  OUTLINED_FUNCTION_108_0();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v3 = v16;
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_16;
  }

LABEL_5:
  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_10(v19))
  {
    v20 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_296(v20);
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    OUTLINED_FUNCTION_2_2();
  }

  v26 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert))
  {
    OUTLINED_FUNCTION_0_1();
    v5 = *(v27 + 144);

    (v5)(v28);
    OUTLINED_FUNCTION_288();

    if (v5)
    {
      CFUserNotificationCancel(v5);

      *(v1 + v26) = 0;
    }
  }

  OUTLINED_FUNCTION_20();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_275(v29);
  swift_unknownObjectWeakInit();
  type metadata accessor for PlatformAlert();
  v30 = [v3 channelDisplayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = OUTLINED_FUNCTION_43_0();
  v34 = static PlatformAlert.confirmLeavePTTChannel(_:handler:)(v31, v32, v33, v5);

  *(v1 + v26) = v34;

  if (v34)
  {
    OUTLINED_FUNCTION_0_1();
    (*(v35 + 336))(0);
  }

  ConversationControlsManager.updatePTTPresentationForLeaveChannelAlert(isPresented:)(1);
  swift_unknownObjectRelease();

LABEL_14:
  OUTLINED_FUNCTION_49();
}

void closure #1 in ConversationControlsManager.pttLeaveButtonTapped(button:)(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, &static Logger.conversationControls);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1BBC58000, v6, v7, "User has confirmed that they want to leave the PTT channel.", v8, 2u);
        MEMORY[0x1BFB23DF0](v8, -1, -1);
      }

      v9 = *&v4[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController];
      ConversationController.pttLeaveChannel()();
    }

    *&v4[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert] = 0;

    ConversationControlsManager.updatePTTPresentationForLeaveChannelAlert(isPresented:)(0);
  }
}

uint64_t ConversationControlsManager.updatePTTPresentationForLeaveChannelAlert(isPresented:)(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x4B8);
  if (!v3() || (v5 = v4, v6 = swift_getObjectType(), LOBYTE(v5) = (*(v5 + 72))(v6, v5), result = swift_unknownObjectRelease(), (v5 & 1) == 0))
  {
    v8 = SBUIIsSystemApertureEnabled();
    result = v3();
    v10 = v9;
    if (v8)
    {
      if (a1)
      {
        if (!result)
        {
          return result;
        }

        ObjectType = swift_getObjectType();
        (*(v10 + 96))(0xD00000000000002ELL, 0x80000001BC509530, ObjectType, v10);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v13 = swift_getObjectType();
        (*(v10 + 88))(0xD00000000000002FLL, 0x80000001BC509500, 1, v13, v10);
      }

      return swift_unknownObjectRelease();
    }

    else if (result)
    {
      v12 = swift_getObjectType();
      v14 = 2;
      v15 = 0u;
      v16 = 0u;
      v17 = 7;
      (*(v10 + 16))(&v14, 1, v12, v10);
      swift_unknownObjectRelease();
      return outlined destroy of ConversationControlsType(&v14);
    }
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsManager.dismissConfirmLeavePTTChannelAlert()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    v8 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert;
    if (*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmLeavePTTChannelAlert))
    {
      OUTLINED_FUNCTION_0_1();
      v10 = *(v9 + 144);

      (v10)(v11);
      OUTLINED_FUNCTION_173();

      if (v10)
      {
        CFUserNotificationCancel(v10);
        *(v0 + v8) = 0;

        ConversationControlsManager.updatePTTPresentationForLeaveChannelAlert(isPresented:)(0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationControlsManager.pttDoneButtonTapped(recognizer:)(UITapGestureRecognizer *recognizer)
{
  OUTLINED_FUNCTION_388();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_12_3();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_9_37();
  v8(v7);
  if ((v4 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    goto LABEL_4;
  }

  if ([v1 state] != 3)
  {
    return;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v9, &static Logger.conversationControls);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v11))
  {
    v12 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v12);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_18();
  }

  ConversationController.pttStopTransmit()();
}

void ConversationControlsManager.pttTalkButtonGestureChanged(recognizer:)(void *a1)
{
  v1 = [a1 state];
  if ((v1 - 3) >= 3)
  {
    if (v1 == 1)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v13 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v13, &static Logger.conversationControls);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v15))
      {
        v16 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v16);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v17, v18, v19, v20, v21, 2u);
        OUTLINED_FUNCTION_18();
      }

      OUTLINED_FUNCTION_293();
      (*(v22 + 1992))();
      OUTLINED_FUNCTION_27_15();
      (*(v23 + 248))(1);

      ConversationController.pttStartTransmit()();
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v5);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_293();
    (*(v11 + 1992))();
    OUTLINED_FUNCTION_27_15();
    (*(v12 + 248))(0);

    ConversationController.pttStopTransmit()();
  }
}

Swift::Void __swiftcall ConversationControlsManager.openGreenTea3PApp(dismissBannerOnAppOpen:)(Swift::Bool dismissBannerOnAppOpen)
{
  OUTLINED_FUNCTION_402();
  v39 = v3;
  v40 = v4;
  v6 = v5;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2A0))();
  OUTLINED_FUNCTION_254_0();
  OUTLINED_FUNCTION_307_0();
  v7();
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v1);
  if (!v8)
  {
LABEL_13:
    OUTLINED_FUNCTION_282_0();
    return;
  }

  v9 = v8;
  if (ConversationControlsManager.isActiveCallGreenTea3P()())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for FBSOpenApplicationOptions, 0x1E699FB70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v11;
    AnyHashable.init<A>(_:)();
    v12 = MEMORY[0x1E69E6370];
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v13;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = v12;
    *(inited + 144) = 1;
    v14 = Dictionary.init(dictionaryLiteral:)();
    v15 = @nonobjc FBSOpenApplicationOptions.__allocating_init(dictionary:)(v14);
    v16 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v16)
    {
      v17 = v16;
      v18 = OUTLINED_FUNCTION_7_8();
      v19 = MEMORY[0x1BFB209B0](v18);

      OUTLINED_FUNCTION_20();
      v20 = swift_allocObject();
      OUTLINED_FUNCTION_275(v20);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v21 = swift_allocObject();
      *(v21 + 16) = v6 & 1;
      *(v21 + 24) = v9;
      v37 = partial apply for closure #1 in ConversationControlsManager.openGreenTea3PApp(dismissBannerOnAppOpen:);
      v38 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
      v36 = &block_descriptor_156;
      v22 = _Block_copy(&aBlock);

      [v17 openApplication:v19 withOptions:v15 completion:v22];
      _Block_release(v22);
    }

    else
    {

      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v24 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v24, &static Logger.conversationControls);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v26))
      {
        v27 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v27);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_18();
      }
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_282_0();
}

Swift::Bool __swiftcall ConversationControlsManager.isActiveCallGreenTea3P()()
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))();
  OUTLINED_FUNCTION_254_0();
  OUTLINED_FUNCTION_307_0();
  v2();
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  v3 = [v0 supportsDynamicSystemUI];

  result = 0;
  if (v3)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v5 = [v4 groupConversations];

    if (v5)
    {
      if (TUDeviceHasChinaSKU())
      {
        return 1;
      }
    }
  }

  return result;
}

void closure #1 in ConversationControlsManager.openGreenTea3PApp(dismissBannerOnAppOpen:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4B8))();
      v8 = v7;

      if (v6)
      {
        ObjectType = swift_getObjectType();
        (*(v8 + 32))(0xD000000000000018, 0x80000001BC5094E0, 1, ObjectType, v8);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t closure #1 in ConversationControlsManager.startWaitOnHoldSession()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.startWaitOnHoldSession(), 0, 0);
}

uint64_t closure #1 in ConversationControlsManager.startWaitOnHoldSession()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_210();
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v1[25] = isa;
  v1[2] = v1;
  OUTLINED_FUNCTION_346();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  OUTLINED_FUNCTION_52_12(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_51_14();
  [v3 performSmartHoldingRequestWithType:3 forCallWithUUID:isa completion:v0];
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DEC8](v6);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_48();
  v20 = v0;
  v2 = *(v0 + 200);
  swift_willThrow();

  if (one-time initialization token for callHolding != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 208);
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v4, &static Logger.callHolding);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_38_3();
    *v3 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);
    OUTLINED_FUNCTION_242();

    *(v3 + 1) = v1;
    OUTLINED_FUNCTION_302(&dword_1BBC58000, v6, v7, "Could not start WoH session: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_379(v10, v11, v12, v13);
  v14 = static MainActor.shared.getter();
  OUTLINED_FUNCTION_24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t closure #1 in closure #1 in ConversationControlsManager.startWaitOnHoldSession()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationControlsManager.startWaitOnHoldSession(), v2, v1);
}

{
  OUTLINED_FUNCTION_24_0();

  type metadata accessor for PlatformAlert();
  if (static PlatformAlert.waitOnHoldFailed()())
  {
    OUTLINED_FUNCTION_27_15();
    (*(v0 + 336))(0);
  }

  OUTLINED_FUNCTION_13();

  return v1();
}

Swift::Void __swiftcall ConversationControlsManager.waitOnHoldEndCallButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_6();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  if (v4)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v9, &static Logger.conversationControls);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v11))
  {
    v12 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v12);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  (*(v18 + 672))();
  objc_opt_self();
  OUTLINED_FUNCTION_170();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    [*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) disconnectCall:v19 withReason:0];
  }

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall ConversationControlsManager.holdDetectedStartHoldingButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v10))
  {
    v11 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v11);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_18();
  }

  ConversationControlsManager.startWaitOnHoldSession()();
}

Swift::Void __swiftcall ConversationControlsManager.holdDetectedNotNowTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_29();
  v5 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_233_0(v8, v41);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_240_0();
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_244_0();
  v43 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_224();
  v17 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v4, *MEMORY[0x1E69E8020], v17);
  v21 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v4, v17);
  if (v21)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v22, &static Logger.conversationControls);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v24))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_281_0(&dword_1BBC58000, v25, v26, "holdDetectedNotNowButtonTapped");
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_293();
  (*(v27 + 672))();
  objc_opt_self();
  OUTLINED_FUNCTION_170();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = [v28 callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    OUTLINED_FUNCTION_115(v3, 1, v11);
    if (v30)
    {
      swift_unknownObjectRelease();
      outlined destroy of CallControlsService?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v42 = *(v13 + 32);
      v31 = OUTLINED_FUNCTION_312_0();
      v32(v31);
      static TaskPriority.userInitiated.getter();
      type metadata accessor for TaskPriority();
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
      OUTLINED_FUNCTION_41();
      v37();
      v38 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v39 = swift_allocObject();
      *(v39 + 2) = 0;
      *(v39 + 3) = 0;
      *(v39 + 4) = v5;
      v42(&v39[v38], v43, v11);
      v40 = v5;
      OUTLINED_FUNCTION_59();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      swift_unknownObjectRelease();
      (*(v13 + 8))(v2, v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:), 0, 0);
}

uint64_t closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_210();
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v1[24] = isa;
  v1[2] = v1;
  OUTLINED_FUNCTION_346();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  OUTLINED_FUNCTION_52_12(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_51_14();
  [v3 performSmartHoldingRequestWithType:2 forCallWithUUID:isa completion:v0];
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DEC8](v6);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(*(v0 + 176));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(uint64_t a1)
{
  v5 = *(v1 + 192);
  swift_willThrow();

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v6 = *(v1 + 200);
  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
  v8 = v6;
  v9 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v9, v2);
  v11 = *(v1 + 200);
  if (v10)
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_410(4.8149e-34);
    v12 = Error.localizedDescription.getter();
    OUTLINED_FUNCTION_360(v12, v13, v14, v15);
    OUTLINED_FUNCTION_359();
    *(v3 + 4) = v4;
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_341(v16, v17, v18, v19);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {
  }

  $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(*(v1 + 176));
  OUTLINED_FUNCTION_13();

  return v20();
}

uint64_t $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = a1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

Swift::Void __swiftcall ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_29();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_233_0(v7, v41);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_240_0();
  v10 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_244_0();
  v42 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_4_24();
  v16 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v18 + 104))(v3, *MEMORY[0x1E69E8020], v16);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v3, v16);
  if (v20)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v21, &static Logger.conversationControls);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v23))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_281_0(&dword_1BBC58000, v24, v25, "waitOnHoldPickUpButtonTapped");
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_293();
  (*(v26 + 672))();
  OUTLINED_FUNCTION_250();
  swift_getObjectType();
  OUTLINED_FUNCTION_308_0();
  v27();
  OUTLINED_FUNCTION_348();
  UUID.init(uuidString:)();

  OUTLINED_FUNCTION_115(v2, 1, v10);
  if (v28)
  {
    outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v29 = *(v12 + 32);
    v30 = OUTLINED_FUNCTION_312_0();
    v29(v30);
    static TaskPriority.userInitiated.getter();
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_41();
    v35();
    v36 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v4;
    (v29)(v37 + v36, v42, v10);
    v38 = v4;
    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    v39 = OUTLINED_FUNCTION_62_0();
    v40(v39);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:), 0, 0);
}

uint64_t closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_210();
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v1[25] = isa;
  v1[2] = v1;
  OUTLINED_FUNCTION_346();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  OUTLINED_FUNCTION_52_12(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_51_14();
  [v3 performSmartHoldingRequestWithType:4 forCallWithUUID:isa completion:v0];
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DEC8](v6);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9();

  v1 = *(v0 + 176);
  type metadata accessor for TaskPriority();
  v2 = OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_379(v2, v3, v4, v5);
  v6 = v1;
  static MainActor.shared.getter();
  OUTLINED_FUNCTION_37_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_370(v7, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();

  OUTLINED_FUNCTION_13();

  return v8();
}

uint64_t closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(uint64_t a1)
{
  v5 = v1[25];
  swift_willThrow();

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v6 = v1[26];
  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
  v8 = v6;
  v9 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v9, v2);
  v11 = v1[26];
  if (v10)
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_410(4.8149e-34);
    v12 = Error.localizedDescription.getter();
    OUTLINED_FUNCTION_360(v12, v13, v14, v15);
    OUTLINED_FUNCTION_359();
    *(v3 + 4) = v4;
    OUTLINED_FUNCTION_325_0();
    OUTLINED_FUNCTION_341(v16, v17, v18, v19);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {
  }

  v20 = v1[22];
  type metadata accessor for TaskPriority();
  v21 = OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_379(v21, v22, v23, v24);
  v25 = v20;
  static MainActor.shared.getter();
  OUTLINED_FUNCTION_37_0();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_370(v26, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();

  OUTLINED_FUNCTION_13();

  return v27();
}

uint64_t closure #1 in closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:), v6, v5);
}

uint64_t closure #1 in closure #1 in ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13_2();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x4A0))();
  if (v2)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_222_0();
    v3();
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = v2 == 0;
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t closure #1 in ConversationControlsManager.heldCalls()(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v11 = Strong;
  if (![a1 isOnHold])
  {

LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v12 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*((*MEMORY[0x1E69E7D40] & *v11) + 0x2A8))();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();

  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  v14 = v12 ^ 1;
  return v14 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

Swift::Void __swiftcall ConversationControlsManager.updateGreenTea3PCallStateIfNeeded()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_6();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  if (v4)
  {
    OUTLINED_FUNCTION_293();
    (*(v9 + 672))();
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_237_0();
    v10();
    OUTLINED_FUNCTION_173();
    swift_unknownObjectRelease();
    v11 = [v1 supportsDynamicSystemUI];

    if (!v11)
    {
      return;
    }

    v12 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v13 = [v12 groupConversations];

    if (!v13 || !TUDeviceHasChinaSKU())
    {
      return;
    }

    [*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) fetchCurrentCalls];
    v14 = [objc_opt_self() sharedInstance];
    v36 = specialized thunk for @callee_guaranteed (@guaranteed TUCall) -> (@unowned Bool);
    v37 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    OUTLINED_FUNCTION_63();
    v34 = v15;
    v35 = &block_descriptor_167;
    v16 = _Block_copy(&aBlock);

    v17 = [v14 callsPassingTest_];

    _Block_release(v16);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
      OUTLINED_FUNCTION_170();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Array.count.getter();
      OUTLINED_FUNCTION_6_4();

      if (v17 > 0)
      {
        return;
      }

      if (one-time initialization token for conversationControls == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_8:
  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v18, &static Logger.conversationControls);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v20))
  {
    v21 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v21);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  if ((*(v27 + 1184))())
  {
    OUTLINED_FUNCTION_254_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BC4BAA20;
    *&v29 = OUTLINED_FUNCTION_67_7(v28, 24);
    *(v30 + 72) = 7;
    *(v30 + 80) = 23;
    *(v30 + 88) = v29;
    *(v30 + 104) = v29;
    *(v30 + 120) = 7;
    OUTLINED_FUNCTION_46_14();
    v31();

    swift_unknownObjectRelease();
  }
}

uint64_t closure #1 in ConversationControlsManager.updateGreenTea3PCallStateIfNeeded()(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 supportsDynamicSystemUI];

  if (!v3)
  {
    return 0;
  }

  if ([a1 isActive])
  {
    return 1;
  }

  return [a1 isOnHold];
}

void closure #1 in ConversationControlsManager.setupGreenTea3PStateObservers()(uint64_t a1, uint64_t a2, void *a3)
{
  v57 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    a3 = Strong;
    v15 = a1;
    ObjectType = swift_getObjectType();
    a1 = v57;
    v19 = (*(v57 + 232))(ObjectType, v57);
    (*((*MEMORY[0x1E69E7D40] & *a3) + 0x2A8))(v19);
    v20 = static UUID.== infix(_:_:)();
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v11, v5);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    v22 = (*(a1 + 184))(ObjectType, a1);
    v23 = [v22 supportsDynamicSystemUI];

    if (!v23)
    {
      goto LABEL_23;
    }

    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, &static Logger.conversationControls);
  swift_unknownObjectRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v58 = v28;
    aBlock = v15;
    *v27 = 136315138;
    *&v60 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
    v29 = >> prefix<A>(_:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v58);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1BBC58000, v25, v26, "greenTea3PCallStatusChanged %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v27, -1, -1);
  }

  v32 = MEMORY[0x1E69E7D40];
  v33 = *(a3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #1 in closure #1 in ConversationControlsManager.setupGreenTea3PStateObservers();
  *(v35 + 24) = v34;
  *(&v61 + 1) = thunk for @callee_guaranteed (@guaranteed TUCall) -> (@unowned Bool)partial apply;
  v62 = v35;
  aBlock = MEMORY[0x1E69E9820];
  *&v60 = 1107296256;
  *(&v60 + 1) = thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@unowned Bool);
  *&v61 = &block_descriptor_592;
  v36 = _Block_copy(&aBlock);

  v37 = [v33 callsPassingTest_];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = specialized Array.count.getter();

  if (v38 < 1)
  {
    v44 = *((*v32 & *a3) + 0x2A0);
    v44(v39);
    v46 = v45;
    v47 = swift_getObjectType();
    LODWORD(v46) = (*(v46 + 208))(v47, v46);
    v48 = swift_unknownObjectRelease();
    switch(v46)
    {
      case 1:
        v44(v48);
        v50 = v49;
        v51 = swift_getObjectType();
        LOBYTE(v50) = (*(v50 + 400))(v51, v50);
        v48 = swift_unknownObjectRelease();
        if ((v50 & 1) == 0)
        {
          goto LABEL_16;
        }

        ConversationControlsManager.openGreenTea3PApp(dismissBannerOnAppOpen:)(1);
        goto LABEL_22;
      case 2:
LABEL_16:
        if (!(*((*v32 & *a3) + 0x4B8))(v48))
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      case 4:
        if (!(*((*v32 & *a3) + 0x4B8))(v48))
        {
          goto LABEL_22;
        }

        v41 = v52;
        v42 = swift_getObjectType();
        v43 = 23;
        goto LABEL_12;
      case 6:
        if (!(*((*v32 & *a3) + 0x4A0))(v48))
        {
          goto LABEL_22;
        }

        v54 = v53;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMR);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1BC4BAA20;
        *(v55 + 32) = 24;
        *(v55 + 40) = 0u;
        *(v55 + 56) = 0u;
        *(v55 + 72) = 7;
        *(v55 + 80) = 23;
        *(v55 + 88) = 0u;
        *(v55 + 104) = 0u;
        *(v55 + 120) = 7;
        (*(v54 + 32))();

        swift_unknownObjectRelease();
        return;
      default:
        goto LABEL_22;
    }
  }

  if (!(*((*v32 & *a3) + 0x4B8))(v39))
  {
LABEL_22:

LABEL_23:

    return;
  }

LABEL_11:
  v41 = v40;
  v42 = swift_getObjectType();
  v43 = 24;
LABEL_12:
  aBlock = v43;
  v60 = 0u;
  v61 = 0u;
  LOBYTE(v62) = 7;
  (*(v41 + 16))(&aBlock, 1, v42, v41);

  swift_unknownObjectRelease();
  outlined destroy of ConversationControlsType(&aBlock);
}

id closure #1 in closure #1 in ConversationControlsManager.setupGreenTea3PStateObservers()(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v12 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*((*MEMORY[0x1E69E7D40] & *v11) + 0x2A8))();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v15 = [a1 provider];
    v14 = [v15 supportsDynamicSystemUI];
  }

  return v14;
}

Swift::Void __swiftcall ConversationControlsManager.avLessContinueButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_213_0();
  v10(v9);
  _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_377();
  v12(v11);
  if (v8)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_3:
  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v13, &static Logger.conversationControls);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v15))
  {
    v16 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_203_0(v16);
    OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v17, v18, "avLessContinueButtonTapped");
    OUTLINED_FUNCTION_104_2();
  }

  if (one-time initialization token for avLessLeaveConfirmationPresentedDate != -1)
  {
    OUTLINED_FUNCTION_77_8(&one-time initialization token for avLessLeaveConfirmationPresentedDate);
  }

  OUTLINED_FUNCTION_52(v4, static ConversationControlsManager.avLessLeaveConfirmationPresentedDate);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_208();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  OUTLINED_FUNCTION_3_62(v1);
  if (v19)
  {
    outlined destroy of CallControlsService?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_33_0();
    v21(v20);
    CNKCoreAnalyticsReporter.reportAVLessLeaveConfirmation(presentedAt:action:)(v2, 0);
    v22 = OUTLINED_FUNCTION_206();
    v23(v22);
  }

  type metadata accessor for ConversationControlsManager(0);
  static ConversationControlsManager.shouldShowAVLessLeaveConfirmation.setter(0);
  if (SBUIIsSystemApertureEnabled())
  {
    v24 = OUTLINED_FUNCTION_73_7();
    ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v24, v25, v26);
  }

  OUTLINED_FUNCTION_293();
  if ((*(v27 + 1184))())
  {
    OUTLINED_FUNCTION_254_0();
    v28 = OUTLINED_FUNCTION_58_10(60);
    v29(v28);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.continueHandoffButtonTapped()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_129();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v4);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_7_8();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
LABEL_18:
    v56 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v56, &static Logger.conversationControls);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v58))
    {
      v59 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v59);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v60, v61, "Cannot continue handoff as no conversation was being tracked by Conversation Controls");
      OUTLINED_FUNCTION_26();
    }

LABEL_24:

    goto LABEL_27;
  }

  v14 = *&v0[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8];
  ObjectType = swift_getObjectType();
  if (((*(v14 + 680))(ObjectType, v14) & 1) == 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_293();
  v17 = (*(v16 + 704))();
  if (!v17)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  v18 = v17;
  if ([v17 state] == 1)
  {
    v19 = [v18 localParticipantAssociation];
    if (v19)
    {

      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v20 = type metadata accessor for Logger();
      v21 = __swift_project_value_buffer(v20, &static Logger.conversationControls);
      v22 = v18;
      v23 = v21;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_42();
        v81 = OUTLINED_FUNCTION_23();
        *v26 = 136315138;
        v27 = [v22 UUID];
        OUTLINED_FUNCTION_362();

        OUTLINED_FUNCTION_11_67();
        v30 = lazy protocol witness table accessor for type URL and conformance URL(v28, v29);
        v31 = OUTLINED_FUNCTION_350(v30);
        v33 = v32;
        v34 = OUTLINED_FUNCTION_1_5();
        v35(v34);
        v36 = OUTLINED_FUNCTION_322();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v33, v37);
        OUTLINED_FUNCTION_300();

        *(v26 + 4) = v31;
        _os_log_impl(&dword_1BBC58000, v24, v25, "Joining conversation %s via handoff", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_104_2();
      }

      [v0 gameControllerDidRequestDismissal];
      ConversationController.joinConversation()();
      goto LABEL_26;
    }
  }

  v38 = [v18 handoffEligibility];
  if (!v38)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v62 = type metadata accessor for Logger();
    v63 = __swift_project_value_buffer(v62, &static Logger.conversationControls);
    v57 = v18;
    v64 = v63;
    v22 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (!OUTLINED_FUNCTION_418())
    {

LABEL_26:
      goto LABEL_27;
    }

    v65 = OUTLINED_FUNCTION_42();
    v83 = OUTLINED_FUNCTION_23();
    *v65 = 136315138;
    v66 = [v57 UUID];
    OUTLINED_FUNCTION_362();

    OUTLINED_FUNCTION_11_67();
    v69 = lazy protocol witness table accessor for type URL and conformance URL(v67, v68);
    OUTLINED_FUNCTION_350(v69);
    OUTLINED_FUNCTION_250();
    v70 = OUTLINED_FUNCTION_1_5();
    v71(v70);
    v72 = OUTLINED_FUNCTION_322();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v2, v73);

    *(v65 + 4) = v74;
    OUTLINED_FUNCTION_212_0();
    _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_3_26();

    goto LABEL_24;
  }

  v39 = v38;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, &static Logger.conversationControls);
  v41 = v18;
  OUTLINED_FUNCTION_372();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_42();
    v82 = OUTLINED_FUNCTION_23();
    *v44 = 136315138;
    v45 = [v1 UUID];
    v80 = v43;
    OUTLINED_FUNCTION_362();

    OUTLINED_FUNCTION_11_67();
    v48 = lazy protocol witness table accessor for type URL and conformance URL(v46, v47);
    OUTLINED_FUNCTION_350(v48);
    OUTLINED_FUNCTION_208_0();
    v49 = OUTLINED_FUNCTION_1_5();
    v50(v49);
    v51 = OUTLINED_FUNCTION_322();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v10, v52);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_1BBC58000, v42, v80, "Continuing handoff for eligible conversation %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_27();
  }

  v54 = *&v0[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter];
  v55 = v39;
  [v54 continueHandoffForConversationWithEligibility_];

LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.lagunaPullButtonTapped()()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = (v8 - v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v3);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_defaults + 8);
  ObjectType = swift_getObjectType();
  if ((*(v11 + 632))(ObjectType, v11))
  {
    v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))();
    if (v13)
    {
      v14 = v13;
      v15 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
      v16 = [v15 neighborhoodActivityConduit];
      v17 = [v16 activeSplitSessionTV];

      if (v17)
      {
        v18 = [v15 neighborhoodActivityConduit];
        v19 = [v14 UUID];
        OUTLINED_FUNCTION_362();

        v20.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v21 = OUTLINED_FUNCTION_1_5();
        v22(v21);
        v46 = closure #1 in ConversationControlsManager.lagunaPullButtonTapped();
        v47 = 0;
        v42 = MEMORY[0x1E69E9820];
        v43 = 1107296256;
        OUTLINED_FUNCTION_196_0();
        v44 = v23;
        v45 = &block_descriptor_171;
        v24 = _Block_copy(&v42);
        [v18 pullConversation:v20.super.isa fromTVDevice:v17 completion:{v24, v42, v43}];
        _Block_release(v24);
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
        }

        v33 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v33, &static Logger.conversationControls);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_163(v35))
        {
          v36 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v36);
          OUTLINED_FUNCTION_219();
          _os_log_impl(v37, v38, v39, v40, v41, 2u);
          OUTLINED_FUNCTION_18();
        }

        v20.super.isa = v14;
      }

LABEL_14:

      goto LABEL_15;
    }

    if (one-time initialization token for conversationControls == -1)
    {
LABEL_7:
      v25 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v25, &static Logger.conversationControls);
      v20.super.isa = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_173_0();
      if (os_log_type_enabled(v20.super.isa, v26))
      {
        v27 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v27);
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_26();
      }

      goto LABEL_14;
    }

LABEL_17:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    goto LABEL_7;
  }

LABEL_15:
  OUTLINED_FUNCTION_49();
}

void closure #1 in ConversationControlsManager.lagunaPullButtonTapped()(char a1, void *a2)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    if (a2)
    {
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 10) = v10;
    *v8 = v11;
    _os_log_impl(&dword_1BBC58000, oslog, v6, "Laguna pull conversation success: %{BOOL}d error: %@", v7, 0x12u);
    outlined destroy of CallControlsService?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }
}

uint64_t ConversationControlsManager.displayEndWaitOnHoldForAnotherCallAlert(callerName:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_385();
  type metadata accessor for PlatformAlert();
  v8 = OUTLINED_FUNCTION_33_0();
  v10 = static PlatformAlert.endWaitOnHoldForAnotherCall(_:handler:)(v8, v9, a3, a4);
  *(v5 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmStopWaitOnHoldAlert) = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_0_1();
    (*(v12 + 336))(0);
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsManager.dismissEndWaitOnHoldForAnotherCallAlert()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    v8 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmStopWaitOnHoldAlert;
    if (*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmStopWaitOnHoldAlert))
    {
      OUTLINED_FUNCTION_0_1();
      v10 = *(v9 + 144);

      (v10)(v11);
      OUTLINED_FUNCTION_173();

      if (v10)
      {
        CFUserNotificationCancel(v10);

        *(v0 + v8) = 0;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationControlsManager.acceptCallButtonTapped(ignoresSmartHoldingSession:)(Swift::Bool ignoresSmartHoldingSession)
{
  OUTLINED_FUNCTION_408();
  v85 = v4;
  v86 = v5;
  v6 = v1;
  v8 = v7;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v10 = OUTLINED_FUNCTION_396();
  v11(v10);
  v12 = _dispatchPreconditionTest(_:)();
  v13 = OUTLINED_FUNCTION_309();
  v14(v13);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_106_2();
  v16 = (*(v15 + 672))();
  v2 = v17;
  v18 = *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter];
  v83 = specialized thunk for @callee_guaranteed (@guaranteed TUCall) -> (@unowned Bool);
  v84 = 0;
  OUTLINED_FUNCTION_177_0();
  v80 = 1107296256;
  OUTLINED_FUNCTION_63();
  v81 = v19;
  v82 = &block_descriptor_174;
  v20 = _Block_copy(&v79);

  v21 = [v18 callsPassingTest_];
  _Block_release(v20);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_44:
    __break(1u);
LABEL_45:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    goto LABEL_9;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  OUTLINED_FUNCTION_170();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter() && (v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_20();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_275(v23);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_37_0();
    v24 = swift_allocObject();
    v24[2] = v8;
    v24[3] = v16;
    v24[4] = v2;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v22 & 0xC000000000000001) == 0, v22);
    if ((v22 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      v26 = MEMORY[0x1BFB22010](0, v22);
    }

    else
    {
      v25 = *(v22 + 32);
      swift_unknownObjectRetain();
      v26 = v25;
    }

    v27 = v26;

    v28 = [v27 displayName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = OUTLINED_FUNCTION_308();
    v30 = MEMORY[0x1BFB209B0](v29);

    v83 = partial apply for closure #2 in ConversationControlsManager.acceptCallButtonTapped(ignoresSmartHoldingSession:);
    v84 = v24;
    OUTLINED_FUNCTION_177_0();
    v80 = 1107296256;
    v81 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v82 = &block_descriptor_181;
    v31 = _Block_copy(&v79);

    [v6 displayEndWaitOnHoldForAnotherCallAlertWithCallerName:v30 completionHandler:v31];
    _Block_release(v31);
    swift_unknownObjectRelease();

    goto LABEL_41;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_45;
  }

LABEL_9:
  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, &static Logger.conversationControls);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v35))
  {
    v36 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_373(v36);
    OUTLINED_FUNCTION_279();
    _os_log_impl(v37, v38, v39, v40, v41, 2u);
    OUTLINED_FUNCTION_3_26();
  }

  v42 = *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_notificationCenter];
  if (one-time initialization token for cnk_acceptCallButtonTapped != -1)
  {
    swift_once();
  }

  [v42 postNotificationName:static NSNotificationName.cnk_acceptCallButtonTapped object:v6];
  OUTLINED_FUNCTION_407(0x636361206C6C6163, 0x7065u);
  OUTLINED_FUNCTION_283();
  (*((*v3 & v43) + 0x360))(&v79);
  if (v81 == 2)
  {
    v44 = 0;
  }

  else
  {
    v45 = v79;
    outlined destroy of CallControlsService?(&v79, &_s15ConversationKit21GameControllerContextVSgMd, &_s15ConversationKit21GameControllerContextVSgMR);
    v44 = v45 == 2;
  }

  [v6 gameControllerDidRequestDismissal];
  ObjectType = swift_getObjectType();
  v47 = v2[23];
  v48 = v47(ObjectType, v2);
  v49 = [v48 isFaceTimeProvider];

  if (!v49)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_66_5();
  v51 = (*(v50 + 704))();
  if (!v51)
  {
    if (v44)
    {
      goto LABEL_19;
    }

LABEL_21:
    OUTLINED_FUNCTION_66_5();
    if ((*(v53 + 1208))())
    {
      OUTLINED_FUNCTION_264();
      v54 = swift_getObjectType();
      v49[5](v54, v49);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_66_5();
    if ((*(v55 + 1256))())
    {
      OUTLINED_FUNCTION_264();
      v56 = swift_getObjectType();
      v49[14](v56, v49);
      swift_unknownObjectRelease();
    }

    v57 = OUTLINED_FUNCTION_73_7();
    ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v57, v58, v59);
    goto LABEL_26;
  }

  v52 = v51;
  v49 = [v51 resolvedAudioVideoMode];

  if (v49 != 1 && !v44)
  {
    goto LABEL_21;
  }

LABEL_19:
  ConversationController.joinConversation()();
LABEL_26:
  if (ConversationControlsManager.isActiveCallGreenTea3P()())
  {
    OUTLINED_FUNCTION_66_5();
    if ((*(v60 + 1208))())
    {
      v62 = v61;
      v63 = swift_getObjectType();
      if (((*(v62 + 72))(v63, v62) & 1) == 0)
      {
        v64 = SBUIIsSystemApertureEnabled();
        ConversationControlsManager.openGreenTea3PApp(dismissBannerOnAppOpen:)(v64 != 1);
      }

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_66_5();
  if ((*(v65 + 1208))())
  {
    if (Features.shouldShowFullScreenCallWaiting.getter() || (SBUIIsSystemApertureEnabled() & 1) != 0 || (v66 = v47(ObjectType, v2), v67 = [v66 isTelephonyProvider], v66, !v67))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_66_5();
      if ((*(v68 + 688))())
      {
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_163(v70))
        {
          v71 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v71);
          OUTLINED_FUNCTION_219();
          _os_log_impl(v72, v73, v74, v75, v76, 2u);
          OUTLINED_FUNCTION_18();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_165_0();
        v77 = OUTLINED_FUNCTION_156_0(23);
        v78(v77);
        swift_unknownObjectRelease();
      }
    }
  }

  swift_unknownObjectRelease();
LABEL_41:
  OUTLINED_FUNCTION_415();
}

char *closure #2 in ConversationControlsManager.acceptCallButtonTapped(ignoresSmartHoldingSession:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (a1)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, &static Logger.conversationControls);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BBC58000, v7, v8, "Banner: Hold Assist: The user has confirmed they want to decline the second incoming call and keep holding with hold assist enabled.", v9, 2u);
        MEMORY[0x1BFB23DF0](v9, -1, -1);
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        [*&v5[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter] disconnectCall:v10 withReason:2];
      }
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, &static Logger.conversationControls);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1BBC58000, v12, v13, "Hold Assist: The user has confirmed they want stop hold assist and take the new call.", v14, 2u);
        MEMORY[0x1BFB23DF0](v14, -1, -1);
      }

      [v5 acceptCallButtonTappedWithIgnoresSmartHoldingSession_];
    }

    *&v5[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_confirmStopWaitOnHoldAlert] = 0;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t ConversationControlsManager.invalidateCallWaitingSystemApertureAssertionIfNeeded(reason:)(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4B8))();
  if (result)
  {
    v7 = v6;
    ConversationControlsManager.wantsCallWaitingInSystemAperture.getter();
    if (v8)
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 80))(a1, a2, ObjectType, v7);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsManager.controllerFocusCallButtonTapped()()
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_293();
    v8 = (*(v7 + 832))();
    if (v8)
    {
      v9 = v8;
      GameControllerManager.focus(hasKeyboardFocus:)(0);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ConversationControlsManager.rejectCallButtonTapped()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_146();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_12_3();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_9_37();
  v10(v9);
  if (v6)
  {
    OUTLINED_FUNCTION_407(0x6A6572206C6C6163, 0x6365u);
    if ([*&v2[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags] callScreeningEnabledM3])
    {
      type metadata accessor for TaskPriority();
      v11 = OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_379(v11, v12, v13, v14);
      v15 = v2;
      static MainActor.shared.getter();
      OUTLINED_FUNCTION_37_0();
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_370(v16, MEMORY[0x1E69E85E0]);
      OUTLINED_FUNCTION_59();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }

    else
    {
      rejectCall #1 @Sendable () in ConversationControlsManager.rejectCallButtonTapped()(v2);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t rejectCall #1 @Sendable () in ConversationControlsManager.rejectCallButtonTapped()(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 208))(ObjectType, v4);
  swift_unknownObjectRelease();
  ConversationController.leaveConversation(reason:)();
  result = (*((*v2 & *a1) + 0x4E8))();
  if (result)
  {
    v8 = v7;
    v9 = swift_getObjectType();
    (*(v8 + 120))(v9, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationControlsManager.rejectCallButtonTapped()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.rejectCallButtonTapped(), v6, v5);
}

uint64_t closure #1 in ConversationControlsManager.rejectCallButtonTapped()()
{
  OUTLINED_FUNCTION_24_0();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.rejectCallButtonTapped(), v0, 0);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v0 + 200) = static AnsweringMachineComposer.shared;
  v1 = *(v0 + 192);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_45_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v1);
}

{
  OUTLINED_FUNCTION_48();
  if (v0[25])
  {
    v1 = v0[21];
    OUTLINED_FUNCTION_128_0();
    v3 = (*(v2 + 832))();
    if (v3)
    {
      v4 = v3;
      GameControllerManager.resignFocus()();
    }

    v5 = v0[25];
    OUTLINED_FUNCTION_128_0();
    (*(v6 + 672))();
    OUTLINED_FUNCTION_208_0();
    ObjectType = swift_getObjectType();
    (*(v1 + 56))(ObjectType, v1);
    swift_unknownObjectRelease();
    v8 = OUTLINED_FUNCTION_43_0();
    v9 = MEMORY[0x1BFB209B0](v8);
    v0[26] = v9;

    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = closure #1 in ConversationControlsManager.rejectCallButtonTapped();
    v10 = swift_continuation_init();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
    OUTLINED_FUNCTION_30_22(v11);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    v0[13] = &block_descriptor_584;
    v0[14] = v10;
    [v5 screenCallWithUUID:v9 manualScreening:0 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    rejectCall #1 @Sendable () in ConversationControlsManager.rejectCallButtonTapped()(v0[21]);
    OUTLINED_FUNCTION_13();

    return v12();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v1 = v0;
  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.rejectCallButtonTapped(), v4, v3);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 208);

  swift_unknownObjectRelease();
  v2 = *(v0 + 216);

  if ((v2 & 1) == 0)
  {
    rejectCall #1 @Sendable () in ConversationControlsManager.rejectCallButtonTapped()(*(v0 + 168));
  }

  OUTLINED_FUNCTION_13();

  return v3();
}

void ConversationControlsManager.wantsCallWaitingInSystemAperture.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v7 = __swift_project_value_buffer(v3, &static Logger.conversationControls);
  (*(v5 + 16))(v1, v7, v3);
  v8 = SBUIIsSystemApertureEnabled();
  v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  v10 = TUCallCenter.wantsCallWaiting.getter();
  v11 = [v9 cnk_hasTooManyCallsForCallWaitingBanner];
  if (Features.callManagerEnabled.getter())
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2A0))();
    v12 = OUTLINED_FUNCTION_351();
    v13 = (*(v10 + 560))(v12, v10);
    swift_unknownObjectRelease();
    if ([v9 currentAudioAndVideoCallCount] == 1)
    {
      hasIncomingAudioOrVideo = TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter();
      if ((v13 & 1) == 0)
      {
        LOBYTE(v10) = 0;
LABEL_9:
        if ([v9 currentAudioAndVideoCallCount] >= 1 && (TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter() & 1) != 0)
        {
          if (hasIncomingAudioOrVideo)
          {
LABEL_17:
            LOBYTE(v10) = 0;
LABEL_20:
            v18 = [v9 currentCallGroups];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup, 0x1E69D8A70);
            OUTLINED_FUNCTION_170();
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v19 = specialized Array.count.getter();

            if (v19 < 4)
            {
              v11 = 0;
            }

            else
            {
              v11 = TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter();
            }

            goto LABEL_23;
          }

          v15 = 1;
        }

        else
        {
          v16 = [v9 currentCallGroups];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup, 0x1E69D8A70);
          OUTLINED_FUNCTION_170();
          static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.count.getter();
          OUTLINED_FUNCTION_300();

          v15 = v16 == 2;
          if (hasIncomingAudioOrVideo)
          {
            LOBYTE(v10) = 0;
            goto LABEL_20;
          }
        }

        v17 = [v9 callWithStatus_];
        if (!v17)
        {
          if ((v13 & 1) == 0)
          {
            LOBYTE(v10) = v15;
          }

          goto LABEL_20;
        }

        goto LABEL_17;
      }
    }

    else
    {
      hasIncomingAudioOrVideo = 0;
      LOBYTE(v10) = 0;
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = [v9 currentCallGroups];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup, 0x1E69D8A70);
    OUTLINED_FUNCTION_170();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.count.getter();
    OUTLINED_FUNCTION_300();

    LOBYTE(v10) = v14 > 1;
    goto LABEL_9;
  }

LABEL_23:
  if (Features.shouldShowFullScreenCallWaiting.getter() || ((v8 ^ 1) & 1) != 0 || (v10 & 1) == 0 || (v11 & 1) != 0)
  {
    v21 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_10(v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67109632;
      *(v31 + 4) = v8;
      *(v31 + 8) = 1024;
      *(v31 + 10) = v10 & 1;
      *(v31 + 14) = 1024;
      *(v31 + 16) = v11 & 1;
      OUTLINED_FUNCTION_24_6();
      v28 = v31;
      v29 = 20;
      goto LABEL_32;
    }
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2A0))();
    OUTLINED_FUNCTION_175_0();
    ObjectType = swift_getObjectType();
    (v2[17])(ObjectType, v2);
    OUTLINED_FUNCTION_212();
    swift_unknownObjectRelease();
    if ((v2 & 1) == 0)
    {
      v32 = [v9 incomingCall];
      if (v32)
      {
      }

      else
      {
        v41 = [v9 incomingVideoCall];
        if (v41)
        {

          v21 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();
          if (!OUTLINED_FUNCTION_18_10(v42))
          {
            goto LABEL_41;
          }

          goto LABEL_29;
        }
      }

      v21 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_18_10(v33))
      {
        goto LABEL_41;
      }

      v34 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v34);
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_98_2();
      _os_log_impl(v35, v36, v37, v38, v39, v40);
      goto LABEL_33;
    }

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_10(v22))
    {
LABEL_29:
      v23 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v23);
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_98_2();
LABEL_32:
      _os_log_impl(v24, v25, v26, v27, v28, v29);
LABEL_33:
      OUTLINED_FUNCTION_18();
    }
  }

LABEL_41:

  v43 = OUTLINED_FUNCTION_45_1();
  v44(v43);
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.callAgainButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    ConversationController.callBack()();
  }

  else
  {
    __break(1u);
  }
}

void ConversationControlsManager.acceptScreenShare()()
{
  OUTLINED_FUNCTION_4_36();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x2C0))();
  if (v2)
  {
    v3 = v2;
    ConversationController.requestScreenSharingPicker(with:)(v0);
  }
}

Swift::Void __swiftcall ConversationControlsManager.declineScreenShare()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();
  if (v1)
  {
    v6 = v1;
    v2 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]);
    if (v2)
    {
      v3 = v2;
      v4 = [*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
      [v4 cancelOrDenyScreenShareRequest:v3 forConversation:v6];

      v5 = v4;
    }

    else
    {
      v5 = v6;
    }
  }
}

uint64_t closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity(), v7, v6);
}

uint64_t closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity()()
{
  v107 = v0;
  v2 = *(v0 + 144);

  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x620))(v3))
  {

    OUTLINED_FUNCTION_256_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v6 = *(v0 + 144);
    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
    v8 = v6;
    v9 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (OUTLINED_FUNCTION_317())
    {
      v10 = *(v0 + 144);
      OUTLINED_FUNCTION_42();
      v106 = OUTLINED_FUNCTION_38_3();
      *v8 = 136315138;
      *(v0 + 136) = v10;
      OUTLINED_FUNCTION_183();
      v11 = >> prefix<A>(_:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v106);
      OUTLINED_FUNCTION_420();
      *(v8 + 1) = v1;
      OUTLINED_FUNCTION_140();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_4_4();
    }

    v4 = MEMORY[0x1E69E7D40];
    ConversationControlsManager.removeIncomingScreenShareRequest()();
  }

  OUTLINED_FUNCTION_216();
  if (!(*((v19 & v18) + 0x4A0))())
  {
    OUTLINED_FUNCTION_256_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v79 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v79, &static Logger.conversationControls);
    v80 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_173_0();
    if (!os_log_type_enabled(v80, v81))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_256_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v20 = *(v0 + 144);
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, &static Logger.conversationControls);
  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 144);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_374();
    *v22 = 136315138;
    *(v0 + 128) = v25;
    OUTLINED_FUNCTION_183();
    v26 = >> prefix<A>(_:)();
    OUTLINED_FUNCTION_345(v26, v27, v28, v29, v30, v31, v32, v33, v101, v103);
    OUTLINED_FUNCTION_17_2();
    *(v22 + 1) = &stru_1BC4BA000;
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  v39 = *(v0 + 144);
  v40 = SBUIIsSystemApertureEnabled();
  v41 = *v4 & *v39;
  v42 = *(v0 + 176);
  v43 = *(v0 + 184);
  v44 = *(v0 + 144);
  v45 = *(v0 + 152);
  if (v40)
  {
    v105 = (*(v41 + 1520))();
    *(v0 + 64) = 26;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 7;
    v46 = (*((*v4 & *v44) + 0x2A0))();
    OUTLINED_FUNCTION_343(v46);
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_367();
    outlined init with copy of ConversationControlsType(v0 + 64, v43 + 8);
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_406();
    v47 = OUTLINED_FUNCTION_65_9();
    v48(v47);
    v49 = v44;
    static Date.now.getter();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_321_0();
    v51(v50, v103);
    outlined destroy of ConversationControlsType(v0 + 64);
    *(v43 + *(v42 + 40)) = v2;
    *(v43 + *(v42 + 48)) = 0;
    v52 = (*((*MEMORY[0x1E69E7D40] & *v105) + 0x120))(v43);

    OUTLINED_FUNCTION_40_17();
    if (v52)
    {
      v53 = *(v0 + 144);

      v54 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (OUTLINED_FUNCTION_317())
      {
        v55 = *(v0 + 144);
        OUTLINED_FUNCTION_30_1();
        OUTLINED_FUNCTION_16_8();
        OUTLINED_FUNCTION_374();
        *v53 = 136315394;
        *(v0 + 112) = v55;
        OUTLINED_FUNCTION_183();
        v56 = >> prefix<A>(_:)();
        OUTLINED_FUNCTION_345(v56, v57, v58, v59, v60, v61, v62, v63, v101, v103);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_347();
        v64 = >> prefix<A>(_:)();
        OUTLINED_FUNCTION_345(v64, v65, v66, v67, v68, v69, v70, v71, v102, v104);
        OUTLINED_FUNCTION_17_2();
        *(v53 + 14) = v45;
        OUTLINED_FUNCTION_140();
        _os_log_impl(v72, v73, v74, v75, v76, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_26();
        OUTLINED_FUNCTION_4_4();
      }

      v77 = **(v0 + 144);
      v78 = *MEMORY[0x1E69E7D40];
      goto LABEL_23;
    }
  }

  else
  {
    v82 = (*(v41 + 1544))();
    OUTLINED_FUNCTION_285_0(26);
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_367();
    outlined init with copy of ConversationControlsType(v0 + 16, v43 + 8);
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakAssign();
    v83 = OUTLINED_FUNCTION_65_9();
    v84(v83);
    v85 = v44;
    v86 = MEMORY[0x1E69E7D40];
    static Date.now.getter();
    v87 = OUTLINED_FUNCTION_321_0();
    v88(v87, v45);
    outlined destroy of ConversationControlsType(v0 + 16);
    *(v43 + *(v42 + 40)) = v2;
    *(v43 + *(v42 + 48)) = 0;
    v89 = (*((*v86 & *v82) + 0x110))(v43);

    OUTLINED_FUNCTION_40_17();
    if (v89)
    {
      OUTLINED_FUNCTION_216();
LABEL_23:
      v90 = *((v78 & v77) + 0x628);

      v90(v91);

      goto LABEL_27;
    }
  }

  v80 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_173_0();
  if (os_log_type_enabled(v80, v92))
  {
LABEL_25:
    v93 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v93);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v94, v95, v96, v97, v98, 2u);
    OUTLINED_FUNCTION_26();
  }

LABEL_26:

LABEL_27:

  OUTLINED_FUNCTION_13();

  return v99();
}

Swift::Void __swiftcall ConversationControlsManager.acceptPodcastRecording()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  ConversationControlsManager.removePodcastRecordingConsentRequest()();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v4) + 0x980))(&v32);
  if (v33)
  {
    outlined init with take of TapInteractionHandler(&v32, v34);
    v5 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v6 = OUTLINED_FUNCTION_40_2();
    v7(v6);
    if (v32 == 13)
    {
      v8 = v35;
      v9 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      OUTLINED_FUNCTION_5_6();
      specialized ConversationControlsManager.presentActivity(activity:completion:)(v10, v11, v12, v1, v8, v9);
      v13 = [*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) currentAudioAndVideoCalls];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Array.count.getter())
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v14 & 0xC000000000000001) == 0, v14);
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFB22010](0, v14);
        }

        else
        {
          v15 = *(v14 + 32);
        }

        v16 = v15;

        type metadata accessor for TaskPriority();
        v17 = OUTLINED_FUNCTION_2_10();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
        OUTLINED_FUNCTION_20();
        v21 = swift_allocObject();
        OUTLINED_FUNCTION_275(v21);
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();
        v22 = v16;
        OUTLINED_FUNCTION_332();

        v23 = static MainActor.shared.getter();
        OUTLINED_FUNCTION_109();
        v24 = swift_allocObject();
        v25 = MEMORY[0x1E69E85E0];
        v24[2] = v23;
        v24[3] = v25;
        v24[4] = v1;
        v24[5] = v5;

        OUTLINED_FUNCTION_59();
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    outlined destroy of CallControlsService?(&v32, &_s15ConversationKit8Activity_pSgMd, &_s15ConversationKit8Activity_pSgMR);
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v26 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v26, &static Logger.conversationControls);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_25(v28))
  {
    v29 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v29);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v30, v31, "Failed to accept recording request.");
    OUTLINED_FUNCTION_26();
  }
}

uint64_t ConversationControlsManager.removePodcastRecordingConsentRequest()()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    if ((*((*v6 & *v2) + 0x638))())
    {
      type metadata accessor for HUDActivity(0);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v20);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    type metadata accessor for ConversationControlsManager(0);
    v15 = >> prefix<A>(_:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Ending podcastRecordingConsentRequestActivity activity %s %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  else
  {
  }

  v18 = (*((*v6 & *v2) + 0x638))(v12, v13);
  if (v18)
  {
    (*(*v18 + 304))(v18);
  }

  return (*((*v6 & *v2) + 0x640))(0);
}

uint64_t closure #1 in ConversationControlsManager.acceptPodcastRecording()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.acceptPodcastRecording(), v7, v6);
}

uint64_t closure #1 in ConversationControlsManager.acceptPodcastRecording()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8AB0]) initWithCall:v0[21] mode:1 isInitiatedLocally:0];
  v0[26] = v1;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
    v0[27] = v4;
    v4;

    v0[2] = v0;
    v5 = OUTLINED_FUNCTION_344();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    OUTLINED_FUNCTION_30_22(v6);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_193();
    v0[13] = v7;
    v0[14] = v5;
    OUTLINED_FUNCTION_289();
    [v8 v9];
    OUTLINED_FUNCTION_319();

    return MEMORY[0x1EEE6DEC8](v10);
  }

  else
  {

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_319();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 224) = v4;
  v5 = v3[25];
  v6 = v3[24];
  if (v4)
  {
    v7 = closure #1 in ConversationControlsManager.acceptPodcastRecording();
  }

  else
  {
    v7 = closure #1 in ConversationControlsManager.acceptPodcastRecording();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  OUTLINED_FUNCTION_13();

  return v3();
}

{
  OUTLINED_FUNCTION_44();
  v1 = v0[27];
  v2 = v0[26];

  swift_willThrow();

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = OUTLINED_FUNCTION_163(v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v8);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_13();

  return v14();
}