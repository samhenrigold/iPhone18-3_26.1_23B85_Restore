void ConversationController.remoteVideoClient(_:remoteScreenAttributesDidChange:)()
{
  OUTLINED_FUNCTION_29();
  v35 = v0;
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v7 = 7104878;
  v34 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_194();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BAA20;
  if (v4)
  {
    v36[0] = v4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
    v9 = v4;
    OUTLINED_FUNCTION_338();
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  v13 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 64) = v14;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  if (v2)
  {
    v36[0] = v2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for VideoAttributes, 0x1E69865E8);
    v15 = v2;
    OUTLINED_FUNCTION_338();
    v7 = String.init<A>(reflecting:)();
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 72) = v7;
  *(v8 + 80) = v16;
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Remote screen attributes changed for video: %@, screenAttributes: %@", 68, 2, &dword_1BBC58000, v34, v17, v8);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v18 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v19 = swift_allocObject();
  *(v19 + 16) = v35;
  v36[4] = partial apply for closure #1 in ConversationController.remoteVideoClient(_:remoteScreenAttributesDidChange:);
  v36[5] = v19;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v36[2] = v20;
  v36[3] = &block_descriptor_232;
  v21 = _Block_copy(v36);
  v22 = v35;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v23, v24);
  v25 = OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v27, v28, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_78_8();
  OUTLINED_FUNCTION_260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v29);
  _Block_release(v21);

  v30 = OUTLINED_FUNCTION_15_44();
  v31(v30);
  v32 = OUTLINED_FUNCTION_20_38();
  v33(v32);

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.remoteVideoClient(_:remoteScreenAttributesDidChange:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v83[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v83[-v6];
  v8 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v83[-v20];
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    v88 = v12;
    v22 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    v91 = v22;
    _s15ConversationKit11ParticipantVWOcTm_17(a1 + v22, v21);
    Participant.videoInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_18(v21, type metadata accessor for Participant);
    if (v108 == 0.0)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v32 = static OS_os_log.conversationKit;
      v33 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(a1 + v91, v4);
      v35 = type metadata accessor for Participant.State(0);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v35);
      specialized >> prefix<A>(_:)();
      v37 = v36;
      v39 = v38;
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v34 + 32) = v37;
      *(v34 + 40) = v39;
      os_log(_:dso:log:type:_:)("No video info for local participant when remote screen attributes changed. State: %@", 84, 2, &dword_1BBC58000, v32, v33, v34);
    }

    else
    {
      v85 = v18;
      v90 = v108;
      v87 = v15;
      v89 = v111;
      v23 = v112;
      v24 = a1;
      v25 = v113;
      v26 = v114;
      v27 = v115;
      v28 = v116;
      v106 = v109;
      v107 = v110;
      v105 = v115;
      v86 = v24;
      ConversationController.remoteOneToOneParticipant.getter();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        v93 = v90;
        v94 = v109;
        v95 = v110;
        v96 = v89;
        v97 = v23;
        v98 = v25;
        v99 = v26;
        v100 = v27;
        v101 = v28;
        outlined destroy of Participant.VideoInfo(&v93);
        outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_24:
        memset(__dst, 0, 40);
LABEL_25:
        outlined destroy of CallControlsService?(__dst, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v63 = static OS_os_log.conversationKit;
        v64 = static os_log_type_t.error.getter();
        os_log(_:dso:log:type:_:)("Cannot find remote participant's video provider, ignoring update", 64, 2, &dword_1BBC58000, v63, v64, MEMORY[0x1E69E7CC0]);
        return;
      }

      v40 = v89;
      v84 = v28;
      Participant.videoInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_18(v7, type metadata accessor for Participant);
      if (!v117[0])
      {
        v93 = v90;
        v94 = v109;
        v95 = v110;
        v96 = v40;
        v97 = v23;
        v98 = v25;
        v99 = v26;
        v100 = v27;
        v101 = v84;
        outlined destroy of Participant.VideoInfo(&v93);
        goto LABEL_24;
      }

      specialized Dictionary.subscript.getter();
      outlined destroy of CallControlsService?(v117, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      if (!*(&__dst[1] + 1))
      {
        v93 = v90;
        v94 = v109;
        v95 = v110;
        v96 = v40;
        v97 = v23;
        v98 = v25;
        v99 = v26;
        v100 = v27;
        v101 = v84;
        outlined destroy of Participant.VideoInfo(&v93);
        goto LABEL_25;
      }

      outlined init with take of TapInteractionHandler(__dst, v104);
      v41 = v86;
      v42 = v86 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
      swift_beginAccess();
      v43 = *(v42 + 8);
      outlined init with copy of CallCenterProvider(v104, v103);
      v44 = ConversationController.isOneToOneModeEnabled.getter();
      v45 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
      swift_beginAccess();
      v46 = *(v41 + v45);
      if (*(v42 + 8) == 1)
      {
        v42 = v41 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
        swift_beginAccess();
      }

      v47 = v91;
      v48 = v85;
      v49 = *v42;
      _s15ConversationKit11ParticipantVWOcTm_17(v41 + v91, v85);
      Participant.aspectRatio.getter(v118);
      _s15ConversationKit11ParticipantVWOhTm_18(v48, type metadata accessor for Participant);
      if (v44)
      {
        static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(v103, v49, v46, v118, (v43 ^ 1) & 1, &v93);
        v51 = v93;
        v50 = *&v94;
        LODWORD(v52) = BYTE8(v94);
        v54 = *(&v95 + 1);
        v53 = *&v95;
        v55 = v96;
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        __swift_project_value_buffer(v56, static Logger.conversationKit);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v57, v58))
        {
          LODWORD(v91) = v55;
          v59 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *&__dst[0] = v85;
          v60 = v59;
          *v59 = 136315138;
          LODWORD(v89) = v52;
          if (v52)
          {
            v61 = 0xE300000000000000;
            v62 = 7104878;
          }

          else
          {
            v93 = v51;
            *&v94 = v50;
            type metadata accessor for CGSize(0);
            v62 = String.init<A>(reflecting:)();
            v61 = v68;
          }

          v67 = v84;
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, __dst);

          v52 = v60;
          *(v60 + 1) = v69;
          _os_log_impl(&dword_1BBC58000, v57, v58, "Updating the local video aspect ratio to %s", v60, 0xCu);
          v70 = v85;
          __swift_destroy_boxed_opaque_existential_1(v85);
          MEMORY[0x1BFB23DF0](v70, -1, -1);
          MEMORY[0x1BFB23DF0](v52, -1, -1);

          __swift_destroy_boxed_opaque_existential_1(v103);
          LOBYTE(v52) = v89;
          v55 = v91;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v103);
          v67 = v84;
        }

        v66 = 0.0;
        if ((v52 & 1) != 0 || v51 == v50)
        {
          v65 = 1;
          v50 = 0.0;
          v53 = 0.0;
          v54 = 0.0;
        }

        else
        {
          v65 = 0;
          if (v55)
          {
            v53 = v50;
            v54 = v51;
          }

          v66 = v51;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v103);
        v65 = 1;
        v66 = 0.0;
        v50 = 0.0;
        v53 = 0.0;
        v54 = 0.0;
        v67 = v84;
      }

      v105 = v65;
      v71 = v88;
      _s15ConversationKit11ParticipantVWOcTm_17(v41 + v47, v88);
      ConversationController.conversationIsAVLess.getter();
      *v102 = v90;
      *&v102[1] = v106;
      *&v102[3] = v107;
      *&v102[5] = v66;
      *&v102[6] = v50;
      *&v102[7] = v53;
      *&v102[8] = v54;
      LOBYTE(v102[9]) = v105;
      *(&v102[9] + 1) = v67;
      memcpy(__dst, v102, 0x4BuLL);
      v93 = 0.0;
      v94 = 0uLL;
      *&v95 = 1;
      bzero(&v95 + 8, 0xB1uLL);
      v72 = v92;
      _s15ConversationKit11ParticipantVWOcTm_17(v41 + v47, v92);
      v73 = Participant.captionInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_18(v72, type metadata accessor for Participant);
      Participant.copresenceInfo.getter(v119);
      v74 = v87;
      Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
      outlined destroy of CallControlsService?(v119, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
      outlined destroy of Participant.VideoInfo(v102);
      outlined consume of Participant.CaptionInfo?(v73);
      outlined destroy of CallControlsService?(&v93, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      _s15ConversationKit11ParticipantVWOhTm_18(v71, type metadata accessor for Participant);
      swift_beginAccess();
      _s15ConversationKit11ParticipantVWOdTm_0(v74, v41 + v47);
      swift_endAccess();
      v75 = v41 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant;
      swift_beginAccess();
      v76 = v47;
      v77 = *v75;
      if (*v75)
      {
        v78 = *(v75 + 8);
        swift_endAccess();
        _s15ConversationKit11ParticipantVWOcTm_17(v41 + v76, v74);
        v79 = (v41 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
        swift_beginAccess();
        v80 = *v79;
        v81 = v79[1];
        v82 = *(v79 + 16);

        v77(v74, v80, v81, v82);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v77, v78);
        _s15ConversationKit11ParticipantVWOhTm_18(v74, type metadata accessor for Participant);
        __swift_destroy_boxed_opaque_existential_1(v104);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v104);
        swift_endAccess();
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.conversationKit;
    v30 = static os_log_type_t.default.getter();
    v31 = MEMORY[0x1E69E7CC0];

    os_log(_:dso:log:type:_:)("Remote screen attributes changed while oneToOneModeEnabled=false, ignoring update", 81, 2, &dword_1BBC58000, v29, v30, v31);
  }
}

uint64_t closure #1 in ConversationController.removeParticipant(_:at:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_46_4();
  type metadata accessor for Participant(v2);
  return static UUID.== infix(_:_:)() & 1;
}

void closure #1 in ConversationController.scheduleResetVideoInfo(for:after:)(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v115 - v4;
  v6 = type metadata accessor for Participant(0);
  v125 = *(v6 - 8);
  v126 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v124 = v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v115 - v9;
  v11 = type metadata accessor for UUID();
  v128 = *(v11 - 8);
  v129 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v127 = v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v115 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v130 = v115 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v122 = v10;
    swift_beginAccess();
    v121 = a2;
    specialized Dictionary.subscript.getter();
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {
      outlined destroy of CallControlsService?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      swift_endAccess();

      return;
    }

    v118 = v5;
    v123 = v26;
    v27 = v130;
    (*(v20 + 32))(v130, v18, v19);
    swift_endAccess();
    Date.init()();
    v28 = static Date.< infix(_:_:)();
    v31 = *(v20 + 8);
    v29 = v20 + 8;
    v30 = v31;
    (v31)(v22, v19);
    if ((v28 & 1) == 0)
    {
      (v30)(v27, v19);
      goto LABEL_9;
    }

    v119 = v29;
    v120 = v30;
    v32 = v127;
    v33 = v128;
    v34 = v121;
    v116 = *(v128 + 16);
    v116(v127, v121, v129);
    v117 = v19;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v19);
    v35 = v123;
    swift_beginAccess();
    specialized Dictionary.subscript.setter();
    swift_endAccess();
    v36 = ConversationController.indexOfRemoteParticipant(with:)(v34);
    v38 = v37;
    if (v37)
    {
      v39 = v35 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      swift_beginAccess();
      v40 = v129;
      v116(v32, v39 + *(v126 + 20), v129);
      v41 = static UUID.== infix(_:_:)();
      v33[1](v32, v40);
      v42 = v122;
      v33 = v120;
      if ((v41 & 1) == 0)
      {
        (v120)(v130, v117);
LABEL_9:

        return;
      }

LABEL_13:
      _s15ConversationKit11ParticipantVWOcTm_17(v39, v42);
      Participant.videoInfo.getter();
      if (!v147)
      {
        (v33)(v130, v117);

        v49 = v42;
LABEL_47:
        _s15ConversationKit11ParticipantVWOhTm_18(v49, type metadata accessor for Participant);
        return;
      }

      LODWORD(v128) = v38;
      v121 = v36;
      v129 = v147;
      LOBYTE(v38) = v148;
      v45 = v151;
      LOBYTE(v36) = v152;
      v46 = v42;
      v47 = v153;
      v145 = v149;
      v146 = v150;
      v142 = v154;
      v143 = v155;
      v144[0] = *v156;
      *(v144 + 9) = *&v156[9];
      if (Participant.avInfo.getter() == 2)
      {
        (v33)(v130, v117);

        _s15ConversationKit11ParticipantVWOhTm_18(v46, type metadata accessor for Participant);
        v140[0] = v142;
        v133 = v129;
        v134 = v38;
        v135 = v145;
        v136 = v146;
        v137 = v45;
        v138 = v36;
        v139 = v47;
        v140[1] = v143;
        v141[0] = v144[0];
        *(v141 + 9) = *(v144 + 9);
LABEL_35:
        outlined destroy of Participant.VideoInfo(&v133);
        return;
      }

      v116 = v48;
      if (v45)
      {
        v50 = 0;
      }

      else
      {
        v50 = v45;
      }

      LODWORD(v127) = v50;
      if (v47)
      {
        v51 = 0;
      }

      else
      {
        v51 = v47;
      }

      v52 = v47 | v45;
      v53 = v130;
      if (*(v46 + *(v126 + 28)))
      {
        v42 = v129;
        if (v52)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v54 = &v123[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
        swift_beginAccess();
        v55 = *(v54 + 3);
        v56 = *(v54 + 4);
        v57 = __swift_project_boxed_opaque_existential_1(v54, v55);
        v115[1] = v115;
        v58 = *(v55 - 8);
        v59 = MEMORY[0x1EEE9AC00](v57);
        v61 = v115 - v60;
        (*(v58 + 16))(v115 - v60, v59);
        (*(v56 + 32))(&v133, v55, v56);
        (*(v58 + 8))(v61, v55);
        v42 = v129;
        if ((v38 & 1) == 0)
        {
          v62 = *(v140 + 6);
          v63 = *(v140 + 14);
          __swift_project_boxed_opaque_existential_1(&v133, *(v140 + 6));
          v64 = (*(v63 + 24))(v62, v63);
          if (v64)
          {
            LOBYTE(v38) = 1;
          }

          v52 |= v64;
        }

        v65 = closure #1 in closure #1 in ConversationController.scheduleResetVideoInfo(for:after:)(&v133);
        v66 = v65 | ~v36;
        if (!v65 && (v36 & 1) != 0)
        {
          LOBYTE(v36) = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(&v133);
        if (v66 & 1) == 0 || (v46 = v122, v53 = v130, (v52))
        {
LABEL_36:
          v165 = v154;
          v166 = v155;
          v167[0] = *v156;
          *(v167 + 9) = *&v156[9];
          v158 = v42;
          v159 = v38;
          v160 = v149;
          v161 = v150;
          v162 = v127;
          v163 = v36;
          LODWORD(v129) = v51;
          v164 = v51;
          Participant.screenInfo.getter();
          v67 = Participant.captionInfo.getter();
          Participant.copresenceInfo.getter(v157);
          v68 = v124;
          Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
          outlined destroy of CallControlsService?(v157, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
          outlined consume of Participant.CaptionInfo?(v67);
          outlined destroy of CallControlsService?(&v133, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
          if (v128)
          {
            v69 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
            v33 = v123;
            swift_beginAccess();
            outlined assign with copy of Participant.State(v68, v33 + v69);
            swift_endAccess();
            v35 = v132;
            if (one-time initialization token for conversationKit == -1)
            {
LABEL_38:
              v70 = static OS_os_log.conversationKit;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v71 = swift_allocObject();
              *(v71 + 16) = xmmword_1BC4BAA20;
              *(&v132[2] + 2) = v142;
              v72 = v142;
              v73 = v143;
              *(v35 + 34) = v143;
              *(v35 + 50) = v144[0];
              *(v35 + 59) = *(v144 + 9);
              *(v35 + 98) = v72;
              *(&v132[1] + 1) = v145;
              *(&v132[1] + 5) = v146;
              v132[0] = v42;
              LOBYTE(v132[1]) = v38;
              v74 = v127;
              HIBYTE(v132[1]) = v127;
              LOBYTE(v132[2]) = v36;
              v75 = v129;
              BYTE1(v132[2]) = v129;
              v133 = v42;
              v134 = v38;
              *(v35 + 89) = v145;
              *(v35 + 93) = v146;
              v137 = v74;
              v138 = v36;
              v139 = v75;
              *(v35 + 114) = v73;
              *(v35 + 130) = v144[0];
              *(v35 + 139) = *(v144 + 9);
              outlined init with copy of Participant.VideoInfo(v132, v131);
              outlined destroy of Participant.VideoInfo(&v133);
              memcpy(v131, v132, 0x4BuLL);
              v76 = String.init<A>(reflecting:)();
              v78 = v77;
              v79 = MEMORY[0x1E69E6158];
              *(v71 + 56) = MEMORY[0x1E69E6158];
              v80 = lazy protocol witness table accessor for type String and conformance String();
              *(v71 + 64) = v80;
              *(v71 + 32) = v76;
              *(v71 + 40) = v78;
              v81 = v118;
              _s15ConversationKit11ParticipantVWOcTm_17(v124, v118);
              __swift_storeEnumTagSinglePayload(v81, 0, 1, v126);
              specialized >> prefix<A>(_:)();
              v83 = v82;
              v85 = v84;
              outlined destroy of CallControlsService?(v81, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
              *(v71 + 96) = v79;
              *(v71 + 104) = v80;
              *(v71 + 72) = v83;
              *(v71 + 80) = v85;
              v86 = static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)("Cleared local participant's videoInfo state. %@ %@", 50, 2, &dword_1BBC58000, v70, v86, v71);

              v87 = v33 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant;
              swift_beginAccess();
              v88 = *v87;
              if (!*v87)
              {
                _s15ConversationKit11ParticipantVWOhTm_18(v124, type metadata accessor for Participant);
                (v120)(v130, v117);
                _s15ConversationKit11ParticipantVWOhTm_18(v122, type metadata accessor for Participant);
                swift_endAccess();

                return;
              }

              v89 = *(v87 + 1);
              swift_endAccess();
              v90 = v33 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
              swift_beginAccess();
              v91 = *v90;
              v92 = *(v90 + 1);
              v93 = v90[16];

              v94 = v124;
              v88(v124, v91, v92, v93);
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v88, v89);

              v95 = v94;
              goto LABEL_46;
            }

LABEL_52:
            swift_once();
            goto LABEL_38;
          }

          v96 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
          v97 = v123;
          swift_beginAccess();
          v98 = *&v97[v96];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v98 = v114;
          }

          v99 = v124;
          if ((v121 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v121 < v98[2])
          {
            outlined assign with copy of Participant.State(v124, v98 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v121);
            v100 = v98;
            v98 = v123;
            ConversationController.remoteParticipants.setter(v100, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v101);
            if (one-time initialization token for conversationKit == -1)
            {
LABEL_45:
              v128 = static OS_os_log.conversationKit;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v102 = swift_allocObject();
              *(v102 + 16) = xmmword_1BC4BAA20;
              *(&v132[2] + 2) = v142;
              *(&v132[4] + 2) = v143;
              *(&v132[6] + 2) = v144[0];
              *(&v132[7] + 3) = *(v144 + 9);
              v140[0] = v142;
              *(&v132[1] + 1) = v145;
              *(&v132[1] + 5) = v146;
              v132[0] = v42;
              LOBYTE(v132[1]) = v38;
              HIBYTE(v132[1]) = v127;
              LOBYTE(v132[2]) = v36;
              BYTE1(v132[2]) = v129;
              v133 = v42;
              v134 = v38;
              v135 = v145;
              v136 = v146;
              v137 = v127;
              v138 = v36;
              v139 = v129;
              v140[1] = v143;
              v141[0] = v144[0];
              *(v141 + 9) = *(v144 + 9);
              outlined init with copy of Participant.VideoInfo(v132, v131);
              outlined destroy of Participant.VideoInfo(&v133);
              memcpy(v131, v132, 0x4BuLL);
              v103 = String.init<A>(reflecting:)();
              v105 = v104;
              v106 = MEMORY[0x1E69E6158];
              *(v102 + 56) = MEMORY[0x1E69E6158];
              v107 = lazy protocol witness table accessor for type String and conformance String();
              *(v102 + 64) = v107;
              *(v102 + 32) = v103;
              *(v102 + 40) = v105;
              v108 = v118;
              _s15ConversationKit11ParticipantVWOcTm_17(v99, v118);
              __swift_storeEnumTagSinglePayload(v108, 0, 1, v126);
              specialized >> prefix<A>(_:)();
              v110 = v109;
              v112 = v111;
              outlined destroy of CallControlsService?(v108, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
              *(v102 + 96) = v106;
              *(v102 + 104) = v107;
              *(v102 + 72) = v110;
              *(v102 + 80) = v112;
              v113 = static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)("Cleared remote participant's videoInfo state. %@ %@", 51, 2, &dword_1BBC58000, v128, v113, v102);

              ConversationController.didUpdateVisibleParticipant(_:)(v99);

              v95 = v99;
LABEL_46:
              _s15ConversationKit11ParticipantVWOhTm_18(v95, type metadata accessor for Participant);
              (v120)(v130, v117);
              v49 = v122;
              goto LABEL_47;
            }

LABEL_55:
            swift_once();
            goto LABEL_45;
          }

          __break(1u);
          goto LABEL_55;
        }
      }

      (v120)(v53, v117);

      _s15ConversationKit11ParticipantVWOhTm_18(v46, type metadata accessor for Participant);
      v140[0] = v142;
      v133 = v42;
      v134 = v38;
      v135 = v145;
      v136 = v146;
      v137 = v127;
      v138 = v36;
      v139 = v51;
      v140[1] = v143;
      v141[0] = v144[0];
      *(v141 + 9) = *(v144 + 9);
      goto LABEL_35;
    }

    v43 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    v42 = v122;
    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v44 = *(v35 + v43);
      v33 = v120;
      if (v36 < *(v44 + 16))
      {
        v39 = v44 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v36;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_52;
  }
}

BOOL closure #1 in closure #1 in ConversationController.scheduleResetVideoInfo(for:after:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  *&v3 = COERCE_DOUBLE((*(v2 + 80))(v1, v2));
  if (v5)
  {
    return 0;
  }

  v6 = *&v3;
  v7 = v4;
  return (ConversationController.isOneToOneModeEnabled.getter() & 1) == 0 && v6 != v7;
}

uint64_t closure #1 in ConversationController.remoteParticipantIndex(for:useScreenProviders:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + *(type metadata accessor for Participant(0) + 28)))
  {
    return 0;
  }

  if (a2)
  {
    Participant.screenProvider.getter();
    v10 = v42[3];
    if (v42[3])
    {
      v11 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      v12 = (*(v11 + 8))(v10, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    else
    {
      outlined destroy of CallControlsService?(v42, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
      v12 = 0;
      v14 = 1;
    }

    v35 = [a3 streamToken];
    if ((v14 & 1) == 0)
    {
      return v12 == v35;
    }

    return 0;
  }

  _s15ConversationKit11ParticipantVWOcTm_17(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    _s15ConversationKit11ParticipantVWOhTm_18(v9, type metadata accessor for Participant.State);
    return 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
  v16 = *(v15 + 48);
  v17 = &v9[*(v15 + 64)];
  outlined consume of Participant.CopresenceInfo?(*v17, v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7]);
  memcpy(v42, &v9[v16], 0x150uLL);
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 8))(v9, v18);
  memcpy(v41, &v42[2], 0x4BuLL);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v41, v40, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  outlined destroy of Participant.MediaInfo(v42);
  v19 = v41[0];
  if (!v41[0])
  {
    return 0;
  }

  v43 = a3;
  v36 = v3;
  v20 = 1 << *(v41[0] + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v41[0] + 64);
  memcpy(v40, v41, 0x4BuLL);
  result = outlined init with copy of Participant.VideoInfo(v40, v37);
  v24 = 0;
  v25 = (v20 + 63) >> 6;
  while (v22)
  {
LABEL_15:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    outlined init with copy of CallCenterProvider(*(v19 + 56) + 40 * (v27 | (v24 << 6)), v37);
    v28 = v38;
    v29 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v30 = (*(v29 + 8))(v28, v29);
    LOBYTE(v29) = v31;
    v32 = [v43 streamToken];
    if (v29)
    {
      result = __swift_destroy_boxed_opaque_existential_1(v37);
    }

    else
    {
      v33 = v32;
      result = __swift_destroy_boxed_opaque_existential_1(v37);
      if (v30 == v33)
      {
        v34 = 1;
LABEL_26:

        outlined destroy of CallControlsService?(v41, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        return v34;
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      v34 = 0;
      goto LABEL_26;
    }

    v22 = *(v19 + 64 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void ConversationController.participantCaptionsProvider(_:didEnableCaptions:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    OUTLINED_FUNCTION_363_0();
    v5(a3 & 1);
    v6 = OUTLINED_FUNCTION_4_31();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
  }
}

void ConversationController.participantCaptionsProvider(_:didUpdateCaptions:)()
{
  OUTLINED_FUNCTION_29();
  v120 = v5;
  v121 = v6;
  v119 = v7;
  v123 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_82();
  v14 = type metadata accessor for Participant(v13);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v109 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A10ControllerC15ParticipantInfoOSgMd, &_s15ConversationKit0A10ControllerC15ParticipantInfoOSgMR);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_101();
  v124 = type metadata accessor for ConversationController.ParticipantInfo(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_287();
  if (!v28)
  {
    goto LABEL_23;
  }

  v109 = v16;
  v110 = v1;
  v122 = v0;
  v111 = v14;
  v112 = v27;
  v113 = v4;
  v115 = v26;
  v116 = v20;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v29 = static OS_os_log.conversationKit;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v30 = swift_allocObject();
  v117 = xmmword_1BC4BA940;
  *(v30 + 16) = xmmword_1BC4BA940;
  v31 = v123;
  v125 = v10;
  v126 = v123;
  swift_unknownObjectRetain();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ParticipantCaptionsProvider_pMd, &_s15ConversationKit27ParticipantCaptionsProvider_pMR);
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_508();
  *(v30 + 56) = MEMORY[0x1E69E6158];
  v32 = lazy protocol witness table accessor for type String and conformance String();
  *(v30 + 64) = v32;
  *(v30 + 32) = v1;
  *(v30 + 40) = v4;
  v33 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Did receive didUpdateCaptions notification for: %@", 50, 2, &dword_1BBC58000, v29, v33, v30, v109);

  v34 = OUTLINED_FUNCTION_112();
  ConversationController.participantInfo(for:)(v34, v35, v36);
  v37 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v37, v38, v124);
  if (v28)
  {
    outlined destroy of CallControlsService?(v3, &_s15ConversationKit0A10ControllerC15ParticipantInfoOSgMd, &_s15ConversationKit0A10ControllerC15ParticipantInfoOSgMR);
    v39 = static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_37_22();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_464(v40);
    v125 = v10;
    v126 = v31;
    swift_unknownObjectRetain();
    v41 = String.init<A>(reflecting:)();
    v40[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v40[4].n128_u64[0] = v32;
    v40[2].n128_u64[0] = v41;
    v40[2].n128_u64[1] = v42;
    os_log(_:dso:log:type:_:)("Unable to determine participant whose captions were updated %@", 62, 2, &dword_1BBC58000, v29, v39, v40);

LABEL_23:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v123 = v29;
  v43 = v115;
  _s15ConversationKit11ParticipantVWObTm_8(v3, v115);
  OUTLINED_FUNCTION_255_1();
  v44 = OUTLINED_FUNCTION_39_5();
  _s15ConversationKit11ParticipantVWOcTm_17(v44, v45);
  OUTLINED_FUNCTION_4_150();
  v46 = v116;
  _s15ConversationKit11ParticipantVWObTm_8(v2, v116);
  if (Participant.avInfo.getter() == 2)
  {
    v47 = static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_37_22();
    v48 = swift_allocObject();
    OUTLINED_FUNCTION_464(v48);
    OUTLINED_FUNCTION_1_186();
    v49 = v113;
    _s15ConversationKit11ParticipantVWOcTm_17(v46, v113);
    v50 = OUTLINED_FUNCTION_127_2();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v111);
    specialized >> prefix<A>(_:)();
    OUTLINED_FUNCTION_213();
    outlined destroy of CallControlsService?(v49, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v48[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v48[4].n128_u64[0] = v32;
    v48[2].n128_u64[0] = v2;
    v48[2].n128_u64[1] = v3;
    os_log(_:dso:log:type:_:)("Unable to determine A/V info for participant whose captions were updated: %@", 76, 2, &dword_1BBC58000, v123, v47, v48);

    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v46, v53);
    OUTLINED_FUNCTION_254_2();
    v55 = v43;
LABEL_22:
    _s15ConversationKit11ParticipantVWOhTm_18(v55, v54);
    goto LABEL_23;
  }

  Participant.videoInfo.getter();
  Participant.screenInfo.getter();
  Participant.captionInfo.getter();
  OUTLINED_FUNCTION_18_8();
  Participant.CaptionInfo.with(history:)();
  OUTLINED_FUNCTION_80_0();
  v56 = OUTLINED_FUNCTION_15_14();
  outlined consume of Participant.CaptionInfo?(v56);
  Participant.copresenceInfo.getter(v128);
  v57 = v110;
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v128, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  outlined destroy of CallControlsService?(&v127, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);

  v58 = v115;
  swift_unknownObjectRelease();
  outlined destroy of CallControlsService?(&v125, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  OUTLINED_FUNCTION_255_1();
  v59 = v112;
  _s15ConversationKit11ParticipantVWOcTm_17(v58, v112);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v88 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    v89 = v122;
    OUTLINED_FUNCTION_30_2(v122 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant, &v125);
    OUTLINED_FUNCTION_42_31();
    outlined assign with copy of Participant.State(v57, v89 + v88);
    swift_endAccess();
    v90 = (v89 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v91 = *v90;
    if (*v90)
    {
      OUTLINED_FUNCTION_363_0();
      v91(v57);
      v92 = OUTLINED_FUNCTION_91_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v92, v93);
    }

    OUTLINED_FUNCTION_37_22();
    v94 = swift_allocObject();
    OUTLINED_FUNCTION_464(v94);
    OUTLINED_FUNCTION_1_186();
    v95 = v113;
    _s15ConversationKit11ParticipantVWOcTm_17(v57, v113);
    v96 = OUTLINED_FUNCTION_127_2();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v111);
    specialized >> prefix<A>(_:)();
    v99 = v57;
    v101 = v100;
    v103 = v102;
    outlined destroy of CallControlsService?(v95, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v94[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v94[4].n128_u64[0] = v32;
    v94[2].n128_u64[0] = v101;
    v94[2].n128_u64[1] = v103;
    v104 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updated local participant's captions property. %@", 49, 2, &dword_1BBC58000, v123, v104, v94);

    OUTLINED_FUNCTION_90_8();
    _s15ConversationKit11ParticipantVWOhTm_18(v99, v105);
    v106 = OUTLINED_FUNCTION_170_0();
    _s15ConversationKit11ParticipantVWOhTm_18(v106, v107);
    v72 = type metadata accessor for ConversationController.ParticipantInfo;
    v87 = v58;
    v86 = type metadata accessor for ConversationController.ParticipantInfo;
    goto LABEL_21;
  }

  v60 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV_SitMd, &_s15ConversationKit11ParticipantV_SitMR) + 48));
  v61 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  v62 = v122;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v63 = *(v62 + v61);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v63 = v108;
  }

  v64 = MEMORY[0x1E69E6158];
  if ((v60 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v60 < *(v63 + 16))
  {
    OUTLINED_FUNCTION_40_3();
    OUTLINED_FUNCTION_42_31();
    v65 = v110;
    outlined assign with copy of Participant.State(v110, v66);
    ConversationController.remoteParticipants.setter(v63, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v67);
    v68 = (v62 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v69 = *v68;
    if (*v68)
    {
      OUTLINED_FUNCTION_363_0();
      v69(v65);
      v70 = OUTLINED_FUNCTION_91_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v70, v71);
    }

    OUTLINED_FUNCTION_37_22();
    v72 = swift_allocObject();
    OUTLINED_FUNCTION_464(v72);
    OUTLINED_FUNCTION_1_186();
    v73 = v113;
    _s15ConversationKit11ParticipantVWOcTm_17(v65, v113);
    v74 = OUTLINED_FUNCTION_127_2();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v111);
    specialized >> prefix<A>(_:)();
    v77 = v65;
    v79 = v78;
    v81 = v80;
    outlined destroy of CallControlsService?(v73, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v72[3].n128_u64[1] = v64;
    v72[4].n128_u64[0] = v32;
    v72[2].n128_u64[0] = v79;
    v72[2].n128_u64[1] = v81;
    v82 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updated remote participant's captions property. %@", 50, 2, &dword_1BBC58000, v123, v82, v72);

    OUTLINED_FUNCTION_90_8();
    _s15ConversationKit11ParticipantVWOhTm_18(v77, v83);
    v84 = OUTLINED_FUNCTION_170_0();
    _s15ConversationKit11ParticipantVWOhTm_18(v84, v85);
    OUTLINED_FUNCTION_254_2();
    v87 = v58;
LABEL_21:
    _s15ConversationKit11ParticipantVWOhTm_18(v87, v86);
    v55 = v112;
    v54 = v72;
    goto LABEL_22;
  }

  __break(1u);
}

void ConversationController.participantInfo(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Participant(0);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v12 = (*(a2 + 8))(ObjectType, a2);
  v14 = v13;
  v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_17(v3 + v15, v10);
  v16 = Participant.captionsProvider.getter();
  v18 = v17;
  _s15ConversationKit11ParticipantVWOhTm_18(v10, type metadata accessor for Participant);
  if (!v16 || (v19 = swift_getObjectType(), v20 = (*(v18 + 8))(v19, v18), v22 = v21, swift_unknownObjectRelease(), (v22 & 1) != 0))
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    _s15ConversationKit11ParticipantVWOcTm_17(v4 + v15, a3);
    v28 = type metadata accessor for ConversationController.ParticipantInfo(0);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v26 = a3;
    v27 = 0;
    v25 = v28;
    goto LABEL_13;
  }

  if ((v14 & 1) == 0 && v20 == v12)
  {
    goto LABEL_8;
  }

LABEL_4:
  ConversationController.remoteParticipantIndex(for:)(a1, a2);
  if (v24)
  {
    v25 = type metadata accessor for ConversationController.ParticipantInfo(0);
    v26 = a3;
    v27 = 1;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
    return;
  }

  v29 = v23;
  v30 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v31 = *(v4 + v30);
    if (v29 < *(v31 + 16))
    {
      v32 = v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v29;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV_SitMd, &_s15ConversationKit11ParticipantV_SitMR) + 48);
      _s15ConversationKit11ParticipantVWOcTm_17(v32, a3);
      *(a3 + v33) = v29;
      v28 = type metadata accessor for ConversationController.ParticipantInfo(0);
      goto LABEL_12;
    }
  }

  __break(1u);
}

void ConversationController.remoteParticipantIndex(for:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Participant(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v36 = *(v12 + 16);
  if (v36)
  {
    v34 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v35 = v8;
    v29 = a2 + 8;
    v30 = a2;

    v13 = 0;
    v31 = v12;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        return;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v34 + *(v35 + 72) * v13, v10);
      if (!*&v10[*(v7 + 28)])
      {
        goto LABEL_11;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v10, v6);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v15 = *(v14 + 48);
      v16 = &v6[*(v14 + 64)];
      outlined consume of Participant.CopresenceInfo?(*v16, v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7]);
      memcpy(v37, &v6[v15], sizeof(v37));
      v17 = type metadata accessor for Date();
      (*(*(v17 - 8) + 8))(v6, v17);
      v18 = v37[39];
      v19 = v37[40];
      outlined copy of Participant.CaptionInfo?(v37[39], v37[40], v37[41]);
      outlined destroy of Participant.MediaInfo(v37);
      if (!v18)
      {
        goto LABEL_11;
      }

      v20 = v7;
      v21 = v4;

      ObjectType = swift_getObjectType();
      v32 = (*(v19 + 8))(ObjectType, v19);
      v24 = v23;
      v25 = swift_getObjectType();
      v26 = (*(v30 + 8))(v25);
      v28 = v27;
      swift_unknownObjectRelease();
      _s15ConversationKit11ParticipantVWOhTm_18(v10, type metadata accessor for Participant);
      if (v24)
      {
        v4 = v21;
        v7 = v20;
        v12 = v31;
        if (v28)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v4 = v21;
        v7 = v20;
        v12 = v31;
        if ((v28 & 1) == 0 && v32 == v26)
        {
LABEL_16:

          return;
        }
      }

LABEL_12:
      if (v36 == ++v13)
      {
        goto LABEL_16;
      }
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant.State);
LABEL_11:
    _s15ConversationKit11ParticipantVWOhTm_18(v10, type metadata accessor for Participant);
    goto LABEL_12;
  }
}

void ConversationController.handleCameraZoomBecameAvailable(_:)()
{
  OUTLINED_FUNCTION_11_97();
  v2 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.default.getter();
  v3 = OUTLINED_FUNCTION_1_5();
  os_log(_:dso:log:type:_:)(v3);
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *v0;
  if (*v0)
  {
    OUTLINED_FUNCTION_363_0();
    v4(v2 & 1);
    v5 = OUTLINED_FUNCTION_4_31();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  }

  OUTLINED_FUNCTION_10_84();
}

uint64_t @objc ConversationController.handleCameraZoomBecameAvailable(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v4;
  a4();

  v8 = OUTLINED_FUNCTION_162_4();
  return v9(v8);
}

uint64_t ConversationController.handlelocalCameraUIDDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  if (!Notification.userInfo.getter())
  {
    v25 = 0u;
    v26 = 0u;
    goto LABEL_10;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter();

  outlined destroy of AnyHashable(v24);
  if (!*(&v26 + 1))
  {
LABEL_10:
    outlined destroy of CallControlsService?(&v25, &_sypSgMd, &_sypSgMR);
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_375_0())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v3 = static OS_os_log.conversationKit;
    v4 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Received localCameraUIDDidChange notification", 45, 2, &dword_1BBC58000, v3, v4, MEMORY[0x1E69E7CC0]);
    v5 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {

      v7 = OUTLINED_FUNCTION_15_14();
      v6(v7);
      v8 = OUTLINED_FUNCTION_40_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
    }
  }

LABEL_11:
  v10 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_103_5(v10);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_58_9();
  v12 = OUTLINED_FUNCTION_74_10();
  v13(v12);
  OUTLINED_FUNCTION_260_4();
  v14 = OUTLINED_FUNCTION_62_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_15_14();
  v17(v16);
  v18 = v24[3];
  v19 = v24[4];
  OUTLINED_FUNCTION_113_5(v24);
  v20 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  (*(v19 + 48))(*(v2 + v20), v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v24);
  IsUsingIPadExternal = ConversationController.updateIsUsingIPadExternalCamera()();
  ConversationController.isUsingIPadExternalCamera.setter(IsUsingIPadExternal);
  v22 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  result = OUTLINED_FUNCTION_3_5(v22, v24);
  *v22 = 0;
  *(v22 + 8) = 1;
  return result;
}

void ConversationController.handleCameraListDidChange(_:)()
{
  IsUsingIPadExternal = ConversationController.updateIsUsingIPadExternalCamera()();
  ConversationController.isUsingIPadExternalCamera.setter(IsUsingIPadExternal);
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange;
  swift_beginAccess();
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 8);

    v3(v5);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3, v4);
  }
}

void ConversationController.handleSystemPreferredCameraChanged(_:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction;
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationController);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_17;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Ignoring change to systemPreferredCamera because there's no pending start camera action";
    goto LABEL_16;
  }

  v3 = [objc_opt_self() systemPreferredCamera];
  if (!v3)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationController);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_17;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Ignoring change to systemPreferredCamera because it's nil";
    goto LABEL_16;
  }

  ConversationController.didDeferStartCameraAction.setter(0);
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  swift_beginAccess();
  if ((*(v4 + 16) & 0x80000000) == 0)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationController);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_17;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Ignoring change to systemPreferredCamera due to broadcastingState";
LABEL_16:
    _os_log_impl(&dword_1BBC58000, v6, v7, v9, v8, 2u);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
LABEL_17:

    return;
  }

  v12 = *(v4 + 1);
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationController);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BBC58000, v14, v15, "Starting camera that was deferred due to systemPreferredCamera initialization", v16, 2u);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
  }

  v17 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  swift_beginAccess();
  v18 = v17[3];
  v19 = v17[4];
  v20 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v21 = *(v18 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v28[-v23];
  (*(v21 + 16))(&v28[-v23], v22);
  (*(v19 + 32))(v29, v18, v19);
  (*(v21 + 8))(v24, v18);
  v25 = v30;
  v26 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v27 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  swift_beginAccess();
  (*(v26 + 32))(v12, *(v1 + v27), 1, v25, v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
}

void ConversationController.handleAudioUplinkChange(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v27)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_375_0())
    {
      v4 = OUTLINED_FUNCTION_283_2(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
      v5 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v6 = *v5;
      swift_getObjectType();
      v7 = v30;
      swift_unknownObjectRetain();
      LOBYTE(v4) = specialized == infix(_:_:)(v7, v4, v6);

      swift_unknownObjectRelease();
      if (v4)
      {
        v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v25 = static OS_dispatch_queue.main.getter();
        OUTLINED_FUNCTION_20();
        v9 = swift_allocObject();
        OUTLINED_FUNCTION_278(v9);
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_24();
        v10 = swift_allocObject();
        *(v10 + 16) = v8;
        *(v10 + 24) = v7;
        v28 = partial apply for closure #1 in ConversationController.handleAudioUplinkChange(_:);
        v29 = v10;
        OUTLINED_FUNCTION_177_0();
        v26[1] = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v26[2] = v11;
        v27 = &block_descriptor_239;
        v12 = _Block_copy(v26);
        v13 = v7;
        OUTLINED_FUNCTION_344_0();

        static DispatchQoS.unspecified.getter();
        v26[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v14, v15);
        v16 = OUTLINED_FUNCTION_252();
        __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v18, v19, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        OUTLINED_FUNCTION_462();
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v20 = OUTLINED_FUNCTION_117();
        MEMORY[0x1BFB215C0](v20);
        _Block_release(v12);

        v21 = OUTLINED_FUNCTION_181();
        v22(v21);
        OUTLINED_FUNCTION_392();
        v23 = OUTLINED_FUNCTION_206();
        v24(v23);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v26, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleAudioUplinkChange(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    v6 = *v5;
    v7 = *(v5 + 16);
    if (v7 < 0)
    {
      v16 = *(v5 + 8);
      v8 = v6 & 0xFF00 | [a2 isUplinkMuted];
      v15 = v7 & 0xFFFFFF81;
      v14 = v16;
    }

    else
    {
      v8 = v6 & 0x100 | [a2 isUplinkMuted];
      v14 = 0;
      v15 = 0;
    }

    ConversationController.broadcastingState.setter(v8, v14, v15, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

void ConversationController.handleLocalSensitiveContentAnalysisChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v31 = v0;
  OUTLINED_FUNCTION_410_0();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  v33 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v32 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  v4 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.nudityDetectionEnabled.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v30 = static OS_dispatch_queue.main.getter();
    v10 = OUTLINED_FUNCTION_256_3();
    v11(v10);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v14 = v31;
    *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
    v34[4] = partial apply for closure #1 in ConversationController.handleLocalSensitiveContentAnalysisChanged(_:);
    v34[5] = v13;
    OUTLINED_FUNCTION_5_73();
    v34[1] = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v34[2] = v15;
    v34[3] = &block_descriptor_245;
    v16 = _Block_copy(v34);
    v17 = v14;

    static DispatchQoS.unspecified.getter();
    v34[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v18, v19);
    v20 = OUTLINED_FUNCTION_243();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v22, v23, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_109_7();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = OUTLINED_FUNCTION_117();
    v25 = v30;
    MEMORY[0x1BFB215C0](v24);
    _Block_release(v16);

    v26 = OUTLINED_FUNCTION_181();
    v27(v26);
    v28 = OUTLINED_FUNCTION_491();
    v29(v28);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.handleLocalSensitiveContentAnalysisChanged(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!Notification.userInfo.getter())
  {
    v13 = 0u;
    v14 = 0u;
    return outlined destroy of CallControlsService?(&v13, &_sypSgMd, &_sypSgMR);
  }

  v11[1] = 0xD000000000000032;
  v11[2] = 0x80000001BC520D80;
  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter();

  outlined destroy of AnyHashable(v12);
  if (!*(&v14 + 1))
  {
    return outlined destroy of CallControlsService?(&v13, &_sypSgMd, &_sypSgMR);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = v12[0];
    v8 = v12[1];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCSensitivityAnalysis, 0x1E697B670);
    v9 = static SCSensitivityAnalysis.decoded(from:)(v7, v8);
    v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_17(a2 + v10, v5);
    ConversationController.updateParticipant(for:withAnalysis:)();

    outlined consume of Data._Representation(v7, v8);
    return _s15ConversationKit11ParticipantVWOhTm_18(v5, type metadata accessor for Participant);
  }

  return result;
}

void ConversationController.handleCameraCinematicFramingAvailabilityChanged(_:)(uint64_t a1, void *a2, void *a3)
{
  v5 = v3;
  if (!Notification.userInfo.getter())
  {
    v12 = 0u;
    v13 = 0u;
    goto LABEL_7;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter();

  outlined destroy of AnyHashable(v11);
  if (!*(&v13 + 1))
  {
LABEL_7:
    outlined destroy of CallControlsService?(&v12, &_sypSgMd, &_sypSgMR);
    return;
  }

  if (OUTLINED_FUNCTION_375_0())
  {
    v6 = v11[0];
    v7 = (v5 + *a3);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {

      v8(v6);
      v9 = OUTLINED_FUNCTION_45_1();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
    }
  }
}

void ConversationController.handleLocalPreviewChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  v35 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  v5 = &v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_202_3(v6, v7);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_58_9();
  v9 = OUTLINED_FUNCTION_153_4();
  v10(v9);
  v11 = OUTLINED_FUNCTION_5_81();
  v12(v11);
  v13 = OUTLINED_FUNCTION_334();
  v14(v13);
  v15 = v37;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v16 = OUTLINED_FUNCTION_114_2();
  v17(v16);
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_250();
  __swift_destroy_boxed_opaque_existential_1(v36);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v5;
  *(v4 + 40) = v15;
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Local preview changed, isPreviewRunning=%@", 42, 2, &dword_1BBC58000, v35, v18, v4);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v19 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  v38 = partial apply for closure #1 in ConversationController.handleLocalPreviewChanged(_:);
  v39 = v20;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 1107296256;
  OUTLINED_FUNCTION_252_2();
  v36[2] = v21;
  v37 = &block_descriptor_251;
  v22 = _Block_copy(v36);
  v23 = v1;

  static DispatchQoS.unspecified.getter();
  v36[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v24, v25);
  v26 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v28, v29, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_462();
  OUTLINED_FUNCTION_124_1();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = OUTLINED_FUNCTION_166_4();
  MEMORY[0x1BFB215C0](v30);
  _Block_release(v22);

  OUTLINED_FUNCTION_392();
  v31 = OUTLINED_FUNCTION_45_1();
  v32(v31);
  v33 = OUTLINED_FUNCTION_20_38();
  v34(v33);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleLocalPreviewChanged(_:)(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 208);
  swift_unknownObjectRetain();
  LODWORD(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  if (v3 == 5 || (v6 = *(v2 + 8), v7 = swift_getObjectType(), v8 = *(v6 + 208), swift_unknownObjectRetain(), LODWORD(v6) = v8(v7, v6), swift_unknownObjectRelease(), v6 == 6))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.conversationKit;
    v10 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BC4BA940;
    v16 = *v2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:type:_:)("Trying to update UI in response to video preview changes, but not tracking active call: %@", 90, 2, &dword_1BBC58000, v9, v10, v11, v16);
  }

  else
  {
    v15 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v15, *(v15 + 8), *(v15 + 16), 2);
  }
}

void ConversationController.handleLocalVideoPreviewFirstFrameArrived(_:)()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  v21 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.default.getter();
  v3 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)(v4, v21);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v5 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v22[4] = partial apply for closure #1 in ConversationController.handleLocalVideoPreviewFirstFrameArrived(_:);
  v22[5] = v6;
  OUTLINED_FUNCTION_5_73();
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v22[2] = v7;
  v22[3] = &block_descriptor_257;
  v8 = _Block_copy(v22);
  v9 = v0;

  static DispatchQoS.unspecified.getter();
  v22[0] = v3;
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v10, v11);
  v12 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v14, v15, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_124_1();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = OUTLINED_FUNCTION_166_4();
  MEMORY[0x1BFB215C0](v16);
  _Block_release(v8);

  v17 = OUTLINED_FUNCTION_45_1();
  v18(v17);
  v19 = OUTLINED_FUNCTION_491();
  v20(v19);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleLocalVideoPreviewFirstFrameArrived(_:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v160 - v3;
  v173 = type metadata accessor for UUID();
  v5 = *(v173 - 1);
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Participant(0);
  v171 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v170 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v160 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v160 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v160 - v16;
  v18 = &a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant];
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_17(v18, v17);
  v19 = Participant.isActive.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
  if ((v19 & 1) == 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
LABEL_57:
      swift_once();
    }

    v53 = static OS_os_log.conversationKit;
    v54 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(v18, v4);
    v56 = type metadata accessor for Participant.State(0);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v56);
    specialized >> prefix<A>(_:)();
    v58 = v57;
    v60 = v59;
    outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
    *(v55 + 56) = MEMORY[0x1E69E6158];
    *(v55 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v55 + 32) = v58;
    *(v55 + 40) = v60;
    v61 = "Received first video frame for non-active local participant. State: %@";
    v62 = 70;
    goto LABEL_24;
  }

  _s15ConversationKit11ParticipantVWOcTm_17(v18, v14);
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
  if (!v182)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v53 = static OS_os_log.conversationKit;
    v54 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(v18, v4);
    v63 = type metadata accessor for Participant.State(0);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v63);
    specialized >> prefix<A>(_:)();
    v65 = v64;
    v67 = v66;
    outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantV5StateOSgMd, &_s15ConversationKit11ParticipantV5StateOSgMR);
    *(v55 + 56) = MEMORY[0x1E69E6158];
    *(v55 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v55 + 32) = v65;
    *(v55 + 40) = v67;
    v61 = "No video info for local participant who has received their first video frame. State: %@";
    v62 = 87;
LABEL_24:
    v68 = v53;
    v69 = v54;
    goto LABEL_29;
  }

  v164 = v11;
  v165 = v5;
  v166 = v182;
  HIDWORD(v167) = v183;
  LODWORD(v168) = v185;
  v181[0] = *v184;
  *(v181 + 15) = *&v184[15];
  v179 = v186;
  v180[0] = *v187;
  v169 = a1;
  v20 = &a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  *(v180 + 10) = *&v187[10];
  swift_beginAccess();
  v21 = *(v20 + 1);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 208);
  swift_unknownObjectRetain();
  LODWORD(v21) = v23(ObjectType, v21);
  v24 = swift_unknownObjectRelease();
  if (v21 == 5 || (v25 = *(v20 + 1), v26 = swift_getObjectType(), v27 = *(v25 + 208), swift_unknownObjectRetain(), LODWORD(v25) = v27(v26, v25), v24 = swift_unknownObjectRelease(), v25 == 6))
  {
    v28 = *((*MEMORY[0x1E69E7D40] & **&v169[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController]) + 0xF0);
    v29 = (v28)(v24);
    if (VideoMessageController.State.rawValue.getter(v29) == 0x7964616552746F6ELL && v30 == 0xE800000000000000)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v173 = v28;
    v174 = v166;
    LOBYTE(v175[0]) = BYTE4(v167);
    *(v175 + 1) = v181[0];
    v175[2] = *(v181 + 15);
    v176[0] = v168;
    *&v176[1] = v179;
    v177[0] = v180[0];
    *(v177 + 10) = *(v180 + 10);
    outlined destroy of Participant.VideoInfo(&v174);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v70 = static OS_os_log.conversationKit;
    v71 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1BC4BAA20;
    *v189 = *v20;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
    v72 = String.init<A>(reflecting:)();
    v74 = v73;
    v75 = MEMORY[0x1E69E6158];
    *(v55 + 56) = MEMORY[0x1E69E6158];
    v76 = lazy protocol witness table accessor for type String and conformance String();
    *(v55 + 64) = v76;
    *(v55 + 32) = v72;
    *(v55 + 40) = v74;
    v189[0] = v173();
    v77 = String.init<A>(reflecting:)();
    *(v55 + 96) = v75;
    *(v55 + 104) = v76;
    *(v55 + 72) = v77;
    *(v55 + 80) = v78;
    v61 = "Trying to update UI in response to video preview changes, but not tracking active call: %@ or video message state isn't ready: %@";
    v62 = 129;
    v68 = v70;
    v69 = v71;
LABEL_29:
    os_log(_:dso:log:type:_:)(v61, v62, 2, &dword_1BBC58000, v68, v69, v55);

    return;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame;
  v34 = v169;
  if (v169[OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame] & 1) != 0 || (v35 = &v169[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame], swift_beginAccess(), (v36 = *v35) != 0) && (v37 = *(v35 + 1), v38 = , v39 = v36(v38), outlined consume of (@escaping @callee_guaranteed () -> ())?(v36, v37), (v39))
  {
    v174 = v166;
    LOBYTE(v175[0]) = BYTE4(v167);
    *(v175 + 1) = v181[0];
    v175[2] = *(v181 + 15);
    v176[0] = v168;
    *&v176[1] = v179;
    v177[0] = v180[0];
    *(v177 + 10) = *(v180 + 10);
    outlined destroy of Participant.VideoInfo(&v174);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.conversationKit);
    v41 = v34;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v34;
      v46 = v44;
      *v44 = 67109376;
      v47 = 1;
      *(v44 + 4) = (v45[v33] & 1) == 0;
      *(v44 + 8) = 1024;
      v48 = v41 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame;
      swift_beginAccess();
      v49 = *v48;
      if (*v48)
      {
        v50 = *(v48 + 1);

        v52 = v49(v51);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v49, v50);
        v47 = (v52 & 1) == 0;
      }

      *(v46 + 10) = v47;

      _os_log_impl(&dword_1BBC58000, v42, v43, "Pausing on local video and clearing state,\n!self.pauseOnFirstFrame: %{BOOL}d &&\n!(self.shouldPauseOnFirstLocalVideoFrame?() ?? false : %{BOOL}d", v46, 0xEu);
      MEMORY[0x1BFB23DF0](v46, -1, -1);
    }

    else
    {

      v42 = v41;
    }

    ConversationController.pauseLocalVideoAndClearState()();
  }

  else
  {
    v168 = v7;
    if ((v167 & 0x100000000) == 0)
    {
      v79 = v165;
      v80 = v18 + *(v7 + 20);
      v82 = v172;
      v81 = v173;
      (*(v165 + 16))(v172, v80, v173);
      ConversationController.scheduleResetVideoInfo(for:after:)(v82, v83, v84, v85, v86, v87, v88, v89, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);
      v90 = v82;
      v7 = v168;
      (*(v79 + 8))(v90, v81);
    }

    v91 = &v34[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v92 = *(v91 + 3);
    v93 = *(v91 + 4);
    v161 = v91;
    v94 = __swift_project_boxed_opaque_existential_1(v91, v92);
    v95 = *(v92 - 8);
    v96 = MEMORY[0x1EEE9AC00](v94);
    v98 = &v160 - v97;
    (*(v95 + 16))(&v160 - v97, v96);
    (*(v93 + 32))(&v174, v92, v93);
    (*(v95 + 8))(v98, v92);
    v99 = v175[2];
    v100 = *v176;
    __swift_project_boxed_opaque_existential_1(&v174, v175[2]);
    LODWORD(v95) = (*(v100 + 8))(v99, v100);
    __swift_destroy_boxed_opaque_existential_1(&v174);
    v101 = v164;
    _s15ConversationKit11ParticipantVWOcTm_17(v18, v164);
    ConversationController.conversationIsAVLess.getter();
    HIDWORD(v162) = v95;
    LODWORD(v163) = v102;
    *&v189[9] = v181[0];
    v191 = v179;
    v178 = BYTE4(v167);
    *&v189[24] = *(v181 + 15);
    *v189 = v166;
    v189[8] = BYTE4(v167);
    v190 = v95;
    v192[0] = v180[0];
    *(v192 + 10) = *(v180 + 10);
    v174 = 0;
    v175[0] = 0;
    v175[1] = 0;
    v175[2] = 1;
    bzero(v176, 0xB1uLL);
    v103 = v170;
    _s15ConversationKit11ParticipantVWOcTm_17(v18, v170);
    v104 = Participant.captionInfo.getter();
    v4 = v105;
    _s15ConversationKit11ParticipantVWOhTm_18(v103, type metadata accessor for Participant);
    Participant.copresenceInfo.getter(v188);
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(v188, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    outlined consume of Participant.CaptionInfo?(v104);
    outlined destroy of CallControlsService?(&v174, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    v106 = v101;
    v107 = v169;
    _s15ConversationKit11ParticipantVWOhTm_18(v106, type metadata accessor for Participant);
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOdTm_0(v17, v18);
    swift_endAccess();
    v108 = v107 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    v164 = v108;
    v109 = *(v108 + 16);
    if (v109 < 0)
    {
      v110 = *v164;
      v170 = *(v164 + 1);
      v111 = *(v161 + 3);
      v112 = *(v161 + 4);
      v113 = __swift_project_boxed_opaque_existential_1(v161, v111);
      v163 = &v160;
      v114 = *(v111 - 8);
      v115 = MEMORY[0x1EEE9AC00](v113);
      v117 = &v160 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v114 + 16))(v117, v115);
      (*(v112 + 32))(&v174, v111, v112);
      (*(v114 + 8))(v117, v111);
      v118 = v175[2];
      v4 = *v176;
      __swift_project_boxed_opaque_existential_1(&v174, v175[2]);
      v119 = (*(v4 + 1))(v118, v4);
      ConversationController.broadcastingState.setter(v110 & 1 | (v119 << 8), v170, v109 & 0xFFFFFF81, v120, v121, v122, v123, v124, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
      __swift_destroy_boxed_opaque_existential_1(&v174);
    }

    v125 = ConversationController.visibleParticipants.getter();
    v126 = 0;
    v170 = *(v125 + 16);
    v127 = (v165 + 16);
    v128 = (v165 + 8);
    while (1)
    {
      if (v170 == v126)
      {

        v135 = v166;
        v136 = HIDWORD(v162);
        goto LABEL_47;
      }

      if (v126 >= *(v125 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v125 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v126, v17);
      v129 = *(v7 + 20);
      v130 = v18;
      v131 = v18 + v129;
      v4 = v17;
      v133 = v172;
      v132 = v173;
      (*v127)(v172, v131, v173);
      LOBYTE(v129) = static UUID.== infix(_:_:)();
      v134 = v133;
      v17 = v4;
      (*v128)(v134, v132);
      _s15ConversationKit11ParticipantVWOhTm_18(v4, type metadata accessor for Participant);
      if (v129)
      {
        break;
      }

      ++v126;
      v18 = v130;
      v7 = v168;
    }

    v137 = &v169[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant];
    swift_beginAccess();
    v138 = *v137;
    v18 = v130;
    if (*v137)
    {
      v139 = *(v137 + 1);
      _s15ConversationKit11ParticipantVWOcTm_17(v130, v4);

      v138(v4, v126);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v138, v139);
      _s15ConversationKit11ParticipantVWOhTm_18(v4, type metadata accessor for Participant);
    }

    v140 = &v169[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant];
    swift_beginAccess();
    v141 = *v140;
    v135 = v166;
    v136 = HIDWORD(v162);
    if (*v140)
    {
      v142 = *(v140 + 1);
      _s15ConversationKit11ParticipantVWOcTm_17(v130, v17);

      v141(v17, v126);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v141, v142);
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
    }

LABEL_47:
    v143 = v169;
    if (v178 == 1 && v169[OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame] == 1 && (v169[OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame] = 0, v144 = v143 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition, swift_beginAccess(), (v145 = *v144) != 0))
    {
      v146 = *(v144 + 8);
      v174 = v135;
      LOBYTE(v175[0]) = BYTE4(v167);
      *(v175 + 1) = v181[0];
      v175[2] = *(v181 + 15);
      v176[0] = v136;
      *&v176[1] = v179;
      v177[0] = v180[0];
      *(v177 + 10) = *(v180 + 10);

      outlined destroy of Participant.VideoInfo(&v174);
      v145(v136);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v145, v146);
    }

    else
    {
      v174 = v135;
      LOBYTE(v175[0]) = BYTE4(v167);
      *(v175 + 1) = v181[0];
      v175[2] = *(v181 + 15);
      v176[0] = v136;
      *&v176[1] = v179;
      v177[0] = v180[0];
      *(v177 + 10) = *(v180 + 10);
      outlined destroy of Participant.VideoInfo(&v174);
    }

    v147 = v143 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant;
    swift_beginAccess();
    v148 = *v147;
    if (*v147)
    {
      v149 = *(v147 + 8);
      _s15ConversationKit11ParticipantVWOcTm_17(v18, v17);
      v150 = *v164;
      v151 = *(v164 + 1);
      v152 = v164[16];

      v153 = v150;
      v143 = v169;
      v148(v17, v153, v151, v152);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v148, v149);
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
    }

    v154 = v143 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant;
    swift_beginAccess();
    v155 = *v154;
    if (*v154)
    {
      v156 = *(v154 + 8);
      _s15ConversationKit11ParticipantVWOcTm_17(v18, v17);
      v157 = *v164;
      v158 = *(v164 + 1);
      v159 = v164[16];

      v155(v17, v157, v158, v159);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v155, v156);
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
    }
  }
}

void closure #1 in ConversationController.handleLocalVideoAttributesChanged(_:)(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 208);
  swift_unknownObjectRetain();
  LODWORD(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  if (v3 == 5 || (v6 = *(v2 + 8), v7 = swift_getObjectType(), v8 = *(v6 + 208), swift_unknownObjectRetain(), LODWORD(v6) = v8(v7, v6), swift_unknownObjectRelease(), v6 == 6))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.conversationKit;
    v10 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BC4BA940;
    v65 = *v2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:type:_:)("Trying to update UI in response to local video attribute changes, but not tracking active call: %@", 98, 2, &dword_1BBC58000, v9, v10, v11);

    return;
  }

  v15 = *(a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags);
  if (([v15 afbEnabled] & 1) == 0 && *(a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode))
  {
    return;
  }

  v16 = (a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  swift_beginAccess();
  v17 = v16[3];
  v18 = v16[4];
  v19 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v20 = *(v17 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v64[-v22];
  (*(v20 + 16))(&v64[-v22], v21);
  (*(v18 + 32))(&v65, v17, v18);
  (*(v20 + 8))(v23, v17);
  v24 = v66;
  v25 = v67;
  __swift_project_boxed_opaque_existential_1(&v65, v66);
  v26 = (*(v25 + 40))(v24, v25);
  if ((v26 & 0x100000000) != 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v65);
    return;
  }

  v27 = VideoAttributeOrientation.deviceOrientation.getter(v26);
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v28 = v16[3];
  v29 = v16[4];
  v30 = __swift_project_boxed_opaque_existential_1(v16, v28);
  v31 = *(v28 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v64[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v31 + 16))(v34, v32);
  (*(v29 + 32))(&v65, v28, v29);
  (*(v31 + 8))(v34, v28);
  v35 = v66;
  v36 = v67;
  __swift_project_boxed_opaque_existential_1(&v65, v66);
  (*(v36 + 80))(v35, v36);
  LOBYTE(v34) = v37;
  __swift_destroy_boxed_opaque_existential_1(&v65);
  if (v34)
  {
    goto LABEL_19;
  }

  v38 = v16[3];
  v39 = v16[4];
  v40 = __swift_project_boxed_opaque_existential_1(v16, v38);
  v41 = *(v38 - 8);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v64[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v41 + 16))(v44, v42);
  (*(v39 + 32))(&v65, v38, v39);
  (*(v41 + 8))(v44, v38);
  v45 = v66;
  v46 = v67;
  __swift_project_boxed_opaque_existential_1(&v65, v66);
  v47 = COERCE_DOUBLE((*(v46 + 80))(v45, v46));
  if (v49)
  {
    __break(1u);
    return;
  }

  if (v48 >= v47)
  {
    v50 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
    swift_beginAccess();
    LOBYTE(v50) = *(v50 + 8);
    __swift_destroy_boxed_opaque_existential_1(&v65);
    if (v50)
    {
LABEL_19:
      v52 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v65);
  }

  v51 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  swift_beginAccess();
  if ((*(a1 + v51) & 1) != 0 || *(a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1)
  {
    goto LABEL_19;
  }

  v52 = [v15 afbEnabled];
LABEL_20:
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v53 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1BC4BAA20;
  *&v65 = v27;
  type metadata accessor for CNKDeviceOrientation(0);
  v55 = String.init<A>(reflecting:)();
  v57 = v56;
  v58 = MEMORY[0x1E69E6158];
  *(v54 + 56) = MEMORY[0x1E69E6158];
  v59 = lazy protocol witness table accessor for type String and conformance String();
  *(v54 + 64) = v59;
  *(v54 + 32) = v55;
  *(v54 + 40) = v57;
  *&v65 = v27;
  v60 = String.init<A>(reflecting:)();
  *(v54 + 96) = v58;
  *(v54 + 104) = v59;
  *(v54 + 72) = v60;
  *(v54 + 80) = v61;
  v62 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Local video attributes changed to %@ so updating device orientation to %@", 73, 2, &dword_1BBC58000, v53, v62, v54);

  ConversationController.deviceOrientation.setter(v27);
  if (v52)
  {
    v63 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v63, *(v63 + 8), *(v63 + 16), 2);
  }
}

uint64_t closure #1 in ConversationController.handleSendingVideoChanged(_:)(uint64_t a1, uint64_t a2)
{
  Notification.object.getter();
  if (!v14)
  {
    return outlined destroy of CallControlsService?(v13, &_sypSgMd, &_sypSgMR);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v12[0];
    v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(a2 + v5, v12);
    v6 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v7 = *(v6 + 104);
    v8 = v4;
    v7(&v10);

    if (v11)
    {
      outlined init with take of TapInteractionHandler(&v10, v13);
      __swift_destroy_boxed_opaque_existential_1(v12);
      outlined init with copy of CallCenterProvider(a2 + v5, v12);
      ConversationController.callCenter(_:localVideoToggledFor:)();

      __swift_destroy_boxed_opaque_existential_1(v12);
      v9 = v13;
    }

    else
    {

      outlined destroy of CallControlsService?(&v10, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v9 = v12;
    }

    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

void ConversationController.handleLocalVideoAttributesChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v7 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v23[4] = v4;
  v23[5] = v8;
  OUTLINED_FUNCTION_5_73();
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v23[2] = v9;
  v23[3] = v2;
  v10 = _Block_copy(v23);
  v11 = v0;

  static DispatchQoS.unspecified.getter();
  v23[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v12, v13);
  v14 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v16, v17, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_68_6();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v18);
  _Block_release(v10);

  v19 = OUTLINED_FUNCTION_181();
  v20(v19);
  v21 = OUTLINED_FUNCTION_491();
  v22(v21);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.migrate(to:with:isUpgrade:)(uint64_t a1, void *a2)
{
  v2 = (a1 + *a2);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *v2;
  if (*v2)
  {

    v3(v4);
    v5 = OUTLINED_FUNCTION_4_31();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  }
}

void ConversationController.handleCameraFallbackSelection(_:)()
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v0 + 16) < 0)
  {
    if (one-time initialization token for conversationController != -1)
    {
      OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v1, static Logger.conversationController);
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

    ConversationController.stopLocalVideo()();
  }
}

void ConversationController.handleScreenSharingDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  v39 = v0;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_4();
  v4 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_17();
  Notification.object.getter();
  if (v41)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_375_0())
    {
      v36 = v1;
      v37 = v2;
      v38 = v4;
      v11 = v44;
      v12 = [v44 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = &v39[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v14 = *(v13 + 1);
      swift_getObjectType();
      v15 = *(v14 + 232);
      swift_unknownObjectRetain();
      v16 = OUTLINED_FUNCTION_312();
      v15(v16);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_28_14();
      LOBYTE(v12) = static UUID.== infix(_:_:)();
      v17 = *(v8 + 8);
      v18 = OUTLINED_FUNCTION_112();
      v17(v18);
      v19 = OUTLINED_FUNCTION_256_3();
      v17(v19);
      if (v12)
      {
        v20 = [v44 isSharingScreen];
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_37_22();
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1BC4BA940;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_80_0();
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v21 + 32) = v14 + 232;
        *(v21 + 40) = v6;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)(v22);

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v23 = static OS_dispatch_queue.main.getter();
        OUTLINED_FUNCTION_8_61();
        v24 = swift_allocObject();
        *(v24 + 16) = v39;
        *(v24 + 24) = v20;
        v42 = partial apply for closure #1 in ConversationController.handleScreenSharingDidChange(_:);
        v43 = v24;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 1107296256;
        v40[2] = thunk for @escaping @callee_guaranteed () -> ();
        v41 = &block_descriptor_281;
        v25 = _Block_copy(v40);
        v26 = v39;

        static DispatchQoS.unspecified.getter();
        v40[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v27, v28);
        v29 = OUTLINED_FUNCTION_325_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v31, v32, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        OUTLINED_FUNCTION_462();
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1BFB215C0](0, v36, v37, v25);
        _Block_release(v25);

        v33 = OUTLINED_FUNCTION_45_1();
        v34(v33);
        OUTLINED_FUNCTION_392();
        v35(v36, v38);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v40, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleScreenSharingDidChange(_:)(uint64_t a1, char a2, __n128 a3)
{
  ConversationController.cameraStartPolicy.getter();
  if (!v5)
  {
    v6 = [objc_opt_self() sharedInstance];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v6 isGreenTea];

    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable;
    swift_beginAccess();
    *(a1 + v9) = v8;
  }

  v10 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing;
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);

    v11(a2 & 1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);
  }
}

void ConversationController.handleScreenSharingAttributesChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_3();
  Notification.object.getter();
  if (v22[3])
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_375_0())
    {
      v6 = [v21 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 232);
      swift_unknownObjectRetain();
      v10(ObjectType, v8);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_7_8();
      LOBYTE(v7) = static UUID.== infix(_:_:)();
      v11 = *(v3 + 8);
      v12 = OUTLINED_FUNCTION_33_0();
      v11(v12);
      v13 = OUTLINED_FUNCTION_48_0();
      v11(v13);
      if (v7)
      {
        v14 = [v21 screenShareAttributes];
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_37_22();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1BC4BA940;
        if (v14)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallScreenShareAttributes, 0x1E69D8A98);
          v16 = v14;
          v17 = String.init<A>(reflecting:)();
          v19 = v18;
        }

        else
        {
          v19 = 0xE300000000000000;
          v17 = 7104878;
        }

        *(v15 + 56) = MEMORY[0x1E69E6158];
        *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v15 + 32) = v17;
        *(v15 + 40) = v19;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_41_0();
        os_log(_:dso:log:type:_:)(v20);

        ConversationController.updateScreenSharingSession(with:)(v14);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v22, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.handleCallSharePlayCapabilityDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v21)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_216_4())
    {
      v2 = v24;
      v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v19 = static OS_dispatch_queue.main.getter();
      OUTLINED_FUNCTION_20();
      v4 = swift_allocObject();
      OUTLINED_FUNCTION_278(v4);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;
      v22 = partial apply for closure #1 in ConversationController.handleCallSharePlayCapabilityDidChange(_:);
      v23 = v5;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = thunk for @escaping @callee_guaranteed () -> ();
      v21 = &block_descriptor_295;
      v6 = _Block_copy(v20);
      v18 = v2;

      static DispatchQoS.unspecified.getter();
      v20[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_164();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v7, v8);
      v9 = OUTLINED_FUNCTION_252();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_9_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v11, v12, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      OUTLINED_FUNCTION_78_8();
      OUTLINED_FUNCTION_260();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v13 = OUTLINED_FUNCTION_117();
      MEMORY[0x1BFB215C0](v13);
      _Block_release(v6);

      v14 = OUTLINED_FUNCTION_15_44();
      v15(v14);
      v16 = OUTLINED_FUNCTION_206();
      v17(v16);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v20, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

char *closure #1 in ConversationController.handleCallSharePlayCapabilityDidChange(_:)(void *a1, uint64_t a2)
{
  if (([a1 isVideo] & 1) != 0 || (v3 = objc_msgSend(a1, sel_remoteParticipantHandles), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), static Set._unconditionallyBridgeFromObjectiveC(_:)(), v3, v4 = specialized Set.count.getter(), , v4 != 1))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      ConversationController.processCurrentCall(_:)(a1);
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = &result[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    swift_beginAccess();
    v11 = *v9;
    v10 = v9[1];
    swift_unknownObjectRetain();

    v12 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = specialized == infix(_:_:)(a1, v12, v11);
    swift_unknownObjectRelease();
    if (v13)
    {
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = v14 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange;
        swift_beginAccess();
        v17 = *v16;
        if (*v16)
        {
          v18 = *(v16 + 8);
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v17, v18);

          v17(v11, v10);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v17, v18);
        }

        else
        {
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

char *closure #1 in ConversationController.handleAnyRemoteSupportsRequestToScreenShareDidChange(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = &result[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    swift_unknownObjectRetain();

    v8 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = specialized == infix(_:_:)(a2, v8, v6);
    swift_unknownObjectRelease();
    if (v9)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
        swift_beginAccess();
        v13 = *v12;
        if (*v12)
        {
          v14 = *(v12 + 8);
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v13, v14);

          v13(v6, v7);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v13, v14);
        }

        else
        {
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationController.handleCallStartedConnecting(_:)()
{
  OUTLINED_FUNCTION_29();
  v23 = v0;
  v2 = v1;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v26)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_216_4())
    {
      v5 = v29;
      v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v22 = static OS_dispatch_queue.main.getter();
      OUTLINED_FUNCTION_20();
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_278(v7);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v5;
      v27 = v2;
      v28 = v8;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 1107296256;
      OUTLINED_FUNCTION_252_2();
      v25[2] = v9;
      v26 = v23;
      v10 = _Block_copy(v25);
      v24 = v5;

      static DispatchQoS.unspecified.getter();
      v25[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_164();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v11, v12);
      v13 = OUTLINED_FUNCTION_252();
      __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      OUTLINED_FUNCTION_9_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v15, v16, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      OUTLINED_FUNCTION_78_8();
      OUTLINED_FUNCTION_260();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = OUTLINED_FUNCTION_117();
      MEMORY[0x1BFB215C0](v17);
      _Block_release(v10);

      v18 = OUTLINED_FUNCTION_181();
      v19(v18);
      v20 = OUTLINED_FUNCTION_206();
      v21(v20);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v25, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

char *closure #1 in ConversationController.handleCallStartedConnecting(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_247_0(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = OUTLINED_FUNCTION_246();
    ConversationController.processCurrentCall(_:)(v2);
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = &result[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = *v5;
    swift_unknownObjectRetain();

    OUTLINED_FUNCTION_283_2(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = OUTLINED_FUNCTION_40_2();
    v9 = specialized == infix(_:_:)(v7, v8, v6);
    swift_unknownObjectRelease();
    if (v9)
    {
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = (Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v13 = *v12;
        if (*v12)
        {
          v14 = OUTLINED_FUNCTION_40_2();
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v14, v15);

          v16 = OUTLINED_FUNCTION_4_31();
          v13(v16);
          v17 = OUTLINED_FUNCTION_40_2();
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v17, v18);
        }

        else
        {
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationController.handleVideoCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v21)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_216_4())
    {
      v3 = v24;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v19 = static OS_dispatch_queue.main.getter();
      OUTLINED_FUNCTION_24();
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      *(v4 + 24) = v3;
      v22 = partial apply for closure #1 in ConversationController.handleVideoCallStatusDidChange(_:);
      v23 = v4;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 1107296256;
      v20[2] = thunk for @escaping @callee_guaranteed () -> ();
      v21 = &block_descriptor_315;
      v5 = _Block_copy(v20);
      v6 = v0;
      v18 = v3;

      static DispatchQoS.unspecified.getter();
      v20[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_164();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v7, v8);
      v9 = OUTLINED_FUNCTION_252();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_9_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v11, v12, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      OUTLINED_FUNCTION_78_8();
      OUTLINED_FUNCTION_260();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v13 = OUTLINED_FUNCTION_117();
      MEMORY[0x1BFB215C0](v13);
      _Block_release(v5);

      v14 = OUTLINED_FUNCTION_15_44();
      v15(v14);
      v16 = OUTLINED_FUNCTION_206();
      v17(v16);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v20, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleVideoCallStatusDidChange(_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  ConversationController.processCurrentCall(_:)(a2);
  v4 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v5 = (a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  swift_beginAccess();
  v6 = *v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v2) = specialized == infix(_:_:)(v2, v4, v6);
  swift_unknownObjectRelease();
  if (v2)
  {
    v7 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);
      v10 = v5[1];
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v8, v9);
      v11 = swift_unknownObjectRetain();
      v8(v11, v10);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
      swift_unknownObjectRelease();
    }

    ConversationController.updateIDSStatusForVideoMessaging()();
  }
}

void ConversationController.handleSendingVideoChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v31 = v1;
  v32 = v2;
  v30 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_1_17();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = OUTLINED_FUNCTION_455();
  v12(v11);
  v13 = (v8 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_452();
  v15();
  *(v14 + v13) = v30;
  v33[4] = v31;
  v33[5] = v14;
  OUTLINED_FUNCTION_5_73();
  v33[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v33[2] = v16;
  v33[3] = v32;
  v17 = _Block_copy(v33);
  v18 = v30;

  static DispatchQoS.unspecified.getter();
  v33[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v19, v20);
  v21 = OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v23, v24, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_109_7();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v25);
  _Block_release(v17);

  v26 = OUTLINED_FUNCTION_181();
  v27(v26);
  v28 = OUTLINED_FUNCTION_20_38();
  v29(v28);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleHoldMusicDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  Notification.object.getter();
  if (v27)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v24 = v25;
      v10 = a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v23 = a2;
      v13 = *(v11 + 232);
      swift_unknownObjectRetain();
      v14 = v11;
      v15 = v24;
      v13(ObjectType, v14);
      swift_unknownObjectRelease();
      v16 = [v15 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v16) = static UUID.== infix(_:_:)();
      v17 = *(v4 + 8);
      v17(v6, v3);
      v17(v9, v3);
      if (v16)
      {
        v18 = v23;
        if (ConversationController.isOneToOneModeEnabled.getter())
        {
          v19 = v18 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic;
          swift_beginAccess();
          v20 = *v19;
          if (*v19)
          {
            v21 = *(v19 + 8);

            v20([v15 wantsHoldMusic]);
            outlined consume of (@escaping @callee_guaranteed () -> ())?(v20, v21);
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v26, &_sypSgMd, &_sypSgMR);
  }
}

void closure #1 in ConversationController.handleBluetoothAudioFormatChanged(_:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA940;
  [a1 bluetoothAudioFormat];
  type metadata accessor for TUCallBluetoothAudioFormat(0);
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("handleBluetoothAudioFormatChanged to %@", 39, 2, &dword_1BBC58000, v4, v9, v5);

  v10 = a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged;
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);

    v11([a1 bluetoothAudioFormat]);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);
  }
}

void ConversationController.handleBluetoothAudioFormatChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v38 = v1;
  v39 = v2;
  v3 = v0;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_5();
  v5 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_103_4();
  Notification.object.getter();
  if (v41)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_375_0())
    {
      v36 = v5;
      v37 = v44;
      v11 = [v44 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = &v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v13 = *(v12 + 1);
      swift_getObjectType();
      v14 = *(v13 + 232);
      swift_unknownObjectRetain();
      v15 = OUTLINED_FUNCTION_45_1();
      v14(v15);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_112();
      LOBYTE(v11) = static UUID.== infix(_:_:)();
      v16 = *(v8 + 8);
      v17 = OUTLINED_FUNCTION_2_125();
      v16(v17);
      v18 = OUTLINED_FUNCTION_316_1();
      v16(v18);
      if (v11)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v19 = static OS_dispatch_queue.main.getter();
        OUTLINED_FUNCTION_24();
        v20 = swift_allocObject();
        *(v20 + 16) = v44;
        *(v20 + 24) = v3;
        v42 = v38;
        v43 = v20;
        OUTLINED_FUNCTION_241_3();
        v40[1] = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v40[2] = v21;
        v41 = v39;
        v22 = _Block_copy(v40);
        v23 = v37;
        v24 = v3;

        static DispatchQoS.unspecified.getter();
        v40[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v25, v26);
        v27 = OUTLINED_FUNCTION_139();
        __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v29, v30, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v31 = OUTLINED_FUNCTION_117();
        MEMORY[0x1BFB215C0](v31);
        _Block_release(v22);

        v32 = OUTLINED_FUNCTION_181();
        v33(v32);
        v34 = OUTLINED_FUNCTION_20_38();
        v35(v34, v36);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v40, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleCallConversationChanged(_:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA940;
  [a1 isConversation];
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("handleCallConversationChanged to %@", 35, 2, &dword_1BBC58000, v4, v9, v5);

  v10 = a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged;
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);

    v11([a1 isConversation]);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);
  }
}

void ConversationController.handlePTTCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v22)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    if (OUTLINED_FUNCTION_216_4())
    {
      v3 = v23;
      if ([v23 isPTT])
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v20 = static OS_dispatch_queue.main.getter();
        OUTLINED_FUNCTION_24();
        v4 = swift_allocObject();
        *(v4 + 16) = v23;
        *(v4 + 24) = v0;
        OUTLINED_FUNCTION_231_4(v4);
        v21[1] = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v21[2] = v5;
        v22 = &block_descriptor_345;
        v18 = _Block_copy(v21);
        v19 = v3;
        v6 = v0;

        static DispatchQoS.unspecified.getter();
        v21[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v7, v8);
        v9 = OUTLINED_FUNCTION_252();
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v11, v12, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        OUTLINED_FUNCTION_78_8();
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v13 = OUTLINED_FUNCTION_117();
        MEMORY[0x1BFB215C0](v13);
        _Block_release(v18);

        v14 = OUTLINED_FUNCTION_309();
        v15(v14);
        v16 = OUTLINED_FUNCTION_206();
        v17(v16);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v21, &_sypSgMd, &_sypSgMR);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handlePTTCallStatusDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v5 = (a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  swift_beginAccess();
  v6 = *v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(a1) = specialized == infix(_:_:)(a1, v4, v6);
  swift_unknownObjectRelease();
  if (a1)
  {
    if (*(a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) == 1)
    {
      ConversationController.pttStopTransmit()();
    }

    v7 = a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);
      v10 = v5[1];
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v8, v9);
      v11 = swift_unknownObjectRetain();
      v8(v11, v10);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
      swift_unknownObjectRelease();
    }
  }
}

BOOL closure #1 in ConversationController.processCurrentCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 136))(ObjectType, a2))
  {
    v19 = (*(a2 + 224))(ObjectType, a2);
    v7 = v6;
    v8 = a3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v9 = *(v8 + 8);
    v10 = swift_getObjectType();
    v11 = *(v9 + 224);
    swift_unknownObjectRetain();
    v12 = v11(v10, v9);
    v14 = v13;
    swift_unknownObjectRelease();
    if (v19 == v12 && v7 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v17 = *(a2 + 208);
        if (v17(ObjectType, a2) != 6)
        {
          return v17(ObjectType, a2) != 5;
        }
      }
    }
  }

  return 0;
}

uint64_t ConversationController.carPlayDidConnect()(const char *a1, char a2, ...)
{
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationController);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_42();
    v10 = OUTLINED_FUNCTION_23();
    v20[0] = v10;
    *v9 = 136315138;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v7, v8, a1, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_2_2();
  }

  v14 = &v6[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange];
  result = OUTLINED_FUNCTION_104_7(v15);
  v17 = *v14;
  if (*v14)
  {
    OUTLINED_FUNCTION_363_0();
    v17(a2 & 1);
    v18 = OUTLINED_FUNCTION_4_31();
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v18, v19);
  }

  return result;
}

void protocol witness for CPCarPlayObserverDelegate.carPlayStartedConnectionAttempt() in conformance ConversationController()
{
  swift_getObjectType();

  CPCarPlayObserverDelegate.carPlayStartedConnectionAttempt()();
}

void protocol witness for CPCarPlayObserverDelegate.carPlayStoppedConnectionAttempt() in conformance ConversationController()
{
  swift_getObjectType();

  CPCarPlayObserverDelegate.carPlayStoppedConnectionAttempt()();
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CD0];
    v23 = MEMORY[0x1E69E7CD0];

    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        v5 = __CocoaSet.Iterator.next()();
        if (!v5)
        {
          swift_bridgeObjectRelease_n();

          return v4;
        }

        v21 = v5;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        v6 = swift_dynamicCast();
        v21 = v22;
        MEMORY[0x1EEE9AC00](v6);
        v20[2] = &v21;
        v7 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v20, a2);
        v8 = v22;
        if (!v7)
        {
          break;
        }
      }

      v9 = v4[2];
      if (v4[3] <= v9)
      {
        specialized _NativeSet.resize(capacity:)(v9 + 1);
      }

      v4 = v23;
      result = NSObject._rawHashValue(seed:)(v23[5]);
      v11 = (v4 + 7);
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~v4[(v13 >> 6) + 7]) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~v4[(v13 >> 6) + 7])) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
      *&v11[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
      *(v4[6] + 8 * v15) = v8;
      ++v4[2];
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *&v11[8 * v14];
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = specialized _NativeSet.filter(_:)(a1, a2);

    return v4;
  }

  return result;
}

void *specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v32 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = &v27;
    MEMORY[0x1EEE9AC00](v7);
    v28 = v5;
    v29 = &v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    v8 = specialized UnsafeMutablePointer.assign(repeating:count:)(0, v5, v29);
    v30 = 0;
    v31 = v2;
    v9 = 0;
    v11 = *(v2 + 56);
    v2 += 56;
    v10 = v11;
    v12 = 1 << *(v2 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v6 = v13 & v10;
    v5 = (v12 + 63) >> 6;
    while (v6)
    {
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v33[0] = *(*(v31 + 48) + 8 * v17);
      MEMORY[0x1EEE9AC00](v8);
      *(&v27 - 2) = v33;
      v19 = v18;
      v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v27 - 4), v32);

      if (!v20)
      {
        *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          specialized _NativeSet.extractSubset(using:count:)(v29, v28, v30, v31);
          v23 = v22;
          goto LABEL_17;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v6 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v32;

  v23 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0108_s15ConversationKit0A10ControllerC30updateOtherInvitedParticipants33_5A0A49257C27FB45AC60F0CF8835047ALLyyFSbpI7CXEfU0_SayAISgGTf1nnc_n(v25, v5, v2, v26);

  MEMORY[0x1BFB23DF0](v25, -1, -1);
LABEL_17:
  swift_bridgeObjectRelease_n();
  return v23;
}

{
  v53 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for UUID();
  v4 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v38 - v7;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v51 = a2;

  if (v10 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v38[1] = v38;
    MEMORY[0x1EEE9AC00](v13);
    v40 = v11;
    v41 = v38 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v41);
    v43 = a1;
    v44 = 0;
    v12 = 0;
    v14 = *(a1 + 56);
    v39 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v47 = v4 + 8;
    v48 = v4 + 16;
    v42 = v18;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v46 = (v17 - 1) & v17;
LABEL_12:
      v23 = v19 | (v12 << 6);
      v24 = *(a1 + 48);
      v45 = v23;
      v52 = *(v24 + 8 * v23);
      if ([v52 originType] == 1 && objc_msgSend(v52, sel_isLocallyOriginated) && objc_msgSend(v52, sel_type) == 1)
      {
LABEL_18:

        v18 = v42;
        a1 = v43;
        v17 = v46;
      }

      else
      {
        v25 = 0;
        v26 = *(v51 + 16);
        while (v26 != v25)
        {
          v27 = v50;
          (*(v4 + 16))(v8, v51 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25++, v50);
          v28 = [v52 UUID];
          v29 = v49;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v11 = static UUID.== infix(_:_:)();
          v30 = *(v4 + 8);
          v30(v29, v27);
          v30(v8, v27);
          if (v11)
          {
            goto LABEL_18;
          }
        }

        *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        a1 = v43;
        v31 = __OFADD__(v44++, 1);
        v18 = v42;
        v17 = v46;
        if (v31)
        {
          __break(1u);
LABEL_22:
          specialized _NativeSet.extractSubset(using:count:)(v41, v21, v44, a1);
          v33 = v32;
          swift_bridgeObjectRelease_n();
          return v33;
        }
      }
    }

    v20 = v12;
    v21 = v40;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {
        goto LABEL_22;
      }

      v22 = *(v39 + 8 * v12);
      ++v20;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    v35 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();
  v37 = v51;

  v33 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo22TUScreenSharingRequestCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So22ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n041_s15ConversationKit0A0PAAE27currentScreenJ68Request8ignoringSo08TUScreeneF0CSgSay10Foundation4UUIDVG_tFSbAGXEfU_Say10Foundation4UUIDVGTf1nnc_n(v36, v35, a1, v37);

  MEMORY[0x1BFB23DF0](v36, -1, -1);
  swift_bridgeObjectRelease_n();
  return v33;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0108_s15ConversationKit0A10ControllerC30updateOtherInvitedParticipants33_5A0A49257C27FB45AC60F0CF8835047ALLyyFSbpI7CXEfU0_SayAISgGTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, void (**a2)(char *, char *, uint64_t), unint64_t a3, unint64_t a4)
{
  v126 = a1;
  v7 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v102 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v102 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v102 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v102 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v108 = &v102 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v114 = &v102 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v102 - v31;
  v121 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v121);
  v125 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v119 = &v102 - v35;
  MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v102 - v39;
  v42 = *(v41 + 72);
  if (!v42)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v43 = a2 - v126;
  v44 = (a2 - v126) == 0x8000000000000000 && v42 == -1;
  if (v44)
  {
    goto LABEL_73;
  }

  v45 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v42 == -1)
  {
    goto LABEL_74;
  }

  v129 = v126;
  v128 = a4;
  v116 = (v16 + 32);
  v117 = (v16 + 8);
  v118 = v15;
  v47 = v45 / v42;
  v123 = v7;
  if (v43 / v42 < v45 / v42)
  {
    v125 = v38;
    v48 = v43 / v42;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v126, v43 / v42, a4);
    v119 = a4 + v48 * v42;
    v127 = v119;
    v111 = v42;
    v112 = a3;
    v110 = v40;
    v49 = v125;
    while (1)
    {
      if (a4 >= v119 || a2 >= a3)
      {
        goto LABEL_71;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(a2, v40);
      _s15ConversationKit11ParticipantVWOcTm_17(a4, v49);
      v51 = v120;
      _s15ConversationKit11ParticipantVWOcTm_17(v40, v120);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v122 = a4;
      v124 = a2;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v53 = *(v52 + 48);
      v54 = (v51 + *(v52 + 64));
      v55 = outlined consume of Participant.CopresenceInfo?(*v54, v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7]);
      v56 = *v116;
      v57 = v114;
      v58 = v118;
      (*v116)(v114, v51, v118, v55);
      outlined destroy of Participant.MediaInfo(v51 + v53);
      v56(v32, v57, v58);
      v59 = v115;
      _s15ConversationKit11ParticipantVWOcTm_17(v49, v115);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v59, type metadata accessor for Participant.State);
        (*v117)(v32, v58);
        a2 = v124;
        a4 = v122;
        v42 = v111;
        a3 = v112;
        v40 = v110;
        goto LABEL_27;
      }

      v60 = *(v52 + 48);
      v61 = (v59 + *(v52 + 64));
      v62 = outlined consume of Participant.CopresenceInfo?(*v61, v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7]);
      v63 = v109;
      (v56)(v109, v59, v58, v62);
      outlined destroy of Participant.MediaInfo(v59 + v60);
      v64 = v108;
      v56(v108, v63, v58);
      LOBYTE(v63) = static Date.< infix(_:_:)();
      v65 = *v117;
      (*v117)(v64, v58);
      v65(v32, v58);
      _s15ConversationKit11ParticipantVWOhTm_18(v49, type metadata accessor for Participant);
      v40 = v110;
      _s15ConversationKit11ParticipantVWOhTm_18(v110, type metadata accessor for Participant);
      a2 = v124;
      a4 = v122;
      v42 = v111;
      a3 = v112;
      if (v63)
      {
        if (v126 < v124 || v126 >= v124 + v111)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v126 != v124)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 = (a2 + v42);
        goto LABEL_37;
      }

LABEL_28:
      if (v126 < a4 || v126 >= a4 + v42)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v126 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v128 = a4 + v42;
      a4 += v42;
LABEL_37:
      v126 += v42;
      v129 = v126;
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v51, type metadata accessor for Participant.State);
LABEL_27:
    _s15ConversationKit11ParticipantVWOhTm_18(v125, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_18(v40, type metadata accessor for Participant);
    goto LABEL_28;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v45 / v42, a4);
  v68 = -v42;
  v69 = a4 + v47 * v42;
  v70 = v69;
  v71 = v116;
  v122 = a4;
  v111 = v68;
LABEL_42:
  v116 = (a2 + v68);
  v72 = a3;
  v112 = v70;
  v124 = a2;
  while (1)
  {
    if (v69 <= a4)
    {
      v129 = a2;
      v127 = v70;
      goto LABEL_71;
    }

    if (a2 <= v126)
    {
      break;
    }

    v120 = v72;
    v115 = v70;
    v73 = v69 + v68;
    v74 = v119;
    _s15ConversationKit11ParticipantVWOcTm_17(v69 + v68, v119);
    _s15ConversationKit11ParticipantVWOcTm_17(v116, v125);
    v75 = v113;
    _s15ConversationKit11ParticipantVWOcTm_17(v74, v113);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v114 = v69;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v77 = *(v76 + 48);
      v78 = (v75 + *(v76 + 64));
      v79 = outlined consume of Participant.CopresenceInfo?(*v78, v78[1], v78[2], v78[3], v78[4], v78[5], v78[6], v78[7]);
      v80 = *v71;
      v81 = v106;
      v82 = v71;
      v83 = v118;
      v80(v106, v75, v118, v79);
      outlined destroy of Participant.MediaInfo(v75 + v77);
      v84 = v105;
      v85 = v81;
      v86 = v125;
      (v80)(v105, v85, v83);
      v87 = v107;
      _s15ConversationKit11ParticipantVWOcTm_17(v86, v107);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v88 = v87;
        v89 = *(v76 + 48);
        v90 = (v88 + *(v76 + 64));
        v91 = outlined consume of Participant.CopresenceInfo?(*v90, v90[1], v90[2], v90[3], v90[4], v90[5], v90[6], v90[7]);
        v92 = v104;
        v80(v104, v88, v83, v91);
        outlined destroy of Participant.MediaInfo(v88 + v89);
        v93 = v103;
        (v80)(v103, v92, v83);
        v94 = static Date.< infix(_:_:)();
        v95 = v84;
        v96 = *v117;
        (*v117)(v93, v83);
        v96(v95, v83);
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v87, type metadata accessor for Participant.State);
        (*v117)(v84, v83);
        v94 = 0;
      }

      v71 = v82;
      a4 = v122;
      v68 = v111;
      v69 = v114;
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v75, type metadata accessor for Participant.State);
      v94 = 0;
    }

    v97 = v120;
    a3 = v120 + v68;
    _s15ConversationKit11ParticipantVWOhTm_18(v125, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_18(v119, type metadata accessor for Participant);
    if (v94)
    {
      if (v97 < v124 || a3 >= v124)
      {
        a2 = v116;
        swift_arrayInitWithTakeFrontToBack();
        v70 = v115;
      }

      else
      {
        v100 = v115;
        v70 = v115;
        v44 = v97 == v124;
        v101 = v116;
        a2 = v116;
        if (!v44)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v101;
          v70 = v100;
        }
      }

      goto LABEL_42;
    }

    v98 = v97 < v69 || a3 >= v69;
    a2 = v124;
    if (v98)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v70 = v73;
    v44 = v69 == v97;
    v72 = v97 + v68;
    v69 = v73;
    if (!v44)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v72 = v97 + v68;
      v69 = v73;
      v70 = v73;
    }
  }

  v129 = a2;
  v127 = v112;
LABEL_71:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v129, &v128, &v127);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return specialized Array.count.getter();
  }

  v4 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      result = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == result)
      {
        return v4;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v19 = OUTLINED_FUNCTION_2_125();
        v10 = MEMORY[0x1BFB22010](v19);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v21 = v10;
      v11 = a1(&v21);

      if ((v11 & 1) == 0)
      {
        if (v4 != v9)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = OUTLINED_FUNCTION_258_0();
            v20 = MEMORY[0x1BFB22010](v12);
            v13 = OUTLINED_FUNCTION_2_125();
            v14 = MEMORY[0x1BFB22010](v13);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v4 >= v15)
            {
              goto LABEL_45;
            }

            if (v9 >= v15)
            {
              goto LABEL_46;
            }

            v14 = *(v6 + 32 + 8 * v9);
            v20 = *(v6 + 32 + 8 * v4);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v16 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v16) = 0;
          }

          v17 = v6 & 0xFFFFFFFFFFFFFF8;
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v14;

          if ((v6 & 0x8000000000000000) != 0 || v16)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()();
            v6 = result;
            v17 = result & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
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
              break;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          if (v9 >= *(v17 + 16))
          {
            goto LABEL_43;
          }

          *(v17 + 8 * v9 + 32) = v20;

          *v2 = v6;
        }

        v18 = __OFADD__(v4++, 1);
        if (v18)
        {
          goto LABEL_42;
        }
      }

      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v6 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v4 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      outlined init with copy of WeakPlatformDisplayLinkObserver(v6 + i, v16);
      v12 = (a1)(v16);
      result = outlined destroy of WeakPlatformDisplayLinkObserver(v16);
      if ((v12 & 1) == 0)
      {
        if (v9 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(v6 + 16);
          if (v4 >= v13)
          {
            goto LABEL_22;
          }

          result = outlined init with copy of WeakPlatformDisplayLinkObserver(v6 + 32 + 16 * v4, v16);
          if (v9 >= v13)
          {
            goto LABEL_23;
          }

          outlined init with copy of WeakPlatformDisplayLinkObserver(v6 + i, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v6 = v14;
          }

          result = outlined assign with take of WeakPlatformDisplayLinkObserver(v15, v6 + 16 * v4 + 32);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_24;
          }

          result = outlined assign with take of WeakPlatformDisplayLinkObserver(v16, v6 + i);
          *v2 = v6;
        }

        ++v4;
      }

      ++v9;
    }

    return v4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v44 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44 - v16;
  v46 = a1;
  v18 = *a1;
  v19 = a2;
  result = specialized Collection.firstIndex(where:)(v18, v19);
  if (v2)
  {

    return v3;
  }

  v22 = v18;
  v52 = v17;
  v53 = v19;
  if (v21)
  {
    v3 = *(v18 + 16);

    return v3;
  }

  v3 = result;
  v47 = v11;
  v44[1] = 0;
  v23 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v56 = v7 + 16;
    v50 = v7;
    v51 = v7 + 8;
    v25 = v52;
    v24 = v53;
    v49 = v14;
    v45 = (v7 + 40);
    while (1)
    {
      v26 = *(v22 + 16);
      if (v23 == v26)
      {

        return v3;
      }

      if (v23 >= v26)
      {
        break;
      }

      v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v28 = v14;
      v59 = v22;
      v54 = v27;
      v29 = v22 + v27;
      v30 = *(v7 + 72);
      v31 = *(v7 + 16);
      v57 = v30 * v23;
      v58 = v3;
      v55 = v31;
      v31(v25, v22 + v27 + v30 * v23, v6);
      v32 = [v24 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v32) = static UUID.== infix(_:_:)();
      v33 = *(v7 + 8);
      v33(v28, v6);
      result = (v33)(v25, v6);
      if (v32)
      {
        v14 = v49;
        v7 = v50;
        v3 = v58;
        v25 = v52;
        v24 = v53;
        v22 = v59;
      }

      else
      {
        v34 = v58;
        if (v23 == v58)
        {
          v14 = v49;
          v7 = v50;
          v25 = v52;
          v24 = v53;
          v22 = v59;
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v35 = *(v59 + 16);
          if (v58 >= v35)
          {
            goto LABEL_26;
          }

          v36 = v30 * v58;
          v37 = v23;
          v38 = v55;
          result = (v55)(v47, v29 + v36, v6);
          if (v37 >= v35)
          {
            goto LABEL_27;
          }

          v38(v48, v29 + v57, v6);
          v39 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v39 = v43;
          }

          v14 = v49;
          v7 = v50;
          v40 = v39;
          v41 = v39 + v54;
          v42 = *v45;
          result = (*v45)(v41 + v36, v48, v6);
          if (v37 >= *(v40 + 16))
          {
            goto LABEL_28;
          }

          result = v42(v41 + v57, v47, v6);
          v23 = v37;
          *v46 = v40;
          v25 = v52;
          v24 = v53;
          v22 = v40;
        }

        v3 = v34 + 1;
      }

      ++v23;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = *v4;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v4);
  if (!v3)
  {
    v46 = a2;
    v47 = v15;
    v51 = v7;
    if (v18)
    {
      return *(v16 + 16);
    }

    else
    {
      v41 = v4;
      v53 = result;
      v19 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v54 = 0;
        v20 = v50;
        v21 = v51;
        v49 = v50 + 16;
        v44 = v12;
        v45 = (v50 + 8);
        v42 = (v50 + 40);
        v43 = v9;
        v22 = v47;
        while (1)
        {
          v23 = *(v16 + 16);
          if (v19 == v23)
          {
            return v53;
          }

          if (v19 >= v23)
          {
            break;
          }

          v24 = v16;
          v48 = (*(v20 + 80) + 32) & ~*(v20 + 80);
          v25 = v16 + v48;
          v26 = *(v20 + 72);
          v55 = v19;
          v27 = *(v20 + 16);
          v52 = v26 * v19;
          v27(v22, v16 + v48 + v26 * v19, v21);
          v28 = v54;
          v29 = a1;
          v30 = a1(v22);
          v54 = v28;
          if (v28)
          {
            return (*v45)(v22, v21);
          }

          v31 = v30;
          result = (*v45)(v22, v21);
          if (v31)
          {
            a1 = v29;
            v20 = v50;
            v21 = v51;
            v22 = v47;
            v16 = v24;
            v32 = v55;
          }

          else
          {
            v32 = v55;
            if (v55 == v53)
            {
              a1 = v29;
              v20 = v50;
              v21 = v51;
              v22 = v47;
            }

            else
            {
              if ((v53 & 0x8000000000000000) != 0)
              {
                goto LABEL_26;
              }

              v33 = *(v24 + 16);
              if (v53 >= v33)
              {
                goto LABEL_27;
              }

              v34 = v26 * v53;
              v35 = v51;
              result = (v27)(v44, v25 + v34, v51);
              if (v55 >= v33)
              {
                goto LABEL_28;
              }

              v36 = v25 + v52;
              v37 = v43;
              v27(v43, v36, v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew()();
                v24 = v40;
              }

              a1 = v29;
              v38 = v24 + v48;
              v39 = *v42;
              v21 = v51;
              result = (*v42)(v24 + v48 + v34, v37, v51);
              v22 = v47;
              if (v55 >= *(v24 + 16))
              {
                goto LABEL_29;
              }

              result = v39(v38 + v52, v44, v21);
              v32 = v55;
              *v41 = v24;
              v20 = v50;
            }

            v16 = v24;
            ++v53;
          }

          v19 = v32 + 1;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

{
  v7 = v2;
  v10 = type metadata accessor for ParticipantReaction(0);
  v11 = OUTLINED_FUNCTION_9_0(v10);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_103_4();
  v16 = *v7;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v7);
  if (!v3)
  {
    v35 = v4;
    v36 = v5;
    if (v18)
    {
      return *(v16 + 16);
    }

    else
    {
      v19 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v20 = v16;
        v37 = v13;
        while (1)
        {
          v21 = *(v20 + 16);
          if (v19 == v21)
          {
            break;
          }

          if (v19 >= v21)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_40_3();
          v38 = v23;
          v39 = v22;
          v24 = v20 + v23;
          v25 = *(v13 + 72);
          v40 = v26;
          OUTLINED_FUNCTION_263_1();
          v28 = v27;
          _s15ConversationKit11ParticipantVWOcTm_17(v24 + v27, v6);
          v29 = a1;
          v30 = a1(v6);
          _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for ParticipantReaction);
          if (v30)
          {
            a1 = v29;
            v13 = v37;
            result = v39;
            v31 = v40;
          }

          else
          {
            result = v39;
            v31 = v40;
            if (v40 == v39)
            {
              a1 = v29;
            }

            else
            {
              if ((v39 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v32 = *(v20 + 16);
              if (v39 >= v32)
              {
                goto LABEL_24;
              }

              v33 = v25 * v39;
              OUTLINED_FUNCTION_263_1();
              result = _s15ConversationKit11ParticipantVWOcTm_17(v24 + v33, v36);
              if (v40 >= v32)
              {
                goto LABEL_25;
              }

              _s15ConversationKit11ParticipantVWOcTm_17(v24 + v28, v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew()();
                v20 = v34;
              }

              a1 = v29;
              _s15ConversationKit11ParticipantVWOdTm_0(v35, v20 + v38 + v33);
              result = v36;
              if (v40 >= *(v20 + 16))
              {
                goto LABEL_26;
              }

              _s15ConversationKit11ParticipantVWOdTm_0(v36, v20 + v38 + v28);
              v31 = v40;
              *v7 = v20;
              result = v39;
            }

            ++result;
            v13 = v37;
          }

          v19 = v31 + 1;
        }
      }
    }
  }

  return result;
}

void (*specialized _NativeSet.subtracting<A>(_:)(unint64_t a1, void (*a2)(char *, unint64_t, uint64_t, __n128)))(char *, unint64_t, uint64_t, __n128)
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v66 - v8;
  v10 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v10);
  v85 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v82 = (&v66 - v17);
  if (!*(a2 + 2))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v72 = v6;
  v67 = 0;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v76 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v73 = (63 - v20) >> 6;
  v75 = (v16 + 32);
  v83 = (a2 + 56);
  v80 = v16;
  v86 = v16 + 16;
  v87 = (v16 + 8);
  v77 = a1;

  v23 = 0;
  v74 = a1 + 56;
  v69 = v9;
LABEL_6:
  v24 = v22;
  v25 = v23;
  v84 = v23;
  if (v22)
  {
LABEL_12:
    a1 = (v24 - 1) & v24;
    v28 = v77;
    (*(v80 + 16))(v9, *(v77 + 48) + *(v80 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
    v29 = 0;
    v26 = v9;
    v27 = v25;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v26, v29, 1, v10);
    v88 = v28;
    v89 = v19;
    v90 = v76;
    v91 = v27;
    v92 = a1;
    if (__swift_getEnumTagSinglePayload(v26, 1, v10) == 1)
    {
      goto LABEL_47;
    }

    v71 = *v75;
    v71(v82, v26, v10);
    v70 = lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v81 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v19 = v30 & v81;
      if (((1 << (v30 & v81)) & v83[(v30 & v81) >> 6]) == 0)
      {
        (*v87)(v82, v10);
        v23 = v27;
        v22 = a1;
        v19 = v74;
        v9 = v69;
        goto LABEL_6;
      }

      v78 = 1 << v19;
      v79 = v19 >> 6;
      v25 = a2;
      v31 = *(a2 + 6);
      v32 = v80;
      v84 = *(v80 + 72);
      v33 = *(v80 + 16);
      v33(v14, v31 + v84 * v19, v10);
      v34 = lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      a2 = *(v32 + 8);
      (a2)(v14, v10);
      if (v35)
      {
        break;
      }

      v30 = v19 + 1;
      a2 = v25;
    }

    v80 = v33;
    v81 = v34;
    v36 = (a2)(v82, v10);
    v37 = *(v25 + 32);
    v68 = ((1 << v37) + 63) >> 6;
    v22 = 8 * v68;
    if ((v37 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v82 = a2;
      v69 = &v66;
      MEMORY[0x1EEE9AC00](v36);
      v38 = &v66 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v38, v83, v22);
      v39 = *&v38[8 * v79] & ~v78;
      v40 = *(v25 + 16);
      v78 = v38;
      *&v38[8 * v79] = v39;
      v41 = v40 - 1;
      v26 = v72;
      v42 = v74;
      v43 = v73;
      v44 = v77;
      a2 = v25;
      v45 = v80;
      while (1)
      {
        v79 = v41;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v46 = v27;
LABEL_29:
        v47 = __clz(__rbit64(a1));
        v48 = (a1 - 1) & a1;
        v45(v26, *(v44 + 48) + (v47 | (v46 << 6)) * v84, v10);
        v49 = 0;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v26, v49, 1, v10);
        v88 = v44;
        v89 = v42;
        v90 = v76;
        v91 = v27;
        v92 = v48;
        if (__swift_getEnumTagSinglePayload(v26, 1, v10) == 1)
        {
          outlined destroy of CallControlsService?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          specialized _NativeSet.extractSubset(using:count:)();
          a2 = v60;
          goto LABEL_42;
        }

        v80 = v48;
        v50 = v45;
        v71(v85, v26, v10);
        v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v52 = a2;
        v53 = ~(-1 << *(a2 + 32));
        do
        {
          v54 = v51 & v53;
          v55 = (v51 & v53) >> 6;
          v56 = 1 << (v51 & v53);
          if ((v56 & v83[v55]) == 0)
          {
            (v82)(v85, v10);
            a2 = v52;
            v44 = v77;
            v26 = v72;
            v42 = v74;
            v43 = v73;
            v45 = v50;
            a1 = v80;
            goto LABEL_23;
          }

          v50(v14, *(v52 + 6) + v54 * v84, v10);
          v57 = dispatch thunk of static Equatable.== infix(_:_:)();
          (v82)(v14, v10);
          v51 = v54 + 1;
        }

        while ((v57 & 1) == 0);
        (v82)(v85, v10);
        v58 = *(v78 + 8 * v55);
        *(v78 + 8 * v55) = v58 & ~v56;
        v59 = (v58 & v56) == 0;
        a2 = v52;
        v44 = v77;
        v26 = v72;
        v42 = v74;
        v43 = v73;
        v45 = v50;
        a1 = v80;
        if (v59)
        {
          goto LABEL_23;
        }

        v41 = v79 - 1;
        if (__OFSUB__(v79, 1))
        {
          __break(1u);
        }

        if (v79 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v46 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          v48 = 0;
          v49 = 1;
          goto LABEL_30;
        }

        a1 = *(v42 + 8 * v46);
        ++v27;
        if (a1)
        {
          v27 = v46;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_47:
      outlined destroy of CallControlsService?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v61 = v77;
LABEL_43:
      outlined consume of Set<TUHandle>.Iterator._Variant(v61);
      return a2;
    }
  }

  else
  {
    v26 = v9;
    v27 = v23;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v73)
      {
        a1 = 0;
        v29 = 1;
        v28 = v77;
        goto LABEL_13;
      }

      v24 = *(v19 + 8 * v25);
      ++v27;
      if (v24)
      {
        v9 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v63 = swift_slowAlloc();
  v64 = v67;
  v65 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v63, v68, v83, v68, v25, v19, &v88);
  if (!v64)
  {
    a2 = v65;

    MEMORY[0x1BFB23DF0](v63, -1, -1);
LABEL_42:
    v61 = v88;
    goto LABEL_43;
  }

  result = MEMORY[0x1BFB23DF0](v63, -1, -1);
  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v49 = &v38 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v20 = v19 - 1;
  v40 = a1;
  v41 = (v13 + 32);
  v45 = a3 + 56;
  v46 = v13 + 16;
  v47 = (v13 + 8);
  v48 = a3;
  v42 = v11;
  v43 = a5;
  while (1)
  {
    v39 = v20;
LABEL_3:
    v22 = *a5;
    v21 = a5[1];
    v23 = a5[2];
    v24 = a5[3];
    v25 = a5[4];
    v44 = v23;
    if (!v25)
    {
      break;
    }

    v26 = v24;
LABEL_9:
    v27 = (v25 - 1) & v25;
    (*(v13 + 16))(v11, *(v22 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v12, v17);
    v28 = 0;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v11, v28, 1, v12);
    *a5 = v22;
    a5[1] = v21;
    a5[2] = v44;
    a5[3] = v24;
    a5[4] = v27;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      outlined destroy of CallControlsService?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      specialized _NativeSet.extractSubset(using:count:)();
      return;
    }

    (*v41)(v49, v11, v12);
    v29 = v48;
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v31 = ~(-1 << *(v29 + 32));
    do
    {
      v32 = v30 & v31;
      v33 = (v30 & v31) >> 6;
      v34 = 1 << (v30 & v31);
      if ((v34 & *(v45 + 8 * v33)) == 0)
      {
        (*v47)(v49, v12);
        v11 = v42;
        a5 = v43;
        goto LABEL_3;
      }

      (*(v13 + 16))(v15, *(v48 + 48) + *(v13 + 72) * v32, v12);
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v13 + 8);
      v36(v15, v12);
      v30 = v32 + 1;
    }

    while ((v35 & 1) == 0);
    v36(v49, v12);
    v37 = *(v40 + 8 * v33);
    *(v40 + 8 * v33) = v37 & ~v34;
    v11 = v42;
    a5 = v43;
    if ((v37 & v34) == 0)
    {
      goto LABEL_3;
    }

    v20 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_23;
    }

    if (v39 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= ((v23 + 64) >> 6))
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    v25 = *(v21 + 8 * v26);
    ++v24;
    if (v25)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

void outlined bridged method (mnnbnn) of @objc NSNotificationCenter.post(name:object:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 postNotificationName:a1 object:a2 userInfo:isa];
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_15_25();
  v11 = v5;
  v12 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_9_51();
  v7();
  v8 = *a3;
  *(v8 + 16) = v3 + 1;
  return outlined init with take of TapInteractionHandler(&v10, v8 + 40 * v3 + 32);
}

char *specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, char *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v377) = a8;
  v371 = a7;
  HIDWORD(v361) = a6;
  v384 = a4;
  v375 = a3;
  v376 = a1;
  v386 = a2;
  ObjectType = swift_getObjectType();
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  MEMORY[0x1EEE9AC00](v390);
  v394 = (&v358 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v389 = &v358 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v388 = &v358 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v393 = &v358 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v364 = &v358 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v359 = &v358 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v358 = &v358 - v29;
  v387 = type metadata accessor for Participant.CountdownInfo(0);
  MEMORY[0x1EEE9AC00](v387);
  v378 = (&v358 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  *&v392 = &v358 - v32;
  v391 = type metadata accessor for UUID();
  v368 = *(v391 - 8);
  MEMORY[0x1EEE9AC00](v391);
  v382 = &v358 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v381 = &v358 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v380 = &v358 - v37;
  v369 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v369);
  v379 = (&v358 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v395 = type metadata accessor for Participant(0);
  v363 = *(v395 - 1);
  MEMORY[0x1EEE9AC00](v395);
  v385 = &v358 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v370 = &v358 - v41;
  v42 = type metadata accessor for Date();
  v372 = *(v42 - 8);
  v373 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v374 = &v358 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v367 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v366 = &v358 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v45);
  v46 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v46 - 8);
  v413[3] = a13;
  v413[4] = a15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v413);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, v384, a13);
  v412[3] = a14;
  v412[4] = a16;
  v48 = __swift_allocate_boxed_opaque_existential_1(v412);
  (*(*(a14 - 8) + 32))(v48, a5, a14);
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v384 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v365 = "";
  static DispatchQoS.unspecified.getter();
  *&v408 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v367[13](v366, *MEMORY[0x1E69E8090], v383);
  *(a12 + v384) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  v49 = a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes;
  v414 = 1;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 96) = 1;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v50 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v51 = MEMORY[0x1E69E7CC0];
  *(a12 + v50) = Dictionary.init(dictionaryLiteral:)();
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  v52 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForRemoteScreenShareAttributes;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
  __swift_storeEnumTagSinglePayload(a12 + v52, 1, 1, v53);
  v54 = a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0;
  v55 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v56 = v391;
  v57 = v373;
  *(a12 + v55) = Dictionary.init(dictionaryLiteral:)();
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v366 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = 1;
  v58 = a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v58 = 0;
  *(v58 + 8) = 1;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v59 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a12 + v59) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  v60 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  *v60 = 0;
  v60[1] = 0;
  v61 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  *v61 = 0;
  v61[1] = 0;
  v62 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  *v62 = 0;
  v62[1] = 0;
  v63 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  *v63 = 0;
  v63[1] = 0;
  v64 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  *v64 = 0;
  v64[1] = 0;
  v65 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  *v65 = 0;
  v65[1] = 0;
  v66 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  *v66 = 0;
  v66[1] = 0;
  v67 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  *v67 = 0;
  v67[1] = 0;
  v68 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  *v68 = 0;
  v68[1] = 0;
  v69 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  *v69 = 0;
  v69[1] = 0;
  v70 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  *v70 = 0;
  v70[1] = 0;
  v71 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  *v71 = 0;
  v71[1] = 0;
  v72 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  *v72 = 0;
  v72[1] = 0;
  v73 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  *v73 = 0;
  v73[1] = 0;
  v74 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  *v74 = 0;
  v74[1] = 0;
  v75 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  *v75 = 0;
  v75[1] = 0;
  v76 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  *v76 = 0;
  v76[1] = 0;
  v77 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  *v77 = 0;
  v77[1] = 0;
  v78 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  *v78 = 0;
  v78[1] = 0;
  v79 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  *v79 = 0;
  v79[1] = 0;
  v80 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  *v80 = 0;
  v80[1] = 0;
  v81 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  *v81 = 0;
  v81[1] = 0;
  v82 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  *v82 = 0;
  v82[1] = 0;
  v83 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  *v83 = 0;
  v83[1] = 0;
  v84 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  *v84 = 0;
  v84[1] = 0;
  v85 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  *v85 = 0;
  v85[1] = 0;
  v86 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  *v86 = 0;
  v86[1] = 0;
  v87 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  *v87 = 0;
  v87[1] = 0;
  v88 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  *v88 = 0;
  v88[1] = 0;
  v89 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  *v89 = 0;
  v89[1] = 0;
  v90 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  *v90 = 0;
  v90[1] = 0;
  v91 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  *v91 = 0;
  v91[1] = 0;
  v92 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  *v92 = 0;
  v92[1] = 0;
  v93 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  *v93 = 0;
  v93[1] = 0;
  v94 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  *v94 = 0;
  v94[1] = 0;
  v95 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  *v95 = 0;
  v95[1] = 0;
  v96 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  *v96 = 0;
  v96[1] = 0;
  v97 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  *v97 = 0;
  v97[1] = 0;
  v98 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  *v98 = 0;
  v98[1] = 0;
  v99 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  *v99 = 0;
  v99[1] = 0;
  v100 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  *v100 = 0;
  v100[1] = 0;
  v101 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  *v101 = 0;
  v101[1] = 0;
  v102 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  *v102 = 0;
  v102[1] = 0;
  v103 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  *v103 = 0;
  v103[1] = 0;
  v104 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  *v104 = 0;
  v104[1] = 0;
  v105 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  *v105 = 0;
  v105[1] = 0;
  v106 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  *v106 = 0;
  v106[1] = 0;
  v107 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  *v107 = 0;
  v107[1] = 0;
  v108 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  *v108 = 0;
  v108[1] = 0;
  v109 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  *v109 = 0;
  v109[1] = 0;
  v110 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  *v110 = 0;
  v110[1] = 0;
  v111 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  *v111 = 0;
  v111[1] = 0;
  v112 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  *v112 = 0;
  v112[1] = 0;
  v113 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  *v113 = 0;
  v113[1] = 0;
  v114 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  *v114 = 0;
  v114[1] = 0;
  v115 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  *v115 = 0;
  v115[1] = 0;
  v116 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  *v116 = 0;
  v116[1] = 0;
  v117 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  *v117 = 0;
  v117[1] = 0;
  v118 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  *v118 = 0;
  v118[1] = 0;
  v119 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  *v119 = 0;
  v119[1] = 0;
  v120 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  *v120 = 0;
  v120[1] = 0;
  v121 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  *v121 = 0;
  v121[1] = 0;
  v122 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  *v122 = 0;
  v122[1] = 0;
  v123 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  *v123 = 0;
  v123[1] = 0;
  v124 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  *v124 = 0;
  v124[1] = 0;
  v125 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  *v125 = 0;
  v125[1] = 0;
  v126 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  *v126 = 0;
  v126[1] = 0;
  v127 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  *v127 = 0;
  v127[1] = 0;
  v128 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  *v128 = 0;
  v128[1] = 0;
  v129 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  *v129 = 0;
  v129[1] = 0;
  v130 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  *v130 = 0;
  v130[1] = 0;
  v131 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  *v131 = 0;
  v131[1] = 0;
  v132 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  *v132 = 0;
  v132[1] = 0;
  v133 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  *v133 = 0;
  v133[1] = 0;
  v134 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  *v134 = 0;
  v134[1] = 0;
  v135 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  *v135 = 0;
  v135[1] = 0;
  v136 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  *v136 = 0;
  v136[1] = 0;
  v137 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  *v137 = 0;
  v137[1] = 0;
  v138 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  *v138 = 0;
  v138[1] = 0;
  v139 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *v139 = 0;
  v139[1] = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  __swift_storeEnumTagSinglePayload(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID, 1, 1, v56);
  __swift_storeEnumTagSinglePayload(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageConversationUUID, 1, 1, v56);
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v51;
  v140 = MEMORY[0x1E69E7CD0];
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v140;
  v141 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  *(a12 + v141) = Dictionary.init(dictionaryLiteral:)();
  __swift_storeEnumTagSinglePayload(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDResolvingCroppedAspectRatio, 1, 1, v56);
  v142 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  *v142 = 0;
  v142[1] = 0;
  v143 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a12;
  *v143 = 0u;
  *(v143 + 1) = 0u;
  v360 = v143;
  *(v143 + 4) = 0;
  v144 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  v145 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  *(a12 + v144) = CPCarPlayObserver.init(queue:)();
  v146 = v374;
  Date.init()();
  v147 = swift_getObjectType();
  v148 = (v386 + 192);
  v149 = *(v386 + 192);
  v384 = v147;
  v149();
  v150 = specialized Set.count.getter();

  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v150 == 1;
  v383 = a12;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v377;
  (*(v372 + 16))(v379, v146, v57);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v369 = v149;
    v151 = static Defaults.shared;
    v152 = (*(*static Defaults.shared + 592))();
    v153 = (*(*v151 + 168))();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v154 = static Colors.ParticipantGradients.default;
    __swift_storeEnumTagSinglePayload(v392, 1, 1, v387);
    v155 = v375[3];
    v156 = v375[4];
    __swift_project_boxed_opaque_existential_1(v375, v155);
    v157 = *(v156 + 104);

    v157(&v408, v376, v386, v155, v156);
    if (v410)
    {
      __swift_project_boxed_opaque_existential_1(&v408, v410);
      v158 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v408);
    }

    else
    {
      outlined destroy of CallControlsService?(&v408, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v158 = 0;
    }

    v365 = type metadata accessor for ParticipantContactDetailsCache();
    v367 = specialized static ParticipantContactDetailsCache.cache(for:)();
    v159 = v395;
    v160 = v385;
    v161 = &v385[v395[7]];
    *(v161 + 4) = 0;
    *v161 = 0u;
    *(v161 + 1) = 0u;
    v162 = (v160 + v159[9]);
    *(v160 + v159[10]) = 0;
    *(v160 + v159[11]) = MEMORY[0x1E69E7CD0];
    *(v160 + v159[12]) = 0;
    _s15ConversationKit11ParticipantVWObTm_8(v379, v160);
    v163 = v160 + v159[5];
    v164 = v380;
    v379 = *(v368 + 32);
    v380 = (v368 + 32);
    (v379)(v163, v164, v391);
    v165 = v160 + v159[6];
    *v165 = v152 & 1;
    *(v165 + 1) = 257;
    *(v165 + 3) = 0;
    *(v165 + 4) = v153 & 1;
    outlined consume of Participant.RemoteIdentifiers?(*v161, *(v161 + 1), *(v161 + 2), *(v161 + 3), *(v161 + 4));
    *(v161 + 4) = 0;
    *v161 = 0u;
    *(v161 + 1) = 0u;
    *(v160 + v159[8]) = v154;
    *v162 = 0;
    v162[1] = 0;
    *(v160 + v159[15]) = v158;
    *(v160 + v159[13]) = 0;
    v166 = v392;
    v167 = v387;
    if (__swift_getEnumTagSinglePayload(v392, 1, v387) == 1)
    {
      v168 = v358;
      v169 = v373;
      __swift_storeEnumTagSinglePayload(v358, 1, 1, v373);
      v170 = v359;
      __swift_storeEnumTagSinglePayload(v359, 1, 1, v169);
      v171 = v378;
      __swift_storeEnumTagSinglePayload(v378, 1, 1, v169);
      v172 = v167[5];
      __swift_storeEnumTagSinglePayload(&v171[v172], 1, 1, v169);
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v168, v171, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v173 = v392;
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v170, &v171[v172], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v171[v167[6]] = 0;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v173, 1, v167);
      v149 = v369;
      v175 = v370;
      if (EnumTagSinglePayload != 1)
      {
        outlined destroy of CallControlsService?(v173, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
      }
    }

    else
    {
      v171 = v378;
      _s15ConversationKit11ParticipantVWObTm_8(v166, v378);
      v149 = v369;
      v175 = v370;
    }

    v176 = v395;
    v177 = v385;
    _s15ConversationKit11ParticipantVWObTm_8(v171, &v385[v395[14]]);
    *(v177 + v176[16]) = v367;
    _s15ConversationKit11ParticipantVWObTm_8(v177, v175);
    _s15ConversationKit11ParticipantVWObTm_8(v175, v383 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant);
    v178 = (v149)(v384, v386);
    v179 = specialized Set.count.getter();
    if (v179)
    {
      break;
    }

    v204 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v370 = a10;
    v369 = a9;
    MEMORY[0x1EEE9AC00](v203);
    v206 = v374;
    v205 = v375;
    *(&v358 - 4) = v374;
    *(&v358 - 3) = v205;
    v207 = v376;
    v208 = v386;
    *(&v358 - 2) = v376;
    *(&v358 - 1) = v208;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(_s15ConversationKit0A10ControllerC10activeCall10callCenter31participantMediaProviderCreator0h8CaptionsjK044includeLocalParticipantInVisibleParticipants20screenSharingSession4mode22idsCapabilitiesChecker8defaultsAcA0E0_p_AA0egJ0_pAA0oijK0_pAA0oljK0_pSbAA06ScreentuJ0_pSgAC12ControlsModeOAA015IDSCapabilitiesY0CAA08DefaultsJ0_ptcfcAA0O0VSo8TUHandleCXEfU0_TA_0, (&v358 - 6), v204);
    v210 = v209;

    *(v383 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v210;
    v211 = v205[3];
    v212 = v205[4];
    __swift_project_boxed_opaque_existential_1(v205, v211);
    (*(v212 + 104))(&v408, v207, v208, v211, v212);
    v213 = v410;
    if (v410)
    {
      v214 = v411;
      __swift_project_boxed_opaque_existential_1(&v408, v410);
      v215 = (v214[19])(v213, v214);
      MEMORY[0x1EEE9AC00](v215);
      *(&v358 - 4) = v206;
      *(&v358 - 3) = v205;
      *(&v358 - 2) = v207;
      *(&v358 - 1) = v208;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(_s15ConversationKit0A10ControllerC10activeCall10callCenter31participantMediaProviderCreator0h8CaptionsjK044includeLocalParticipantInVisibleParticipants20screenSharingSession4mode22idsCapabilitiesChecker8defaultsAcA0E0_p_AA0egJ0_pAA0oijK0_pAA0oljK0_pSbAA06ScreentuJ0_pSgAC12ControlsModeOAA015IDSCapabilitiesY0CAA08DefaultsJ0_ptcfcAA0O0VSo8TUHandleCXEfU1_TA_0, (&v358 - 6), v215);
      v217 = v216;

      __swift_destroy_boxed_opaque_existential_1(&v408);
    }

    else
    {
      outlined destroy of CallControlsService?(&v408, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v217 = MEMORY[0x1E69E7CC0];
    }

    v218 = v383;
    *(v383 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v217;
    outlined init with copy of CallCenterProvider(v205, v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v219 = (v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v219 = v207;
    v219[1] = v208;
    outlined init with copy of CallCenterProvider(v413, v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of CallCenterProvider(v412, v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v361) & 1;
    outlined init with copy of CallCenterProvider(v205, &v408);
    v220 = v366;
    swift_beginAccess();
    v221 = *(v218 + v220);
    v222 = swift_unknownObjectRetain_n();
    v223 = specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v222, &v408, v221, 0, v384, v208);
    v224 = v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v224 = v223;
    *(v224 + 8) = v225;
    *(v224 + 16) = v226;
    v227 = v370;
    *(v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = v369;
    v228 = (v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v228 = v227;
    v228[1] = a11;
    outlined init with copy of CallCenterProvider(v205, &v408);
    v229 = objc_opt_self();

    swift_unknownObjectRetain();
    v387 = v229;
    v230 = [v229 defaultCenter];
    v231 = objc_allocWithZone(type metadata accessor for VideoMessageController(0));
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v218 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v232;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v371, &v404, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
    if (v406)
    {
      outlined init with take of TapInteractionHandler(&v404, &v408);
    }

    else
    {
      v410 = &type metadata for SingleDisplaySharingSession;
      v411 = &protocol witness table for SingleDisplaySharingSession;
      v233 = swift_allocObject();
      *&v408 = v233;
      v233[1] = 0u;
      v233[2] = 0u;
      v233[3] = 0u;
      v233[4] = 0u;
      v233[5] = 0u;
      v233[6] = 0u;
    }

    LODWORD(v167) = v377;
    v234 = v360;
    swift_beginAccess();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v408, v234, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
    swift_endAccess();
    swift_beginAccess();
    v235 = 0;
    if (*(v224 + 16) < 0 && v167 == 1)
    {
      v236 = v205[3];
      v237 = v205[4];
      __swift_project_boxed_opaque_existential_1(v205, v236);
      v238 = (*(v237 + 80))(v236, v237);
      v235 = [v238 isPreviewRunning];
    }

    v239 = v383;
    *(v383 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v235;
    v403.receiver = v239;
    v403.super_class = ObjectType;
    v240 = objc_msgSendSuper2(&v403, sel_init);
    v241 = *&v240[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type ConversationController and conformance ConversationController, type metadata accessor for ConversationController);
    v242 = v240;
    v243 = v241;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    v244 = v205[3];
    v245 = v205[4];
    __swift_project_boxed_opaque_existential_1(v205, v244);
    (*(v245 + 104))(&v404, v376, v386, v244, v245);
    if (v406)
    {
      outlined init with take of TapInteractionHandler(&v404, &v408);
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v408);
    }

    else
    {
      outlined destroy of CallControlsService?(&v404, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    v246 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v247 = &v242[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    swift_beginAccess();
    v248 = *v247;
    v249 = v247[1];
    *v247 = partial apply for closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:);
    v247[1] = v246;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v248, v249);

    if ((v167 - 1) <= 1)
    {
      v250 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(&v242[v250], &v408);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd, &_s15ConversationKit31ParticipantMediaProviderCreator_pMR);
      if (swift_dynamicCast())
      {
        v402 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v401, &v400);
        swift_unknownObjectWeakAssign();
        v410 = &type metadata for DefaultParticipantMediaProviderCreator;
        v411 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        *&v408 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v400, v408 + 16);
        swift_beginAccess();
        __swift_destroy_boxed_opaque_existential_1(&v242[v250]);
        outlined init with take of TapInteractionHandler(&v408, &v242[v250]);
        swift_endAccess();
      }

      else
      {
        v401 = 0;
        v402 = 1;
        outlined destroy of CallControlsService?(&v401, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMR);
      }
    }

    v251 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v242[v251], &v408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd, &_s15ConversationKit34ParticipantCaptionsProviderCreator_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v400, v399);
      v399[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v410 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v411 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      *&v408 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v399, v408 + 16);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(&v242[v251]);
      outlined init with take of TapInteractionHandler(&v408, &v242[v251]);
      swift_endAccess();
    }

    else
    {
      v400 = xmmword_1BC4BB7D0;
      outlined destroy of CallControlsService?(&v400, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMR);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v252 = &v242[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    swift_beginAccess();
    v253 = *v252;
    v254 = *(v252 + 1);
    *&v392 = v252;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(v253, v254, v252[16], 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(&v408, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v255 = &v242[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v256 = *(v255 + 24);
    v257 = *(v255 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v255, v256);
    v258 = *(v257 + 56);
    v259 = v242;
    v258(v240, &protocol witness table for ConversationController, v256, v257);
    swift_endAccess();
    v260 = *(**&v259[OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker] + 176);
    v261 = v259;

    v260(v240, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    v262 = (*(v386 + 200))(v384);
    ConversationController.updateScreenSharingSession(with:)(v262);

    LOBYTE(v255) = ConversationController.updateIsUsingIPadExternalCamera()();
    v263 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    swift_beginAccess();
    v261[v263] = v255 & 1;
    v148 = [v387 defaultCenter];
    v180 = &off_1E7FE9000;
    [v148 addObserver:v261 selector:sel_handleLocalVideoPreviewFirstFrameArrived_ name:*MEMORY[0x1E69D90D8] object:0];

    [v148 addObserver:v261 selector:sel_handleLocalVideoAttributesChanged_ name:*MEMORY[0x1E69D90C8] object:0];
    [v148 addObserver:v261 selector:sel_handleSendingVideoChanged_ name:*MEMORY[0x1E69D8E98] object:0];
    [v148 addObserver:v261 selector:sel_handleAudioUplinkChange_ name:*MEMORY[0x1E69D8EB0] object:0];
    [v148 addObserver:v261 selector:sel_handleCallSharePlayCapabilityDidChange_ name:*MEMORY[0x1E69D8EA0] object:0];
    v264 = *MEMORY[0x1E69D8DE0];
    v377 = v261;
    [v148 addObserver:v261 selector:sel_handleAnyRemoteSupportsRequestToScreenShareDidChange_ name:v264 object:0];
    if (v167 == 1)
    {
      v265 = v377;
      [v148 addObserver:v377 selector:sel_handleCameraZoomBecameAvailable_ name:*MEMORY[0x1E69D90F0] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraZoomBecameUnavailable_ name:*MEMORY[0x1E69D90F8] object:0];
      [v148 addObserver:v265 selector:sel_handlelocalCameraUIDDidChange_ name:*MEMORY[0x1E69D9078] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraCinematicFramingAvailabilityChanged_ name:*MEMORY[0x1E69D9058] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraCinematicFramingEnabledChanged_ name:*MEMORY[0x1E69D9060] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraReactionEffectsEnabledChanged_ name:*MEMORY[0x1E69D90D0] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraStudioLightEnabledChanged_ name:*MEMORY[0x1E69D90E0] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraBlurEnabledChanged_ name:*MEMORY[0x1E69D9050] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraListDidChange_ name:*MEMORY[0x1E69D9098] object:0];
      [v148 addObserver:v265 selector:sel_handleSystemPreferredCameraChanged_ name:*MEMORY[0x1E69D90E8] object:0];
    }

    v266 = v377;
    [v148 addObserver:v377 selector:sel_handleScreenSharingDidChange_ name:*MEMORY[0x1E69D8EA8] object:0];
    [v148 addObserver:v266 selector:sel_handleVideoCallStatusDidChange_ name:*MEMORY[0x1E69D8E58] object:0];
    [v148 addObserver:v266 selector:sel_handleCallStatusDidChange_ name:*MEMORY[0x1E69D8E08] object:0];
    [v148 addObserver:v266 selector:sel_handleCallConnected_ name:*MEMORY[0x1E69D8DF0] object:0];
    [v148 addObserver:v266 selector:sel_handleCallStartedConnecting_ name:*MEMORY[0x1E69D8E00] object:0];
    if (!v167)
    {
      [v148 addObserver:v377 selector:sel_handleBluetoothAudioFormatChanged_ name:*MEMORY[0x1E69D8DE8] object:0];
    }

    v267 = v377;
    [v148 addObserver:v377 selector:sel_handleCallConversationChanged_ name:*MEMORY[0x1E69D8E68] object:0];
    [v148 addObserver:v267 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9088] object:0];
    [v148 addObserver:v267 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9080] object:0];
    [v148 addObserver:v267 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9090] object:0];
    if (Features.nudityDetectionEnabled.getter())
    {
      v268 = MEMORY[0x1BFB209B0](0xD000000000000042, 0x80000001BC509370);
      [v148 addObserver:v377 selector:sel_handleLocalSensitiveContentAnalysisChanged_ name:v268 object:0];
    }

    v269 = v377;
    [v148 addObserver:v377 selector:sel_handleHoldMusicDidChange_ name:*MEMORY[0x1E69D8E18] object:0];
    [v148 addObserver:v269 selector:sel_handleScreenSharingAttributesChanged_ name:*MEMORY[0x1E69D8ED8] object:0];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_72;
    }

    v181 = sel_handleWindowDidFinishResize_;
    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_101;
    }

LABEL_71:
    v270 = v377;
    [v148 *(v180 + 3712)];
    v271 = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC509350);
    [v148 *(v180 + 3712)];

LABEL_72:
    LODWORD(v387) = v167;
    v272 = v377;
    [v148 *(v180 + 3712)];
    [v148 *(v180 + 3712)];
    [v148 *(v180 + 3712)];
    [v148 *(v180 + 3712)];
    [v148 *(v180 + 3712)];
    [v148 *(v180 + 3712)];
    [v148 *(v180 + 3712)];
    v273 = *MEMORY[0x1E69D8D68];
    v274 = *(v180 + 3712);
    v367 = v148;
    [v148 v274];
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v275 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v276 = swift_allocObject();
    *(v276 + 16) = xmmword_1BC4BB990;
    v277 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    v278 = v377;
    swift_beginAccess();
    v279 = v364;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v278[v277], v364, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized >> prefix<A>(_:)(v279, v280, v281, v282, v283, v284, v285, v286, v358, v359, v360, v361, ObjectType, v363, v364, v365, v366, v367);
    v288 = v287;
    v290 = v289;
    outlined destroy of CallControlsService?(v279, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v291 = MEMORY[0x1E69E6158];
    *(v276 + 56) = MEMORY[0x1E69E6158];
    v292 = lazy protocol witness table accessor for type String and conformance String();
    *(v276 + 64) = v292;
    *(v276 + 32) = v288;
    *(v276 + 40) = v290;
    v293 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    swift_beginAccess();
    *&v408 = *&v278[v293];
    type metadata accessor for TUConversationState(0);
    v294 = String.init<A>(reflecting:)();
    *(v276 + 96) = v291;
    *(v276 + 104) = v292;
    *(v276 + 72) = v294;
    *(v276 + 80) = v295;
    v296 = *(v392 + 16);
    v408 = *v392;
    v409 = v296;
    v297 = String.init<A>(reflecting:)();
    *(v276 + 136) = v291;
    *(v276 + 144) = v292;
    *(v276 + 112) = v297;
    *(v276 + 120) = v298;
    LOBYTE(v408) = v387;
    v299 = String.init<A>(reflecting:)();
    *(v276 + 176) = v291;
    *(v276 + 184) = v292;
    v365 = v292;
    *(v276 + 152) = v299;
    *(v276 + 160) = v300;
    v301 = static os_log_type_t.default.getter();
    v366 = v275;
    os_log(_:dso:log:type:_:)("Created ConversationController conversationUUID=%@ state=%@ broadcastingState=%@ mode=%@", 88, 2, &dword_1BBC58000, v275, v301, v276);

    v302 = swift_allocObject();
    v392 = xmmword_1BC4BA940;
    *(v302 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    v303 = (*(v363 + 80) + 32) & ~*(v363 + 80);
    v387 = *(v363 + 72);
    v304 = swift_allocObject();
    *(v304 + 16) = v392;
    v305 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_17(&v278[v305], v304 + v303);
    swift_beginAccess();
    *&v408 = v304;

    specialized Array.append<A>(contentsOf:)(v306);
    v307 = v408;
    v308 = *(v408 + 16);
    if (!v308)
    {

      v148 = MEMORY[0x1E69E7CC0];
LABEL_89:
      *&v408 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
      v343 = BidirectionalCollection<>.joined(separator:)();
      v345 = v344;

      *&v408 = v343;
      *(&v408 + 1) = v345;
      v346 = MEMORY[0x1E69E6158];
      v347 = String.init<A>(reflecting:)();
      v348 = v365;
      *(v302 + 56) = v346;
      *(v302 + 64) = v348;
      *(v302 + 32) = v347;
      *(v302 + 40) = v349;
      v350 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Initial participant identifiers: %@", 35, 2, &dword_1BBC58000, v366, v350, v302);

      v351 = v377;
      ConversationController.fetchExistingScreenSharingAttributes()();
      if (v351[OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive] == 1)
      {
        v352 = v375;
        v353 = v375[3];
        v354 = v375[4];
        __swift_project_boxed_opaque_existential_1(v375, v353);
        v355 = (*(v354 + 80))(v353, v354);
        [v355 startPreview];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        outlined destroy of CallControlsService?(v371, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
      }

      else
      {
        outlined destroy of CallControlsService?(v371, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        v352 = v375;
      }

      v356 = v372;
      v357 = v374;
      __swift_destroy_boxed_opaque_existential_1(v412);
      __swift_destroy_boxed_opaque_existential_1(v413);
      (*(v356 + 8))(v357, v373);
      __swift_destroy_boxed_opaque_existential_1(v352);
      return v377;
    }

    v364 = v302;
    v398 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v309 = 0;
    v310 = *(v307 + 2);
    v385 = v307;
    v386 = v310;
    v311 = &v307[v303];
    v148 = v398;
    v149 = (v368 + 16);
    v378 = (v368 + 8);
    v383 = v368 + 16;
    v384 = v308;
    while (v386 != v309)
    {
      if (v309 >= *(v307 + 2))
      {
        goto LABEL_95;
      }

      *&v392 = v148;
      v313 = v389;
      v312 = v390;
      v314 = *(v390 + 48);
      _s15ConversationKit11ParticipantVWOcTm_17(v311, &v389[v314]);
      v315 = v394;
      *v394 = v309;
      v316 = v315 + *(v312 + 48);
      _s15ConversationKit11ParticipantVWObTm_8(&v313[v314], v316);
      *&v408 = v309;
      v396 = dispatch thunk of CustomStringConvertible.description.getter();
      v397 = v317;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v318 = *v149;
      v319 = v393;
      v320 = v391;
      (*v149)(v393, v316 + v395[5], v391);
      __swift_storeEnumTagSinglePayload(v319, 0, 1, v320);
      v321 = v319;
      v322 = v388;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v321, v388, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (__swift_getEnumTagSinglePayload(v322, 1, v320) == 1)
      {
        outlined destroy of CallControlsService?(v322, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v323 = 0xE300000000000000;
        v324 = 7104878;
      }

      else
      {
        v325 = v381;
        (v379)(v381, v322, v320);
        v318(v382, v325, v320);
        v326 = String.init<A>(reflecting:)();
        v327 = v320;
        v324 = v326;
        v323 = v328;
        (*v378)(v325, v327);
      }

      v148 = v392;
      outlined destroy of CallControlsService?(v393, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      MEMORY[0x1BFB20B10](v324, v323);

      MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
      v329 = v316 + v395[7];
      v330 = *v329;
      if (*v329)
      {
        v332 = *(v329 + 24);
        v331 = *(v329 + 32);
        v333 = *(v329 + 16);
        v334 = *(v329 + 8);
        *&v408 = v330;
        *(&v408 + 1) = v334;
        v409 = v333 & 1;
        v410 = v332;
        v411 = v331;

        v335 = v330;
        v336 = String.init<A>(reflecting:)();
        v338 = v337;
      }

      else
      {
        v338 = 0xE300000000000000;
        v336 = 7104878;
      }

      v149 = v383;
      MEMORY[0x1BFB20B10](v336, v338);

      v339 = v396;
      v340 = v397;
      outlined destroy of CallControlsService?(v394, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
      v398 = v148;
      v341 = v148[2];
      if (v341 >= v148[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v148 = v398;
      }

      v148[2] = v341 + 1;
      v342 = &v148[2 * v341];
      v342[4] = v339;
      v342[5] = v340;
      ++v309;
      v311 += v387;
      v307 = v385;
      if (v384 == v309)
      {

        v302 = v364;
        goto LABEL_89;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  v180 = v179;
  v407 = MEMORY[0x1E69E7CC0];
  v181 = &v407;
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v404 = specialized Set.startIndex.getter();
  *(&v404 + 1) = v182;
  v405 = v183 & 1;
  if (v180 < 0)
  {
    __break(1u);
LABEL_101:
    swift_once();
    goto LABEL_71;
  }

  v184 = 0;
  *&v392 = v178 & 0xC000000000000001;
  v185 = v178 & 0xFFFFFFFFFFFFFF8;
  if (v178 < 0)
  {
    v185 = v178;
  }

  v387 = v185;
  v385 = (v178 + 56);
  v378 = (v178 + 64);
  while (1)
  {
    v186 = __OFADD__(v184, 1);
    v184 = (v184 + 1);
    if (v186)
    {
      __break(1u);
      goto LABEL_94;
    }

    v187 = v404;
    v188 = v405;
    specialized Set.subscript.getter(v404, *(&v404 + 1), v405, v178);
    v149 = v189;
    v190 = TUNormalizedHandleForTUHandle();
    if (v190)
    {
      v191 = v190;

      v149 = v191;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v148 = *(v407 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v392)
    {
      break;
    }

    if (v188)
    {
      goto LABEL_103;
    }

    if ((v187 & 0x8000000000000000) != 0)
    {
      goto LABEL_96;
    }

    v193 = 1 << *(v178 + 32);
    if (v187 >= v193)
    {
      goto LABEL_96;
    }

    v194 = v187 >> 6;
    v195 = *&v385[8 * (v187 >> 6)];
    if (((v195 >> v187) & 1) == 0)
    {
      goto LABEL_97;
    }

    if (*(v178 + 36) != DWORD2(v187))
    {
      goto LABEL_98;
    }

    v196 = v195 & (-2 << (v187 & 0x3F));
    if (v196)
    {
      v193 = __clz(__rbit64(v196)) | v187 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v148 = (v194 << 6);
      v198 = v194 + 1;
      v199 = &v378[v194];
      while (v198 < (v193 + 63) >> 6)
      {
        v201 = *v199++;
        v200 = v201;
        v148 += 8;
        ++v198;
        if (v201)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v187, *(&v187 + 1), 0);
          v193 = v148 + __clz(__rbit64(v200));
          goto LABEL_36;
        }
      }

      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v187, *(&v187 + 1), 0);
    }

LABEL_36:
    v202 = *(v178 + 36);
    *&v404 = v193;
    *(&v404 + 1) = v202;
    v405 = 0;
LABEL_37:
    if (v184 == v180)
    {

      v203 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v404, *(&v404 + 1), v405);
      v204 = v407;
      goto LABEL_40;
    }
  }

  if (v188)
  {
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
    v197 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v197(&v408, 0);
    goto LABEL_37;
  }

  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

void specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_29();
  LODWORD(v446) = v26;
  v441 = v27;
  HIDWORD(v428) = v28;
  v30 = v29;
  v32 = v31;
  v458 = v33;
  v445 = v34;
  ObjectType = swift_getObjectType();
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  v467 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32();
  v462 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  v461 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v466 = v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  v431 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v426 = v48;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_32();
  v425 = v50;
  v51 = OUTLINED_FUNCTION_4_24();
  v459 = type metadata accessor for Participant.CountdownInfo(v51);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v447 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_1();
  v465 = v56;
  OUTLINED_FUNCTION_4_24();
  v464 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v439 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4();
  v451 = v59;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5();
  v450 = v61;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_32();
  v449 = v63;
  v64 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant.State(v64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_40();
  v448 = v66;
  v67 = OUTLINED_FUNCTION_4_24();
  v452 = type metadata accessor for Participant(v67);
  OUTLINED_FUNCTION_1();
  v430 = v68;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_4();
  v457 = v70;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_32();
  v440 = v72;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v442 = v74;
  v443 = v73;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_40();
  v444 = v75;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v453 = v77;
  v455 = v76;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_40();
  v437 = v78;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_40();
  v434 = v80;
  OUTLINED_FUNCTION_4_24();
  v81 = type metadata accessor for DispatchQoS();
  v82 = OUTLINED_FUNCTION_22(v81);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_24_5();
  v487 = a25;
  v488 = a26;
  __swift_allocate_boxed_opaque_existential_1(v486);
  OUTLINED_FUNCTION_2_3();
  (*(v83 + 32))();
  v485[3] = &type metadata for DefaultParticipantMediaProviderCreator;
  v485[4] = &protocol witness table for DefaultParticipantMediaProviderCreator;
  OUTLINED_FUNCTION_20();
  v485[0] = swift_allocObject();
  outlined init with take of DefaultParticipantMediaProviderCreator(v32, v485[0] + 16);
  v484[3] = &type metadata for DefaultParticipantCaptionsProviderCreator;
  v484[4] = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
  OUTLINED_FUNCTION_24();
  v484[0] = swift_allocObject();
  outlined init with take of DefaultParticipantCaptionsProviderCreator(v30, v484[0] + 16);
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v432 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  *&v480 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_261_2();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v84, v85);
  v86 = OUTLINED_FUNCTION_45_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(v86, v87);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v453 + 104))(v437, *MEMORY[0x1E69E8090], v455);
  *(a24 + v432) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  OUTLINED_FUNCTION_336(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes);
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v88 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v112 = MEMORY[0x1E69E7CC0];
  *(a24 + v88) = Dictionary.init(dictionaryLiteral:)();
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  OUTLINED_FUNCTION_466(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate);
  v93 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  OUTLINED_FUNCTION_13_83();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v94, v95);
  OUTLINED_FUNCTION_239_4();
  *(a24 + v93) = Dictionary.init(dictionaryLiteral:)();
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v433 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = v434;
  v96 = a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v96 = 0;
  v96[8] = v434;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v97 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a24 + v97) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v464);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v464);
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v112;
  v104 = MEMORY[0x1E69E7CD0];
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v104;
  v105 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  OUTLINED_FUNCTION_316_1();
  *(a24 + v105) = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v464);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  v109 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a24;
  *v109 = 0u;
  *(v109 + 16) = 0u;
  *(v109 + 32) = 0;
  v110 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_24_1();
  v111 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  OUTLINED_FUNCTION_170();
  *(a24 + v110) = CPCarPlayObserver.init(queue:)();
  Date.init()();
  LOBYTE(v112) = v458 - 64;
  v456 = swift_getObjectType();
  v438 = *(v458 + 192);
  v438();
  specialized Set.count.getter();
  OUTLINED_FUNCTION_173();

  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v110 == 1;
  v454 = a24;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v446;
  v113 = OUTLINED_FUNCTION_325_1();
  v114(v113);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    OUTLINED_FUNCTION_0_1();
    (*(v115 + 592))();
    OUTLINED_FUNCTION_0_1();
    (*(v116 + 168))();
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_289_0(&one-time initialization token for default);
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v117 = static Colors.ParticipantGradients.default;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v459);
    v121 = v487;
    v122 = v488;
    OUTLINED_FUNCTION_113_5(v486);
    v123 = *(v122 + 104);

    v123(&v480, v445, v458, v121, v122);
    v435 = v109;
    if (v482)
    {
      __swift_project_boxed_opaque_existential_1(&v480, v482);
      OUTLINED_FUNCTION_15_14();
      v124 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v480);
    }

    else
    {
      outlined destroy of CallControlsService?(&v480, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v124 = 0;
    }

    v427 = type metadata accessor for ParticipantContactDetailsCache();
    v125 = specialized static ParticipantContactDetailsCache.cache(for:)();
    OUTLINED_FUNCTION_297_1();
    v126 = (v457 + v452[9]);
    *(v457 + v452[10]) = 0;
    *(v457 + v452[11]) = MEMORY[0x1E69E7CD0];
    *(v457 + v452[12]) = 0;
    OUTLINED_FUNCTION_89_9();
    _s15ConversationKit11ParticipantVWObTm_8(v448, v457);
    v127 = v449;
    v448 = *(v439 + 32);
    v449 = v439 + 32;
    v448(v457 + v452[5], v127, v464);
    OUTLINED_FUNCTION_489(v457 + v452[6]);
    OUTLINED_FUNCTION_516(v128);
    OUTLINED_FUNCTION_297_1();
    *(v457 + v452[8]) = v117;
    *v126 = 0;
    v126[1] = 0;
    *(v457 + v452[15]) = v124;
    *(v457 + v452[13]) = 0;
    v129 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_115(v129, v130, v459);
    if (v131)
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v132, v133, v134, v443);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
      v154 = v447;
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      v143 = *(v459 + 20);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v147);
      OUTLINED_FUNCTION_455();
      OUTLINED_FUNCTION_123_2();
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v148, v149, v150, v151);
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v426, v447 + v143, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      *(v447 + *(v459 + 24)) = 0;
      v152 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v152, v153, v459);
      v109 = v440;
      v155 = v438;
      if (!v131)
      {
        outlined destroy of CallControlsService?(v465, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_57();
      v154 = v447;
      _s15ConversationKit11ParticipantVWObTm_8(v465, v447);
      v109 = v440;
      v155 = v438;
    }

    OUTLINED_FUNCTION_24_57();
    v156 = v457;
    _s15ConversationKit11ParticipantVWObTm_8(v154, v457 + v157);
    *(v457 + v452[16]) = v125;
    OUTLINED_FUNCTION_43_30();
    _s15ConversationKit11ParticipantVWObTm_8(v457, v109);
    _s15ConversationKit11ParticipantVWObTm_8(v109, v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant);
    v158 = (v155)(v456, v458);
    v159 = specialized Set.count.getter();
    if (v159)
    {
      break;
    }

    v186 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v440 = a22;
    MEMORY[0x1EEE9AC00](v185);
    OUTLINED_FUNCTION_182_5();
    *(v187 - 32) = v444;
    *(v187 - 24) = v486;
    *(v187 - 16) = v445;
    *(v187 - 8) = v458;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply, v188, v186);
    OUTLINED_FUNCTION_439();
    *(v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v109;
    OUTLINED_FUNCTION_179_2(v486, v487);
    v189 = OUTLINED_FUNCTION_5_81();
    v190(v189);
    if (v482)
    {
      v191 = v483;
      OUTLINED_FUNCTION_529(&v480);
      v192 = OUTLINED_FUNCTION_246();
      v194 = v193(v192, v191);
      MEMORY[0x1EEE9AC00](v194);
      OUTLINED_FUNCTION_182_5();
      *(v195 - 32) = v444;
      *(v195 - 24) = v486;
      *(v195 - 16) = v445;
      *(v195 - 8) = v458;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(closure #3 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply, v196, v194);
      OUTLINED_FUNCTION_246();

      __swift_destroy_boxed_opaque_existential_1(&v480);
    }

    else
    {
      outlined destroy of CallControlsService?(&v480, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v186 = MEMORY[0x1E69E7CC0];
    }

    *(v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v186;
    outlined init with copy of CallCenterProvider(v486, v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v197 = (v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v197 = v445;
    v197[1] = v458;
    outlined init with copy of CallCenterProvider(v485, v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of CallCenterProvider(v484, v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v428) & 1;
    outlined init with copy of CallCenterProvider(v486, &v480);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v198 = *(v454 + v433);
    v199 = swift_unknownObjectRetain_n();
    v200 = specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v199, &v480, v198, 0, v456, v458);
    v201 = v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v201 = v200;
    *(v201 + 1) = v202;
    v201[16] = v203;
    *(v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = a21;
    v204 = (v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v204 = a22;
    v204[1] = a23;
    outlined init with copy of CallCenterProvider(v486, &v480);
    objc_opt_self();
    OUTLINED_FUNCTION_366();

    swift_unknownObjectRetain();
    v205 = [a23 defaultCenter];
    v206 = OUTLINED_FUNCTION_24_1();
    v207 = objc_allocWithZone(type metadata accessor for VideoMessageController(v206));
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v208;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v441, &v476, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
    if (v478)
    {
      outlined init with take of TapInteractionHandler(&v476, &v480);
    }

    else
    {
      v482 = &type metadata for SingleDisplaySharingSession;
      v483 = &protocol witness table for SingleDisplaySharingSession;
      OUTLINED_FUNCTION_194();
      *&v480 = swift_allocObject();
      OUTLINED_FUNCTION_467(v480);
    }

    LODWORD(v112) = v446;
    OUTLINED_FUNCTION_30_2(v435, &v476);
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v480, v435, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
    swift_endAccess();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v209 = 0;
    if (v201[16] < 0 && v446 == 1)
    {
      OUTLINED_FUNCTION_423_0();
      v210 = OUTLINED_FUNCTION_56_19();
      v212 = v211(v210);
      v209 = [v212 isPreviewRunning];
    }

    *(v454 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v209;
    v475.receiver = v454;
    v475.super_class = ObjectType;
    v213 = objc_msgSendSuper2(&v475, sel_init);
    v214 = *&v213[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    OUTLINED_FUNCTION_259_1();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v215, v216);
    v217 = v213;
    v218 = v214;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    v219 = v487;
    v220 = v488;
    OUTLINED_FUNCTION_179_2(v486, v487);
    (*(v220 + 104))(&v476, v445, v458, v219, v220);
    if (v478)
    {
      outlined init with take of TapInteractionHandler(&v476, &v480);
      v218 = v217;
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v480);
    }

    else
    {
      outlined destroy of CallControlsService?(&v476, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

    OUTLINED_FUNCTION_20();
    v221 = swift_allocObject();
    OUTLINED_FUNCTION_278(v221);
    swift_unknownObjectWeakInit();

    v222 = &v217[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    OUTLINED_FUNCTION_3_5(&v217[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock], &v476);
    *v222 = closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply;
    v222[1] = v218;

    v223 = OUTLINED_FUNCTION_43_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v223, v224);

    if (v446 - 1 <= 1)
    {
      v225 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(&v217[v225], &v480);
      v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd, &_s15ConversationKit31ParticipantMediaProviderCreator_pMR);
      if (OUTLINED_FUNCTION_518(&v473, &v480, v226))
      {
        v474 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v473, &v472);
        swift_unknownObjectWeakAssign();
        v482 = &type metadata for DefaultParticipantMediaProviderCreator;
        v483 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        OUTLINED_FUNCTION_20();
        *&v480 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v472, v480 + 16);
        OUTLINED_FUNCTION_30_2(&v217[v225], &v473);
        __swift_destroy_boxed_opaque_existential_1(&v217[v225]);
        outlined init with take of TapInteractionHandler(&v480, &v217[v225]);
        swift_endAccess();
      }

      else
      {
        v473 = 0;
        v474 = 1;
        outlined destroy of CallControlsService?(&v473, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMR);
      }
    }

    v227 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v217[v227], &v480);
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd, &_s15ConversationKit34ParticipantCaptionsProviderCreator_pMR);
    if (OUTLINED_FUNCTION_518(&v472, &v480, v228))
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v472, v471);
      v471[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v482 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v483 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      OUTLINED_FUNCTION_24();
      *&v480 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v471, v480 + 16);
      OUTLINED_FUNCTION_30_2(&v217[v227], &v472);
      __swift_destroy_boxed_opaque_existential_1(&v217[v227]);
      outlined init with take of TapInteractionHandler(&v480, &v217[v227]);
      swift_endAccess();
    }

    else
    {
      v472 = xmmword_1BC4BB7D0;
      outlined destroy of CallControlsService?(&v472, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMR);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v229 = &v217[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v465 = v229;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v229, *(v229 + 1), v229[16], 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(&v480, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for shared);
    }

    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v230 = &v217[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    OUTLINED_FUNCTION_30_2(&v217[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter], &v480);
    v231 = *(v230 + 3);
    v232 = *(v230 + 4);
    v233 = OUTLINED_FUNCTION_208();
    __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
    v235 = *(v232 + 56);
    v236 = v217;
    v235(v213, &protocol witness table for ConversationController, v231, v232);
    swift_endAccess();
    OUTLINED_FUNCTION_0_1();
    v238 = *(v237 + 176);
    v239 = v236;
    OUTLINED_FUNCTION_173();

    v238(v213, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    (*(v458 + 200))(v456);
    OUTLINED_FUNCTION_413_0();
    ConversationController.updateScreenSharingSession(with:)(v240);

    LOBYTE(v230) = ConversationController.updateIsUsingIPadExternalCamera()();
    v241 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    OUTLINED_FUNCTION_3_5(&v236[OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera], v471);
    v236[v241] = v230 & 1;
    v155 = [a23 defaultCenter];
    v156 = &off_1E7FE9000;
    OUTLINED_FUNCTION_374_0(v155, sel_addObserver_selector_name_object_, v242, sel_handleLocalVideoPreviewFirstFrameArrived_, *MEMORY[0x1E69D90D8]);

    v243 = OUTLINED_FUNCTION_87_9();
    [v243 v244];
    v245 = OUTLINED_FUNCTION_87_9();
    [v245 v246];
    v247 = OUTLINED_FUNCTION_87_9();
    [v247 v248];
    v249 = OUTLINED_FUNCTION_87_9();
    [v249 v250];
    v251 = OUTLINED_FUNCTION_146_4();
    v446 = v236;
    OUTLINED_FUNCTION_374_0(v251, v252, v253, v254, v255);
    if (v112 == 1)
    {
      v256 = OUTLINED_FUNCTION_146_4();
      OUTLINED_FUNCTION_330_0(v256, v257, v258, v259, v260);
      v261 = OUTLINED_FUNCTION_64_18();
      [v261 v262];
      v263 = OUTLINED_FUNCTION_64_18();
      [v263 v264];
      v265 = OUTLINED_FUNCTION_64_18();
      [v265 v266];
      v267 = OUTLINED_FUNCTION_64_18();
      [v267 v268];
      v269 = OUTLINED_FUNCTION_64_18();
      [v269 v270];
      v271 = OUTLINED_FUNCTION_64_18();
      [v271 v272];
      v273 = OUTLINED_FUNCTION_64_18();
      [v273 v274];
      v275 = OUTLINED_FUNCTION_64_18();
      [v275 v276];
      v277 = OUTLINED_FUNCTION_64_18();
      [v277 v278];
    }

    v279 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_330_0(v279, v280, v281, v282, v283);
    v284 = OUTLINED_FUNCTION_64_18();
    [v284 v285];
    v286 = OUTLINED_FUNCTION_64_18();
    [v286 v287];
    v288 = OUTLINED_FUNCTION_64_18();
    [v288 v289];
    v290 = OUTLINED_FUNCTION_64_18();
    [v290 v291];
    if (!v112)
    {
      v292 = OUTLINED_FUNCTION_146_4();
      [v292 v293];
    }

    v294 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_330_0(v294, v295, v296, v297, v298);
    v299 = OUTLINED_FUNCTION_64_18();
    OUTLINED_FUNCTION_442(v299, v300, v301, v302, v303);
    v304 = OUTLINED_FUNCTION_64_18();
    OUTLINED_FUNCTION_442(v304, v305, v306, v307, v308);
    v309 = OUTLINED_FUNCTION_64_18();
    OUTLINED_FUNCTION_442(v309, v310, v311, v312, v313);
    if (Features.nudityDetectionEnabled.getter())
    {
      OUTLINED_FUNCTION_294_0();
      v316 = MEMORY[0x1BFB209B0](v314 + 48, v315 | 0x8000000000000000);
      v317 = OUTLINED_FUNCTION_146_4();
      [v317 v318];
    }

    v319 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_330_0(v319, v320, v321, v322, v323);
    v324 = OUTLINED_FUNCTION_64_18();
    [v324 v325];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_73;
    }

    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_102;
    }

LABEL_72:
    v326 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_163_3(v326, v327, v328, v329, v330);
    OUTLINED_FUNCTION_294_0();
    v333 = MEMORY[0x1BFB209B0](v331 + 8, v332 | 0x8000000000000000);
    v334 = OUTLINED_FUNCTION_72_14();
    [v334 v335];

LABEL_73:
    v460 = v112;
    v336 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_163_3(v336, v337, v338, v339, v340);
    v341 = OUTLINED_FUNCTION_72_14();
    [v341 v342];
    v343 = OUTLINED_FUNCTION_72_14();
    [v343 v344];
    v345 = OUTLINED_FUNCTION_72_14();
    [v345 v346];
    v347 = OUTLINED_FUNCTION_72_14();
    [v347 v348];
    v349 = OUTLINED_FUNCTION_72_14();
    [v349 v350];
    v351 = OUTLINED_FUNCTION_72_14();
    [v351 v352];
    OUTLINED_FUNCTION_163_3(v155, v156[464], v353, v354, *MEMORY[0x1E69D8D68]);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v355 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v356 = swift_allocObject();
    *(v356 + 16) = xmmword_1BC4BB990;
    v357 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_452();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v358, v359, v360, &_s10Foundation4UUIDVSgMR);
    specialized >> prefix<A>(_:)(v431, v361, v362, v363, v364, v365, v366, v367, v425, v426, v427, v428, ObjectType, v430, v431, v433, v435, v155);
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_172_1();
    outlined destroy of CallControlsService?(v368, v369, v370);
    v371 = MEMORY[0x1E69E6158];
    *(v356 + 56) = MEMORY[0x1E69E6158];
    v372 = lazy protocol witness table accessor for type String and conformance String();
    *(v356 + 64) = v372;
    *(v356 + 32) = v357;
    *(v356 + 40) = v155;
    v373 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v480 = *&v446[v373];
    type metadata accessor for TUConversationState(0);
    v374 = String.init<A>(reflecting:)();
    *(v356 + 96) = v371;
    *(v356 + 104) = v372;
    *(v356 + 72) = v374;
    *(v356 + 80) = v375;
    v376 = *(v465 + 16);
    v480 = *v465;
    v481 = v376;
    v377 = String.init<A>(reflecting:)();
    *(v356 + 136) = v371;
    *(v356 + 144) = v372;
    *(v356 + 112) = v377;
    *(v356 + 120) = v378;
    LOBYTE(v480) = v460;
    v379 = String.init<A>(reflecting:)();
    *(v356 + 176) = v371;
    *(v356 + 184) = v372;
    v433 = v372;
    *(v356 + 152) = v379;
    *(v356 + 160) = v380;
    v381 = static os_log_type_t.default.getter();
    v436 = v355;
    os_log(_:dso:log:type:_:)("Created ConversationController conversationUUID=%@ state=%@ broadcastingState=%@ mode=%@", 88, 2, &dword_1BBC58000, v355, v381, v356);

    OUTLINED_FUNCTION_37_22();
    v382 = swift_allocObject();
    v465 = 1;
    *(v382 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
    OUTLINED_FUNCTION_472();
    v459 = v383;
    v384 = swift_allocObject();
    *(v384 + 16) = xmmword_1BC4BA940;
    v385 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(&v446[v385], v384 + v373);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v480 = v384;

    specialized Array.append<A>(contentsOf:)(v386);
    v109 = v480;
    v387 = *(v480 + 16);
    if (!v387)
    {

      v390 = MEMORY[0x1E69E7CC0];
LABEL_90:
      *&v480 = v390;
      v416 = OUTLINED_FUNCTION_15_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(v416, v417);
      OUTLINED_FUNCTION_100_6(&lazy protocol witness table cache variable for type [String] and conformance [A]);
      OUTLINED_FUNCTION_469();
      BidirectionalCollection<>.joined(separator:)();
      OUTLINED_FUNCTION_18_8();

      *&v480 = &v480;
      *(&v480 + 1) = &_sSaySSGMR;
      v418 = MEMORY[0x1E69E6158];
      v419 = String.init<A>(reflecting:)();
      *(v382 + 56) = v418;
      *(v382 + 64) = v433;
      *(v382 + 32) = v419;
      *(v382 + 40) = v420;
      v421 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Initial participant identifiers: %@", 35, 2, &dword_1BBC58000, v436, v421, v382);

      ConversationController.fetchExistingScreenSharingAttributes()();
      OUTLINED_FUNCTION_287();
      if (v131)
      {
        OUTLINED_FUNCTION_423_0();
        v422 = OUTLINED_FUNCTION_56_19();
        v424 = v423(v422);
        [v424 startPreview];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        outlined destroy of CallControlsService?(v441, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
      }

      else
      {
        outlined destroy of CallControlsService?(v441, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMR);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(v484);
      __swift_destroy_boxed_opaque_existential_1(v485);
      (*(v442 + 8))(v444, v443);
      __swift_destroy_boxed_opaque_existential_1(v486);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v431 = v382;
    v470 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v388 = 0;
    v457 = v109;
    v458 = *(v109 + 16);
    v389 = v109 + v373;
    v390 = v470;
    v454 = (v439 + 16);
    v456 = v387;
    v447 = (v439 + 8);
    v112 = v452;
    while (v458 != v388)
    {
      if (v388 >= *(v109 + 16))
      {
        goto LABEL_96;
      }

      v465 = v470;
      v391 = *(v463 + 48);
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v389, v462 + v391);
      *v467 = v388;
      v392 = v467 + *(v463 + 48);
      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v462 + v391, v392);
      *&v480 = v388;
      v468 = dispatch thunk of CustomStringConvertible.description.getter();
      v469 = v393;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v394 = *v454;
      (*v454)(v466, v392 + v112[5], v464);
      v395 = OUTLINED_FUNCTION_54_15();
      v398 = OUTLINED_FUNCTION_526(v395, v396, v397);
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v398, v461, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v399 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v399, v400, v464);
      if (v131)
      {
        outlined destroy of CallControlsService?(v461, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v448(v450, v461, v464);
        v394(v451, v450, v464);
        OUTLINED_FUNCTION_62_0();
        String.init<A>(reflecting:)();
        v112 = v452;
        (*v447)(v450, v464);
      }

      outlined destroy of CallControlsService?(v466, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v401 = OUTLINED_FUNCTION_77_1();
      MEMORY[0x1BFB20B10](v401);

      v402 = OUTLINED_FUNCTION_469();
      MEMORY[0x1BFB20B10](v402);
      v403 = v392 + v112[7];
      v404 = *v403;
      if (*v403)
      {
        v406 = *(v403 + 24);
        v405 = *(v403 + 32);
        v407 = *(v403 + 16);
        v408 = *(v403 + 8);
        *&v480 = v404;
        *(&v480 + 1) = v408;
        v481 = v407 & 1;
        v482 = v406;
        v483 = v405;

        v409 = v404;
        v410 = String.init<A>(reflecting:)();
        v412 = v411;
      }

      else
      {
        v412 = 0xE300000000000000;
        v410 = OUTLINED_FUNCTION_12_96();
      }

      MEMORY[0x1BFB20B10](v410, v412);

      outlined destroy of CallControlsService?(v467, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
      v414 = *(v470 + 16);
      v413 = *(v470 + 24);
      if (v414 >= v413 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v413);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v470 + 16) = v414 + 1;
      v415 = v470 + 16 * v414;
      *(v415 + 32) = v468;
      *(v415 + 40) = v469;
      ++v388;
      v389 += v459;
      v109 = v457;
      if (v387 == v388)
      {

        v382 = v431;
        goto LABEL_90;
      }
    }

LABEL_95:
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
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  v109 = v159;
  v479 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v476 = specialized Set.startIndex.getter();
  *(&v476 + 1) = v160;
  v477 = v161 & 1;
  if (v109 < 0)
  {
    __break(1u);
LABEL_102:
    OUTLINED_FUNCTION_288_0(&one-time initialization token for didEndWindowLiveResizeNotification);
    goto LABEL_72;
  }

  v162 = 0;
  v465 = v158 & 0xC000000000000001;
  v163 = v158 & 0xFFFFFFFFFFFFFF8;
  if (v158 < 0)
  {
    v163 = v158;
  }

  v459 = v163;
  v457 = v158 + 56;
  v447 = (v158 + 64);
  while (1)
  {
    v164 = __OFADD__(v162++, 1);
    if (v164)
    {
      __break(1u);
      goto LABEL_95;
    }

    v165 = DWORD2(v476);
    v112 = v476;
    v166 = v477;
    v167 = OUTLINED_FUNCTION_5_81();
    specialized Set.subscript.getter(v167, v168, v166, v158);
    v170 = v169;
    if (TUNormalizedHandleForTUHandle())
    {
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    OUTLINED_FUNCTION_406_0();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v171 = &v479;
    specialized ContiguousArray._endMutation()();
    if (v465)
    {
      break;
    }

    if (v166)
    {
      goto LABEL_104;
    }

    if ((v112 & 0x8000000000000000) != 0)
    {
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_484();
    if (v172 == v164)
    {
      goto LABEL_97;
    }

    if (((*(v457 + 8 * (v112 >> 6)) >> v112) & 1) == 0)
    {
      goto LABEL_98;
    }

    if (*(v158 + 36) != v165)
    {
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_482();
    if (v131)
    {
      v175 = v173 << 6;
      v176 = v173 + 1;
      v177 = &v447[v173];
      while (v176 < (&v482 + 7) >> 6)
      {
        v179 = *v177++;
        v178 = v179;
        v175 += 64;
        ++v176;
        if (v179)
        {
          v180 = OUTLINED_FUNCTION_5_81();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v180, v181, 0);
          v171 = (__clz(__rbit64(v178)) + v175);
          goto LABEL_37;
        }
      }

      v182 = OUTLINED_FUNCTION_5_81();
      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v182, v183, 0);
    }

    else
    {
      OUTLINED_FUNCTION_481();
    }

LABEL_37:
    v184 = *(v158 + 36);
    *&v476 = v171;
    *(&v476 + 1) = v184;
    v477 = 0;
LABEL_38:
    if (v162 == v109)
    {

      v185 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v476, *(&v476 + 1), v477);
      v186 = v479;
      goto LABEL_41;
    }
  }

  if (v166)
  {
    OUTLINED_FUNCTION_5_81();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
    v174 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v174(&v480, 0);
    goto LABEL_38;
  }

  __break(1u);
LABEL_104:
  __break(1u);
}

void specialized ConversationController.__allocating_init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, char *a22, objc_class *a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_29();
  v52 = v27;
  v53 = v28;
  v56 = v29;
  v55 = v30;
  v54 = v31;
  v33 = v32;
  v35 = v34;
  v51 = v36;
  v37 = objc_allocWithZone(a23);
  v38 = v35[3];
  v39 = v35[4];
  v40 = OUTLINED_FUNCTION_44_0();
  __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  OUTLINED_FUNCTION_31_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1_7();
  (*(v43 + 16))(v25);
  v44 = *(v33 + 24);
  v45 = *(v33 + 32);
  v46 = OUTLINED_FUNCTION_209();
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_24_5();
  (*(v49 + 16))(v26);
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v51, a25, v52, v25, v26, v54, v55, v56, v53, a21, a22, v37, v38, v44, v39, v45);
  v50 = OUTLINED_FUNCTION_173();
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_30_0();
}

void specialized ConversationController.migrate(to:with:isUpgrade:)(void *a1, char *a2, int a3, char *a4)
{
  v289 = a3;
  v299 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v287 = *(v6 - 8);
  v288 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v285 = &v279 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for DispatchQoS();
  v284 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v283 = &v279 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for UUID();
  v297 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v292 = &v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v293 = &v279 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v279 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v301 = &v279 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v296 = &v279 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v279 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v279 - v24;
  v300 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  v26 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  swift_beginAccess();
  v290 = a4;
  v282 = v26;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&a4[v26], v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = a1[3];
  v28 = a1[4];
  v298 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 8))(v27, v28);
  v29 = v294;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v294);
  v30 = *(v13 + 56);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v22, &v15[v30], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (__swift_getEnumTagSinglePayload(v15, 1, v29) != 1)
  {
    v34 = v296;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v296, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (__swift_getEnumTagSinglePayload(&v15[v30], 1, v29) != 1)
    {
      v107 = v297;
      v108 = v293;
      (*(v297 + 32))(v293, &v15[v30], v29);
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v295) = dispatch thunk of static Equatable.== infix(_:_:)();
      v109 = *(v107 + 8);
      v109(v108, v29);
      outlined destroy of CallControlsService?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v109(v34, v29);
      outlined destroy of CallControlsService?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v32 = v301;
      v33 = v299;
      if ((v295 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    }

    outlined destroy of CallControlsService?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v297 + 8))(v34, v29);
    v32 = v301;
LABEL_6:
    outlined destroy of CallControlsService?(v15, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_7;
  }

  outlined destroy of CallControlsService?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v15[v30], 1, v29);
  v32 = v301;
  v33 = v299;
  if (EnumTagSinglePayload != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of CallControlsService?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_34:
  v110 = &v290[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  swift_beginAccess();
  v111 = *(v110 + 1);
  ObjectType = swift_getObjectType();
  v113 = *(v111 + 56);
  swift_unknownObjectRetain();
  v114 = v113(ObjectType, v111);
  v116 = v115;
  swift_unknownObjectRelease();
  v117 = [v33 callUUID];
  v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v119;

  if (v114 == v118 && v116 == v120)
  {

    goto LABEL_41;
  }

  v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v122)
  {
LABEL_41:
    v123 = *(v110 + 1);
    v124 = swift_getObjectType();
    v125 = *(v123 + 56);
    swift_unknownObjectRetain();
    v126 = v125(v124, v123);
    v128 = v127;
    swift_unknownObjectRelease();
    v129 = [v33 callUUID];
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    if (v126 == v130 && v128 == v132)
    {

      v135 = 0;
    }

    else
    {
      v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v135 = v134 ^ 1;
    }

    v136 = v298;
    v137 = v290;
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v136, &v303);
    v139 = v137;
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      LODWORD(v301) = v135;
      v144 = v143;
      v311[0] = v143;
      *v142 = 136315650;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v137 + v282, v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      specialized >> prefix<A>(_:)(v32, v145, v146, v147, v148, v149, v150, v151, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v153 = v152;
      v154 = v32;
      v156 = v155;
      outlined destroy of CallControlsService?(v154, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v156, v311);

      *(v142 + 4) = v157;
      *(v142 + 12) = 2080;
      v158 = v305;
      v159 = v306;
      __swift_project_boxed_opaque_existential_1(&v303, v305);
      (*(v159 + 1))(v158, v159);
      __swift_storeEnumTagSinglePayload(v154, 0, 1, v294);
      specialized >> prefix<A>(_:)(v154, v160, v161, v162, v163, v164, v165, v166, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v168 = v167;
      v170 = v169;
      outlined destroy of CallControlsService?(v154, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v303);
      v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, v311);

      *(v142 + 14) = v171;
      *(v142 + 22) = 2080;
      LOBYTE(v309) = v301 & 1;
      v172 = String.init<A>(reflecting:)();
      v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, v311);

      *(v142 + 24) = v174;
      _os_log_impl(&dword_1BBC58000, v140, v141, "Unable to migrate from conversation uuid %s to %s. Calls differ: %s.", v142, 0x20u);
      swift_arrayDestroy();
      v175 = v144;
LABEL_54:
      MEMORY[0x1BFB23DF0](v175, -1, -1);
      MEMORY[0x1BFB23DF0](v142, -1, -1);

      return;
    }

LABEL_55:

    __swift_destroy_boxed_opaque_existential_1(&v303);
    return;
  }

LABEL_7:
  v35 = v298;
  if ((v289 & 1) == 0)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = __swift_project_value_buffer(v36, static Logger.conversationController);
    v38 = v290;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    v41 = os_log_type_enabled(v39, v40);
    v281 = v38;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v311[0] = v43;
      *v42 = 136315394;
      LOBYTE(v303) = v38[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v44 = String.init<A>(reflecting:)();
      v46 = v38;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v311);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v303 = *&v46[v48];
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
      v49 = String.init<A>(reflecting:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v311);

      *(v42 + 14) = v51;
      _os_log_impl(&dword_1BBC58000, v39, v40, "%s Going to migrate from oldCall: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v43, -1, -1);
      MEMORY[0x1BFB23DF0](v42, -1, -1);
    }

    v52 = v299;
    v280 = v37;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v311[0] = v56;
      *v55 = 136315138;
      *&v303 = v52;
      *(&v303 + 1) = v300;
      v57 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
      v58 = String.init<A>(reflecting:)();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v311);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1BBC58000, v53, v54, "... to newCall: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1BFB23DF0](v56, -1, -1);
      MEMORY[0x1BFB23DF0](v55, -1, -1);
    }

    v61 = v281;
    v62 = &v281[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v63 = *(v62 + 3);
    v64 = *(v62 + 4);
    v299 = v62;
    v65 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v66 = *(v63 - 8);
    v67 = MEMORY[0x1EEE9AC00](v65);
    v69 = &v279 - v68;
    (*(v66 + 16))(&v279 - v68, v67);
    v70 = (*(v64 + 24))(v63, v64);
    (*(v66 + 8))(v69, v63);
    v71 = [v70 currentVideoCalls];
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = specialized Array.count.getter();
    if (v73)
    {
      if (v73 < 1)
      {
        __break(1u);
        return;
      }

      v291 = 0;
      v74 = 0;
      v295 = v72 & 0xC000000000000001;
      v296 = v73;
      v75 = (v297 + 8);
      v297 = v72;
      do
      {
        if (v295)
        {
          v76 = MEMORY[0x1BFB22010](v74, v72);
        }

        else
        {
          v76 = *(v72 + 8 * v74 + 32);
        }

        v77 = v76;
        outlined init with copy of CallCenterProvider(v299, v311);
        v78 = v313;
        __swift_project_boxed_opaque_existential_1(v311, v312);
        v79 = *(v78 + 104);
        v80 = v77;
        v79(&v303);

        __swift_destroy_boxed_opaque_existential_1(v311);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(&v303, &v309, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        if (v310)
        {
          outlined init with take of TapInteractionHandler(&v309, v311);
          v81 = v312;
          v82 = v313;
          __swift_project_boxed_opaque_existential_1(v311, v312);
          v83 = v293;
          (*(v82 + 8))(v81, v82);
          v84 = v298[3];
          v85 = v298[4];
          __swift_project_boxed_opaque_existential_1(v298, v84);
          v86 = v292;
          (*(v85 + 8))(v84, v85);
          v87 = static UUID.== infix(_:_:)();
          v88 = *v75;
          v89 = v86;
          v90 = v294;
          (*v75)(v89, v294);
          v88(v83, v90);
          outlined destroy of CallControlsService?(&v303, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
          v32 = v301;
          if (v87)
          {

            __swift_destroy_boxed_opaque_existential_1(v311);
            v291 = v80;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v311);
          }
        }

        else
        {
          outlined destroy of CallControlsService?(&v303, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);

          outlined destroy of CallControlsService?(&v309, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
          v32 = v301;
        }

        v72 = v297;
        ++v74;
      }

      while (v296 != v74);

      v61 = v281;
      if (v291)
      {
        v91 = *&v281[OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags];
        v92 = v291;
        if (([v91 sessionBasedMutingEnabled] & 1) == 0)
        {
          v93 = &v61[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
          swift_beginAccess();
          v94 = *(v93 + 1);
          v95 = swift_getObjectType();
          v96 = *(v94 + 208);
          swift_unknownObjectRetain();
          v97 = v96(v95, v94);
          v61 = v281;
          LODWORD(v94) = v97;
          swift_unknownObjectRelease();
          if (v94 != 6)
          {
            type metadata accessor for PlaceholderCall(0);
            if (!swift_dynamicCastClass())
            {
              v98 = *(v93 + 1);
              v99 = swift_getObjectType();
              v100 = *(v98 + 376);
              swift_unknownObjectRetain();
              v101 = v100(v99, v98);
              v61 = v281;
              LOBYTE(v98) = v101;
              swift_unknownObjectRelease();
              [v92 setUplinkMuted_];
            }
          }
        }

        v102 = &v61[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
        swift_beginAccess();
        v103 = v300;
        *v102 = v92;
        *(v102 + 1) = v103;
        swift_unknownObjectRelease();
        v104 = *(v102 + 1);
        v105 = swift_getObjectType();
        v106 = *(v104 + 328);
        swift_unknownObjectRetain();
        LOBYTE(v104) = v106(v105, v104);
        swift_unknownObjectRelease();
        if (v104)
        {
          ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
        }

        else
        {
          ConversationController.stopLocalVideo()();
        }

        v209 = *(v102 + 1);
        v210 = swift_getObjectType();
        v211 = swift_unknownObjectRetain();
        specialized ConversationController.updateAudioState(with:)(v211, v61, v210, v209);
        swift_unknownObjectRelease();

        v35 = v298;
        goto LABEL_58;
      }
    }

    else
    {
    }

    outlined init with copy of CallCenterProvider(v298, &v303);
    v176 = v61;
    v140 = Logger.logObject.getter();
    v177 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v140, v177))
    {
      v142 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      v311[0] = v301;
      *v142 = 136315650;
      LOBYTE(v309) = v176[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v178 = String.init<A>(reflecting:)();
      v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v179, v311);

      *(v142 + 4) = v180;
      *(v142 + 12) = 2080;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(&v290[v282], v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      specialized >> prefix<A>(_:)(v32, v181, v182, v183, v184, v185, v186, v187, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v189 = v188;
      v190 = v32;
      v192 = v191;
      outlined destroy of CallControlsService?(v190, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v193 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v192, v311);

      *(v142 + 14) = v193;
      *(v142 + 22) = 2080;
      v194 = v305;
      v195 = v306;
      __swift_project_boxed_opaque_existential_1(&v303, v305);
      (*(v195 + 1))(v194, v195);
      __swift_storeEnumTagSinglePayload(v190, 0, 1, v294);
      specialized >> prefix<A>(_:)(v190, v196, v197, v198, v199, v200, v201, v202, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v204 = v203;
      v206 = v205;
      outlined destroy of CallControlsService?(v190, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v303);
      v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v206, v311);

      *(v142 + 24) = v207;
      _os_log_impl(&dword_1BBC58000, v140, v177, "%s Unable to migration from conversation uuid %s to %s because cannot find call with same backing conversation", v142, 0x20u);
      v208 = v301;
      swift_arrayDestroy();
      v175 = v208;
      goto LABEL_54;
    }

    goto LABEL_55;
  }

LABEL_58:
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v212 = type metadata accessor for Logger();
  __swift_project_value_buffer(v212, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v35, &v303);
  v213 = v290;
  v214 = v290;
  v215 = Logger.logObject.getter();
  v216 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v215, v216))
  {
    v217 = swift_slowAlloc();
    v300 = swift_slowAlloc();
    v308[0] = v300;
    *v217 = 136315650;
    v302 = v214[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v218 = String.init<A>(reflecting:)();
    v220 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v219, v308);

    *(v217 + 4) = v220;
    *(v217 + 12) = 2080;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v213[v282], v301, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized >> prefix<A>(_:)(v301, v221, v222, v223, v224, v225, v226, v227, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
    v229 = v228;
    v231 = v230;
    outlined destroy of CallControlsService?(v301, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v231, v308);

    *(v217 + 14) = v232;
    *(v217 + 22) = 2080;
    v234 = v305;
    v233 = v306;
    __swift_project_boxed_opaque_existential_1(&v303, v305);
    (*(v233 + 1))(v234, v233);
    v235 = v294;
    __swift_storeEnumTagSinglePayload(v301, 0, 1, v294);
    specialized >> prefix<A>(_:)(v301, v236, v237, v238, v239, v240, v241, v242, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
    v244 = v243;
    v246 = v245;
    v32 = v301;
    outlined destroy of CallControlsService?(v301, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v303);
    v247 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v246, v308);

    *(v217 + 24) = v247;
    _os_log_impl(&dword_1BBC58000, v215, v216, "%s Migrating conversation UUID from %s to %s", v217, 0x20u);
    v248 = v300;
    swift_arrayDestroy();
    v35 = v298;
    MEMORY[0x1BFB23DF0](v248, -1, -1);
    MEMORY[0x1BFB23DF0](v217, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v303);
    v235 = v294;
  }

  v249 = v35[3];
  v250 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v249);
  (*(v250 + 8))(v249, v250);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v235);
  ConversationController.conversationUUID.setter(v32);
  v251 = v35[3];
  v252 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v251);
  v253 = (*(v252 + 56))(v251, v252);
  ConversationController.conversationState.setter(v253);
  v254 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v255 = *(*&v214[v254] + 16);
  ConversationController.removeAllParticipants()();
  v256 = MEMORY[0x1E69E7CC0];
  if ((v289 & 1) == 0 || (v257 = v35[3], v258 = v35[4], __swift_project_boxed_opaque_existential_1(v35, v257), (*(v258 + 88))(v257, v258), v259 = specialized Set.count.getter(), , v255 == v259))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v260 = static OS_dispatch_queue.main.getter();
    v261 = swift_allocObject();
    *(v261 + 16) = v214;
    v306 = closure #1 in ConversationController.migrate(to:with:isUpgrade:)partial apply;
    v307 = v261;
    *&v303 = MEMORY[0x1E69E9820];
    *(&v303 + 1) = 1107296256;
    v304 = thunk for @escaping @callee_guaranteed () -> ();
    v305 = &block_descriptor_1157;
    v262 = _Block_copy(&v303);
    v263 = v214;

    v264 = v283;
    static DispatchQoS.unspecified.getter();
    *&v303 = v256;
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v35 = v298;
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v265 = v285;
    v266 = v288;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v264, v265, v262);
    _Block_release(v262);

    v267 = v266;
    v256 = MEMORY[0x1E69E7CC0];
    (*(v287 + 8))(v265, v267);
    (*(v284 + 8))(v264, v286);
  }

  ConversationController.createNewParticipants(with:)(v35);
  ConversationController.updateRemoteParticipantsStates(with:)(v35);
  ConversationController.updateRemoteParticipantsNames(with:)(v35);
  ConversationController.updateLocalMemberAuthorizedToChangeGroupMembership(with:)(v35);
  ConversationController.updateOtherInvitedParticipants()();
  v268 = ConversationController.isOneToOneModeEnabled.getter() & 1;
  v269 = v35[3];
  v270 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v269);
  if (v268 != ((*(v270 + 200))(v269, v270) & 1))
  {
    v271 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v214[v271], &v303);
    ConversationController.callCenter(_:oneToOneModeChangedFor:)();
    __swift_destroy_boxed_opaque_existential_1(&v303);
  }

  outlined init with copy of CallCenterProvider(v35, &v303);
  ConversationController.mostRecentActiveConversation.setter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v272 = static OS_dispatch_queue.main.getter();
  v273 = swift_allocObject();
  *(v273 + 16) = v214;
  v306 = closure #2 in ConversationController.migrate(to:with:isUpgrade:)partial apply;
  v307 = v273;
  *&v303 = MEMORY[0x1E69E9820];
  *(&v303 + 1) = 1107296256;
  v304 = thunk for @escaping @callee_guaranteed () -> ();
  v305 = &block_descriptor_1164;
  v274 = _Block_copy(&v303);
  v275 = v214;

  v276 = v283;
  static DispatchQoS.unspecified.getter();
  *&v303 = v256;
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v277 = v285;
  v278 = v288;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v276, v277, v274);
  _Block_release(v274);

  (*(v287 + 8))(v277, v278);
  (*(v284 + 8))(v276, v286);
}

void specialized ConversationController.migrate(to:with:isUpgrade:)(void *a1, uint64_t a2, int a3, char *a4, unint64_t a5, uint64_t a6)
{
  v299 = a6;
  v297 = a5;
  v290 = a3;
  v301 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v287 = *(v8 - 8);
  v288 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v285 = &v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for DispatchQoS();
  v284 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v283 = &v279 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v298 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v293 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v294 = &v279 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v279 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v289 = &v279 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v296 = &v279 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v279 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v279 - v27;
  v29 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  swift_beginAccess();
  v291 = a4;
  v282 = v29;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&a4[v29], v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v31 = a1[3];
  v30 = a1[4];
  v300 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  (*(v30 + 8))(v31, v30);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v11);
  v32 = *(v16 + 56);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v28, v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = v11;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, &v18[v32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v11);
  v295 = v11;
  if (EnumTagSinglePayload != 1)
  {
    v39 = v296;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v18, v296, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (__swift_getEnumTagSinglePayload(&v18[v32], 1, v33) != 1)
    {
      v110 = v298;
      v111 = v294;
      (*(v298 + 32))(v294, &v18[v32], v33);
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v292) = dispatch thunk of static Equatable.== infix(_:_:)();
      v112 = *(v110 + 8);
      v112(v111, v33);
      outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of CallControlsService?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v112(v39, v33);
      outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v36 = v291;
      v37 = v301;
      v38 = v297;
      if ((v292 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    }

    outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of CallControlsService?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v298 + 8))(v39, v33);
    v36 = v291;
LABEL_6:
    outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v37 = v301;
    goto LABEL_7;
  }

  outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of CallControlsService?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v35 = __swift_getEnumTagSinglePayload(&v18[v32], 1, v11);
  v36 = v291;
  if (v35 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v37 = v301;
  v38 = v297;
LABEL_34:
  v113 = &v36[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  swift_beginAccess();
  v114 = *(v113 + 1);
  ObjectType = swift_getObjectType();
  v116 = *(v114 + 56);
  swift_unknownObjectRetain();
  v117 = v116(ObjectType, v114);
  v119 = v118;
  swift_unknownObjectRelease();
  v120 = *(v299 + 56);
  if (v117 == v120(v38) && v119 == v121)
  {

    goto LABEL_41;
  }

  v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v123)
  {
LABEL_41:
    v124 = *(v113 + 1);
    v125 = swift_getObjectType();
    v126 = *(v124 + 56);
    swift_unknownObjectRetain();
    v127 = v126(v125, v124);
    v129 = v128;
    swift_unknownObjectRelease();
    if (v127 == (v120)(v38, v299) && v129 == v130)
    {

      v133 = 0;
    }

    else
    {
      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v133 = v132 ^ 1;
    }

    v134 = v300;
    v135 = v289;
    v136 = v291;
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    __swift_project_value_buffer(v137, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v134, &v303);
    v138 = v136;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      LODWORD(v301) = v133;
      v143 = v142;
      v311[0] = v142;
      *v141 = 136315650;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(&v136[v282], v135, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      specialized >> prefix<A>(_:)(v135, v144, v145, v146, v147, v148, v149, v150, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v152 = v151;
      v154 = v153;
      outlined destroy of CallControlsService?(v135, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, v311);

      *(v141 + 4) = v155;
      *(v141 + 12) = 2080;
      v156 = v305;
      v157 = v306;
      __swift_project_boxed_opaque_existential_1(&v303, v305);
      (*(v157 + 1))(v156, v157);
      __swift_storeEnumTagSinglePayload(v135, 0, 1, v295);
      specialized >> prefix<A>(_:)(v135, v158, v159, v160, v161, v162, v163, v164, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v166 = v165;
      v168 = v167;
      outlined destroy of CallControlsService?(v135, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v303);
      v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v168, v311);

      *(v141 + 14) = v169;
      *(v141 + 22) = 2080;
      LOBYTE(v309) = v301 & 1;
      v170 = String.init<A>(reflecting:)();
      v172 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v171, v311);

      *(v141 + 24) = v172;
      _os_log_impl(&dword_1BBC58000, v139, v140, "Unable to migrate from conversation uuid %s to %s. Calls differ: %s.", v141, 0x20u);
      swift_arrayDestroy();
      v173 = v143;
LABEL_54:
      MEMORY[0x1BFB23DF0](v173, -1, -1);
      MEMORY[0x1BFB23DF0](v141, -1, -1);

      return;
    }

LABEL_55:

    __swift_destroy_boxed_opaque_existential_1(&v303);
    return;
  }

LABEL_7:
  v40 = v300;
  if ((v290 & 1) == 0)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = __swift_project_value_buffer(v41, static Logger.conversationController);
    v43 = v36;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v46 = os_log_type_enabled(v44, v45);
    v281 = v43;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v311[0] = v48;
      *v47 = 136315394;
      LOBYTE(v303) = v43[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v49 = String.init<A>(reflecting:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v311);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v303 = *&v43[v52];
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
      v53 = String.init<A>(reflecting:)();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v311);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_1BBC58000, v44, v45, "%s Going to migrate from oldCall: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v48, -1, -1);
      MEMORY[0x1BFB23DF0](v47, -1, -1);
    }

    v56 = v295;
    swift_unknownObjectRetain();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v59 = os_log_type_enabled(v57, v58);
    v280 = v42;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v311[0] = v61;
      *v60 = 136315138;
      *&v303 = v37;
      *(&v303 + 1) = v299;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd, &_s15ConversationKit4Call_pMR);
      v62 = String.init<A>(reflecting:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v311);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_1BBC58000, v57, v58, "... to newCall: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1BFB23DF0](v61, -1, -1);
      MEMORY[0x1BFB23DF0](v60, -1, -1);
    }

    v65 = &v281[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v66 = *(v65 + 3);
    v67 = *(v65 + 4);
    v301 = v65;
    v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
    v69 = *(v66 - 8);
    v70 = MEMORY[0x1EEE9AC00](v68);
    v72 = &v279 - v71;
    (*(v69 + 16))(&v279 - v71, v70);
    v73 = (*(v67 + 24))(v66, v67);
    (*(v69 + 8))(v72, v66);
    v74 = [v73 currentVideoCalls];
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
    v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = specialized Array.count.getter();
    if (v76)
    {
      if (v76 < 1)
      {
        __break(1u);
        return;
      }

      v292 = 0;
      v77 = 0;
      v78 = (v298 + 8);
      v299 = v75;
      v297 = v75 & 0xC000000000000001;
      v298 = v76;
      do
      {
        if (v297)
        {
          v79 = MEMORY[0x1BFB22010](v77, v75);
        }

        else
        {
          v79 = *(v75 + 8 * v77 + 32);
        }

        v80 = v79;
        outlined init with copy of CallCenterProvider(v301, v311);
        v81 = v313;
        __swift_project_boxed_opaque_existential_1(v311, v312);
        v82 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
        v83 = *(v81 + 104);
        v84 = v80;
        v296 = v82;
        v83(&v303);

        __swift_destroy_boxed_opaque_existential_1(v311);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(&v303, &v309, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        if (v310)
        {
          outlined init with take of TapInteractionHandler(&v309, v311);
          v85 = v312;
          v86 = v313;
          __swift_project_boxed_opaque_existential_1(v311, v312);
          v87 = v294;
          (*(v86 + 8))(v85, v86);
          v88 = v300[3];
          v89 = v300[4];
          __swift_project_boxed_opaque_existential_1(v300, v88);
          v90 = v293;
          (*(v89 + 8))(v88, v89);
          v91 = static UUID.== infix(_:_:)();
          v92 = *v78;
          v93 = v90;
          v94 = v295;
          (*v78)(v93, v295);
          v92(v87, v94);
          outlined destroy of CallControlsService?(&v303, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
          if (v91)
          {

            __swift_destroy_boxed_opaque_existential_1(v311);
            v292 = v84;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v311);
          }
        }

        else
        {
          outlined destroy of CallControlsService?(&v303, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);

          outlined destroy of CallControlsService?(&v309, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        }

        v75 = v299;
        ++v77;
      }

      while (v298 != v77);

      v56 = v295;
      if (v292)
      {
        v95 = v281;
        v96 = *&v281[OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags];
        v97 = v292;
        if (([v96 sessionBasedMutingEnabled] & 1) == 0)
        {
          v98 = &v95[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
          swift_beginAccess();
          v99 = *(v98 + 1);
          v100 = swift_getObjectType();
          v101 = *(v99 + 208);
          swift_unknownObjectRetain();
          LODWORD(v99) = v101(v100, v99);
          swift_unknownObjectRelease();
          if (v99 != 6)
          {
            type metadata accessor for PlaceholderCall(0);
            if (!swift_dynamicCastClass())
            {
              v102 = *(v98 + 1);
              v103 = swift_getObjectType();
              v104 = *(v102 + 376);
              swift_unknownObjectRetain();
              LOBYTE(v102) = v104(v103, v102);
              swift_unknownObjectRelease();
              [v97 setUplinkMuted_];
            }
          }
        }

        v105 = &v95[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
        swift_beginAccess();
        v106 = v296;
        *v105 = v97;
        *(v105 + 1) = v106;
        swift_unknownObjectRelease();
        v107 = *(v105 + 1);
        v108 = swift_getObjectType();
        v109 = *(v107 + 328);
        swift_unknownObjectRetain();
        LOBYTE(v107) = v109(v108, v107);
        swift_unknownObjectRelease();
        if (v107)
        {
          ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
        }

        else
        {
          ConversationController.stopLocalVideo()();
        }

        v40 = v300;
        v36 = v291;
        v208 = *(v105 + 1);
        v209 = swift_getObjectType();
        v210 = swift_unknownObjectRetain();
        specialized ConversationController.updateAudioState(with:)(v210, v95, v209, v208);
        swift_unknownObjectRelease();

        goto LABEL_58;
      }
    }

    else
    {
    }

    outlined init with copy of CallCenterProvider(v300, &v303);
    v174 = v281;
    v139 = Logger.logObject.getter();
    v175 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v139, v175))
    {
      v141 = swift_slowAlloc();
      v301 = swift_slowAlloc();
      v311[0] = v301;
      *v141 = 136315650;
      LOBYTE(v309) = v174[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v176 = String.init<A>(reflecting:)();
      v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v177, v311);

      *(v141 + 4) = v178;
      *(v141 + 12) = 2080;
      v179 = v56;
      v180 = v289;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(&v291[v282], v289, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      specialized >> prefix<A>(_:)(v180, v181, v182, v183, v184, v185, v186, v187, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v189 = v188;
      v191 = v190;
      outlined destroy of CallControlsService?(v180, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v191, v311);

      *(v141 + 14) = v192;
      *(v141 + 22) = 2080;
      v193 = v305;
      v194 = v306;
      __swift_project_boxed_opaque_existential_1(&v303, v305);
      (*(v194 + 1))(v193, v194);
      __swift_storeEnumTagSinglePayload(v180, 0, 1, v179);
      specialized >> prefix<A>(_:)(v180, v195, v196, v197, v198, v199, v200, v201, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
      v203 = v202;
      v205 = v204;
      outlined destroy of CallControlsService?(v180, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      __swift_destroy_boxed_opaque_existential_1(&v303);
      v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, v311);

      *(v141 + 24) = v206;
      _os_log_impl(&dword_1BBC58000, v139, v175, "%s Unable to migration from conversation uuid %s to %s because cannot find call with same backing conversation", v141, 0x20u);
      v207 = v301;
      swift_arrayDestroy();
      v173 = v207;
      goto LABEL_54;
    }

    goto LABEL_55;
  }

LABEL_58:
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v211 = type metadata accessor for Logger();
  __swift_project_value_buffer(v211, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v40, &v303);
  v212 = v36;
  v213 = Logger.logObject.getter();
  v214 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v213, v214))
  {
    v215 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v308[0] = v301;
    *v215 = 136315650;
    v302 = v212[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v216 = String.init<A>(reflecting:)();
    v218 = v36;
    v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v217, v308);

    *(v215 + 4) = v219;
    *(v215 + 12) = 2080;
    v220 = v289;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v218[v282], v289, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized >> prefix<A>(_:)(v220, v221, v222, v223, v224, v225, v226, v227, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
    v229 = v228;
    v231 = v230;
    outlined destroy of CallControlsService?(v220, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v231, v308);

    *(v215 + 14) = v232;
    *(v215 + 22) = 2080;
    v234 = v305;
    v233 = v306;
    __swift_project_boxed_opaque_existential_1(&v303, v305);
    (*(v233 + 1))(v234, v233);
    __swift_storeEnumTagSinglePayload(v220, 0, 1, v295);
    specialized >> prefix<A>(_:)(v220, v235, v236, v237, v238, v239, v240, v241, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288);
    v243 = v242;
    v245 = v244;
    v246 = v295;
    outlined destroy of CallControlsService?(v220, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v303);
    v247 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v243, v245, v308);

    *(v215 + 24) = v247;
    _os_log_impl(&dword_1BBC58000, v213, v214, "%s Migrating conversation UUID from %s to %s", v215, 0x20u);
    v248 = v301;
    swift_arrayDestroy();
    v40 = v300;
    MEMORY[0x1BFB23DF0](v248, -1, -1);
    MEMORY[0x1BFB23DF0](v215, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v303);
    v220 = v289;
    v246 = v295;
  }

  v249 = v40[3];
  v250 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v249);
  (*(v250 + 8))(v249, v250);
  __swift_storeEnumTagSinglePayload(v220, 0, 1, v246);
  ConversationController.conversationUUID.setter(v220);
  v251 = v40[3];
  v252 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v251);
  v253 = (*(v252 + 56))(v251, v252);
  ConversationController.conversationState.setter(v253);
  v254 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v255 = *(*&v212[v254] + 16);
  ConversationController.removeAllParticipants()();
  v256 = MEMORY[0x1E69E7CC0];
  if ((v290 & 1) == 0 || (v257 = v40[3], v258 = v40[4], __swift_project_boxed_opaque_existential_1(v40, v257), (*(v258 + 88))(v257, v258), v259 = specialized Set.count.getter(), , v255 == v259))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v260 = static OS_dispatch_queue.main.getter();
    v261 = swift_allocObject();
    *(v261 + 16) = v212;
    v306 = partial apply for closure #1 in ConversationController.migrate(to:with:isUpgrade:);
    v307 = v261;
    *&v303 = MEMORY[0x1E69E9820];
    *(&v303 + 1) = 1107296256;
    v304 = thunk for @escaping @callee_guaranteed () -> ();
    v305 = &block_descriptor_1138;
    v262 = _Block_copy(&v303);
    v263 = v212;

    v264 = v283;
    static DispatchQoS.unspecified.getter();
    *&v303 = v256;
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v40 = v300;
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v265 = v285;
    v266 = v288;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v264, v265, v262);
    _Block_release(v262);

    v267 = v266;
    v256 = MEMORY[0x1E69E7CC0];
    (*(v287 + 8))(v265, v267);
    (*(v284 + 8))(v264, v286);
  }

  ConversationController.createNewParticipants(with:)(v40);
  ConversationController.updateRemoteParticipantsStates(with:)(v40);
  ConversationController.updateRemoteParticipantsNames(with:)(v40);
  ConversationController.updateLocalMemberAuthorizedToChangeGroupMembership(with:)(v40);
  ConversationController.updateOtherInvitedParticipants()();
  v268 = ConversationController.isOneToOneModeEnabled.getter() & 1;
  v269 = v40[3];
  v270 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v269);
  if (v268 != ((*(v270 + 200))(v269, v270) & 1))
  {
    v271 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v212[v271], &v303);
    ConversationController.callCenter(_:oneToOneModeChangedFor:)();
    __swift_destroy_boxed_opaque_existential_1(&v303);
  }

  outlined init with copy of CallCenterProvider(v40, &v303);
  ConversationController.mostRecentActiveConversation.setter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v272 = static OS_dispatch_queue.main.getter();
  v273 = swift_allocObject();
  *(v273 + 16) = v212;
  v306 = partial apply for closure #2 in ConversationController.migrate(to:with:isUpgrade:);
  v307 = v273;
  *&v303 = MEMORY[0x1E69E9820];
  *(&v303 + 1) = 1107296256;
  v304 = thunk for @escaping @callee_guaranteed () -> ();
  v305 = &block_descriptor_1144;
  v274 = _Block_copy(&v303);
  v275 = v212;

  v276 = v283;
  static DispatchQoS.unspecified.getter();
  *&v303 = v256;
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v277 = v285;
  v278 = v288;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v276, v277, v274);
  _Block_release(v274);

  (*(v287 + 8))(v277, v278);
  (*(v284 + 8))(v276, v286);
}