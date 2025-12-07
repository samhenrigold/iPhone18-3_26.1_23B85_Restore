void specialized closure #2 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v133 = a7;
  v134 = a6;
  v132 = a5;
  v119 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = v118.i64 - v10;
  v123 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v123);
  v120 = v118.i64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v126 = v118.i64 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v127 = v118.i64 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v118.i8[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v125.i64[0] = v118.i64 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v129 = v118.i64 - v21;
  v22 = swift_projectBox();
  v121 = a2;
  v122 = v22;
  v23 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter;
  v24 = a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter];
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = *(v26 + 200);
  v28 = v27(v25, v26);
  v130 = v23;
  v131 = a1;
  a1[v23] = v28 & 1;
  ConversationController.isOneToOneModeEnabledByCallCenter.didset();
  if (v24 == 1 && (v27(v25, v26) & 1) == 0)
  {
    v29 = v121[3];
    v30 = v121[4];
    __swift_project_boxed_opaque_existential_1(v121, v29);
    Conversation.displayableActiveParticipants.getter(v29, v30);
    v31 = specialized Set.count.getter();

    if (v31 == 2)
    {
      v32 = v121[3];
      v33 = v121[4];
      __swift_project_boxed_opaque_existential_1(v121, v32);
      if ((*(v33 + 184))(v32, v33))
      {
        if (one-time initialization token for conversationController != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.conversationController);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1BBC58000, v35, v36, "Handoff is ongoing - we shouldn't switch to square tiles until a timeout", v37, 2u);
          MEMORY[0x1BFB23DF0](v37, -1, -1);
        }
      }
    }
  }

  v38 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  v39 = v131;
  swift_beginAccess();
  v40 = v129;
  _s15ConversationKit11ParticipantVWOcTm_17(&v39[v38], v129);
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v40, type metadata accessor for Participant);
  if (v141)
  {
    memcpy(&v140[1], v142, 0x43uLL);
    v140[0] = v141;
    ConversationController.videoProviderForResizingLocal.getter(v139);
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = __swift_project_value_buffer(v41, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v139, v135);
    v121 = v42;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = &stru_1BC4BA000;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v138[0] = v47;
      *v46 = 136315138;
      outlined init with copy of CallCenterProvider(v135, __dst);
      v48 = specialized >> prefix<A>(_:)(__dst);
      v50 = v49;
      outlined destroy of CallControlsService?(__dst, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v135);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v138);

      *(v46 + 4) = v51;
      v45 = &stru_1BC4BA000;
      _os_log_impl(&dword_1BBC58000, v43, v44, "Resizing local preview with video provider: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1BFB23DF0](v47, -1, -1);
      MEMORY[0x1BFB23DF0](v46, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v135);
    }

    outlined init with copy of CallCenterProvider(v139, __dst);
    v52 = ConversationController.isOneToOneModeEnabled.getter();
    v53 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    swift_beginAccess();
    v54 = v39[v53];
    v55 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    swift_beginAccess();
    v56 = *&v39[v55];
    v57 = v125.i64[0];
    _s15ConversationKit11ParticipantVWOcTm_17(&v39[v38], v125.i64[0]);
    Participant.aspectRatio.getter(v143);
    _s15ConversationKit11ParticipantVWOhTm_18(v57, type metadata accessor for Participant);
    v129 = v38;
    if (v52)
    {
      static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(__dst, v56, v54, v143, 0, v135);
      v58 = v135[1];
      v125 = v135[0];
      v118 = *(&v135[1] + 8);
      v59 = BYTE8(v135[2]);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v41, static Logger.conversationKit);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v138[0] = v63;
        *v62 = *&v45[144]._predicateFlags;
        if (v58)
        {
          v64 = 0xE300000000000000;
          v65 = 7104878;
        }

        else
        {
          v135[0] = v125;
          type metadata accessor for CGSize(0);
          v65 = String.init<A>(reflecting:)();
          v64 = v69;
        }

        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, v138);

        *(v62 + 4) = v70;
        _os_log_impl(&dword_1BBC58000, v60, v61, "Updating the local video aspect ratio to %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1BFB23DF0](v63, -1, -1);
        MEMORY[0x1BFB23DF0](v62, -1, -1);

        __swift_destroy_boxed_opaque_existential_1(__dst);
        v45 = &stru_1BC4BA000;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(__dst);
      }

      v68 = 0uLL;
      if ((v58 & 1) == 0)
      {
        v71 = vextq_s8(v125, v125, 8uLL);
        if ((vmovn_s64(vceqq_f64(v125, v71)).u8[0] & 1) == 0)
        {
          v72 = 0;
          v116 = vdup_n_s32(v59);
          v117.i64[0] = v116.u32[0];
          v117.i64[1] = v116.u32[1];
          v68 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v117, 0x3FuLL)), v71, v118);
          v67 = v125.i64[1];
          v66 = v125.i64[0];
          goto LABEL_30;
        }
      }

      v66 = 0;
      v67 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v66 = 0;
      v67 = 0;
      v68 = 0uLL;
    }

    v72 = 1;
LABEL_30:
    v140[5] = v66;
    v140[6] = v67;
    *&v140[7] = v68;
    LOBYTE(v140[9]) = v72;
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      LOBYTE(v140[2]) = 0;
    }

    memcpy(v138, v140, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v138, v135);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    outlined destroy of Participant.VideoInfo(v138);
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v137[0] = v76;
      *v75 = *&v45[144]._predicateFlags;
      memcpy(v135, v138, 0x4BuLL);
      outlined init with copy of Participant.VideoInfo(v138, __dst);
      v77 = String.init<A>(reflecting:)();
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v137);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_1BBC58000, v73, v74, "Due to one-to-one change, updated local participant videoInfo to %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x1BFB23DF0](v76, -1, -1);
      MEMORY[0x1BFB23DF0](v75, -1, -1);
    }

    v80 = v129;
    v81 = v127;
    _s15ConversationKit11ParticipantVWOcTm_17(&v39[v129], v127);
    ConversationController.conversationIsAVLess.getter();
    swift_beginAccess();
    memcpy(v136, v140, 0x4BuLL);
    memcpy(v137, v140, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v136, v135);
    outlined destroy of Participant.VideoInfo(v137);
    memcpy(__dst, v136, 0x4BuLL);
    memset(v135, 0, 24);
    *(&v135[1] + 1) = 1;
    bzero(&v135[2], 0xB1uLL);
    v82 = v126;
    _s15ConversationKit11ParticipantVWOcTm_17(&v39[v80], v126);
    v83 = Participant.captionInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_18(v82, type metadata accessor for Participant);
    Participant.copresenceInfo.getter(v144);
    v84 = v128;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(v144, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    outlined destroy of Participant.VideoInfo(v136);
    outlined consume of Participant.CaptionInfo?(v83);
    outlined destroy of CallControlsService?(v135, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    _s15ConversationKit11ParticipantVWOhTm_18(v81, type metadata accessor for Participant);
    __swift_destroy_boxed_opaque_existential_1(v139);
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOdTm_0(v84, &v39[v80]);
    swift_endAccess();
  }

  closure #1 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(v132, v134, v133);
  if (v39[v130] != 1)
  {
    goto LABEL_52;
  }

  v85 = v122;
  swift_beginAccess();
  v86 = v85;
  v87 = v124;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v86, v124, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v87, 1, v123) == 1)
  {
    outlined destroy of CallControlsService?(v87, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    goto LABEL_52;
  }

  v88 = v120;
  _s15ConversationKit11ParticipantVWObTm_8(v87, v120);
  Participant.videoInfo.getter();
  if (!*&v135[0])
  {
    goto LABEL_50;
  }

  v90 = *(&v135[3] + 1);
  v89 = *&v135[4];
  v91 = BYTE8(v135[4]);
  v93 = *(&v135[2] + 1);
  v92 = *&v135[3];
  outlined destroy of CallControlsService?(v135, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  v94 = v93 == 1.0;
  if (v92 != 1.0)
  {
    v94 = 0;
  }

  if ((v91 & 1) == 0 && !v94)
  {
    goto LABEL_50;
  }

  v95 = v90 == 1.0;
  if (v89 != 1.0)
  {
    v95 = 0;
  }

  if ((v91 & 1) == 0 && !v95 || (v96 = v119, swift_beginAccess(), (v97 = *(v96 + 16)) == 0))
  {
LABEL_50:
    v101 = v88;
    goto LABEL_51;
  }

  v98 = v97;
  v99 = [v98 remoteVideoAttributes];
  if (v99)
  {
    v100 = v99;
    ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)();

    v101 = v120;
LABEL_51:
    _s15ConversationKit11ParticipantVWOhTm_18(v101, type metadata accessor for Participant);
    goto LABEL_52;
  }

  _s15ConversationKit11ParticipantVWOhTm_18(v120, type metadata accessor for Participant);

LABEL_52:
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  __swift_project_value_buffer(v102, static Logger.conversationController);
  v103 = v39;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v140[0] = v107;
    *v106 = 136315394;
    v136[0] = v103[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v108 = String.init<A>(reflecting:)();
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v140);

    *(v106 + 4) = v110;
    *(v106 + 12) = 1024;
    v111 = ConversationController.isOneToOneModeEnabled.getter();

    *(v106 + 14) = v111 & 1;
    _os_log_impl(&dword_1BBC58000, v104, v105, "[%s] Updated one-to-one mode to %{BOOL}d", v106, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x1BFB23DF0](v107, -1, -1);
    MEMORY[0x1BFB23DF0](v106, -1, -1);
  }

  else
  {
  }

  v112 = &v103[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
  swift_beginAccess();
  v113 = *v112;
  if (*v112)
  {
    v114 = *(v112 + 1);

    v115 = ConversationController.isOneToOneModeEnabled.getter();
    v113(v115 & 1, 0);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v113, v114);
  }
}

void closure #2 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(char *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v123 = a6;
  v135 = a4;
  v136 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v128 = &v120[-v9];
  v127 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v120[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v120[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v120[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v132 = &v120[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v129 = &v120[-v18];
  MEMORY[0x1EEE9AC00](v19);
  *&v133.f64[0] = &v120[-v20];
  v126 = swift_projectBox();
  v21 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter;
  v22 = a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter];
  v23 = a2[3];
  v24 = a2[4];
  v125.i64[0] = a2;
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v25 = *(v24 + 200);
  v26 = v25(v23, v24);
  v134 = v21;
  a1[v21] = v26 & 1;
  v137 = a1;
  ConversationController.isOneToOneModeEnabledByCallCenter.didset();
  if (v22 == 1 && (v25(v23, v24) & 1) == 0)
  {
    v27 = *(v125.i64[0] + 24);
    v28 = *(v125.i64[0] + 32);
    __swift_project_boxed_opaque_existential_1(v125.i64[0], v27);
    Conversation.displayableActiveParticipants.getter(v27, v28);
    v29 = specialized Set.count.getter();

    if (v29 == 2)
    {
      v30 = *(v125.i64[0] + 24);
      v31 = *(v125.i64[0] + 32);
      __swift_project_boxed_opaque_existential_1(v125.i64[0], v30);
      if ((*(v31 + 184))(v30, v31))
      {
        if (one-time initialization token for conversationController != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        __swift_project_value_buffer(v32, static Logger.conversationController);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1BBC58000, v33, v34, "Handoff is ongoing - we shouldn't switch to square tiles until a timeout", v35, 2u);
          MEMORY[0x1BFB23DF0](v35, -1, -1);
        }
      }
    }
  }

  v36 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  v37 = v137;
  swift_beginAccess();
  v38 = *&v133.f64[0];
  _s15ConversationKit11ParticipantVWOcTm_17(&v36[v37], *&v133.f64[0]);
  Participant.videoInfo.getter();
  v39 = _s15ConversationKit11ParticipantVWOhTm_18(v38, type metadata accessor for Participant);
  if (v144)
  {
    memcpy(&v143[1], v145, 0x43uLL);
    v143[0] = v144;
    ConversationController.videoProviderForResizingLocal.getter(v142);
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = __swift_project_value_buffer(v40, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v142, v138);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v133.f64[0] = v40;
      v46 = v41;
      v47 = v36;
      v48 = v45;
      v141[0] = v45;
      *v44 = 136315138;
      outlined init with copy of CallCenterProvider(v138, __dst);
      v49 = specialized >> prefix<A>(_:)(__dst);
      v51 = v50;
      outlined destroy of CallControlsService?(__dst, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v138);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v141);

      *(v44 + 4) = v52;
      _os_log_impl(&dword_1BBC58000, v42, v43, "Resizing local preview with video provider: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      v53 = v48;
      v36 = v47;
      v41 = v46;
      v40 = *&v133.f64[0];
      MEMORY[0x1BFB23DF0](v53, -1, -1);
      MEMORY[0x1BFB23DF0](v44, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v138);
    }

    outlined init with copy of CallCenterProvider(v142, __dst);
    v54 = ConversationController.isOneToOneModeEnabled.getter();
    v55 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    swift_beginAccess();
    v56 = v37[v55];
    v57 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    swift_beginAccess();
    v58 = *&v37[v57];
    v59 = v129;
    _s15ConversationKit11ParticipantVWOcTm_17(&v36[v37], v129);
    Participant.aspectRatio.getter(v146);
    _s15ConversationKit11ParticipantVWOhTm_18(v59, type metadata accessor for Participant);
    if (v54)
    {
      v129 = v36;
      static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(__dst, v58, v56, v146, 0, v138);
      v60 = v138[1];
      v133 = v138[0];
      v125 = *(&v138[1] + 8);
      v61 = BYTE8(v138[2]);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v40, static Logger.conversationKit);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      v64 = &stru_1BC4BA000;
      if (os_log_type_enabled(v62, v63))
      {
        v121 = v61;
        v122 = v41;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v141[0] = v66;
        *v65 = 136315138;
        if (v60)
        {
          v67 = 0xE300000000000000;
          v68 = 7104878;
        }

        else
        {
          v138[0] = v133;
          type metadata accessor for CGSize(0);
          v68 = String.init<A>(reflecting:)();
          v67 = v73;
        }

        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v67, v141);

        *(v65 + 4) = v74;
        _os_log_impl(&dword_1BBC58000, v62, v63, "Updating the local video aspect ratio to %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x1BFB23DF0](v66, -1, -1);
        MEMORY[0x1BFB23DF0](v65, -1, -1);

        __swift_destroy_boxed_opaque_existential_1(__dst);
        v64 = &stru_1BC4BA000;
        v61 = v121;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(__dst);
      }

      v71 = 0uLL;
      if (v60 & 1) != 0 || (v75 = vextq_s8(v133, v133, 8uLL), (vmovn_s64(vceqq_f64(v133, v75)).u8[0]))
      {
        v69 = 0;
        v70 = 0;
        v72 = 1;
      }

      else
      {
        v72 = 0;
        v76 = vdup_n_s32(v61);
        v77.i64[0] = v76.u32[0];
        v77.i64[1] = v76.u32[1];
        v71 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v77, 0x3FuLL)), v75, v125);
        v70 = *&v133.f64[1];
        v69 = *&v133.f64[0];
      }

      v36 = v129;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v69 = 0;
      v70 = 0;
      v71 = 0uLL;
      v72 = 1;
      v64 = &stru_1BC4BA000;
    }

    v143[5] = v69;
    v143[6] = v70;
    *&v143[7] = v71;
    LOBYTE(v143[9]) = v72;
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      LOBYTE(v143[2]) = 0;
    }

    memcpy(v141, v143, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v141, v138);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    outlined destroy of Participant.VideoInfo(v141);
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v140[0] = v81;
      *v80 = *&v64[144]._predicateFlags;
      memcpy(v138, v141, 0x4BuLL);
      outlined init with copy of Participant.VideoInfo(v141, __dst);
      v82 = String.init<A>(reflecting:)();
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v140);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_1BBC58000, v78, v79, "Due to one-to-one change, updated local participant videoInfo to %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1BFB23DF0](v81, -1, -1);
      MEMORY[0x1BFB23DF0](v80, -1, -1);
    }

    v85 = v131;
    _s15ConversationKit11ParticipantVWOcTm_17(&v36[v37], v131);
    ConversationController.conversationIsAVLess.getter();
    swift_beginAccess();
    memcpy(v139, v143, 0x4BuLL);
    memcpy(v140, v143, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v139, v138);
    outlined destroy of Participant.VideoInfo(v140);
    memcpy(__dst, v139, 0x4BuLL);
    memset(v138, 0, 24);
    *(&v138[1] + 1) = 1;
    bzero(&v138[2], 0xB1uLL);
    v86 = v130;
    _s15ConversationKit11ParticipantVWOcTm_17(&v36[v37], v130);
    v87 = Participant.captionInfo.getter();
    _s15ConversationKit11ParticipantVWOhTm_18(v86, type metadata accessor for Participant);
    Participant.copresenceInfo.getter(v147);
    v88 = v132;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(v147, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    outlined destroy of Participant.VideoInfo(v139);
    outlined consume of Participant.CaptionInfo?(v87);
    outlined destroy of CallControlsService?(v138, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    _s15ConversationKit11ParticipantVWOhTm_18(v85, type metadata accessor for Participant);
    __swift_destroy_boxed_opaque_existential_1(v142);
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOdTm_0(v88, &v36[v37]);
    v39 = swift_endAccess();
  }

  v136(v39);
  if (v37[v134] == 1)
  {
    v89 = v126;
    swift_beginAccess();
    v90 = v89;
    v91 = v128;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v90, v128, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (__swift_getEnumTagSinglePayload(v91, 1, v127) == 1)
    {
      outlined destroy of CallControlsService?(v91, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      goto LABEL_53;
    }

    v92 = v124;
    _s15ConversationKit11ParticipantVWObTm_8(v91, v124);
    Participant.videoInfo.getter();
    if (!*&v138[0])
    {
      goto LABEL_51;
    }

    v94 = *(&v138[3] + 1);
    v93 = *&v138[4];
    v95 = BYTE8(v138[4]);
    v97 = *(&v138[2] + 1);
    v96 = *&v138[3];
    outlined destroy of CallControlsService?(v138, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    v98 = v97 == 1.0;
    if (v96 != 1.0)
    {
      v98 = 0;
    }

    if ((v95 & 1) == 0 && !v98)
    {
      goto LABEL_51;
    }

    v99 = v94 == 1.0;
    if (v93 != 1.0)
    {
      v99 = 0;
    }

    if ((v95 & 1) == 0 && !v99 || (v100 = v123, swift_beginAccess(), (v101 = *(v100 + 16)) == 0))
    {
LABEL_51:
      v105 = v92;
      goto LABEL_52;
    }

    v102 = v101;
    v103 = [v102 remoteVideoAttributes];
    if (v103)
    {
      v104 = v103;
      ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)();

      v105 = v124;
LABEL_52:
      _s15ConversationKit11ParticipantVWOhTm_18(v105, type metadata accessor for Participant);
      goto LABEL_53;
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v124, type metadata accessor for Participant);
  }

LABEL_53:
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v106 = type metadata accessor for Logger();
  __swift_project_value_buffer(v106, static Logger.conversationController);
  v107 = v37;
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v143[0] = v111;
    *v110 = 136315394;
    v139[0] = v107[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v112 = String.init<A>(reflecting:)();
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, v143);

    *(v110 + 4) = v114;
    *(v110 + 12) = 1024;
    v115 = ConversationController.isOneToOneModeEnabled.getter();

    *(v110 + 14) = v115 & 1;
    _os_log_impl(&dword_1BBC58000, v108, v109, "[%s] Updated one-to-one mode to %{BOOL}d", v110, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x1BFB23DF0](v111, -1, -1);
    MEMORY[0x1BFB23DF0](v110, -1, -1);
  }

  else
  {
  }

  v116 = &v107[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
  swift_beginAccess();
  v117 = *v116;
  if (*v116)
  {
    v118 = *(v116 + 1);

    v119 = ConversationController.isOneToOneModeEnabled.getter();
    v117(v119 & 1, 0);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v117, v118);
  }
}

void ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_410_0();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_37_0();
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v6;
  v9[4] = v0;
  if (v4)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v10 = v0;
    v11 = v6;
    v12 = v2;
    v33 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_24();
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for closure #1 in ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:);
    *(v13 + 24) = v9;
    v34[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v34[5] = v13;
    OUTLINED_FUNCTION_5_73();
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v34[2] = v14;
    v34[3] = &block_descriptor_170;
    v15 = _Block_copy(v34);

    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v16, v17);
    v18 = OUTLINED_FUNCTION_15_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v20, v21, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_78_8();
    OUTLINED_FUNCTION_260();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v22);
    _Block_release(v15);

    v23 = OUTLINED_FUNCTION_309();
    v24(v23);
    v25 = OUTLINED_FUNCTION_20_38();
    v26(v25, v1);

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v0;
    v6;
    v27 = v2;
    OUTLINED_FUNCTION_487(v28);
    closure #1 in ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)(v29, v30, v31);
    OUTLINED_FUNCTION_30_0();
  }
}

void closure #3 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) == 1)
    {
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.conversationController);
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      v12 = os_log_type_enabled(v10, v11);
      v43 = a2;
      if (v12)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v50[0] = v14;
        *v13 = 136315138;
        LOBYTE(v46) = *(v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
        v15 = String.init<A>(reflecting:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v50);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1BBC58000, v10, v11, "[%s] Timed out waiting for first non-square remote video frame", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1BFB23DF0](v14, -1, -1);
        MEMORY[0x1BFB23DF0](v13, -1, -1);
      }

      ConversationController.isOneToOneCallCenterUpdateWaitingForNonSquareVideo.setter(0);
      ConversationController.lookupActiveConversation()();
      if (v48)
      {
        outlined init with take of TapInteractionHandler(&v46, v50);
        v18 = v51;
        v19 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        if ((*(v19 + 200))(v18, v19))
        {
          outlined init with copy of CallCenterProvider(v50, &v46);
          v9 = v9;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v45 = v23;
            *v22 = 136315394;
            HIBYTE(v44) = *(v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
            v24 = String.init<A>(reflecting:)();
            v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v45);

            *(v22 + 4) = v26;
            *(v22 + 12) = 2080;
            v27 = v48;
            v28 = v49;
            __swift_project_boxed_opaque_existential_1(&v46, v48);
            (*(v28 + 8))(v27, v28);
            v29 = type metadata accessor for UUID();
            __swift_storeEnumTagSinglePayload(v5, 0, 1, v29);
            specialized >> prefix<A>(_:)(v5, v30, v31, v32, v33, v34, v35, v36, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50[0], v50[1]);
            v38 = v37;
            v40 = v39;
            outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            __swift_destroy_boxed_opaque_existential_1(&v46);
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v45);

            *(v22 + 14) = v41;
            _os_log_impl(&dword_1BBC58000, v20, v21, "[%s] Triggering delayed one-to-one update for conversation: %s", v22, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v23, -1, -1);
            MEMORY[0x1BFB23DF0](v22, -1, -1);
          }

          else
          {

            v42 = __swift_destroy_boxed_opaque_existential_1(&v46);
          }

          v43(v42);
        }

        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      else
      {

        outlined destroy of CallControlsService?(&v46, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      }
    }

    else
    {
    }
  }
}

void ConversationController.callCenter(_:avModeChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v3 = OUTLINED_FUNCTION_271_4();
  OUTLINED_FUNCTION_391_0(v3);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_164_2();
  v10(v9);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_112();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
LABEL_4:
    OUTLINED_FUNCTION_0_1();
    if ((*(v14 + 904))())
    {
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      OUTLINED_FUNCTION_49_23();
      v15 = OUTLINED_FUNCTION_406_0();
      v16(v15);
      v17 = OUTLINED_FUNCTION_211();
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v19 = OUTLINED_FUNCTION_406_0();
      v20(v19);
      OUTLINED_FUNCTION_281();
      v21 = static UUID.== infix(_:_:)();
      v22 = *(v5 + 8);
      v23 = OUTLINED_FUNCTION_33_0();
      v22(v23);
      v24 = OUTLINED_FUNCTION_39_5();
      v22(v24);
      if (v21)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        OUTLINED_FUNCTION_37_22();
        v25 = swift_allocObject();
        OUTLINED_FUNCTION_221_3(v25, xmmword_1BC4BA940);
        v26 = OUTLINED_FUNCTION_0_95();
        v44[0] = v27(v26);
        type metadata accessor for TUConversationAVMode(0);
        OUTLINED_FUNCTION_437();
        OUTLINED_FUNCTION_208_0();
        v25[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v28 = lazy protocol witness table accessor for type String and conformance String();
        OUTLINED_FUNCTION_488(v28);
        v29 = static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_299_0("AV mode changed to %@", 21, v30, &dword_1BBC58000, v31, v29);

        v32 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v33 = *v32;
        if (*v32)
        {
          v34 = *(v32 + 8);
          v35 = *(v1 + 32);
          v36 = OUTLINED_FUNCTION_316();
          OUTLINED_FUNCTION_179_2(v36, v37);
          v38 = *(v35 + 272);

          v39 = OUTLINED_FUNCTION_32_2();
          v40 = v38(v39);
          v33(v40);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v33, v34);
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_388_0();
  if (v44[3])
  {
    OUTLINED_FUNCTION_335();
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  outlined destroy of CallControlsService?(v44, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_371_0(v41, xmmword_1BC4BA940);
  OUTLINED_FUNCTION_387_0();
  OUTLINED_FUNCTION_314_0();
  v41[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v42 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_345_0(v42);
  OUTLINED_FUNCTION_51_22();
  os_log(_:dso:log:type:_:)(v43);

LABEL_14:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:resolvedAudioVideoModeChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v3 = OUTLINED_FUNCTION_271_4();
  OUTLINED_FUNCTION_391_0(v3);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v10 = OUTLINED_FUNCTION_164_2();
  v11(v10);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_327_0();
  v12 = OUTLINED_FUNCTION_112();
  v13(v12);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_388_0();
  if (!v43[3])
  {
    outlined destroy of CallControlsService?(v43, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_10:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_371_0(v40, xmmword_1BC4BA940);
      OUTLINED_FUNCTION_387_0();
      OUTLINED_FUNCTION_213_1();
      v40[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v41 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_318_0(v41);
      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)(v42);

      goto LABEL_11;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_10;
  }

  v14 = OUTLINED_FUNCTION_17_70();
  v15(v14);
  v16 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v18 = OUTLINED_FUNCTION_31_39();
  v19(v18);
  OUTLINED_FUNCTION_157();
  v20 = static UUID.== infix(_:_:)();
  v21 = *(v5 + 8);
  v22 = OUTLINED_FUNCTION_7_8();
  v21(v22);
  v23 = OUTLINED_FUNCTION_281();
  v21(v23);
  if (v20)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_221_3(v24, xmmword_1BC4BA940);
    v25 = OUTLINED_FUNCTION_0_95();
    v43[0] = v26(v25);
    type metadata accessor for TUConversationAVMode(0);
    OUTLINED_FUNCTION_437();
    OUTLINED_FUNCTION_208_0();
    v24[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v27 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_488(v27);
    v28 = static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_299_0("Resolved audio/video mode changed to %@", 39, v29, &dword_1BBC58000, v30, v28);

    v31 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v32 = *v31;
    if (*v31)
    {
      v33 = *(v31 + 8);
      v34 = *(v1 + 32);
      v35 = OUTLINED_FUNCTION_316();
      OUTLINED_FUNCTION_179_2(v35, v36);
      v37 = *(v34 + 288);

      v38 = OUTLINED_FUNCTION_32_2();
      v39 = v37(v38);
      v32(v39);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v32, v33);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v44);
LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:removedActiveConversation:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v1;
  v6 = v5;
  ObjectType = swift_getObjectType();
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v188 = v8;
  OUTLINED_FUNCTION_4_24();
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v193 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32();
  v194 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v186 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v192 = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v183 - v23;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v26 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_250_3();
  v27(v2);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_248_1();
  v28(v2, v0);
  if (v26)
  {
    v191 = v3;
    if (one-time initialization token for conversationController == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
LABEL_3:
  v29 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v29, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v6, v197);
  v30 = v4;
  v190 = v26;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = &unk_1BC4BB000;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = OUTLINED_FUNCTION_30_1();
    v35 = OUTLINED_FUNCTION_29_7();
    v185 = v6;
    v184 = v35;
    v196[0] = v35;
    *v34 = 136315394;
    v195 = *(v30 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v36 = String.init<A>(reflecting:)();
    v38 = OUTLINED_FUNCTION_449(v36, v37);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v197, v198);
    OUTLINED_FUNCTION_125_1();
    v39 = OUTLINED_FUNCTION_258_0();
    v40(v39);
    v41 = OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_531(v41, v42, v43, v9, v44, v45, v46, v47, v183, v184, v185, v186, v187, v188, ObjectType, v190, v191, v192);
    OUTLINED_FUNCTION_87();
    outlined destroy of CallControlsService?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_destroy_boxed_opaque_existential_1(v197);
    v48 = OUTLINED_FUNCTION_209();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v50);
    OUTLINED_FUNCTION_182();
    v33 = &unk_1BC4BB000;

    *(v34 + 14) = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
    _os_log_impl(&dword_1BBC58000, v31, v32, "%s Received removedActiveConversation: %s", v34, 0x16u);
    swift_arrayDestroy();
    v6 = v185;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_239();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v197);
  }

  ConversationController.lookupActiveConversation()();
  if (v196[3])
  {
    OUTLINED_FUNCTION_446();
    v51 = v199;
    OUTLINED_FUNCTION_246_4(v197, v198);
    v52 = OUTLINED_FUNCTION_28_0();
    v53(v52, v51);
    v54 = v6[4];
    v55 = OUTLINED_FUNCTION_308_1();
    OUTLINED_FUNCTION_246_4(v55, v56);
    v57 = OUTLINED_FUNCTION_28_0();
    v58(v57, v54);
    OUTLINED_FUNCTION_408_0();
    v59 = static UUID.== infix(_:_:)();
    v60 = *(v11 + 8);
    v61 = OUTLINED_FUNCTION_316_1();
    v60(v61);
    v62 = OUTLINED_FUNCTION_43_0();
    v60(v62);
    if (v59)
    {
      OUTLINED_FUNCTION_97_8(v6);
      v63 = OUTLINED_FUNCTION_4_38();
      if (v64(v63) == 2)
      {
        OUTLINED_FUNCTION_97_8(v197);
        v65 = OUTLINED_FUNCTION_4_38();
        if (v66(v65) == 3)
        {
          OUTLINED_FUNCTION_97_8(v6);
          v67 = OUTLINED_FUNCTION_4_38();
          if (v68(v67) == 1)
          {
            OUTLINED_FUNCTION_97_8(v6);
            v69 = OUTLINED_FUNCTION_4_38();
            v71 = v70(v69);
            if (v71)
            {
              v54 = v71;
              OUTLINED_FUNCTION_97_8(v197);
              v72 = OUTLINED_FUNCTION_4_38();
              v74 = v73(v72);
              if (v74)
              {
                v75 = v74;
                if ([v54 isEquivalentToConversationLink_])
                {
                  if (one-time initialization token for conversationKit != -1)
                  {
                    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                  OUTLINED_FUNCTION_194();
                  v76 = swift_allocObject();
                  *(v76 + 16) = xmmword_1BC4BAA20;
                  v77 = OUTLINED_FUNCTION_393();
                  __swift_project_boxed_opaque_existential_1(v77, v78);
                  OUTLINED_FUNCTION_125_1();
                  v79 = OUTLINED_FUNCTION_179_0();
                  v80(v79);
                  v81 = OUTLINED_FUNCTION_18_9();
                  OUTLINED_FUNCTION_531(v81, v82, v83, v9, v84, v85, v86, v87, v183, v184, v185, v186, v187, v188, ObjectType, v190, v191, v192);
                  v88 = OUTLINED_FUNCTION_246();
                  v90 = v89;
                  outlined destroy of CallControlsService?(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                  v91 = MEMORY[0x1E69E6158];
                  *(v76 + 56) = MEMORY[0x1E69E6158];
                  v92 = lazy protocol witness table accessor for type String and conformance String();
                  *(v76 + 64) = v92;
                  *(v76 + 32) = v60;
                  *(v76 + 40) = v90;
                  v196[0] = v54;
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
                  v93 = v54;
                  v94 = String.init<A>(reflecting:)();
                  *(v76 + 96) = v91;
                  *(v76 + 104) = v92;
                  *(v76 + 72) = v94;
                  *(v76 + 80) = v95;
                  static os_log_type_t.default.getter();
                  OUTLINED_FUNCTION_41_0();
                  os_log(_:dso:log:type:_:)(v96);

                  goto LABEL_38;
                }

                v54 = v75;
              }
            }
          }
        }
      }

      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_1BC4BA940;
      v196[0] = v30;
      v30;
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_43_7();
      *(v181 + 56) = MEMORY[0x1E69E6158];
      *(v181 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v181 + 32) = v54;
      *(v181 + 40) = v30;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_41_0();
      os_log(_:dso:log:type:_:)(v182);

      outlined init with copy of CallCenterProvider(v6, v196);
      ConversationController.update(with:)();
      outlined destroy of CallControlsService?(v196, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }

LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(v197);
    goto LABEL_39;
  }

  v185 = v11;
  v193 = v9;
  outlined destroy of CallControlsService?(v196, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  v97 = v30;
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.error.getter();

  v100 = OUTLINED_FUNCTION_317();
  v183 = v24;
  if (v100)
  {
    v101 = OUTLINED_FUNCTION_30_1();
    v197[0] = OUTLINED_FUNCTION_29_7();
    *v101 = v33[308];
    LOBYTE(v196[0]) = *(v97 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v102 = String.init<A>(reflecting:)();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v197);

    *(v101 + 4) = v104;
    *(v101 + 12) = 2080;
    v196[0] = v97;
    v105 = v97;
    v106 = String.init<A>(reflecting:)();
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v197);

    *(v101 + 14) = v108;
    _os_log_impl(&dword_1BBC58000, v98, v99, "%s Unable to lookup active conversation in CallCenterProviderDelegate removedActiveConversation: callback - %s", v101, 0x16u);
    OUTLINED_FUNCTION_399_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_239();
  }

  v109 = v188;
  v110 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  ObjectType = v110;
  v111 = v191;
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v112, v113, v114, v115);
  v116 = v6[4];
  OUTLINED_FUNCTION_247_4(v6, v6[3]);
  v117 = OUTLINED_FUNCTION_182();
  v118(v117, v116);
  OUTLINED_FUNCTION_12();
  v119 = v193;
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v193);
  v123 = *(v187 + 48);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v124, v125, v126, v127);
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v128, v129, v130, v131);
  OUTLINED_FUNCTION_22_5(v109);
  if (!v134)
  {
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v109, v186, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_22_5(v109 + v123);
    if (!v134)
    {
      v137 = v185;
      (v185[4])(v194, v109 + v123, v119);
      OUTLINED_FUNCTION_13_83();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v138, v139);
      OUTLINED_FUNCTION_77_1();
      v140 = dispatch thunk of static Equatable.== infix(_:_:)();
      v141 = *(v137 + 8);
      v142 = OUTLINED_FUNCTION_244_1();
      v141(v142);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v143, v144, v145);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v146, v147, v148);
      v149 = OUTLINED_FUNCTION_393();
      v141(v149);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v150, v151, v152);
      if ((v140 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_378(v192);
    OUTLINED_FUNCTION_378(v191);
    v135 = OUTLINED_FUNCTION_393();
    v136(v135);
LABEL_27:
    outlined destroy of CallControlsService?(v109, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_39;
  }

  v132 = OUTLINED_FUNCTION_308_1();
  outlined destroy of CallControlsService?(v132, v133, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_378(v111);
  OUTLINED_FUNCTION_22_5(v109 + v123);
  if (!v134)
  {
    goto LABEL_27;
  }

  outlined destroy of CallControlsService?(v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_29:
  v153 = v97;
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = OUTLINED_FUNCTION_30_1();
    v196[0] = OUTLINED_FUNCTION_29_7();
    *v156 = 136315394;
    v195 = *(v153 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v157 = String.init<A>(reflecting:)();
    v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, v196);

    *(v156 + 4) = v159;
    *(v156 + 12) = 2080;
    v160 = v183;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v97 + ObjectType, v183, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized >> prefix<A>(_:)(v160, v161, v162, v163, v164, v165, v166, v167, v183, v184, v185, v186, v187, v188, ObjectType, v190, v191, v192);
    v168 = OUTLINED_FUNCTION_393();
    v119 = v193;
    outlined destroy of CallControlsService?(v168, v169, &_s10Foundation4UUIDVSgMR);
    v170 = OUTLINED_FUNCTION_408_0();
    v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v171, v172);

    *(v156 + 14) = v173;
    OUTLINED_FUNCTION_25_53();
    _os_log_impl(v174, v175, v176, v177, v156, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_239();
  }

  else
  {

    v160 = v183;
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v119);
  ConversationController.conversationUUID.setter(v160);
LABEL_39:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:addedActiveConversation:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_173();
  ObjectType = swift_getObjectType();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_83_1();
  ConversationController.lookupActiveConversation()();
  if (v29[3])
  {
    OUTLINED_FUNCTION_335();
    v9 = v30[4];
    OUTLINED_FUNCTION_246_4(v30, v30[3]);
    v10 = OUTLINED_FUNCTION_6_4();
    v11(v10, v9);
    v12 = OUTLINED_FUNCTION_1_5();
    __swift_project_boxed_opaque_existential_1(v12, v13);
    OUTLINED_FUNCTION_71_13();
    v14 = OUTLINED_FUNCTION_316();
    v15(v14);
    OUTLINED_FUNCTION_157();
    static UUID.== infix(_:_:)();
    v16 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_312();
    v16(v17);
    (v16)(v3, v0);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    outlined destroy of CallControlsService?(v29, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BA940;
    v30[0] = v1;
    v1;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_87();
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v1;
    *(v18 + 40) = ObjectType;
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v19);

    v20 = *(v2 + 32);
    v21 = OUTLINED_FUNCTION_316();
    OUTLINED_FUNCTION_179_2(v21, v22);
    v23 = *(v20 + 24);
    v24 = OUTLINED_FUNCTION_32_2();
    v25 = v23(v24);
    [v25 currentVideoCallCount];
    OUTLINED_FUNCTION_479();
    swift_unknownObjectRelease();
    if (v18 == 1)
    {
      v26 = OUTLINED_FUNCTION_32_2();
      v27 = [v23(v26) currentVideoCall];
      OUTLINED_FUNCTION_173();
      swift_unknownObjectRelease();
      if (v25)
      {
        if ([v25 isActive])
        {
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_41_0();
          os_log(_:dso:log:type:_:)(v28);
          ConversationController.processCurrentCall(_:)(v25);
        }
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.processCurrentCall(_:)(void *a1)
{
  v3 = v1;
  v229 = type metadata accessor for UUID();
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v6 = &v215 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v215 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v221 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v215 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v18 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v19 = _dispatchPreconditionTest(_:)();
  v21 = *(v16 + 8);
  v20 = v16 + 8;
  v21(v18, v15);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    v225 = v22;
    outlined init with copy of CallCenterProvider(v3 + v22, &v239);
    v23 = v241;
    v24 = __swift_project_boxed_opaque_existential_1(&v239, v240);
    v25 = MEMORY[0x1EEE9AC00](v24);
    *(&v215 - 2) = v3;
    v26 = (*(v23 + 208))(partial apply for closure #1 in ConversationController.processCurrentCall(_:), v25);
    if (v26[2])
    {
      v2 = v26[4];
      v20 = v26[5];
      swift_unknownObjectRetain();
    }

    else
    {
      v2 = 0;
      v20 = 0;
    }

    v222 = v6;

    __swift_destroy_boxed_opaque_existential_1(&v239);
    if (one-time initialization token for conversationController == -1)
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
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.conversationController);
  swift_unknownObjectRetain();
  v226 = v3;
  v29 = v3;
  v30 = a1;
  v219 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  HIDWORD(v220) = v32;
  v33 = os_log_type_enabled(v31, v32);
  v227 = v20;
  v224 = v9;
  if (v33)
  {
    v217 = v31;
    v34 = swift_slowAlloc();
    v216 = swift_slowAlloc();
    v239 = v216;
    *v34 = 136315906;
    LOBYTE(v236) = v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v35 = String.init<A>(reflecting:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v239);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v218 = v30;
    v38 = [v30 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v229;
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v229);
    specialized >> prefix<A>(_:)(v14, v40, v41, v42, v43, v44, v45, v46, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);
    v48 = v47;
    v49 = v29;
    v51 = v50;
    outlined destroy of CallControlsService?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v51, &v239);

    *(v34 + 14) = v52;
    *(v34 + 22) = 2080;
    v223 = v49;
    v53 = &v49[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    swift_beginAccess();
    v54 = *(v53 + 1);
    v55 = v39;
    v56 = v2;
    ObjectType = swift_getObjectType();
    v58 = *(v54 + 232);
    swift_unknownObjectRetain();
    v59 = ObjectType;
    v2 = v56;
    v58(v59, v54);
    swift_unknownObjectRelease();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v55);
    specialized >> prefix<A>(_:)(v14, v60, v61, v62, v63, v64, v65, v66, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);
    v68 = v67;
    v70 = v69;
    outlined destroy of CallControlsService?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v239);

    *(v34 + 24) = v71;
    *(v34 + 32) = 2080;
    if (v56)
    {
      v72 = swift_getObjectType();
      v73 = v221;
      (*(v227 + 232))(v72);
      v74 = 0;
      v9 = v224;
    }

    else
    {
      v9 = v224;
      v73 = v221;
      v74 = 1;
    }

    __swift_storeEnumTagSinglePayload(v73, v74, 1, v55);
    specialized >> prefix<A>(_:)(v73, v75, v76, v77, v78, v79, v80, v81, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);
    v83 = v82;
    v85 = v84;
    outlined destroy of CallControlsService?(v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v239);

    *(v34 + 34) = v86;
    v87 = v217;
    _os_log_impl(&dword_1BBC58000, v217, BYTE4(v220), "[%s] processCurrentCall %s self.call: %s, optionalVideoCall: %s", v34, 0x2Au);
    v88 = v216;
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v88, -1, -1);
    MEMORY[0x1BFB23DF0](v34, -1, -1);

    v29 = v223;
    v20 = v227;
    v30 = v218;
  }

  else
  {
  }

  ConversationController.lookupActiveConversation()();
  if (!v237)
  {
    result = outlined destroy of CallControlsService?(&v236, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (!v2)
    {
      return result;
    }

    goto LABEL_21;
  }

  outlined init with take of TapInteractionHandler(&v236, &v239);
  if (v2)
  {
    v89 = swift_getObjectType();
    if ((*(v20 + 208))(v89, v20) != 4)
    {
      __swift_destroy_boxed_opaque_existential_1(&v239);
LABEL_21:
      v221 = v14;
      v104 = v30;
      outlined init with copy of CallCenterProvider(v226 + v225, &v236);
      v105 = v237;
      v106 = v238;
      __swift_project_boxed_opaque_existential_1(&v236, v237);
      v107 = *(v106 + 104);
      v108 = swift_unknownObjectRetain();
      v107(&v233, v108, v20, v105, v106);
      if (v234)
      {
        outlined init with take of TapInteractionHandler(&v233, &v239);
        __swift_destroy_boxed_opaque_existential_1(&v236);
        if (!ConversationController.hasRingingCalls.getter())
        {
          v175 = v29;
          swift_unknownObjectRetain();
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            *&v233 = v179;
            *v178 = 136315394;
            LOBYTE(v236) = v175[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
            v180 = String.init<A>(reflecting:)();
            v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v181, &v233);

            *(v178 + 4) = v182;
            *(v178 + 12) = 2080;
            v183 = swift_getObjectType();
            v184 = v227;
            *&v236 = (*(v227 + 224))(v183, v227);
            *(&v236 + 1) = v185;
            v186 = String.init<A>(reflecting:)();
            v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v187, &v233);

            *(v178 + 14) = v188;
            _os_log_impl(&dword_1BBC58000, v176, v177, "%s Migrating to track new call with UPI %s", v178, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v179, -1, -1);
            MEMORY[0x1BFB23DF0](v178, -1, -1);
          }

          else
          {

            v184 = v227;
          }

          v210 = swift_getObjectType();
          swift_unknownObjectRetain();
          specialized ConversationController.migrate(to:with:isUpgrade:)(&v239, v2, 0, v175, v210, v184);
          swift_unknownObjectRelease_n();
          return __swift_destroy_boxed_opaque_existential_1(&v239);
        }

        v109 = v104;
        __swift_destroy_boxed_opaque_existential_1(&v239);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        outlined destroy of CallControlsService?(&v233, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(&v236);
        v109 = v104;
      }

      v110 = &v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
      swift_beginAccess();
      v111 = *(v110 + 1);
      v112 = swift_getObjectType();
      v113 = *(v111 + 232);
      swift_unknownObjectRetain();
      v114 = v224;
      v113(v112, v111);
      swift_unknownObjectRelease();
      v115 = [v109 uniqueProxyIdentifierUUID];
      v116 = v222;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v115) = static UUID.== infix(_:_:)();
      v117 = v228 + 8;
      v118 = *(v228 + 8);
      v119 = v116;
      v120 = v229;
      v118(v119, v229);
      v118(v114, v120);
      if ((v115 & 1) != 0 && ([v109 status] == 5 || objc_msgSend(v109, sel_status) == 6))
      {
        v121 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
        swift_beginAccess();
        v122 = *&v29[v121];
        v123 = swift_getObjectType();
        v228 = v117;
        v223 = v29;
        v124 = v114;
        v125 = v227;
        v126 = v227 + 232;
        v127 = *(v227 + 232);

        v226 = v123;
        v128 = v123;
        v129 = v127;
        v225 = v126;
        v130 = (v127)(v128, v125);
        MEMORY[0x1EEE9AC00](v130);
        *(&v215 - 2) = v124;
        v131 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v215 - 4), v122);

        v118(v124, v229);
        if (v131)
        {
          v132 = v223;
          v133 = v109;
          swift_unknownObjectRetain();
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            v228 = swift_slowAlloc();
            *&v233 = v228;
            *v136 = 136315650;
            LOBYTE(v231) = v132[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
            v137 = String.init<A>(reflecting:)();
            v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v233);

            *(v136 + 4) = v139;
            *(v136 + 12) = 2080;
            v140 = [v133 uniqueProxyIdentifierUUID];
            v141 = v221;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v142 = v229;
            __swift_storeEnumTagSinglePayload(v141, 0, 1, v229);
            specialized >> prefix<A>(_:)(v141, v143, v144, v145, v146, v147, v148, v149, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);
            v151 = v150;
            v153 = v152;
            outlined destroy of CallControlsService?(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, &v233);

            *(v136 + 14) = v154;
            *(v136 + 22) = 2080;
            v129(v226, v227);
            __swift_storeEnumTagSinglePayload(v141, 0, 1, v142);
            specialized >> prefix<A>(_:)(v141, v155, v156, v157, v158, v159, v160, v161, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224);
            v163 = v162;
            v165 = v164;
            outlined destroy of CallControlsService?(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v165, &v233);

            *(v136 + 24) = v166;
            _os_log_impl(&dword_1BBC58000, v134, v135, "%s The call this ConversationController was tracking is disconnected now %s, and one of the call waiting calls is still active %s. Probably should swap to the call waiting call.", v136, 0x20u);
            v167 = v228;
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v167, -1, -1);
            MEMORY[0x1BFB23DF0](v136, -1, -1);
          }

          ConversationController.handleRingingCallChangedToActiveIfNecessary()();
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  LODWORD(v227) = ConversationController.hasRingingCalls.getter();
  outlined init with copy of CallCenterProvider(v226 + v225, &v233);
  v90 = v234;
  v91 = v235;
  __swift_project_boxed_opaque_existential_1(&v233, v234);
  v92 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
  (*(v91 + 104))(&v231, v30, v92, v90, v91);
  v93 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  if (v232)
  {
    v223 = v29;
    outlined init with take of TapInteractionHandler(&v231, &v236);
    __swift_destroy_boxed_opaque_existential_1(&v233);
    v94 = v237;
    v95 = v238;
    __swift_project_boxed_opaque_existential_1(&v236, v237);
    (*(v95 + 8))(v94, v95);
    v96 = v240;
    v97 = v241;
    __swift_project_boxed_opaque_existential_1(&v239, v240);
    v98 = v222;
    (*(v97 + 8))(v96, v97);
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v99 = v229;
    LOBYTE(v96) = dispatch thunk of static Equatable.== infix(_:_:)();
    v100 = *(v228 + 8);
    v100(v98, v99);
    v101 = v9;
    v100(v9, v99);
    if (v96)
    {
      __swift_destroy_boxed_opaque_existential_1(&v236);
      v102 = v228;
      v29 = v223;
    }

    else
    {
      v168 = [v30 status];
      __swift_destroy_boxed_opaque_existential_1(&v236);
      if (v168 == 4)
      {
        v226 = v2;
        v169 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
        v170 = v223;
        swift_beginAccess();
        v171 = *&v170[v169];

        v172 = [v30 uniqueProxyIdentifierUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        MEMORY[0x1EEE9AC00](v173);
        *(&v215 - 2) = v101;
        LOBYTE(v172) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v215 - 4), v171);

        v174 = v229;
        v100(v101, v229);
        if ((v172 & 1) == 0)
        {
          v211 = v174;
          v212 = [v30 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v29 = v223;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v213 = *(*&v29[v169] + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v213);
          v214 = *&v29[v169];
          *(v214 + 16) = v213 + 1;
          (*(v228 + 32))(v214 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v213, v101, v211);
          *&v29[v169] = v214;
          goto LABEL_46;
        }
      }

      v102 = v228;
      v29 = v223;
    }

    v93 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
  }

  else
  {
    v101 = v9;
    outlined destroy of CallControlsService?(&v231, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v233);
    v102 = v228;
  }

  v189 = v93[94];
  swift_beginAccess();
  v190 = *&v29[v189];

  v191 = [v30 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x1EEE9AC00](v192);
  *(&v215 - 2) = v101;
  LOBYTE(v191) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v215 - 4), v190);

  (*(v102 + 8))(v101, v229);
  if ((v191 & 1) == 0 || [v30 status] != 6 && objc_msgSend(v30, sel_status) != 5)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  v193 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v29[v189], v30);
  v194 = *(*&v29[v189] + 16);
  if (v194 >= v193)
  {
    specialized Array.replaceSubrange<A>(_:with:)(v193, v194);
    swift_endAccess();
LABEL_46:
    if ((v227 & 1) == ConversationController.hasRingingCalls.getter())
    {
      goto LABEL_51;
    }

    v195 = v29;
    v196 = Logger.logObject.getter();
    v197 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v196, v197))
    {
      v198 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      *&v233 = v199;
      *v198 = 136315394;
      v230 = v195[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v200 = String.init<A>(reflecting:)();
      v202 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v200, v201, &v233);

      *(v198 + 4) = v202;
      *(v198 + 12) = 2080;
      v230 = ConversationController.hasRingingCalls.getter();
      v203 = String.init<A>(reflecting:)();
      v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v204, &v233);

      *(v198 + 14) = v205;
      _os_log_impl(&dword_1BBC58000, v196, v197, "%s hasRingingCalls changed to %s", v198, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v199, -1, -1);
      MEMORY[0x1BFB23DF0](v198, -1, -1);
    }

    v206 = &v195[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls];
    swift_beginAccess();
    v207 = *v206;
    if (!*v206)
    {
LABEL_51:
      swift_unknownObjectRelease();
    }

    else
    {
      v208 = *(v206 + 1);

      v209 = ConversationController.hasRingingCalls.getter();
      v207(v209);
      swift_unknownObjectRelease();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v207, v208);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v239);
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void ConversationController.callCenter(_:letMeInRequestStateChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_271_4();
  OUTLINED_FUNCTION_46_4();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_83_1();
  ConversationController.lookupActiveConversation()();
  if (v37[3])
  {
    v5 = OUTLINED_FUNCTION_17_70();
    v6(v5);
    v7 = *(v1 + 24);
    v8 = OUTLINED_FUNCTION_62_0();
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v10 = OUTLINED_FUNCTION_31_39();
    v11(v10);
    OUTLINED_FUNCTION_157();
    static UUID.== infix(_:_:)();
    v12 = OUTLINED_FUNCTION_174_1();
    v7(v12);
    v13 = OUTLINED_FUNCTION_281();
    v7(v13);
    if (v0)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_221_3(v14, xmmword_1BC4BAA20);
      v15 = OUTLINED_FUNCTION_0_95();
      v37[0] = v16(v15);
      type metadata accessor for TUConversationLetMeInRequestState(0);
      OUTLINED_FUNCTION_437();
      OUTLINED_FUNCTION_208_0();
      v17 = MEMORY[0x1E69E6158];
      v14[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v18 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_488(v18);
      v19 = OUTLINED_FUNCTION_276_2();
      outlined init with copy of CallCenterProvider(v19, v20);
      specialized >> prefix<A>(_:)(v37);
      OUTLINED_FUNCTION_208_0();
      outlined destroy of CallControlsService?(v37, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v14[6].n128_u64[0] = v17;
      v14[6].n128_u64[1] = v18;
      v14[4].n128_u64[1] = v0;
      v14[5].n128_u64[0] = v2;
      v21 = static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_299_0("Let me in request state changed to %@ for active conversation: %@", 65, v22, &dword_1BBC58000, v23, v21, v37[0]);

      v24 = OUTLINED_FUNCTION_62_0();
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v26 = OUTLINED_FUNCTION_0_212();
      v28 = v27(v26);
      ConversationController.conversationLetMeInRequestState.setter(v28);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BC4BAA20;
      v33 = OUTLINED_FUNCTION_276_2();
      outlined init with copy of CallCenterProvider(v33, v34);
      specialized >> prefix<A>(_:)(v37);
      OUTLINED_FUNCTION_267_2();
      OUTLINED_FUNCTION_219_2();
      *(v32 + 56) = MEMORY[0x1E69E6158];
      v35 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_198_5(v35);
      specialized >> prefix<A>(_:)(v37);
      OUTLINED_FUNCTION_200_3();
      OUTLINED_FUNCTION_493();
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)(v36);
    }

    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    outlined destroy of CallControlsService?(v37, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_371_0(v29, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_213_2();
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_213_1();
    v29[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_318_0(v30);
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)(v31);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:ignoreLetMeInRequestsChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_271_4();
  OUTLINED_FUNCTION_46_4();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_83_1();
  ConversationController.lookupActiveConversation()();
  if (v37[3])
  {
    v5 = OUTLINED_FUNCTION_17_70();
    v6(v5);
    v7 = *(v1 + 24);
    v8 = OUTLINED_FUNCTION_62_0();
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v10 = OUTLINED_FUNCTION_31_39();
    v11(v10);
    OUTLINED_FUNCTION_157();
    static UUID.== infix(_:_:)();
    v12 = OUTLINED_FUNCTION_174_1();
    v7(v12);
    v13 = OUTLINED_FUNCTION_281();
    v7(v13);
    if (v0)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_221_3(v14, xmmword_1BC4BAA20);
      v15 = OUTLINED_FUNCTION_0_95();
      v17 = v16(v15);
      v18 = MEMORY[0x1E69E63A8];
      v14[3].n128_u64[1] = MEMORY[0x1E69E6370];
      v14[4].n128_u64[0] = v18;
      v14[2].n128_u8[0] = v17 & 1;
      v19 = OUTLINED_FUNCTION_276_2();
      outlined init with copy of CallCenterProvider(v19, v20);
      specialized >> prefix<A>(_:)(v37);
      OUTLINED_FUNCTION_208_0();
      outlined destroy of CallControlsService?(v37, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v14[6].n128_u64[0] = MEMORY[0x1E69E6158];
      v14[6].n128_u64[1] = lazy protocol witness table accessor for type String and conformance String();
      v14[4].n128_u64[1] = v0;
      v14[5].n128_u64[0] = v2;
      v21 = static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_299_0("Ignore Let me in requests changed to %{BOOL}d for active conversation: %@", 73, v22, &dword_1BBC58000, v23, v21);

      v24 = OUTLINED_FUNCTION_62_0();
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v26 = OUTLINED_FUNCTION_0_212();
      v28 = v27(v26);
      ConversationController.ignoreLetMeInRequests.setter(v28 & 1);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1BC4BAA20;
      v33 = OUTLINED_FUNCTION_276_2();
      outlined init with copy of CallCenterProvider(v33, v34);
      specialized >> prefix<A>(_:)(v37);
      OUTLINED_FUNCTION_267_2();
      OUTLINED_FUNCTION_219_2();
      *(v32 + 56) = MEMORY[0x1E69E6158];
      v35 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_198_5(v35);
      specialized >> prefix<A>(_:)(v37);
      OUTLINED_FUNCTION_200_3();
      OUTLINED_FUNCTION_493();
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)(v36);
    }

    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    outlined destroy of CallControlsService?(v37, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_371_0(v29, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_213_2();
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_213_1();
    v29[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_318_0(v30);
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)(v31);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:rejectedMembersChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_271_4();
  OUTLINED_FUNCTION_46_4();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_83_1();
  ConversationController.lookupActiveConversation()();
  if (v36[3])
  {
    v5 = OUTLINED_FUNCTION_17_70();
    v6(v5);
    v7 = *(v1 + 24);
    v8 = OUTLINED_FUNCTION_62_0();
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v10 = OUTLINED_FUNCTION_31_39();
    v11(v10);
    OUTLINED_FUNCTION_157();
    static UUID.== infix(_:_:)();
    v12 = OUTLINED_FUNCTION_174_1();
    v7(v12);
    v13 = OUTLINED_FUNCTION_281();
    v7(v13);
    if (v0)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_221_3(v14, xmmword_1BC4BAA20);
      v15 = OUTLINED_FUNCTION_0_95();
      v36[0] = v16(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo20TUConversationMemberCGMd, &_sShySo20TUConversationMemberCGMR);
      OUTLINED_FUNCTION_437();
      OUTLINED_FUNCTION_208_0();
      v17 = MEMORY[0x1E69E6158];
      v14[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v18 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_488(v18);
      v19 = OUTLINED_FUNCTION_276_2();
      outlined init with copy of CallCenterProvider(v19, v20);
      specialized >> prefix<A>(_:)(v36);
      OUTLINED_FUNCTION_208_0();
      outlined destroy of CallControlsService?(v36, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v14[6].n128_u64[0] = v17;
      v14[6].n128_u64[1] = v18;
      v14[4].n128_u64[1] = v0;
      v14[5].n128_u64[0] = v2;
      v21 = static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_299_0("Rejected members changed to %@ for active conversation: %@", 58, v22, &dword_1BBC58000, v23, v21, v36[0]);

      v24 = OUTLINED_FUNCTION_62_0();
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v26 = OUTLINED_FUNCTION_0_212();
      v27(v26);
      specialized Set.count.getter();
      OUTLINED_FUNCTION_173();

      ConversationController.rejectedParticipantsCount.setter(v1);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BC4BAA20;
      v32 = OUTLINED_FUNCTION_276_2();
      outlined init with copy of CallCenterProvider(v32, v33);
      specialized >> prefix<A>(_:)(v36);
      OUTLINED_FUNCTION_267_2();
      OUTLINED_FUNCTION_219_2();
      *(v31 + 56) = MEMORY[0x1E69E6158];
      v34 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_198_5(v34);
      specialized >> prefix<A>(_:)(v36);
      OUTLINED_FUNCTION_200_3();
      OUTLINED_FUNCTION_493();
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)(v35);
    }

    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    outlined destroy of CallControlsService?(v36, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_371_0(v28, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_213_2();
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_213_1();
    v28[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v29 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_318_0(v29);
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)(v30);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:linkChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  swift_getObjectType();
  OUTLINED_FUNCTION_46_4();
  v41 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_83_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_240_0();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v12 = OUTLINED_FUNCTION_114_2();
  if (v13(v12))
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v14 = OUTLINED_FUNCTION_114_2();
    v15(v14);
    v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageConversationUUID;
    OUTLINED_FUNCTION_30_2(&v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageConversationUUID], v43);
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v2, &v3[v16], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_endAccess();
  }

  ConversationController.lookupActiveConversation()();
  if (v42[3])
  {
    v17 = OUTLINED_FUNCTION_17_70();
    v18(v17);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v19 = OUTLINED_FUNCTION_31_39();
    v20(v19);
    OUTLINED_FUNCTION_157();
    v21 = static UUID.== infix(_:_:)();
    v23 = *(v7 + 8);
    v22 = v7 + 8;
    v23(v1, v41);
    v24 = OUTLINED_FUNCTION_157();
    (v23)(v24);
    if (v21)
    {
      v25 = &v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v26 = *v25;
      if (*v25)
      {
        OUTLINED_FUNCTION_363_0();
        v26(v5);
        v27 = OUTLINED_FUNCTION_4_31();
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v27, v28);
      }
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1BC4BAA20;
      v36 = OUTLINED_FUNCTION_365_0();
      outlined init with copy of CallCenterProvider(v36, v37);
      specialized >> prefix<A>(_:)(v42);
      OUTLINED_FUNCTION_314_0();
      OUTLINED_FUNCTION_219_2();
      v38 = MEMORY[0x1E69E6158];
      *(v35 + 56) = MEMORY[0x1E69E6158];
      v39 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_345_0(v39);
      outlined init with copy of CallCenterProvider(v43, v42);
      specialized >> prefix<A>(_:)(v42);
      OUTLINED_FUNCTION_314_0();
      OUTLINED_FUNCTION_219_2();
      *(v35 + 96) = v38;
      *(v35 + 104) = v39;
      *(v35 + 72) = v5;
      *(v35 + 80) = v22;
      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)(v40);
    }

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    outlined destroy of CallControlsService?(v42, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BC4BA940;
    v43[0] = v3;
    v30 = v3;
    OUTLINED_FUNCTION_213_2();
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    OUTLINED_FUNCTION_94_11();
    os_log(_:dso:log:type:_:)(v34);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:linkInvitedMemberHandlesChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_271_4();
  OUTLINED_FUNCTION_46_4();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_83_1();
  ConversationController.lookupActiveConversation()();
  if (v21[3])
  {
    v4 = OUTLINED_FUNCTION_17_70();
    v5(v4);
    v6 = *(v1 + 24);
    v7 = OUTLINED_FUNCTION_62_0();
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v9 = OUTLINED_FUNCTION_31_39();
    v10(v9);
    OUTLINED_FUNCTION_157();
    static UUID.== infix(_:_:)();
    v11 = OUTLINED_FUNCTION_174_1();
    v6(v11);
    v12 = OUTLINED_FUNCTION_281();
    v6(v12);
    if (v0)
    {
      ConversationController.updateRemoteParticipantsKickableAndAuthorizedToChangeGroupMembership(with:)(v22);
      ConversationController.updateLocalMemberAuthorizedToChangeGroupMembership(with:)(v22);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_194();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BC4BAA20;
      v17 = OUTLINED_FUNCTION_276_2();
      outlined init with copy of CallCenterProvider(v17, v18);
      specialized >> prefix<A>(_:)(v21);
      OUTLINED_FUNCTION_267_2();
      OUTLINED_FUNCTION_219_2();
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v19 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_198_5(v19);
      specialized >> prefix<A>(_:)(v21);
      OUTLINED_FUNCTION_200_3();
      OUTLINED_FUNCTION_493();
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)(v20);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of CallControlsService?(v21, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_371_0(v13, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_213_2();
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_213_1();
    v13[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_318_0(v14);
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)(v15);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:participantMediaPrioritiesChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_271_4();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v8 = OUTLINED_FUNCTION_164_2();
  v9(v8);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_327_0();
  v10 = OUTLINED_FUNCTION_112();
  v11(v10);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_388_0();
  if (!v34[3])
  {
    outlined destroy of CallControlsService?(v34, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_9:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v31 = swift_allocObject();
      OUTLINED_FUNCTION_371_0(v31, xmmword_1BC4BA940);
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_213_1();
      v31[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v32 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_318_0(v32);
      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)(v33);

      goto LABEL_10;
    }

LABEL_12:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_9;
  }

  v12 = OUTLINED_FUNCTION_17_70();
  v13(v12);
  v14 = OUTLINED_FUNCTION_62_0();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v16 = OUTLINED_FUNCTION_31_39();
  v17(v16);
  OUTLINED_FUNCTION_157();
  v18 = static UUID.== infix(_:_:)();
  v19 = *(v3 + 8);
  v20 = OUTLINED_FUNCTION_7_8();
  v19(v20);
  v21 = OUTLINED_FUNCTION_281();
  v19(v21);
  if (v18)
  {
    v22 = OUTLINED_FUNCTION_4_31();
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v24 = OUTLINED_FUNCTION_208();
    active = Conversation.displayableActiveParticipants.getter(v24, v25);
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo25TUConversationParticipantCG_15ConversationKit0E15MediaPrioritiesVs5NeverOTg504_s15f44Kit0A10ControllerC10callCenter_36participanthi66ChangedForyAA04CallE8Provider_p_AA0A0_ptFAA011ParticipantgH0VSo014D8M0CXEfU_Tf1cn_n(active);
    OUTLINED_FUNCTION_173();

    v27 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
    OUTLINED_FUNCTION_365_0();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {

      v28(0);
      v29 = OUTLINED_FUNCTION_91_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v29, v30);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v35);
LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:conversation:participant:didReact:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v78 = v5;
  v79 = v4;
  v75 = v6;
  v8 = v7;
  swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v76 = v11;
  v12 = OUTLINED_FUNCTION_4_24();
  v77 = type metadata accessor for Participant(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  v80 = v14;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_17();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  v20 = OUTLINED_FUNCTION_164_2();
  v21(v20);
  v22 = _dispatchPreconditionTest(_:)();
  v23 = OUTLINED_FUNCTION_112();
  v24(v23);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  ConversationController.lookupActiveConversation()();
  if (!v82)
  {
    outlined destroy of CallControlsService?(&v81, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_9:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1BC4BA940;
      *&v81 = v3;
      v43 = v3;
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_314_0();
      *(v42 + 56) = MEMORY[0x1E69E6158];
      v44 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_345_0(v44);
      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)(v45);

      goto LABEL_20;
    }

LABEL_22:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_9;
  }

  outlined init with take of TapInteractionHandler(&v81, v84);
  OUTLINED_FUNCTION_183_4(v84, v84[3]);
  v25 = OUTLINED_FUNCTION_9_40();
  v26(v25);
  v27 = *(v8 + 24);
  v28 = *(v8 + 32);
  v29 = OUTLINED_FUNCTION_256_3();
  __swift_project_boxed_opaque_existential_1(v29, v30);
  OUTLINED_FUNCTION_125_1();
  v31(v27, v28);
  OUTLINED_FUNCTION_33_0();
  v32 = static UUID.== infix(_:_:)();
  v33 = *(v16 + 8);
  v34 = OUTLINED_FUNCTION_1_5();
  v33(v34);
  v35 = OUTLINED_FUNCTION_206();
  v33(v35);
  if (v32)
  {
    ConversationController.lookupActiveParticipant(from:)(v75, v76);
    v36 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_115(v36, v37, v77);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_1_186();
      v46 = v80;
      _s15ConversationKit11ParticipantVWOcTm_17(&v3[v39], v80);
      v40 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v40, v41, v77);
      v47 = v78;
      if (!v38)
      {
        outlined destroy of CallControlsService?(v76, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_150();
      v46 = v80;
      _s15ConversationKit11ParticipantVWObTm_8(v76, v80);
      v47 = v78;
    }

    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    if (IsVoiceOverRunning)
    {
      v49._rawValue = MEMORY[0x1BFB209B0](v79, v47);
      LOBYTE(IsVoiceOverRunning) = VideoReaction.init(rawValue:)(v49);
      if (IsVoiceOverRunning != 8)
      {
        if (*(v46 + *(v77 + 28)))
        {
          v50 = [objc_opt_self() conversationKit];
          v85._object = 0xE000000000000000;
          v51._object = 0x80000001BC51EFE0;
          v51._countAndFlagsBits = 0xD000000000000013;
          v52.value._countAndFlagsBits = 0x61737265766E6F43;
          v52.value._object = 0xEF74694B6E6F6974;
          v53._countAndFlagsBits = 0;
          v53._object = 0xE000000000000000;
          v85._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v85);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          OUTLINED_FUNCTION_194();
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_1BC4BAA20;
          Participant.contactDetails.getter();
          v55 = v81;
          v56 = v83;

          OUTLINED_FUNCTION_139();
          Participant.name(_:)();
          OUTLINED_FUNCTION_347_0();

          v57 = MEMORY[0x1E69E6158];
          *(v54 + 56) = MEMORY[0x1E69E6158];
          v58 = lazy protocol witness table accessor for type String and conformance String();
          *(v54 + 64) = v58;
          *(v54 + 32) = v80;
          *(v54 + 40) = v56;
          v46 = v80;
          v59 = VideoReaction.accessibilityLabel.getter();
          *(v54 + 96) = v57;
          *(v54 + 104) = v58;
          *(v54 + 72) = v59;
          *(v54 + 80) = v60;
          OUTLINED_FUNCTION_1_5();
        }

        else
        {
          v61 = [objc_opt_self() conversationKit];
          v86._object = 0xE000000000000000;
          v62._countAndFlagsBits = 0x434145525F554F59;
          v62._object = 0xEB00000000444554;
          v63.value._countAndFlagsBits = 0x61737265766E6F43;
          v63.value._object = 0xEF74694B6E6F6974;
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          v86._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v63, v61, v64, v86);
          OUTLINED_FUNCTION_18_8();

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          OUTLINED_FUNCTION_37_22();
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1BC4BA940;
          VideoReaction.accessibilityLabel.getter();
          OUTLINED_FUNCTION_43_7();
          *(v65 + 56) = MEMORY[0x1E69E6158];
          *(v65 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v65 + 32) = v1;
          *(v65 + 40) = v33;
          OUTLINED_FUNCTION_15_14();
        }

        v66 = String.init(format:_:)();

        v67 = *MEMORY[0x1E69DD888];
        v68 = OUTLINED_FUNCTION_91_2();
        MEMORY[0x1BFB209B0](v68);
        OUTLINED_FUNCTION_439();
        UIAccessibilityPostNotification(v67, v66);
      }
    }

    v69 = &v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact];
    OUTLINED_FUNCTION_300_0(IsVoiceOverRunning, &v81);
    v70 = *v69;
    if (*v69)
    {
      swift_endAccess();

      v70(v46, v79, v47);
      v71 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v71, v72);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v46, v73);
    }

    else
    {
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v46, v74);
      swift_endAccess();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v84);
LABEL_20:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:conversation:participantDidStopReacting:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v51 = v3;
  v5 = v4;
  swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  v53 = v8;
  v9 = OUTLINED_FUNCTION_4_24();
  v52 = type metadata accessor for Participant(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v54 = v11;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_39_3();
  v16 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_1();
  v20 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v18 + 104))(v1, *MEMORY[0x1E69E8020], v16);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_327_0();
  v21 = OUTLINED_FUNCTION_244_1();
  v22(v21);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_388_0();
  if (!v56[3])
  {
    outlined destroy of CallControlsService?(v56, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_9:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_371_0(v40, xmmword_1BC4BA940);
      String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_314_0();
      v40[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v41 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_345_0(v41);
      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)(v42, v51);

      goto LABEL_14;
    }

LABEL_16:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_335();
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  OUTLINED_FUNCTION_71_13();
  v23 = OUTLINED_FUNCTION_244_1();
  v24(v23);
  v25 = *(v5 + 32);
  v26 = OUTLINED_FUNCTION_45_11();
  OUTLINED_FUNCTION_247_4(v26, v27);
  v28 = OUTLINED_FUNCTION_6_4();
  v29(v28, v25);
  v30 = static UUID.== infix(_:_:)();
  v31 = *(v13 + 8);
  v32 = OUTLINED_FUNCTION_28_14();
  v31(v32);
  v33 = OUTLINED_FUNCTION_408_0();
  v31(v33);
  if (v30)
  {
    ConversationController.lookupActiveParticipant(from:)(v51, v53);
    v34 = OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_115(v34, v35, v52);
    if (v36)
    {
      v37 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_1_186();
      v43 = v54;
      _s15ConversationKit11ParticipantVWOcTm_17(v2 + v37, v54);
      v38 = OUTLINED_FUNCTION_60_16();
      v44 = OUTLINED_FUNCTION_115(v38, v39, v52);
      if (!v36)
      {
        v44 = outlined destroy of CallControlsService?(v53, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_150();
      v43 = v54;
      v44 = _s15ConversationKit11ParticipantVWObTm_8(v53, v54);
    }

    v45 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
    OUTLINED_FUNCTION_300_0(v44, &v55);
    v46 = *v45;
    if (*v45)
    {
      swift_endAccess();

      v46(v43);
      v47 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v47, v48);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v43, v49);
    }

    else
    {
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v43, v50);
      swift_endAccess();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
LABEL_14:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:migratingFrom:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  v24 = v20;
  v215 = v25;
  v216 = v26;
  v27 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v209 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_1();
  v212 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v214 = v38;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v205 - v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_103_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v45 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v22 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_398_0();
  v46(v22);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_414();
  v47 = OUTLINED_FUNCTION_20_36();
  v48(v47);
  if ((v45 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
    goto LABEL_5;
  }

  v211 = v31;
  v49 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v213 = v49;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v24 + v49, v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v27);
  outlined destroy of CallControlsService?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v31 = &unk_1EDDB4000;
  v138 = EnumTagSinglePayload == 1;
  v22 = v214;
  if (!v138)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for conversationController != -1)
  {
    goto LABEL_33;
  }

LABEL_5:
  v51 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v51, static Logger.conversationController);
  v52 = v24;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = OUTLINED_FUNCTION_42();
    v56 = OUTLINED_FUNCTION_23();
    v222[0] = v56;
    *v55 = 136315138;
    LOBYTE(v219[0]) = *(v52 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v57 = String.init<A>(reflecting:)();
    v206 = v52;
    v59 = v27;
    v60 = v24;
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v222);

    *(v55 + 4) = v61;
    v24 = v60;
    v27 = v59;
    v31 = &unk_1EDDB4000;
    OUTLINED_FUNCTION_25_53();
    _os_log_impl(v62, v63, v64, v65, v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_239();
    v22 = v214;
    OUTLINED_FUNCTION_27();
  }

  ConversationController.updateConversationUUIDIfNeeded()();
  outlined destroy of CallControlsService?(v222, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
LABEL_8:
  v66 = v21;
  v67 = &_s10Foundation4UUIDVSgMR;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v24 + v213, v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v68 = __swift_getEnumTagSinglePayload(v42, 1, v27);
  v69 = OUTLINED_FUNCTION_312();
  outlined destroy of CallControlsService?(v69, v70, &_s10Foundation4UUIDVSgMR);
  if (v68 == 1)
  {
    v214 = v27;
    if (*(v31 + 509) != -1)
    {
      OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
    }

    v71 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v71, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v216, v222);
    outlined init with copy of CallCenterProvider(v215, v219);
    v72 = v24;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_23();
      v218 = OUTLINED_FUNCTION_13_31();
      *v75 = 136315650;
      v217 = *(v72 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
      v76 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v218);
      OUTLINED_FUNCTION_28_0();

      OUTLINED_FUNCTION_295_0();
      v78 = v223;
      OUTLINED_FUNCTION_11_99(v222);
      v79 = v210;
      v80 = OUTLINED_FUNCTION_4_38();
      v81(v80);
      OUTLINED_FUNCTION_12();
      v82 = v214;
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v214);
      specialized >> prefix<A>(_:)(v79, v86, v87, v88, v89, v90, v91, v92, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
      OUTLINED_FUNCTION_305();
      outlined destroy of CallControlsService?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      __swift_destroy_boxed_opaque_existential_1(v222);
      v93 = OUTLINED_FUNCTION_46();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v95);
      OUTLINED_FUNCTION_247();

      *(v75 + 14) = v78;
      *(v75 + 22) = 2080;
      v96 = v220;
      v68 = v221;
      OUTLINED_FUNCTION_11_99(v219);
      v97 = OUTLINED_FUNCTION_4_38();
      v98(v97);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v82);
      specialized >> prefix<A>(_:)(v79, v102, v103, v104, v105, v106, v107, v108, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
      OUTLINED_FUNCTION_305();
      outlined destroy of CallControlsService?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      __swift_destroy_boxed_opaque_existential_1(v219);
      v109 = OUTLINED_FUNCTION_46();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v111);
      OUTLINED_FUNCTION_247();

      *(v75 + 24) = v96;
      OUTLINED_FUNCTION_379_0();
      _os_log_impl(v112, v113, v114, v115, v116, 0x20u);
      OUTLINED_FUNCTION_399_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_2_2();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v222);
      __swift_destroy_boxed_opaque_existential_1(v219);
    }

    goto LABEL_19;
  }

  v68 = &_s10Foundation4UUIDVSgMR;
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v117, v118, v119, v120);
  v121 = v215[4];
  OUTLINED_FUNCTION_203_4(v215, v215[3]);
  v122 = OUTLINED_FUNCTION_246();
  v123(v122, v121);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v27);
  v127 = v212;
  v128 = v211[12];
  OUTLINED_FUNCTION_2_100();
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v129, v130, v131, v132);
  OUTLINED_FUNCTION_98_1();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v133, v134, v135, v136);
  OUTLINED_FUNCTION_115(v127, 1, v27);
  if (v138)
  {
    v67 = &_s10Foundation4UUIDVSgMR;
    OUTLINED_FUNCTION_378(v66);
    OUTLINED_FUNCTION_378(v22);
    OUTLINED_FUNCTION_115(v127 + v128, 1, v27);
    if (v138)
    {
      outlined destroy of CallControlsService?(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_19;
    }
  }

  else
  {
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v127, v208, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_115(v127 + v128, 1, v27);
    if (!v138)
    {
      v190 = v209;
      (*(v209 + 32))(v207, v127 + v128, v27);
      OUTLINED_FUNCTION_13_83();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v191, v192);
      OUTLINED_FUNCTION_44_0();
      LODWORD(v214) = dispatch thunk of static Equatable.== infix(_:_:)();
      v193 = *(v190 + 8);
      v194 = OUTLINED_FUNCTION_316();
      v193(v194);
      v67 = &_s10Foundation4UUIDVSgMd;
      v68 = &_s10Foundation4UUIDVSgMR;
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v195, v196, v197);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v198, v199, v200);
      v201 = OUTLINED_FUNCTION_76();
      v193(v201);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of CallControlsService?(v202, v203, v204);
      v141 = &unk_1EDDB4000;
      if ((v214 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_19:
      v137 = v24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_382_0();
      OUTLINED_FUNCTION_173();
      swift_unknownObjectRetain();
      specialized ConversationController.migrate(to:with:isUpgrade:)(v216, v67, 1, v24, v68, v137);
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_378(v66);
    OUTLINED_FUNCTION_378(v22);
    OUTLINED_FUNCTION_23_26();
    v139 = OUTLINED_FUNCTION_316();
    v140(v139);
  }

  outlined destroy of CallControlsService?(v127, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v141 = &unk_1EDDB4000;
LABEL_25:
  v142 = v27;
  if (v141[509] != -1)
  {
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
  }

  v143 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v143, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v215, v222);
  outlined init with copy of CallCenterProvider(v216, v219);
  v144 = v24;
  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v145, v146))
  {
    OUTLINED_FUNCTION_14_20();
    v216 = OUTLINED_FUNCTION_438();
    v218 = v216;
    *v127 = 136315906;
    v217 = *(v144 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
    v147 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v148, &v218);
    OUTLINED_FUNCTION_28_0();

    OUTLINED_FUNCTION_295_0();
    v149 = v223;
    OUTLINED_FUNCTION_11_99(v222);
    OUTLINED_FUNCTION_502();
    v150 = OUTLINED_FUNCTION_4_38();
    v151(v150);
    v152 = OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_531(v152, v153, v154, v142, v155, v156, v157, v158, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
    OUTLINED_FUNCTION_305();
    v215 = v24;
    OUTLINED_FUNCTION_441();
    __swift_destroy_boxed_opaque_existential_1(v222);
    v159 = OUTLINED_FUNCTION_46();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, v161);
    OUTLINED_FUNCTION_247();

    *(v127 + 14) = v149;
    *(v127 + 22) = 2080;
    v162 = v220;
    OUTLINED_FUNCTION_11_99(v219);
    v163 = OUTLINED_FUNCTION_4_38();
    v164(v163);
    v165 = OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_531(v165, v166, v167, v142, v168, v169, v170, v171, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
    OUTLINED_FUNCTION_305();
    OUTLINED_FUNCTION_441();
    __swift_destroy_boxed_opaque_existential_1(v219);
    v172 = OUTLINED_FUNCTION_46();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, v174);
    OUTLINED_FUNCTION_247();

    *(v127 + 24) = v162;
    *(v127 + 32) = 2080;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v215 + v213, v144, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized >> prefix<A>(_:)(v144, v175, v176, v177, v178, v179, v180, v181, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
    OUTLINED_FUNCTION_305();
    OUTLINED_FUNCTION_441();
    v182 = OUTLINED_FUNCTION_46();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v183, v184);
    OUTLINED_FUNCTION_247();

    *(v127 + 34) = v162;
    OUTLINED_FUNCTION_379_0();
    _os_log_impl(v185, v186, v187, v188, v189, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v222);
    __swift_destroy_boxed_opaque_existential_1(v219);
  }

LABEL_20:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:mutedTalkingChanged:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    OUTLINED_FUNCTION_363_0();
    v4(a2 & 1);
    v5 = OUTLINED_FUNCTION_4_31();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  }
}

void ConversationController.callCenterAudioRoutesDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_97();
  v21 = v20;
  v23 = v22;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_184_2(v23);
  v25 = OUTLINED_FUNCTION_84_9();
  if (v26(v25))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TURoute, 0x1E69D8CA8);
    v27 = String.init<A>(reflecting:)();
    v29 = v28;
  }

  else
  {
    v29 = 0xE300000000000000;
    v27 = 7104878;
  }

  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 32) = v27;
  *(v24 + 40) = v29;
  v30 = static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_3_94("Audio routes changed. Current route = %@", 40, v31, &dword_1BBC58000, v32, v30);

  v34 = (v21 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  OUTLINED_FUNCTION_104_7(v33);
  v35 = *v34;
  if (*v34)
  {

    v36 = ConversationController.audioRoute.getter();
    v35();
    v37 = OUTLINED_FUNCTION_62_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v37, v38);
  }

  OUTLINED_FUNCTION_10_84();
}

void ConversationController.callCenter(_:activitySessionsChangedFor:fromOldConversation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  v22 = v20;
  v141 = v23;
  v25 = v24;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_39_22(ObjectType);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v29);
  v30 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_103_4();
  v35 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v37 + 104))(v21, *MEMORY[0x1E69E8020], v35);
  v39 = _dispatchPreconditionTest(_:)();
  v41 = *(v37 + 8);
  v40 = v37 + 8;
  v41(v21, v35);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_60:
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
    goto LABEL_12;
  }

  ConversationController.lookupActiveConversation()();
  v35 = v22;
  if (v150)
  {
    outlined init with take of TapInteractionHandler(&v149, v147);
    v42 = v148;
    OUTLINED_FUNCTION_246_4(v147, v148);
    v43 = OUTLINED_FUNCTION_0_212();
    v44(v43);
    v45 = v25;
    v46 = OUTLINED_FUNCTION_101_5();
    OUTLINED_FUNCTION_246_4(v46, v47);
    v48 = OUTLINED_FUNCTION_0_212();
    v49(v48);
    OUTLINED_FUNCTION_112();
    v50 = static UUID.== infix(_:_:)();
    v51 = *(v32 + 8);
    v52 = OUTLINED_FUNCTION_2_125();
    v51(v52);
    v53 = OUTLINED_FUNCTION_316_1();
    v51(v53);
    OUTLINED_FUNCTION_402_0();
    v54 = OUTLINED_FUNCTION_246();
    if ((v55(v54, v30) & 1) != 0 && (OUTLINED_FUNCTION_402_0(), v56 = OUTLINED_FUNCTION_246(), v57(v56, v30), specialized Set.count.getter(), OUTLINED_FUNCTION_439(), v42 == 1))
    {
      OUTLINED_FUNCTION_402_0();
      v58 = OUTLINED_FUNCTION_246();
      v59(v58, v30);
      v60 = OUTLINED_FUNCTION_244_1();
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v62 = OUTLINED_FUNCTION_179_0();
      v63(v62);
      OUTLINED_FUNCTION_246();
      v64 = _sSh2eeoiySbShyxG_ABtFZSo20TUConversationMemberC_Tt1g5();

      if (((v50 | v64) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if ((v50 & 1) == 0)
    {
LABEL_55:
      __swift_destroy_boxed_opaque_existential_1(v147);
      goto LABEL_56;
    }

    v65 = *&v35[OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults + 8];
    v66 = swift_getObjectType();
    v67 = (*(v65 + 568))(v66, v65);
    v68 = *(v25 + 24);
    v69 = *(v25 + 32);
    v70 = OUTLINED_FUNCTION_62_0();
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v72 = OUTLINED_FUNCTION_246();
    v74 = v73(v72, v69);
    specialized Set.count.getter();
    OUTLINED_FUNCTION_439();
    if (v68 == 1 && (v75 = *(v25 + 32), v76 = OUTLINED_FUNCTION_62_0(), __swift_project_boxed_opaque_existential_1(v76, v77), v78 = OUTLINED_FUNCTION_246(), v80 = v79(v78, v75), specialized Collection.first.getter(v80), OUTLINED_FUNCTION_246(), , v74))
    {
      v81 = [v74 capabilities];

      v82 = [v81 isUPlusOneScreenShareAvailable];
    }

    else
    {
      v82 = 0;
    }

    v95 = ConversationController.isOneToOneModeEnabled.getter();
    __swift_project_boxed_opaque_existential_1(v147, v148);
    v96 = OUTLINED_FUNCTION_208();
    v98 = Conversation.currentSharePlayActivity.getter(v96, v97);
    if (!v98)
    {
      goto LABEL_22;
    }

    v99 = v98;
    TUConversationActivitySession.generateType.getter(&v149);
    if (v149 == 4)
    {
    }

    else
    {
      TUConversationActivitySession.generateType.getter(&v149);

      if (v149 != 5)
      {
        goto LABEL_22;
      }
    }

    if ((v67 & v82 & 1) == 0)
    {
      v100 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v100 = 0;
LABEL_23:
    v35[OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity] = v100;
    if ((v95 & 1) == (ConversationController.isOneToOneModeEnabled.getter() & 1))
    {
LABEL_42:
      v125 = v35;
      v146 = MEMORY[0x1E69E7CC0];
      v126 = v141[4];
      OUTLINED_FUNCTION_179_2(v141, v141[3]);
      v127 = *(v126 + 328);
      v128 = OUTLINED_FUNCTION_43_0();
      v127(v128);
      v129 = specialized Set.count.getter();

      if (v129)
      {
        v130 = OUTLINED_FUNCTION_43_0();
        v131 = (v127)(v130);
        specialized Array.append<A>(contentsOf:)(v131);
      }

      v132 = v141[4];
      __swift_project_boxed_opaque_existential_1(v141, v141[3]);
      v133 = OUTLINED_FUNCTION_246();
      if (v134(v133, v132))
      {
        MEMORY[0x1BFB20CC0]();
        v135 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v135 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v135);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_48_0();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v136 = &v125[OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v137 = *v136;
      v138 = v146;
      if (*v136)
      {
        if (specialized Array.count.getter())
        {
        }

        else
        {

          v138 = 0;
        }

        v137(v138);
        v139 = OUTLINED_FUNCTION_170_0();
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v139, v140);
      }

      if (v50)
      {
        ConversationController.updateRemoteParticipantsStates(with:)(v45);
      }

      goto LABEL_55;
    }

    if ((ConversationController.isOneToOneModeEnabled.getter() & 1) == 0)
    {
LABEL_36:
      if (one-time initialization token for conversationController != -1)
      {
        OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
      }

      v110 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v110, static Logger.conversationController);
      v111 = v35;
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = OUTLINED_FUNCTION_42();
        v115 = OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_49_0(v115);
        *v114 = 136315138;
        LOBYTE(v145) = ConversationController.isOneToOneModeEnabled.getter() & 1;
        v116 = String.init<A>(reflecting:)();
        v118 = v35;
        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v142);

        *(v114 + 4) = v119;
        v35 = v118;
        _os_log_impl(&dword_1BBC58000, v112, v113, "One-to-one mode changed to %s due to activity sessions change", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v115);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_27();
      }

      v120 = &v111[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v121 = *v120;
      if (*v120)
      {

        v122 = ConversationController.isOneToOneModeEnabled.getter();
        v121(v122 & 1, 1);
        v123 = OUTLINED_FUNCTION_39_5();
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v123, v124);
      }

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_417_0();
    ConversationController.remoteOneToOneParticipant.getter();
    type metadata accessor for Participant(0);
    v101 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_115(v101, v102, v103);
    if (v104)
    {
      outlined destroy of CallControlsService?(v25, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }

    else
    {
      Participant.videoInfo.getter();
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v25, v105);
      if (v149)
      {
        specialized Dictionary.subscript.getter();
        outlined destroy of CallControlsService?(&v149, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        if (*(&v143 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
          OUTLINED_FUNCTION_24_1();
          type metadata accessor for RemoteParticipantVideoProvider();
          if (swift_dynamicCast())
          {
            v106 = (*((*MEMORY[0x1E69E7D40] & *v145) + 0x100))();
            if (v106)
            {
              v107 = v106;
              v108 = [v106 remoteVideoAttributes];
              if (v108)
              {
                v109 = v108;
                OUTLINED_FUNCTION_179_0();
                ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)();
              }

              else
              {
              }
            }

            else
            {
            }
          }

          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v144 = 0;
    v143 = 0u;
    v142 = 0u;
LABEL_35:
    outlined destroy of CallControlsService?(&v142, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    goto LABEL_36;
  }

  outlined destroy of CallControlsService?(&v149, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (one-time initialization token for conversationController != -1)
  {
    goto LABEL_60;
  }

LABEL_12:
  v83 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v83, static Logger.conversationController);
  v84 = v35;
  v85 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_64_14())
  {
    OUTLINED_FUNCTION_42();
    v86 = OUTLINED_FUNCTION_21_4();
    *&v149 = v86;
    *v40 = 136315138;
    v147[0] = v84;
    v87 = v84;
    v88 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v149);
    OUTLINED_FUNCTION_366();

    *(v40 + 4) = v22;
    OUTLINED_FUNCTION_132();
    _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_26();
  }

LABEL_56:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:noticePosted:in:fromParticipant:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v193 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v11 = OUTLINED_FUNCTION_16(v10);
  v12 = type metadata accessor for Participant(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v23);
  v198 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v197 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v27);
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_7();
  v29 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_250_3();
  v30(v1);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_248_1();
  v31 = OUTLINED_FUNCTION_309();
  v32(v31);
  if (v29)
  {
    if (one-time initialization token for conversationController == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
LABEL_3:
  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v33, static Logger.conversationController);
  v34 = v2;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v1 = OUTLINED_FUNCTION_30_1();
    *&v204[0] = OUTLINED_FUNCTION_29_7();
    *v1 = 136315394;
    v203[0] = v34;
    v37 = String.init<A>(reflecting:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v204);

    *(v1 + 4) = v39;
    *(v1 + 12) = 2080;
    *(v1 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x80000001BC51F0B0, v204);
    OUTLINED_FUNCTION_11_44();
    _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_18();
  }

  ConversationController.lookupActiveConversation()();
  if (*(&v204[1] + 1))
  {
    outlined init with take of TapInteractionHandler(v204, v203);
    v45 = v203[4];
    __swift_project_boxed_opaque_existential_1(v203, v203[3]);
    v46 = OUTLINED_FUNCTION_28_0();
    v47(v46, v45);
    v48 = *(v6 + 32);
    v49 = OUTLINED_FUNCTION_312();
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v51 = OUTLINED_FUNCTION_28_0();
    v52(v51, v48);
    OUTLINED_FUNCTION_28_14();
    v53 = static UUID.== infix(_:_:)();
    v55 = v197 + 8;
    v54 = *(v197 + 8);
    v54(v196, v198);
    v56 = OUTLINED_FUNCTION_11_36();
    (v54)(v56);
    if ((v53 & 1) == 0)
    {
LABEL_43:
      __swift_destroy_boxed_opaque_existential_1(v203);
      goto LABEL_44;
    }

    v57 = v194;
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    OUTLINED_FUNCTION_502();
    ConversationController.activeParticipant(from:in:)(v4, v62);
    outlined destroy of CallControlsService?(v194, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v63 = OUTLINED_FUNCTION_60_16();
    OUTLINED_FUNCTION_115(v63, v64, v12);
    if (v65)
    {
      outlined destroy of CallControlsService?(v198, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v66 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(&v34[v66], v194);
    }

    else
    {
      OUTLINED_FUNCTION_22_53();
      _s15ConversationKit11ParticipantVWObTm_8(v198, v190);
      v95 = OUTLINED_FUNCTION_139();
      _s15ConversationKit11ParticipantVWObTm_8(v95, v96);
    }

    v97 = v193;
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v12);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v194, v191, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v101 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_115(v101, v102, v12);
    if (!v65)
    {
      v199 = v12;
      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v191, v195);
      v111 = [v193 session];
      v112 = [v111 activity];

      v113 = [v112 isScreenSharingActivity];
      if (v113 && [v193 sessionEventType] == 12 && (v114 = &v34[OBJC_IVAR____TtC15ConversationKit22ConversationController_call], OUTLINED_FUNCTION_3_0(), swift_beginAccess(), OUTLINED_FUNCTION_382_0(), OUTLINED_FUNCTION_507(), v4 = v34, v115 = v193[23], swift_unknownObjectRetain(), v116 = OUTLINED_FUNCTION_45_1(), v115(v116), v34 = v4, v97 = v193, OUTLINED_FUNCTION_247(), swift_unknownObjectRelease(), v112 = objc_msgSend(v114, sel_isTelephonyProvider), v114, (v112 & 1) == 0))
      {
        outlined init with copy of CallCenterProvider(v203, v201);
        OUTLINED_FUNCTION_1_186();
        v154 = OUTLINED_FUNCTION_471();
        _s15ConversationKit11ParticipantVWOcTm_17(v154, v188);
        v155 = v4;
        v156 = v193;
        OUTLINED_FUNCTION_309_0();
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v157, v158))
        {
          OUTLINED_FUNCTION_14_20();
          v200 = OUTLINED_FUNCTION_438();
          *v194 = 136315906;
          outlined init with copy of CallCenterProvider(v201, v204);
          specialized >> prefix<A>(_:)(v204);
          OUTLINED_FUNCTION_347_0();
          outlined destroy of CallControlsService?(v204, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
          __swift_destroy_boxed_opaque_existential_1(v201);
          v159 = OUTLINED_FUNCTION_243();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, v161);
          OUTLINED_FUNCTION_42_12();

          OUTLINED_FUNCTION_295_0();
          OUTLINED_FUNCTION_1_186();
          OUTLINED_FUNCTION_514();
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v162, v163, v164, v199);
          specialized >> prefix<A>(_:)();
          OUTLINED_FUNCTION_347_0();
          outlined destroy of CallControlsService?(v55, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v188, v165);
          v166 = OUTLINED_FUNCTION_243();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v167, v168);
          OUTLINED_FUNCTION_42_12();

          *(v194 + 14) = v112;
          *(v194 + 22) = 2080;
          *&v204[0] = v156;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationNotice, 0x1E69D8B88);
          v169 = v156;
          v170 = String.init<A>(reflecting:)();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v171, &v200);
          OUTLINED_FUNCTION_344_0();

          *(v194 + 24) = v4;
          *(v194 + 32) = 2080;
          if (v155[OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes + 96])
          {
            v172 = OUTLINED_FUNCTION_12_96();
            v173 = 0xE300000000000000;
          }

          else
          {
            memcpy(v204, &v155[OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes], sizeof(v204));
            v176 = Participant.ScreenShareAttributes.debugDescription.getter();
            OUTLINED_FUNCTION_503(v176, v177);
            v172 = String.init<A>(reflecting:)();
            v173 = v178;
          }

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, &v200);
          OUTLINED_FUNCTION_344_0();

          *(v194 + 34) = v4;
          _os_log_impl(&dword_1BBC58000, v157, v158, "Delaying call to sessionActionNoticePosted for %s, %s, %s, deviceFamily: %s", v194, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_282_2();
          OUTLINED_FUNCTION_2_2();

          v175 = v194;
        }

        else
        {

          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v188, v174);
          __swift_destroy_boxed_opaque_existential_1(v201);
          v175 = v194;
        }

        outlined destroy of CallControlsService?(v175, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
        v180 = *(v179 + 64);
        outlined init with copy of CallCenterProvider(v203, v189);
        OUTLINED_FUNCTION_4_150();
        v181 = OUTLINED_FUNCTION_471();
        _s15ConversationKit11ParticipantVWObTm_8(v181, v182);
        *(v189 + v180) = v156;
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v183, v184, v185, v179);
        v186 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForRemoteScreenShareAttributes;
        OUTLINED_FUNCTION_30_2(&v155[OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForRemoteScreenShareAttributes], v201);
        v187 = v156;
        outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v189, &v155[v186], &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMR);
      }

      else
      {
        outlined init with copy of CallCenterProvider(v203, v201);
        OUTLINED_FUNCTION_1_186();
        v117 = OUTLINED_FUNCTION_471();
        _s15ConversationKit11ParticipantVWOcTm_17(v117, v192);
        v118 = v34;
        v119 = v97;
        OUTLINED_FUNCTION_309_0();
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v120, v121))
        {
          OUTLINED_FUNCTION_14_20();
          v200 = OUTLINED_FUNCTION_438();
          *v194 = 136315906;
          outlined init with copy of CallCenterProvider(v201, v204);
          specialized >> prefix<A>(_:)(v204);
          OUTLINED_FUNCTION_347_0();
          outlined destroy of CallControlsService?(v204, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
          __swift_destroy_boxed_opaque_existential_1(v201);
          v122 = OUTLINED_FUNCTION_243();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, v124);
          OUTLINED_FUNCTION_42_12();

          OUTLINED_FUNCTION_295_0();
          OUTLINED_FUNCTION_1_186();
          OUTLINED_FUNCTION_514();
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v125, v126, v127, v199);
          specialized >> prefix<A>(_:)();
          OUTLINED_FUNCTION_347_0();
          outlined destroy of CallControlsService?(v55, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v192, v128);
          v129 = OUTLINED_FUNCTION_243();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v131);
          OUTLINED_FUNCTION_42_12();

          *(v194 + 14) = v112;
          *(v194 + 22) = 2080;
          *&v204[0] = v119;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationNotice, 0x1E69D8B88);
          v132 = v119;
          v133 = String.init<A>(reflecting:)();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v200);
          OUTLINED_FUNCTION_344_0();

          *(v194 + 24) = v4;
          *(v194 + 32) = 2080;
          if (v118[OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes + 96])
          {
            v135 = OUTLINED_FUNCTION_12_96();
            v136 = 0xE300000000000000;
          }

          else
          {
            memcpy(v204, &v118[OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes], sizeof(v204));
            v139 = Participant.ScreenShareAttributes.debugDescription.getter();
            OUTLINED_FUNCTION_503(v139, v140);
            v135 = String.init<A>(reflecting:)();
            v136 = v141;
          }

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v200);
          OUTLINED_FUNCTION_344_0();

          *(v194 + 34) = v4;
          OUTLINED_FUNCTION_383();
          _os_log_impl(v142, v143, v144, v145, v146, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_282_2();
          OUTLINED_FUNCTION_2_2();

          v57 = v194;
        }

        else
        {

          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v192, v137);
          v138 = __swift_destroy_boxed_opaque_existential_1(v201);
        }

        v147 = &v118[OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted];
        OUTLINED_FUNCTION_300_0(v138, v201);
        v148 = *v147;
        if (*v147)
        {
          swift_endAccess();

          v148(v203, v195, v119, 0, 1);
          v149 = OUTLINED_FUNCTION_4_31();
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v149, v150);
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v195, v151);
LABEL_33:
          outlined destroy of CallControlsService?(v57, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_0_222();
        v152 = OUTLINED_FUNCTION_471();
        _s15ConversationKit11ParticipantVWOhTm_18(v152, v153);
        outlined destroy of CallControlsService?(v57, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      swift_endAccess();
      goto LABEL_43;
    }

    outlined destroy of CallControlsService?(v191, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    OUTLINED_FUNCTION_309_0();
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v104))
    {
      v105 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v105);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v106, v107, v108, v109, v110, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_33;
  }

  outlined destroy of CallControlsService?(v204, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  OUTLINED_FUNCTION_309_0();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v68))
  {
    v69 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v69);
    OUTLINED_FUNCTION_132();
    _os_log_impl(v70, v71, v72, v73, v74, 2u);
    OUTLINED_FUNCTION_26();
  }

  if ([*&v34[OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags] sharePlayInCallsEnabled])
  {
    v75 = &v34[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_382_0();
    OUTLINED_FUNCTION_507();
    v76 = *(v1 + 184);
    swift_unknownObjectRetain();
    v77 = OUTLINED_FUNCTION_45_1();
    v76(v77);
    OUTLINED_FUNCTION_247();
    swift_unknownObjectRelease();
    v78 = [v75 isTelephonyProvider];

    if (v78)
    {
      v79 = OUTLINED_FUNCTION_312();
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v81 = OUTLINED_FUNCTION_4_38();
      v82(v81);
      v83 = specialized Set.isEmpty.getter();

      if ((v83 & 1) == 0)
      {
        v84 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        outlined init with copy of IDView<AvatarStackView, [UUID]>(&v34[v84], v204, &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMd, &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMR);
        v85 = *(&v204[1] + 1);
        OUTLINED_FUNCTION_378(v204);
        if (!v85)
        {
          outlined init with copy of CallCenterProvider(v6, v204);
          *(&v204[2] + 1) = v4;
          *&v204[3] = v193;
          OUTLINED_FUNCTION_30_2(&v34[v84], &v202);
          v86 = v193;
          v87 = v4;
          outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v204, &v34[v84], &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMd, &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMR);
          swift_endAccess();
          OUTLINED_FUNCTION_20();
          v88 = swift_allocObject();
          *(v88 + 16) = v34;
          v89 = &v34[OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged];
          v90 = OUTLINED_FUNCTION_401_0();
          OUTLINED_FUNCTION_3_5(v90, v91);
          *v89 = partial apply for closure #1 in ConversationController.callCenter(_:noticePosted:in:fromParticipant:);
          v89[1] = v88;
          v92 = v34;
          v93 = OUTLINED_FUNCTION_62_0();
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v93, v94);
        }
      }
    }
  }

LABEL_44:
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.callCenter(_:noticePosted:in:fromParticipant:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate;
    swift_beginAccess();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(a2 + v3, &v12, &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMd, &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMR);
    if (*(&v13 + 1))
    {
      v16[0] = v12;
      v16[1] = v13;
      v16[2] = v14;
      v17 = v15;
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.conversationController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1BBC58000, v5, v6, "Posting pending notice for SharePlay Telephony join conversation", v7, 2u);
        MEMORY[0x1BFB23DF0](v7, -1, -1);
      }

      v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(a2 + v8, &v12);
      ConversationController.callCenter(_:noticePosted:in:fromParticipant:)();
      __swift_destroy_boxed_opaque_existential_1(&v12);
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      swift_beginAccess();
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v12, a2 + v3, &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMd, &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMR);
      swift_endAccess();
      v9 = &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetMd;
      v10 = &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetMR;
      v11 = v16;
    }

    else
    {
      v9 = &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMd;
      v10 = &_s15ConversationKit0A0_p12conversation_So25TUConversationParticipantC02tuaE0So0D6NoticeC6noticetSgMR;
      v11 = &v12;
    }

    return outlined destroy of CallControlsService?(v11, v9, v10);
  }

  return result;
}

void ConversationController.callCenter(_:launchStateChanged:activitySession:conversation:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v1;
  v93 = v6;
  v94 = v7;
  v9 = v8;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_149();
  v14 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v18 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v4, *MEMORY[0x1E69E8020], v14);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_327_0();
  v19 = OUTLINED_FUNCTION_196_2();
  v20(v19);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    goto LABEL_4;
  }

  if (v5[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode])
  {
    goto LABEL_24;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_26;
  }

LABEL_4:
  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v21, &static Logger.conversationControls);
  v22 = v9;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v92 = v22;
  if (os_log_type_enabled(v23, v24))
  {
    v91 = v11;
    v25 = OUTLINED_FUNCTION_30_1();
    v100[0] = OUTLINED_FUNCTION_29_7();
    *v25 = 136315394;
    type metadata accessor for TUConversationActivitySessionApplicationState(0);
    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v100);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v97[0] = v22;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    v29 = v22;
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v100);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_1BBC58000, v23, v24, "Handling launchStateChanged notice with state:%s for session:%s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    v11 = v91;
    OUTLINED_FUNCTION_27();
  }

  ConversationController.lookupActiveConversation()();
  if (v98)
  {
    OUTLINED_FUNCTION_446();
    OUTLINED_FUNCTION_246_4(v100, v100[3]);
    v33 = OUTLINED_FUNCTION_0_212();
    v34(v33);
    v35 = *(v94 + 32);
    v36 = OUTLINED_FUNCTION_20_36();
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v38 = OUTLINED_FUNCTION_47_18();
    v39(v38, v35);
    OUTLINED_FUNCTION_244_1();
    v40 = static UUID.== infix(_:_:)();
    v41 = *(v11 + 8);
    v41(v3, v0);
    v42 = OUTLINED_FUNCTION_45_1();
    (v41)(v42);
    if (v40)
    {
      v43 = &v5[OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v44 = *v43;
      if (!*v43)
      {
        v77 = v5;
        v78 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        if (OUTLINED_FUNCTION_64_14())
        {
          OUTLINED_FUNCTION_42();
          v79 = OUTLINED_FUNCTION_21_4();
          v95 = v79;
          *v77 = 136315138;
          v80 = *v43;
          if (*v43)
          {
            v81 = *(v43 + 1);
            OUTLINED_FUNCTION_24();
            v82 = swift_allocObject();
            *(v82 + 16) = v80;
            *(v82 + 24) = v81;
            v97[0] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Activity, @unowned TUConversationActivitySessionApplicationState) -> ();
            v97[1] = v82;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sy15ConversationKit0A0_p_AA8Activity_pSo014TUConversationC23SessionApplicationStateVtcMd, &_sy15ConversationKit0A0_p_AA8Activity_pSo014TUConversationC23SessionApplicationStateVtcMR);
            v83 = String.init<A>(reflecting:)();
            v85 = v84;
          }

          else
          {
            v85 = 0xE300000000000000;
            v83 = OUTLINED_FUNCTION_12_96();
          }

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v95);
          OUTLINED_FUNCTION_412_0();

          *(v77 + 1) = v80;
          OUTLINED_FUNCTION_132();
          _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_26();
        }

        goto LABEL_23;
      }

      v98 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v99 = &protocol witness table for TUConversationActivitySession;
      v97[0] = v92;
      v45 = v92;
      v46 = OUTLINED_FUNCTION_46();
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v46, v47);
      v44(v94, v97, v93);
      v48 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v48, v49);
      v50 = v97;
    }

    else
    {
      outlined init with copy of CallCenterProvider(v100, v97);
      outlined init with copy of CallCenterProvider(v94, v96);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = OUTLINED_FUNCTION_30_1();
        v95 = OUTLINED_FUNCTION_29_7();
        *v61 = 136315394;
        OUTLINED_FUNCTION_183_4(v97, v98);
        v62 = OUTLINED_FUNCTION_9_40();
        v63(v62);
        OUTLINED_FUNCTION_13_83();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v64, v65);
        dispatch thunk of CustomStringConvertible.description.getter();
        OUTLINED_FUNCTION_250();
        v66 = OUTLINED_FUNCTION_45_1();
        (v41)(v66);
        __swift_destroy_boxed_opaque_existential_1(v97);
        v67 = OUTLINED_FUNCTION_334();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v69);
        OUTLINED_FUNCTION_239_4();

        *(v61 + 4) = v2;
        *(v61 + 12) = 2080;
        OUTLINED_FUNCTION_359_0(v96);
        v70 = OUTLINED_FUNCTION_114_2();
        v71(v70);
        dispatch thunk of CustomStringConvertible.description.getter();
        OUTLINED_FUNCTION_347_0();
        v72 = OUTLINED_FUNCTION_45_1();
        (v41)(v72);
        __swift_destroy_boxed_opaque_existential_1(v96);
        v73 = OUTLINED_FUNCTION_243();
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v75);

        *(v61 + 14) = v76;
        _os_log_impl(&dword_1BBC58000, v59, v60, "activeConversationUUID:%s doesn't match conversationUUID:%s", v61, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_4_4();

LABEL_23:
        __swift_destroy_boxed_opaque_existential_1(v100);
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_1(v97);
      v50 = v96;
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
    goto LABEL_23;
  }

  outlined destroy of CallControlsService?(v97, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_25(v52))
  {
    v53 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v53);
    OUTLINED_FUNCTION_132();
    _os_log_impl(v54, v55, v56, v57, v58, 2u);
    OUTLINED_FUNCTION_26();
  }

LABEL_24:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:audioPausedChangedFor:remoteParticipantWithIdentifier:updatedAudioPaused:)()
{
  OUTLINED_FUNCTION_29();
  v49 = v0;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v48 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53_17();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_1();
  v14 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_250_3();
  v15(v1);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_248_1();
  v16 = OUTLINED_FUNCTION_45_1();
  v17(v16);
  if (v14)
  {
    v47 = v3;
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_17:
    __break(1u);
  }

  OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
LABEL_3:
  v18 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA940;
  v46 = v5;
  v51 = v5 & 1;
  v20 = String.init<A>(reflecting:)();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v23 = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v24 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Audio pause changed. Current audio is paused = %@", 49, 2, &dword_1BBC58000, v18, v24, v19);

  v25 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v26 = *(v49 + v25);
  v27 = *(v26 + 16);
  if (v27)
  {
    OUTLINED_FUNCTION_40_3();
    v5 = v26 + v28;

    v29 = 0;
    while (1)
    {
      if (v29 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v30, v2);
      v31 = v2 + *(v8 + 28);
      if (*v31)
      {
        if ((*(v31 + 16) & 1) == 0 && *(v31 + 8) == v7)
        {
          break;
        }
      }

      ++v29;
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v2, v32);
      if (v27 == v29)
      {

        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_22_53();
    _s15ConversationKit11ParticipantVWObTm_8(v2, v48);
    OUTLINED_FUNCTION_9_51();
    v38 = _s15ConversationKit11ParticipantVWObTm_8(v36, v37);
    v39 = (v49 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
    OUTLINED_FUNCTION_300_0(v38, &v50);
    v40 = *v39;
    if (*v39)
    {
      swift_endAccess();

      v40(v47, v46 & 1);
      v41 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v41, v42);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v47, v43);
    }

    else
    {
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v47, v44);
      swift_endAccess();
    }
  }

  else
  {
LABEL_11:
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_37_22();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BA940;
    v50 = v7;
    v34 = String.init<A>(reflecting:)();
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = v23;
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
    os_log(_:dso:log:type:_:)("Unable to find participant with ids identifier %d", v45);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:updatedGroupNameForConversation:withGroupPhotoData:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v36 = v3;
  v37 = v4;
  v6 = v5;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_391_0(ObjectType);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103_4();
  v12 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v1, *MEMORY[0x1E69E8020], v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v1, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_388_0();
  if (!v38[3])
  {
    outlined destroy of CallControlsService?(v38, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_8:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v33 = swift_allocObject();
      OUTLINED_FUNCTION_371_0(v33, xmmword_1BC4BA940);
      OUTLINED_FUNCTION_387_0();
      OUTLINED_FUNCTION_314_0();
      v33[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v34 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_345_0(v34);
      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)(v35);

      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_335();
  v17 = v39[4];
  OUTLINED_FUNCTION_203_4(v39, v39[3]);
  v18 = OUTLINED_FUNCTION_6_4();
  v19(v18, v17);
  v20 = *(v6 + 32);
  v21 = OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_203_4(v21, v22);
  v23 = OUTLINED_FUNCTION_6_4();
  v24(v23, v20);
  OUTLINED_FUNCTION_112();
  v25 = static UUID.== infix(_:_:)();
  v26 = *(v9 + 8);
  v27 = OUTLINED_FUNCTION_2_125();
  v26(v27);
  v28 = OUTLINED_FUNCTION_316_1();
  v26(v28);
  if (v25)
  {
    v29 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v30 = *v29;
    if (*v29)
    {
      OUTLINED_FUNCTION_363_0();
      v30(v6, v36, v37);
      v31 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v31, v32);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_9:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:buzzedMemberFor:member:)()
{
  OUTLINED_FUNCTION_29();
  v38 = v1;
  v3 = v2;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_391_0(ObjectType);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_170_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v0 = static OS_dispatch_queue.main.getter();
  v11 = OUTLINED_FUNCTION_171_3();
  v12(v11);
  _dispatchPreconditionTest(_:)();
  v13 = OUTLINED_FUNCTION_173_2();
  v14(v13);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_388_0();
  if (!v41)
  {
    outlined destroy of CallControlsService?(v40, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_7:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_371_0(v35, xmmword_1BC4BA940);
      OUTLINED_FUNCTION_387_0();
      OUTLINED_FUNCTION_213_1();
      v35[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v36 = lazy protocol witness table accessor for type String and conformance String();
      OUTLINED_FUNCTION_318_0(v36);
      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)(v37, v38);

      goto LABEL_8;
    }

LABEL_10:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_335();
  v15 = OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_183_4(v15, v16);
  v17 = OUTLINED_FUNCTION_246();
  v18(v17, v44);
  v19 = *(v3 + 32);
  v20 = OUTLINED_FUNCTION_48_0();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v22 = OUTLINED_FUNCTION_47_18();
  v23(v22, v19);
  OUTLINED_FUNCTION_2_125();
  v24 = static UUID.== infix(_:_:)();
  v25 = *(v6 + 8);
  v26 = OUTLINED_FUNCTION_281();
  v25(v26);
  v27 = OUTLINED_FUNCTION_196_2();
  v25(v27);
  if (v24)
  {
    ConversationController.updateBuzzedMember(_:)(v38, v28, v29, v30, v31, v32, v33, v34, v38, v39, v40[0], v40[1], v40[2], v41, v42, v43[0], v43[1], v43[2], v43[3], v44);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_8:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:collaborationsChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_391_0(ObjectType);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_164_2();
  v10(v9);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_112();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_388_0();
  if (!v40[3])
  {
    outlined destroy of CallControlsService?(v40, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_10:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v31 = swift_allocObject();
      OUTLINED_FUNCTION_371_0(v31, xmmword_1BC4BA940);
      v32 = OUTLINED_FUNCTION_387_0();
      v34 = v33;
      v31[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v31[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
      v31[2].n128_u64[0] = v32;
      v31[2].n128_u64[1] = v34;
      OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_521(v35, v36, v37, v38, v39);

      goto LABEL_11;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_335();
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  OUTLINED_FUNCTION_49_23();
  v14 = OUTLINED_FUNCTION_339();
  v15(v14);
  v16 = OUTLINED_FUNCTION_206();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_48_20();
  v18 = OUTLINED_FUNCTION_339();
  v19(v18);
  OUTLINED_FUNCTION_157();
  v20 = static UUID.== infix(_:_:)();
  v21 = *(v5 + 8);
  v22 = OUTLINED_FUNCTION_48_0();
  v21(v22);
  v23 = OUTLINED_FUNCTION_39_5();
  v21(v23);
  if (v20)
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_8_5(&one-time initialization token for shared);
    }

    OUTLINED_FUNCTION_20();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_1();
    v26 = *(v25 + 144);

    v26(v41, partial apply for closure #1 in ConversationController.callCenter(_:collaborationsChangedFor:), v24);

    v27 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {
      OUTLINED_FUNCTION_363_0();
      v28(0);
      v29 = OUTLINED_FUNCTION_46();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v29, v30);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.callCenter(_:collaborationsChangedFor:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);

      v4(0);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
    }

    else
    {
    }
  }
}

void ConversationController.callCenter(_:addedCollaborationNotice:forParticipant:in:)()
{
  OUTLINED_FUNCTION_29();
  v69 = v3;
  v70 = v0;
  v66 = v4;
  swift_getObjectType();
  v67 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v65 = v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v64 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v68 = v14;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_39_3();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v20 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_398_0();
  v21(v1);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_414();
  v22 = OUTLINED_FUNCTION_45_11();
  v23(v22);
  if (v20)
  {
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
LABEL_3:
  OUTLINED_FUNCTION_0_1();
  if ((*(v24 + 288))())
  {
    ConversationController.lookupActiveConversation()();
    if (v72[3])
    {
      OUTLINED_FUNCTION_446();
      v25 = OUTLINED_FUNCTION_338();
      __swift_project_boxed_opaque_existential_1(v25, v26);
      OUTLINED_FUNCTION_48_20();
      v27 = OUTLINED_FUNCTION_339();
      v28(v27);
      __swift_project_boxed_opaque_existential_1(v69, v69[3]);
      OUTLINED_FUNCTION_125_1();
      v29 = OUTLINED_FUNCTION_339();
      v30(v29);
      OUTLINED_FUNCTION_48_0();
      v31 = static UUID.== infix(_:_:)();
      v32 = *(v16 + 8);
      v33 = OUTLINED_FUNCTION_40_2();
      v32(v33);
      v34 = OUTLINED_FUNCTION_7_8();
      v32(v34);
      if (v31)
      {
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v67);
        ConversationController.activeParticipant(from:in:)(v66, v2);
        outlined destroy of CallControlsService?(v68, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        OUTLINED_FUNCTION_22_5(v2);
        if (v38)
        {
          outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          v39 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          OUTLINED_FUNCTION_1_186();
          _s15ConversationKit11ParticipantVWOcTm_17(&v70[v39], v68);
        }

        else
        {
          OUTLINED_FUNCTION_22_53();
          _s15ConversationKit11ParticipantVWObTm_8(v2, v63);
          v44 = OUTLINED_FUNCTION_33_0();
          _s15ConversationKit11ParticipantVWObTm_8(v44, v45);
        }

        v46 = OUTLINED_FUNCTION_18_9();
        __swift_storeEnumTagSinglePayload(v46, v47, v48, v67);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(v68, v64, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        OUTLINED_FUNCTION_22_5(v64);
        if (v38)
        {
          outlined destroy of CallControlsService?(v64, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
          v49 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_156();
          os_log(_:dso:log:type:_:)(v50);

          v51 = OUTLINED_FUNCTION_309();
        }

        else
        {
          OUTLINED_FUNCTION_4_150();
          v53 = OUTLINED_FUNCTION_2_100();
          v55 = _s15ConversationKit11ParticipantVWObTm_8(v53, v54);
          v56 = &v70[OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted];
          OUTLINED_FUNCTION_300_0(v55, &v71);
          v57 = *v56;
          if (!*v56)
          {
            OUTLINED_FUNCTION_0_222();
            _s15ConversationKit11ParticipantVWOhTm_18(v65, v62);
            outlined destroy of CallControlsService?(v68, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
            swift_endAccess();
            goto LABEL_18;
          }

          swift_endAccess();

          v58 = OUTLINED_FUNCTION_32_2();
          v57(v58);
          v59 = OUTLINED_FUNCTION_46();
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v59, v60);
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v65, v61);
          v52 = &_s15ConversationKit11ParticipantVSgMd;
          v51 = v68;
        }

        outlined destroy of CallControlsService?(v51, v52, &_s15ConversationKit11ParticipantVSgMR);
      }

LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(&v73);
      goto LABEL_19;
    }

    outlined destroy of CallControlsService?(v72, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BC4BA940;
    v73 = v70;
    v41 = v70;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_314_0();
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v42 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_345_0(v42);
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)(v43);
  }

LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:cameraMixedWithScreenDidChangeFor:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_391_0(ObjectType);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_164_2();
  v10(v9);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_112();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_388_0();
  if (!v34[3])
  {
    outlined destroy of CallControlsService?(v34, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_7:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_371_0(v25, xmmword_1BC4BA940);
      v26 = OUTLINED_FUNCTION_387_0();
      v28 = v27;
      v25[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v25[4].n128_u64[0] = lazy protocol witness table accessor for type String and conformance String();
      v25[2].n128_u64[0] = v26;
      v25[2].n128_u64[1] = v28;
      OUTLINED_FUNCTION_156();
      OUTLINED_FUNCTION_521(v29, v30, v31, v32, v33);

      goto LABEL_8;
    }

LABEL_10:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_335();
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  OUTLINED_FUNCTION_49_23();
  v14 = OUTLINED_FUNCTION_339();
  v15(v14);
  v16 = OUTLINED_FUNCTION_206();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_48_20();
  v18 = OUTLINED_FUNCTION_339();
  v19(v18);
  OUTLINED_FUNCTION_157();
  v20 = static UUID.== infix(_:_:)();
  v21 = *(v5 + 8);
  v22 = OUTLINED_FUNCTION_48_0();
  v21(v22);
  v23 = OUTLINED_FUNCTION_39_5();
  v21(v23);
  if (v20)
  {
    v24 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v24, *(v24 + 8), *(v24 + 16), 2);
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
LABEL_8:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:screenSharingAvailablilityChanged:)(uint64_t a1, char a2)
{
  v4 = v2;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_12_3();
  v8(v7);
  v9 = _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_162_4();
  v11(v10);
  if (v9)
  {
    v12 = (v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v13 = *v12;
    if (*v12)
    {
      OUTLINED_FUNCTION_363_0();
      v13(a2 & 1);
      v14 = OUTLINED_FUNCTION_4_31();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v14, v15);
    }
  }

  else
  {
    __break(1u);
  }
}

void ConversationController.callCenter(_:screenSharingRequestsChangedFor:fromOldConversation:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  swift_getObjectType();
  OUTLINED_FUNCTION_77_2();
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v58 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_3();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  v11 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v2 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_398_0();
  v12(v2);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_414();
  v13 = OUTLINED_FUNCTION_316_1();
  v14(v13);
  if (v11)
  {
    if (one-time initialization token for conversationController == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
LABEL_3:
  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v15, static Logger.conversationController);
  v16 = v3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v57 = v5;
    v19 = OUTLINED_FUNCTION_42();
    v20 = OUTLINED_FUNCTION_23();
    v60[0] = v20;
    *v19 = 136315138;
    v59[0] = v16;
    v21 = v16;
    v22 = String.init<A>(reflecting:)();
    v24 = v6;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v60);

    *(v19 + 4) = v25;
    v6 = v24;
    _os_log_impl(&dword_1BBC58000, v17, v18, "callCenterProviderDelegate screenSharingRequestsChangedFor: callback - %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_239();
    v5 = v57;
    OUTLINED_FUNCTION_27();
  }

  ConversationController.lookupActiveConversation()();
  if (v59[3])
  {
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_11_99(v60);
    v26 = OUTLINED_FUNCTION_4_38();
    v27(v26);
    OUTLINED_FUNCTION_11_99(v5);
    v28 = OUTLINED_FUNCTION_4_38();
    v29(v28);
    OUTLINED_FUNCTION_7_8();
    v30 = static UUID.== infix(_:_:)();
    v31 = *(v58 + 8);
    v32 = OUTLINED_FUNCTION_33_0();
    v31(v32);
    v33 = OUTLINED_FUNCTION_48_0();
    v31(v33);
    if (v30)
    {
      v34 = v16 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_365_0();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_382_0();
      OUTLINED_FUNCTION_507();
      v35 = *(v6 + 96);
      v6 += 96;
      swift_unknownObjectRetain();
      v36 = OUTLINED_FUNCTION_45_1();
      v35(v36);
      OUTLINED_FUNCTION_524();
      if (v34)
      {
        v37 = &v16[OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged];
        OUTLINED_FUNCTION_401_0();
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v38 = *v37;
        if (*v37)
        {
          v39 = v5[4];
          v40 = OUTLINED_FUNCTION_11_36();
          OUTLINED_FUNCTION_179_2(v40, v41);
          v42 = *(v39 + 360);

          v43 = OUTLINED_FUNCTION_40_2();
          v42(v43);
          OUTLINED_FUNCTION_413_0();
          v38();
          v44 = OUTLINED_FUNCTION_44_0();
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v44, v45);
        }

        __swift_destroy_boxed_opaque_existential_1(v60);
        goto LABEL_16;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    outlined destroy of CallControlsService?(v59, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  v46 = v16;
  v47 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_42();
    v48 = OUTLINED_FUNCTION_13_80();
    v60[0] = v48;
    *v6 = 136315138;
    v49 = v46;
    v50 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v60);
    OUTLINED_FUNCTION_412_0();

    *(v6 + 4) = v1;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_18();
  }

LABEL_16:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.frequencyController(_:audioPowerChanged:forParticipantWithStreamToken:)()
{
  OUTLINED_FUNCTION_48_2();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v24 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v3;
  *(v11 + 32) = v5;
  v25[4] = partial apply for closure #1 in ConversationController.frequencyController(_:audioPowerChanged:forParticipantWithStreamToken:);
  v25[5] = v11;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v25[2] = v12;
  v25[3] = &block_descriptor_184;
  v13 = _Block_copy(v25);
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v15, v16);
  v17 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v19, v20, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_68_6();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v21);
  _Block_release(v13);

  v22 = OUTLINED_FUNCTION_181();
  v23(v22);
  (*(v8 + 8))(v1, v24);
  OUTLINED_FUNCTION_20_6();
}

void closure #1 in ConversationController.frequencyController(_:audioPowerChanged:forParticipantWithStreamToken:)(uint64_t a1, uint64_t a2, float a3)
{
  v44 = a2;
  v5 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Participant(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v42 = &v40 - v19;
  v20 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v21 = *(a1 + v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v40 = v17;
    v41 = v11;
    v43 = a1;
    v23 = v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

    v24 = 0;
    while (1)
    {
      if (v24 >= *(v21 + 16))
      {
        __break(1u);
        return;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v23 + *(v9 + 72) * v24, v14);
      _s15ConversationKit11ParticipantVWOcTm_17(v14, v7);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v26 = *(v25 + 48);
        v27 = &v7[*(v25 + 64)];
        outlined consume of Participant.CopresenceInfo?(*v27, v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7]);
        memcpy(v45, &v7[v26], sizeof(v45));
        v28 = type metadata accessor for Date();
        (*(*(v28 - 8) + 8))(v7, v28);
        v29 = v45[1];
        outlined destroy of Participant.MediaInfo(v45);
        if (v29 == v44)
        {

          v35 = v40;
          _s15ConversationKit11ParticipantVWObTm_8(v14, v40);
          v36 = v42;
          _s15ConversationKit11ParticipantVWObTm_8(v35, v42);
          v37 = v43 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange;
          swift_beginAccess();
          v38 = *v37;
          if (*v37)
          {
            v39 = *(v37 + 8);
            swift_endAccess();

            v38(v36, a3);
            outlined consume of (@escaping @callee_guaranteed () -> ())?(v38, v39);
            v34 = v36;
            goto LABEL_14;
          }

          _s15ConversationKit11ParticipantVWOhTm_18(v36, type metadata accessor for Participant);
          swift_endAccess();
          return;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v7, type metadata accessor for Participant.State);
      }

      ++v24;
      _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
      if (v22 == v24)
      {

        a1 = v43;
        v11 = v41;
        break;
      }
    }
  }

  v30 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange;
  swift_beginAccess();
  v31 = *v30;
  if (*v30)
  {
    v32 = *(v30 + 8);
    v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_17(a1 + v33, v11);

    v31(v11, a3);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v31, v32);
    v34 = v11;
LABEL_14:
    _s15ConversationKit11ParticipantVWOhTm_18(v34, type metadata accessor for Participant);
  }
}

uint64_t ConversationController.momentsController(_:didUpdate:for:)(uint64_t a1, void *a2, void *a3)
{
  if (*(v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) == 1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_194();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BAA20;
    v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUMomentsCapabilities, 0x1E69D8C50);
    v8 = a2;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_43_7();
    v9 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v10 = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 64) = v10;
    *(v6 + 32) = a2;
    *(v6 + 40) = v7;
    v19 = a3;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUMomentsProvider, 0x1E69D8C68);
    v11 = a3;
    v12 = String.init<A>(reflecting:)();
    *(v6 + 96) = v9;
    *(v6 + 104) = v10;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    v14 = static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_3_94("moments controller did update capabilities %@ for provider %@", 61, v15, &dword_1BBC58000, v16, v14);

    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    return outlined destroy of CallControlsService?(&v19, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();

    return os_log(_:dso:log:type:_:)(v18);
  }
}

uint64_t ConversationController.momentsController(_:willCaptureRemoteRequestFromIdentifier:)()
{
  ConversationController.lookupActiveConversation()();
  if (!v20)
  {
    return outlined destroy of CallControlsService?(&v18, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  OUTLINED_FUNCTION_384_0(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21);
  OUTLINED_FUNCTION_82_0(v22);
  v9 = OUTLINED_FUNCTION_2_14();
  if (v10(v9))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)(v11);
    v12 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v13 = *v12;
    if (*v12)
    {

      v13(v14);
      v15 = OUTLINED_FUNCTION_4_31();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v15, v16);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void ConversationController.remoteVideoClientDidReceiveFirstFrame(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_410_0();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v22 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v7 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_24();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v0;
  v23[4] = partial apply for closure #1 in ConversationController.remoteVideoClientDidReceiveFirstFrame(_:);
  v23[5] = v8;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v23[2] = v9;
  v23[3] = &block_descriptor_190;
  v10 = _Block_copy(v23);
  v11 = v2;
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v13, v14);
  v15 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v17, v18, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_78_8();
  OUTLINED_FUNCTION_124_1();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v19);
  _Block_release(v10);

  v20 = OUTLINED_FUNCTION_15_44();
  v21(v20);
  (*(v5 + 8))(v1, v22);

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.remoteVideoClientDidReceiveFirstFrame(_:)(void *a1, uint64_t a2)
{
  v216 = a2;
  v199 = type metadata accessor for UUID();
  v201 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v195 = &v189 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v198 = &v189 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v196 = &v189 - v7;
  v8 = type metadata accessor for Participant(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v189 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v197 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v202 = &v189 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v189 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v212 = &v189 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v204 = &v189 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v205 = &v189 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v203 = &v189 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v206 = &v189 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v217 = &v189 - v33;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v214 = static OS_os_log.conversationKit;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BC4BAA20;
  v221[0] = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
  v35 = a1;
  v36 = String.init<A>(reflecting:)();
  v38 = v37;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v213 = lazy protocol witness table accessor for type String and conformance String();
  *(v34 + 64) = v213;
  *(v34 + 32) = v36;
  *(v34 + 40) = v38;
  *&v215 = v35;
  v39 = [v35 remoteVideoAttributes];
  v200 = v21;
  if (v39)
  {
    v221[0] = v39;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for VideoAttributes, 0x1E69865E8);
    v40 = String.init<A>(reflecting:)();
  }

  else
  {
    v41 = 0xE300000000000000;
    v40 = 7104878;
  }

  v42 = v216;
  v43 = v213;
  *(v34 + 96) = MEMORY[0x1E69E6158];
  *(v34 + 104) = v43;
  *(v34 + 72) = v40;
  *(v34 + 80) = v41;
  v44 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Received first remote video frame for: %@; remoteVideoAttributes: %@", 68, 2, &dword_1BBC58000, v214, v44, v34);

  __swift_storeEnumTagSinglePayload(v217, 1, 1, v8);
  memset(v231, 0, 75);
  memset(v224, 0, sizeof(v224));
  v45 = v224;
  v225 = 1;
  bzero(v226, 0xB1uLL);
  v46 = v215;
  v47 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v215, 0);
  if (v48)
  {
    v49 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v46, 1);
    if (v50)
    {
      if (one-time initialization token for conversationController == -1)
      {
LABEL_9:
        v51 = type metadata accessor for Logger();
        v214 = __swift_project_value_buffer(v51, static Logger.conversationController);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_1BBC58000, v52, v53, "Failed to find any participant matching remote video client", v54, 2u);
          v55 = v54;
          v42 = v216;
          MEMORY[0x1BFB23DF0](v55, -1, -1);
        }

        v56 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
        swift_beginAccess();
        v57 = *(v42 + v56);
        v58 = MEMORY[0x1E69E7CC0];
        v221[0] = MEMORY[0x1E69E7CC0];
        v59 = *(v57 + 16);
        if (v59)
        {
          v60 = *(v8 + 44);
          v61 = v57 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v62 = *(v9 + 72);

          do
          {
            _s15ConversationKit11ParticipantVWOcTm_17(v61, v11);
            v63 = *&v11[v60];

            _s15ConversationKit11ParticipantVWOhTm_18(v11, type metadata accessor for Participant);
            specialized Array.append<A>(contentsOf:)(v63);
            v61 += v62;
            --v59;
          }

          while (v59);

          v58 = v221[0];
        }

        v64 = v217;
        if (*(v58 + 16))
        {

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v221[0] = v68;
            *v67 = 136315138;
            *&v220[0] = v58;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd, &_sSay15ConversationKit11ParticipantVGMR);
            v69 = String.init<A>(reflecting:)();
            v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v221);

            *(v67 + 4) = v71;
            _os_log_impl(&dword_1BBC58000, v65, v66, "Found associated participants that may match remote video client %s", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v68);
            v64 = v217;
            MEMORY[0x1BFB23DF0](v68, -1, -1);
            MEMORY[0x1BFB23DF0](v67, -1, -1);
          }

          else
          {
          }

          ConversationController.updateMatchingAssociatedParticipant(for:)(v215);
        }

        else
        {
        }

        goto LABEL_89;
      }

LABEL_129:
      swift_once();
      goto LABEL_9;
    }

    v210 = v49;
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.conversationController);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v215;
    if (v85)
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1BBC58000, v83, v84, "Found participant with screen matching remote video first frame notification", v87, 2u);
      v88 = v87;
      v42 = v216;
      MEMORY[0x1BFB23DF0](v88, -1, -1);
    }

    outlined destroy of CallControlsService?(v217, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v89 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    if ((v210 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v90 = *(v42 + v89);
      if (v210 < *(v90 + 16))
      {
        v91 = *(v9 + 80);
        v81 = *(v9 + 72);
        v92 = v217;
        _s15ConversationKit11ParticipantVWOcTm_17(v90 + ((v91 + 32) & ~v91) + v81 * v210, v217);
        __swift_storeEnumTagSinglePayload(v92, 0, 1, v8);
        _s15ConversationKit11ParticipantVWOcTm_17(v92, v14);
        Participant.videoInfo.getter();
        _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
        outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v232, v231, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        if (__swift_getEnumTagSinglePayload(v92, 1, v8))
        {
          v207 = 0;
          v208 = 0;
          v209 = 0;
        }

        else
        {
          _s15ConversationKit11ParticipantVWOcTm_17(v92, v14);
          v207 = Participant.captionInfo.getter();
          v208 = v103;
          v209 = v104;
          _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
        }

        if (__swift_getEnumTagSinglePayload(v92, 1, v8))
        {
          memset(v221, 0, 24);
          v221[3] = 1;
          bzero(&v221[4], 0xB1uLL);
        }

        else
        {
          _s15ConversationKit11ParticipantVWOcTm_17(v92, v14);
          Participant.screenInfo.getter();
          _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
        }

        outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v221, v224, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
        if (v225 != 1)
        {
          memcpy(v230, (v216 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes), 0x61uLL);
          v226[8] = 1;
          v105 = [v86 remoteVideoAttributes];
          if (v105)
          {
            v106 = v105;
            v107 = [v105 orientation];
          }

          else
          {
            v107 = 0;
          }

          v228 = VideoAttributeOrientation.deviceOrientation.getter(v107);
          if (v225 != 1)
          {
            v111 = [v86 remoteVideoAttributes];
            if (v111)
            {
              v112 = v111;
              v113 = VideoAttributes.scaleFactor.getter();
            }

            else
            {
              v113 = 1.0;
            }

            v229 = v113;
          }
        }

        v125 = [v86 remoteVideoAttributes];
        if (!v125)
        {
          v190 = v91;
          v121 = v212;
          v76 = v217;
          goto LABEL_84;
        }

        v126 = v125;
        [v125 ratio];
        v128 = v127;
        v130 = v129;

        v76 = v217;
        if (v225 != 1)
        {
          v131 = (v230[12] & 1) != 0 ? 0 : v230[9];
          v132 = ConversationController.remoteOrientationFor(aspectRatio:videoRotation:deviceFamily:)(v228, v131, v128, v130);
          if (v225 != 1)
          {
            v227 = v132;
          }
        }

        v190 = v91;
        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_132:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v146 = v188;
    goto LABEL_102;
  }

  v210 = v47;
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  __swift_project_value_buffer(v72, static Logger.conversationController);
  v73 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v74 = os_log_type_enabled(v73, v11);
  v75 = v215;
  v76 = v217;
  if (v74)
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_1BBC58000, v73, v11, "Found participant matching remote video first frame notification", v77, 2u);
    v78 = v77;
    v42 = v216;
    MEMORY[0x1BFB23DF0](v78, -1, -1);
  }

  outlined destroy of CallControlsService?(v76, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v79 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if ((v210 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_128;
  }

  v80 = *(v42 + v79);
  if (v210 >= *(v80 + 16))
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v190 = *(v9 + 80);
  v81 = *(v9 + 72);
  _s15ConversationKit11ParticipantVWOcTm_17(v80 + ((v190 + 32) & ~v190) + v81 * v210, v76);
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v8);
  _s15ConversationKit11ParticipantVWOcTm_17(v76, v14);
  Participant.screenInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v221, v224, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (__swift_getEnumTagSinglePayload(v76, 1, v8))
  {
    v207 = 0;
    v208 = 0;
    v209 = 0;
  }

  else
  {
    _s15ConversationKit11ParticipantVWOcTm_17(v76, v14);
    v207 = Participant.captionInfo.getter();
    v208 = v93;
    v209 = v94;
    _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
  }

  if (__swift_getEnumTagSinglePayload(v76, 1, v8))
  {
    v95 = 0;
    v96 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
  }

  else
  {
    _s15ConversationKit11ParticipantVWOcTm_17(v76, v14);
    Participant.videoInfo.getter();
    v193 = v232[1];
    v194 = v232[0];
    v191 = v232[3];
    v192 = v232[2];
    v95 = v233;
    v96 = v234 | (v235 << 16);
    _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
  }

  memcpy(v221, v231, 0x4BuLL);
  outlined destroy of CallControlsService?(v221, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  v231[1] = v193;
  v231[0] = v194;
  v231[3] = v191;
  v231[2] = v192;
  *&v231[4] = v95;
  BYTE10(v231[4]) = BYTE2(v96);
  WORD4(v231[4]) = v96;
  if (!v194)
  {
    goto LABEL_71;
  }

  BYTE8(v231[0]) = 1;
  v97 = [v75 remoteVideoAttributes];
  if (v97)
  {
    v98 = v97;
    v99 = [v97 videoMirrored];
  }

  else
  {
    v99 = 0;
  }

  BYTE13(v231[0]) = v99;
  if (!*&v231[0])
  {
    goto LABEL_71;
  }

  v100 = [v75 remoteVideoAttributes];
  if (v100)
  {
    v101 = v100;
    v102 = [v100 orientation];
  }

  else
  {
    v102 = 0;
  }

  *(&v231[1] + 1) = VideoAttributeOrientation.deviceOrientation.getter(v102);
  if (!*&v231[0])
  {
    goto LABEL_71;
  }

  v108 = [v75 remoteVideoAttributes];
  if (v108)
  {
    v109 = v108;
    v110 = [v108 camera];
  }

  else
  {
    v110 = 0;
  }

  LOBYTE(v231[2]) = VideoAttributeCamera.cameraPosition.getter(v110);
  if (!*&v231[0])
  {
LABEL_71:
    memset(v219, 0, 40);
    goto LABEL_72;
  }

  specialized Dictionary.subscript.getter();
  if (!*&v219[24])
  {
LABEL_72:
    outlined destroy of CallControlsService?(v219, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
LABEL_83:
    v121 = v212;
    goto LABEL_84;
  }

  outlined init with take of TapInteractionHandler(v219, v220);
  if (!*&v231[0])
  {
    __swift_destroy_boxed_opaque_existential_1(v220);
    goto LABEL_83;
  }

  outlined init with copy of CallCenterProvider(v220, v218);
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    v114 = 0.0;
    static AspectRatio.remoteAspectRatios(with:contentsRect:)(v218, v223, 1.0, 1.0);
    v115 = *v223;
    v116 = *&v223[1];
    v117 = v223[2];
    v118 = *&v223[3];
    v119 = *&v223[4];
    v120 = LOBYTE(v223[5]);
    __swift_destroy_boxed_opaque_existential_1(v218);
    __swift_destroy_boxed_opaque_existential_1(v220);
    v121 = v212;
    if ((v117 & 1) != 0 || v115 == v116)
    {
      v122 = 1;
      v116 = 0.0;
      v123 = 0.0;
      v124 = 0.0;
    }

    else
    {
      v122 = 0;
      if (v120)
      {
        v123 = v116;
      }

      else
      {
        v123 = v118;
      }

      if (v120)
      {
        v124 = v115;
      }

      else
      {
        v124 = v119;
      }

      v114 = v115;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v218);
    __swift_destroy_boxed_opaque_existential_1(v220);
    v122 = 1;
    v114 = 0.0;
    v116 = 0.0;
    v123 = 0.0;
    v124 = 0.0;
    v121 = v212;
  }

  *(&v231[2] + 1) = v114;
  *&v231[3] = v116;
  *(&v231[3] + 1) = v123;
  *&v231[4] = v124;
  BYTE8(v231[4]) = v122;
LABEL_84:
  if (__swift_getEnumTagSinglePayload(v76, 1, v8) || (_s15ConversationKit11ParticipantVWOcTm_17(v76, v14), v133 = Participant.avInfo.getter(), _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant), v133 == 2))
  {
    v134 = static os_log_type_t.error.getter();
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_1BC4BA940;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v76, v121, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    specialized >> prefix<A>(_:)();
    v137 = v136;
    v139 = v138;
    outlined destroy of CallControlsService?(v121, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v141 = v213;
    v140 = v214;
    *(v135 + 56) = MEMORY[0x1E69E6158];
    *(v135 + 64) = v141;
    *(v135 + 32) = v137;
    *(v135 + 40) = v139;
    v64 = v217;
    os_log(_:dso:log:type:_:)("Unable to determine A/V info for participant whose video received its first frame: %@", 85, 2, &dword_1BBC58000, v140, v134, v135);
LABEL_87:

LABEL_88:
    outlined consume of Participant.CaptionInfo?(v207);
LABEL_89:
    outlined destroy of CallControlsService?(v224, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    memcpy(v221, v231, 0x4BuLL);
    outlined destroy of CallControlsService?(v221, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    outlined destroy of CallControlsService?(v64, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    return;
  }

  *&v215 = v81;
  v142 = v206;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v76, v206, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v142, 1, v8) == 1)
  {
    goto LABEL_134;
  }

  Participant.screenInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v142, type metadata accessor for Participant);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v223, v221, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v224, v222, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (v221[3] == 1)
  {
    outlined destroy of CallControlsService?(v223, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    if (v222[3] == 1)
    {
      outlined destroy of CallControlsService?(v221, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      LODWORD(v45) = 1;
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v221, v220, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (v222[3] == 1)
  {
    outlined destroy of CallControlsService?(v223, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of Participant.ScreenInfo(v220);
LABEL_97:
    outlined destroy of CallControlsService?(v221, &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMR);
    LODWORD(v45) = 0;
    goto LABEL_99;
  }

  memcpy(v219, v222, sizeof(v219));
  LODWORD(v45) = static Participant.ScreenInfo.== infix(_:_:)();
  outlined destroy of Participant.ScreenInfo(v219);
  outlined destroy of CallControlsService?(v223, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined destroy of Participant.ScreenInfo(v220);
  outlined destroy of CallControlsService?(v221, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
LABEL_99:
  v143 = v205;
  v86 = v217;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v217, v205, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v143, 1, v8) == 1)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  memcpy(v223, v231, 0x4BuLL);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v224, v221, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  Participant.copresenceInfo.getter(v220);
  v144 = v203;
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v220, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  outlined destroy of CallControlsService?(v221, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  _s15ConversationKit11ParticipantVWOhTm_18(v143, type metadata accessor for Participant);
  __swift_storeEnumTagSinglePayload(v144, 0, 1, v8);
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v144, v86, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v84 = v204;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v86, v204, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v84, 1, v8) == 1)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v145 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  v9 = v216;
  swift_beginAccess();
  v146 = *(v9 + v145);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v212;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_132;
  }

LABEL_102:
  LODWORD(v205) = v45;
  v206 = v8;
  if (v210 >= *(v146 + 16))
  {
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  _s15ConversationKit11ParticipantVWOdTm_0(v84, v146 + ((v190 + 32) & ~v190) + v215 * v210);
  ConversationController.remoteParticipants.setter(v146, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v148);
  v149 = swift_allocObject();
  v215 = xmmword_1BC4BA940;
  *(v149 + 16) = xmmword_1BC4BA940;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v86, v42, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  specialized >> prefix<A>(_:)();
  v151 = v150;
  v153 = v152;
  outlined destroy of CallControlsService?(v42, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v154 = v213;
  *(v149 + 56) = MEMORY[0x1E69E6158];
  *(v149 + 64) = v154;
  *(v149 + 32) = v151;
  *(v149 + 40) = v153;
  v64 = v217;
  v155 = static os_log_type_t.default.getter();
  v156 = v214;
  os_log(_:dso:log:type:_:)("Updated participant's isReceivingVideoFrames property to true. %@", 65, 2, &dword_1BBC58000, v214, v155, v149);

  v157 = ConversationController.visibleParticipants.getter();
  v158 = specialized Collection.firstIndex(where:)(v157, v64);
  v160 = v159;

  if (v160)
  {
    LODWORD(v216) = static os_log_type_t.error.getter();
    v161 = swift_allocObject();
    *(v161 + 16) = v215;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v64, v42, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    specialized >> prefix<A>(_:)();
    v163 = v162;
    v165 = v164;
    outlined destroy of CallControlsService?(v42, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v161 + 56) = MEMORY[0x1E69E6158];
    *(v161 + 64) = v154;
    *(v161 + 32) = v163;
    *(v161 + 40) = v165;
    v64 = v217;
    os_log(_:dso:log:type:_:)("Unable to determine visible index for participant: %@", 53, 2, &dword_1BBC58000, v156, v216, v161);
    goto LABEL_87;
  }

  *&v215 = v158;
  if (*&v231[0])
  {
    if (BYTE8(v231[0]))
    {
      v166 = v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v167 = *(v166 + 8);
      ObjectType = swift_getObjectType();
      v169 = *(v167 + 232);
      swift_unknownObjectRetain();
      v170 = v198;
      v169(ObjectType, v167);
      v9 = v216;
      swift_unknownObjectRelease();
      v221[0] = *(v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame);

      v171 = v196;
      specialized Set._Variant.remove(_:)();
      v172 = *(v201 + 8);
      v201 += 8;
      v172(v170, v199);
      v64 = v217;
      outlined destroy of CallControlsService?(v171, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ([*(v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags) uPlusOneFullBleedHandoffEnabled])
      {
        v173 = *(v166 + 8);
        v174 = swift_getObjectType();
        v175 = *(v173 + 232);
        swift_unknownObjectRetain();
        v64 = v217;
        v175(v174, v173);
        v9 = v216;
        swift_unknownObjectRelease();
        swift_beginAccess();
        v176 = v198;
        specialized Set._Variant.insert(_:)();
        swift_endAccess();
        v172(v176, v199);
      }
    }
  }

  v177 = v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant;
  swift_beginAccess();
  v178 = *v177;
  v179 = v206;
  v180 = v205;
  if (*v177)
  {
    v181 = *(v177 + 8);
    v182 = v200;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v64, v200, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (__swift_getEnumTagSinglePayload(v182, 1, v179) == 1)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v178(v182, v215);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v178, v181);
    _s15ConversationKit11ParticipantVWOhTm_18(v182, type metadata accessor for Participant);
  }

  v183 = v202;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v64, v202, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v183, 1, v179) == 1)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  ConversationController.didUpdateVisibleParticipant(_:)(v183);
  _s15ConversationKit11ParticipantVWOhTm_18(v183, type metadata accessor for Participant);
  if (v180)
  {
    goto LABEL_88;
  }

  v184 = v9 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo;
  swift_beginAccess();
  v185 = *v184;
  if (!*v184)
  {
    goto LABEL_88;
  }

  v186 = *(v184 + 8);
  v187 = v197;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v64, v197, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v187, 1, v179) != 1)
  {

    v185(v187, v215);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v185, v186);
    outlined consume of Participant.CaptionInfo?(v207);
    _s15ConversationKit11ParticipantVWOhTm_18(v187, type metadata accessor for Participant);
    v64 = v217;
    goto LABEL_89;
  }

LABEL_139:
  __break(1u);
}

unint64_t ConversationController.remoteParticipantIndex(for:useScreenProviders:)(void *a1, char a2)
{
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = *(v10 + 16);

  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {
      v14 = 0;
LABEL_8:

      return v14;
    }

    if (i >= *(v10 + 16))
    {
      break;
    }

    _s15ConversationKit11ParticipantVWOcTm_17(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i, v8);
    v13 = closure #1 in ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v8, a2 & 1, a1);
    _s15ConversationKit11ParticipantVWOhTm_18(v8, type metadata accessor for Participant);
    if (v13)
    {
      v14 = i;
      goto LABEL_8;
    }
  }

  __break(1u);

  result = _s15ConversationKit11ParticipantVWOhTm_18(v8, type metadata accessor for Participant);
  __break(1u);
  return result;
}

uint64_t ConversationController.updateMatchingAssociatedParticipant(for:)(void *a1)
{
  v132 = a1;
  v152 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v152);
  v8 = (&v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Participant(0);
  v153 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v126 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v131 = (&v126 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v126 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v126 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v126 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  MEMORY[0x1EEE9AC00](v27);
  v145 = (&v126 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v126 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v129 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v134 = &v126 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v143 = &v126 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v126 - v42;
  v149 = v9;
  __swift_storeEnumTagSinglePayload(&v126 - v42, 1, 1, v9);
  v44 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v135 = v1;
  v133 = v44;
  v150 = *&v1[v44];

  v144 = v43;
  swift_beginAccess();
  v141 = 0;
  v45 = 0;
  *&v46 = 136315138;
  v138 = v46;
  LODWORD(v142) = 1;
  v146 = v34;
  v147 = v31;
  while (1)
  {
LABEL_2:
    v47 = *(v150 + 16);
    if (v45 == v47)
    {
      v48 = 1;
    }

    else
    {
      if (v45 >= v47)
      {
        __break(1u);
        goto LABEL_72;
      }

      v49 = v150 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v45;
      v50 = *(v27 + 48);
      v51 = v145;
      *v145 = v45;
      _s15ConversationKit11ParticipantVWOcTm_17(v49, v51 + v50);
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v51, v31, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
      v48 = 0;
      ++v45;
    }

    __swift_storeEnumTagSinglePayload(v31, v48, 1, v27);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v31, v34, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
    if (__swift_getEnumTagSinglePayload(v34, 1, v27) == 1)
    {
      break;
    }

    v151 = v45;
    v148 = *v34;
    v52 = v27;
    v53 = v34 + *(v27 + 48);
    v54 = *(v53 + *(v149 + 44));

    _s15ConversationKit11ParticipantVWOhTm_18(v53, type metadata accessor for Participant);
    v55 = 0;
    v1 = (v54 + 56);
    v56 = 1 << *(v54 + 32);
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v58 = v57 & *(v54 + 56);
    v59 = (v56 + 63) >> 6;
    if (!v58)
    {
LABEL_12:
      while (1)
      {
        v60 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v60 >= v59)
        {

          v27 = v52;
          v34 = v146;
          v31 = v147;
          v45 = v151;
          goto LABEL_2;
        }

        v58 = *&v1[8 * v60];
        ++v55;
        if (v58)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_37:
      _s15ConversationKit11ParticipantVWObTm_8(v1, v136);
      v86 = *&v135[v133];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew()();
        v86 = v124;
      }

      if ((v141 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v141 < *(v86 + 16))
      {
        v140 = (*(v153 + 80) + 32) & ~*(v153 + 80);
        v142 = *(v153 + 72) * v141;
        v87 = v129;
        specialized Set._Variant.remove(_:)();
        outlined destroy of CallControlsService?(v87, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        ConversationController.remoteParticipants.setter(v86, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v88);
        v8 = &v170;
        Participant.videoInfo.getter();
        v89 = v171;
        LODWORD(v151) = v172;
        v90 = v173;
        v168 = v174;
        v169 = v175;
        LODWORD(v23) = v177;
        v167[0] = *v178;
        *(v167 + 3) = *&v178[3];
        v2 = v179;
        v3 = v180;
        v4 = v181;
        v5 = v182;
        LODWORD(v145) = v183;
        v166 = v183;
        if (v170)
        {
          v89 = 1;
        }

        LODWORD(v148) = v89;
        LODWORD(v150) = v184;
        v152 = v170;
        v146 = v54;
        if (v170)
        {
          v91 = [v132 remoteVideoAttributes];
          if (v91)
          {
            v92 = v91;
            v93 = [v91 videoMirrored];
          }

          else
          {
            v93 = 0;
          }

          LODWORD(v153) = v93;
          v94 = [v132 remoteVideoAttributes];
          if (v94)
          {
            v95 = v94;
            v96 = [v94 orientation];
          }

          else
          {
            v96 = 0;
          }

          v97 = VideoAttributeOrientation.deviceOrientation.getter(v96);
          v98 = [v132 remoteVideoAttributes];
          if (v98)
          {
            v99 = v98;
            v100 = [v98 camera];
          }

          else
          {
            v100 = 0;
          }

          LODWORD(v23) = VideoAttributeCamera.cameraPosition.getter(v100);
          specialized Dictionary.subscript.getter();
          v147 = v97;
          if (*(&v154[1] + 1))
          {
            outlined init with take of TapInteractionHandler(v154, &v186);
            outlined init with copy of CallCenterProvider(&v186, v185);
            v8 = &v170;
            if (ConversationController.isOneToOneModeEnabled.getter())
            {
              v2 = 0.0;
              static AspectRatio.remoteAspectRatios(with:contentsRect:)(v185, &v162, 1.0, 1.0);
              v3 = *(&v162 + 1);
              v6 = *&v162;
              v101 = v163;
              v4 = *(&v163 + 1);
              v5 = *&v164;
              LODWORD(v1) = BYTE8(v164);
              __swift_destroy_boxed_opaque_existential_1(v185);
              __swift_destroy_boxed_opaque_existential_1(&v186);
              if ((v101 & 1) != 0 || v6 == v3)
              {
                v102 = 1;
                goto LABEL_62;
              }

LABEL_72:
              v102 = 0;
              if (v1)
              {
                v4 = v3;
                v5 = v6;
              }

              v2 = v6;
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v185);
              __swift_destroy_boxed_opaque_existential_1(&v186);
              v102 = 1;
              v2 = 0.0;
LABEL_62:
              v3 = 0.0;
              v4 = 0.0;
              v5 = 0.0;
            }

            v90 = v153;
            v166 = v102;
LABEL_64:
            Participant.screenInfo.getter();
            v103 = Participant.captionInfo.getter();
            v105 = v104;
            v107 = v106;
            v186 = v152;
            v187 = v148;
            v188 = v151;
            LODWORD(v153) = v90;
            v189 = v90;
            v190 = *(v8 + 14);
            v191 = *(v8 + 11);
            v192 = v147;
            LODWORD(v145) = v23;
            v193 = v23;
            *v194 = *(v8 + 33);
            *&v194[3] = *(v8 + 9);
            v195 = v2;
            v196 = v3;
            v197 = v4;
            v198 = v5;
            v199 = v102;
            v200 = v150;
            Participant.copresenceInfo.getter(v185);
            v8 = v131;
            v137 = v103;
            v139 = v105;
            v146 = v107;
            Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
            outlined destroy of CallControlsService?(v185, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
            _s15ConversationKit11ParticipantVWOcTm_17(v8, v130);
            v108 = *&v135[v133];

            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_65:
              v109 = v152;
              if (v141 >= *(v108 + 16))
              {
                __break(1u);
              }

              else
              {
                v110 = v127;
                specialized Set._Variant.insert(_:)();
                _s15ConversationKit11ParticipantVWOhTm_18(v110, type metadata accessor for Participant);
                ConversationController.remoteParticipants.setter(v108, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v111);
                if (one-time initialization token for conversationController == -1)
                {
LABEL_67:
                  v112 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v112, static Logger.conversationController);
                  v113 = v128;
                  _s15ConversationKit11ParticipantVWOcTm_17(v8, v128);
                  v114 = Logger.logObject.getter();
                  v115 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v114, v115))
                  {
                    v116 = swift_slowAlloc();
                    v117 = swift_slowAlloc();
                    *&v154[0] = v117;
                    *v116 = v138;
                    v118 = v143;
                    _s15ConversationKit11ParticipantVWOcTm_17(v113, v143);
                    __swift_storeEnumTagSinglePayload(v118, 0, 1, v149);
                    specialized >> prefix<A>(_:)();
                    v120 = v119;
                    v122 = v121;
                    outlined destroy of CallControlsService?(v118, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                    _s15ConversationKit11ParticipantVWOhTm_18(v113, type metadata accessor for Participant);
                    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v154);

                    *(v116 + 4) = v123;
                    _os_log_impl(&dword_1BBC58000, v114, v115, "Updated associate participant's isReceivingVideoFrames property to true. %s", v116, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v117);
                    MEMORY[0x1BFB23DF0](v117, -1, -1);
                    MEMORY[0x1BFB23DF0](v116, -1, -1);
                    outlined consume of Participant.CaptionInfo?(v137);

                    _s15ConversationKit11ParticipantVWOhTm_18(v131, type metadata accessor for Participant);
                  }

                  else
                  {
                    outlined consume of Participant.CaptionInfo?(v137);

                    _s15ConversationKit11ParticipantVWOhTm_18(v113, type metadata accessor for Participant);
                    _s15ConversationKit11ParticipantVWOhTm_18(v8, type metadata accessor for Participant);
                  }

                  outlined destroy of CallControlsService?(&v162, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
                  _s15ConversationKit11ParticipantVWOhTm_18(v136, type metadata accessor for Participant);
                  *&v154[0] = v109;
                  BYTE8(v154[0]) = v148;
                  *(v154 + 9) = v151;
                  BYTE13(v154[0]) = v153;
                  *(v154 + 14) = v168;
                  WORD3(v154[1]) = v169;
                  *(&v154[1] + 1) = v147;
                  LOBYTE(v155) = v145;
                  *(&v155 + 1) = v167[0];
                  HIDWORD(v155) = *(v167 + 3);
                  v156 = v2;
                  v157 = v3;
                  v158 = v4;
                  v159 = v5;
                  v160 = v166;
                  v161 = v150;
                  outlined destroy of CallControlsService?(v154, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
                  return outlined destroy of CallControlsService?(v144, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                }
              }

              swift_once();
              goto LABEL_67;
            }

LABEL_77:
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v108 = v125;
            goto LABEL_65;
          }

          v90 = v153;
          v8 = &v170;
        }

        else
        {
          v147 = v176;
          v155 = 0;
          memset(v154, 0, sizeof(v154));
        }

        outlined destroy of CallControlsService?(v154, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        v102 = v145;
        goto LABEL_64;
      }

      __break(1u);
      goto LABEL_77;
    }

    while (1)
    {
      v60 = v55;
LABEL_15:
      _s15ConversationKit11ParticipantVWOcTm_17(*(v54 + 48) + *(v153 + 72) * (__clz(__rbit64(v58)) | (v60 << 6)), v26);
      _s15ConversationKit11ParticipantVWObTm_8(v26, v23);
      _s15ConversationKit11ParticipantVWOcTm_17(v23, v8);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        break;
      }

      v58 &= v58 - 1;
      _s15ConversationKit11ParticipantVWOhTm_18(v23, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v8, type metadata accessor for Participant.State);
      v55 = v60;
      if (!v58)
      {
        goto LABEL_12;
      }
    }

    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v62 = *(v61 + 48);
    v63 = v8 + *(v61 + 64);
    v64 = *(v63 + 1);
    v162 = *v63;
    v163 = v64;
    v65 = *(v63 + 3);
    v164 = *(v63 + 2);
    v165 = v65;
    outlined destroy of CallControlsService?(&v162, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    outlined destroy of Participant.MediaInfo(v8 + v62);
    v66 = type metadata accessor for Date();
    (*(*(v66 - 8) + 8))(v8, v66);
    v67 = v143;
    _s15ConversationKit11ParticipantVWOcTm_17(v23, v143);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v149);
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v67, v144, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.conversationController);
    v1 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    v27 = v52;
    if (os_log_type_enabled(v1, v69))
    {
      v70 = swift_slowAlloc();
      v140 = v70;
      v142 = swift_slowAlloc();
      v186 = v142;
      *v70 = v138;
      LODWORD(v141) = v69;
      v71 = v143;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v144, v143, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      specialized >> prefix<A>(_:)();
      v139 = v72;
      v73 = v1;
      v75 = v74;
      outlined destroy of CallControlsService?(v71, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v75, &v186);

      v1 = v140;
      *(v140 + 4) = v76;
      _os_log_impl(&dword_1BBC58000, v73, v141, "Found associated participant that matches remote video client %s", v1, 0xCu);
      v77 = v142;
      __swift_destroy_boxed_opaque_existential_1(v142);
      MEMORY[0x1BFB23DF0](v77, -1, -1);
      MEMORY[0x1BFB23DF0](v1, -1, -1);
    }

    else
    {
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v23, type metadata accessor for Participant);
    v31 = v147;
    v45 = v151;
    LODWORD(v142) = 0;
    v141 = v148;
    v34 = v146;
  }

  if (!__swift_getEnumTagSinglePayload(v144, 1, v149))
  {
    v78 = v137;
    _s15ConversationKit11ParticipantVWOcTm_17(v144, v137);
    v79 = Participant.avInfo.getter();
    v54 = v80;
    _s15ConversationKit11ParticipantVWOhTm_18(v78, type metadata accessor for Participant);
    if (v79 != 2 && (v142 & 1) == 0)
    {
      v1 = v134;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v144, v134, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      if (__swift_getEnumTagSinglePayload(v1, 1, v149) != 1)
      {
        goto LABEL_37;
      }

      outlined destroy of CallControlsService?(v1, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }
  }

  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  __swift_project_value_buffer(v81, static Logger.conversationController);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_1BBC58000, v82, v83, "No associated participants match remote video client", v84, 2u);
    MEMORY[0x1BFB23DF0](v84, -1, -1);
  }

  return outlined destroy of CallControlsService?(v144, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
}

void closure #1 in ConversationController.remoteVideoClient(_:videoDidSuspend:)(void *a1, int a2, uint64_t a3)
{
  v79 = a3;
  v80 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v64 - v5;
  v75 = type metadata accessor for Participant(0);
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v64 - v8;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.conversationKit;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  v73 = xmmword_1BC4BAA20;
  *(v11 + 16) = xmmword_1BC4BAA20;
  v81 = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
  v12 = a1;
  v13 = String.init<A>(reflecting:)();
  v15 = v14;
  v16 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 64) = v17;
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v18 = v9;
  v80 &= 1u;
  LOBYTE(v81) = v80;
  v19 = String.init<A>(reflecting:)();
  *(v11 + 96) = v16;
  *(v11 + 104) = v17;
  *(v11 + 72) = v19;
  *(v11 + 80) = v20;
  v21 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Did receive remoteMediaDidSuspend notification for: %@, didSuspend=%@", 69, 2, &dword_1BBC58000, v9, v21, v11);

  v22 = v79;
  v23 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v12, 0);
  if (v24)
  {
    v25 = static os_log_type_t.error.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BC4BA940;
    v81 = v12;
    v27 = v12;
    v28 = String.init<A>(reflecting:)();
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = v17;
    *(v26 + 32) = v28;
    *(v26 + 40) = v29;
    os_log(_:dso:log:type:_:)("Unable to determine participant whose video suspended %@", 56, 2, &dword_1BBC58000, v18, v25, v26);

    return;
  }

  v30 = v23;
  v71 = v10;
  v72 = v17;
  v31 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v32 = *(v22 + v31);
  if (v30 >= *(v32 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v47 = v63;
    goto LABEL_12;
  }

  v33 = v78;
  v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v35 = *(v77 + 72) * v30;
  _s15ConversationKit11ParticipantVWOcTm_17(v32 + v34 + v35, v78);
  if (Participant.avInfo.getter() == 2)
  {
    v36 = static os_log_type_t.error.getter();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BC4BA940;
    v38 = v76;
    _s15ConversationKit11ParticipantVWOcTm_17(v33, v76);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v75);
    specialized >> prefix<A>(_:)();
    v40 = v39;
    v42 = v41;
    outlined destroy of CallControlsService?(v38, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v43 = v72;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = v43;
    *(v37 + 32) = v40;
    *(v37 + 40) = v42;
    os_log(_:dso:log:type:_:)("Unable to determine A/V info for participant whose remote media did suspend %@", 78, 2, &dword_1BBC58000, v18, v36, v37);

    _s15ConversationKit11ParticipantVWOhTm_18(v33, type metadata accessor for Participant);
    return;
  }

  v70 = v34;
  v65 = v35;
  v77 = v18;
  Participant.videoInfo.getter();
  v69 = v31;
  memcpy(v85, v89, sizeof(v85));
  v68 = v86;
  v91 = v86;
  v44 = v80;
  if (!v86)
  {
    v44 = v88;
  }

  v66 = v44;
  v67 = v87;
  v92 = v87;
  v93 = v44;
  memcpy(v94, v89, sizeof(v94));
  Participant.screenInfo.getter();
  v45 = Participant.captionInfo.getter();
  Participant.copresenceInfo.getter(v90);
  v46 = v74;
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v90, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  outlined consume of Participant.CaptionInfo?(v45);
  outlined destroy of CallControlsService?(&v81, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  _s15ConversationKit11ParticipantVWOhTm_18(v33, type metadata accessor for Participant);
  _s15ConversationKit11ParticipantVWObTm_8(v46, v33);
  v47 = *(v22 + v69);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v48 = v72;
  v49 = v30 >= *(v47 + 16);
  v50 = v77;
  v51 = MEMORY[0x1E69E6158];
  if (v49)
  {
    __break(1u);
  }

  else
  {
    v52 = v78;
    outlined assign with copy of Participant.State(v78, v47 + v70 + v65);
    ConversationController.remoteParticipants.setter(v47, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v53);
    v54 = swift_allocObject();
    *(v54 + 16) = v73;
    LOBYTE(v81) = v80;
    v55 = String.init<A>(reflecting:)();
    *(v54 + 56) = v51;
    *(v54 + 64) = v48;
    *(v54 + 32) = v55;
    *(v54 + 40) = v56;
    v57 = v76;
    _s15ConversationKit11ParticipantVWOcTm_17(v52, v76);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v75);
    specialized >> prefix<A>(_:)();
    v59 = v58;
    v61 = v60;
    outlined destroy of CallControlsService?(v57, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v54 + 96) = v51;
    *(v54 + 104) = v48;
    *(v54 + 72) = v59;
    *(v54 + 80) = v61;
    v62 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updated participant's remoteMediaDidSuspend property to %@. %@", 62, 2, &dword_1BBC58000, v50, v62, v54);

    ConversationController.didUpdateVisibleParticipant(_:)(v52);
    _s15ConversationKit11ParticipantVWOhTm_18(v52, type metadata accessor for Participant);
    v81 = v68;
    v82 = v67;
    v83 = v66;
    memcpy(v84, v85, sizeof(v84));
    outlined destroy of CallControlsService?(&v81, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }
}

void closure #1 in ConversationController.remoteVideoClient(_:remoteVideoDidPause:)(void *a1, int a2, uint64_t a3)
{
  LODWORD(v82) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v68 - v6;
  v77 = type metadata accessor for Participant(0);
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v68 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.conversationKit;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  v75 = xmmword_1BC4BAA20;
  *(v12 + 16) = xmmword_1BC4BAA20;
  v83 = a1;
  v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
  v14 = a1;
  v80 = v13;
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  v18 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v19 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 64) = v19;
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v20 = v10;
  v21 = v82 & 1;
  LOBYTE(v83) = v82 & 1;
  v22 = String.init<A>(reflecting:)();
  *(v12 + 96) = v18;
  *(v12 + 104) = v19;
  *(v12 + 72) = v22;
  *(v12 + 80) = v23;
  v24 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Received videoDidPause notification for: %@ didPause=%@", 55, 2, &dword_1BBC58000, v20, v24, v12);

  v25 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v14, 0);
  if (v26)
  {
    v27 = static os_log_type_t.error.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BC4BA940;
    v83 = v14;
    v29 = v14;
    v30 = String.init<A>(reflecting:)();
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = v19;
    *(v28 + 32) = v30;
    *(v28 + 40) = v31;
    os_log(_:dso:log:type:_:)("Unable to determine participant whose video did pause: %@", 57, 2, &dword_1BBC58000, v20, v27, v28);

    return;
  }

  v32 = v25;
  v80 = v11;
  v82 = v19;
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v34 = *(a3 + v33);
  if (v32 >= *(v34 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v49 = v67;
    goto LABEL_12;
  }

  v74 = v21;
  v35 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v36 = *(v79 + 72) * v32;
  v37 = v81;
  _s15ConversationKit11ParticipantVWOcTm_17(v34 + v35 + v36, v81);
  if (Participant.avInfo.getter() == 2)
  {
    v38 = static os_log_type_t.error.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1BC4BA940;
    v40 = v78;
    _s15ConversationKit11ParticipantVWOcTm_17(v37, v78);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v77);
    specialized >> prefix<A>(_:)();
    v42 = v41;
    v44 = v43;
    outlined destroy of CallControlsService?(v40, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v45 = v82;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = v45;
    *(v39 + 32) = v42;
    *(v39 + 40) = v44;
    os_log(_:dso:log:type:_:)("Unable to determine A/V info for participant whose video did pause: %@", 70, 2, &dword_1BBC58000, v20, v38, v39);

    _s15ConversationKit11ParticipantVWOhTm_18(v37, type metadata accessor for Participant);
    return;
  }

  v68 = v35;
  v69 = v36;
  v79 = v20;
  v73 = a3;
  Participant.videoInfo.getter();
  v46 = v96;
  v90 = v97;
  v91 = v98;
  v92 = v99;
  v93 = v100;
  if (v94)
  {
    v46 = v74;
  }

  v72 = v94;
  v102 = v94;
  v70 = v46;
  v71 = v95;
  v103 = v95;
  v104 = v46;
  v108 = v100;
  v107 = v99;
  v106 = v98;
  v105 = v97;
  Participant.screenInfo.getter();
  v47 = Participant.captionInfo.getter();
  Participant.copresenceInfo.getter(v101);
  v48 = v76;
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v101, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  a3 = v73;
  outlined consume of Participant.CaptionInfo?(v47);
  outlined destroy of CallControlsService?(&v83, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  _s15ConversationKit11ParticipantVWOhTm_18(v37, type metadata accessor for Participant);
  _s15ConversationKit11ParticipantVWObTm_8(v48, v37);
  v49 = *(a3 + v33);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v50 = MEMORY[0x1E69E6158];
  v51 = v32 >= *(v49 + 16);
  v52 = v79;
  v53 = v82;
  if (v51)
  {
    __break(1u);
  }

  else
  {
    v54 = v81;
    outlined assign with copy of Participant.State(v81, v49 + v68 + v69);
    ConversationController.remoteParticipants.setter(v49, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v55);
    v56 = v54;
    v57 = swift_allocObject();
    *(v57 + 16) = v75;
    LOBYTE(v83) = v74;
    v58 = String.init<A>(reflecting:)();
    *(v57 + 56) = v50;
    *(v57 + 64) = v53;
    *(v57 + 32) = v58;
    *(v57 + 40) = v59;
    v60 = v78;
    _s15ConversationKit11ParticipantVWOcTm_17(v54, v78);
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v77);
    specialized >> prefix<A>(_:)();
    v62 = v61;
    v64 = v63;
    outlined destroy of CallControlsService?(v60, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v57 + 96) = v50;
    *(v57 + 104) = v53;
    *(v57 + 72) = v62;
    *(v57 + 80) = v64;
    v65 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updated participant's isVideoPaused property to %@. %@", 54, 2, &dword_1BBC58000, v52, v65, v57);

    ConversationController.didUpdateVisibleParticipant(_:)(v56);
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      v66 = a3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
      swift_beginAccess();
      ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v66, *(v66 + 8), *(v66 + 16), 2);
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v56, type metadata accessor for Participant);
    v83 = v72;
    v84 = v71;
    v85 = v70;
    v86 = v90;
    v87 = v91;
    v88 = v92;
    v89 = v93;
    outlined destroy of CallControlsService?(&v83, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }
}

void ConversationController.remoteVideoClient(_:networkQualityDidDegrade:info:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v9 + 120))())
  {
    goto LABEL_6;
  }

  if (v2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v28 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_109();
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v4 & 1;
    *(v10 + 32) = v2;
    *(v10 + 40) = v0;
    v29[4] = partial apply for closure #1 in ConversationController.remoteVideoClient(_:networkQualityDidDegrade:info:);
    v29[5] = v10;
    OUTLINED_FUNCTION_5_73();
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v29[2] = v11;
    v29[3] = &block_descriptor_208;
    v12 = _Block_copy(v29);

    v13 = v0;
    v14 = v6;
    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v15, v16);
    v17 = OUTLINED_FUNCTION_325_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v19, v20, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_78_8();
    OUTLINED_FUNCTION_260();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v21);
    _Block_release(v12);

    v22 = OUTLINED_FUNCTION_15_44();
    v23(v22);
    v24 = OUTLINED_FUNCTION_206();
    v25(v24);

LABEL_6:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_30_0();

  os_log(_:dso:log:type:_:)(v26);
}

void closure #1 in ConversationController.remoteVideoClient(_:networkQualityDidDegrade:info:)(__int128 *a1, char a2, uint64_t a3, uint64_t a4)
{
  v103 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = &v88 - v8;
  v99 = type metadata accessor for Participant(0);
  v9 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v88 - v12;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v104 = static OS_os_log.conversationKit;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  v96 = xmmword_1BC4BB980;
  *(v13 + 16) = xmmword_1BC4BB980;
  v105 = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
  v14 = a1;
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  v18 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v19 = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 64) = v19;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v20 = v19;
  v95 = a2 & 1;
  LOBYTE(v105) = a2 & 1;
  v21 = String.init<A>(reflecting:)();
  *(v13 + 96) = v18;
  *(v13 + 104) = v20;
  *(v13 + 72) = v21;
  *(v13 + 80) = v22;
  if (a3)
  {
    v105 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v23 = String.init<A>(reflecting:)();
  }

  else
  {
    v24 = 0xE300000000000000;
    v23 = 7104878;
  }

  *(v13 + 136) = v18;
  *(v13 + 144) = v20;
  *(v13 + 112) = v23;
  *(v13 + 120) = v24;
  v25 = static os_log_type_t.default.getter();
  v26 = v104;
  os_log(_:dso:log:type:_:)("Did receive networkQualityDidDegrade notification for: %@ didDegrade=%@, info=%@", 80, 2, &dword_1BBC58000, v104, v25, v13);

  v27 = v103;
  v28 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v14, 0);
  if (v29)
  {
    v30 = static os_log_type_t.error.getter();
    v31 = v26;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BC4BA940;
    v105 = v14;
    v33 = v14;
    v34 = String.init<A>(reflecting:)();
    *(v32 + 56) = v18;
    *(v32 + 64) = v20;
    *(v32 + 32) = v34;
    *(v32 + 40) = v35;
    os_log(_:dso:log:type:_:)("Unable to determine participant whose network quality degraded %@", 65, 2, &dword_1BBC58000, v31, v30, v32);

    return;
  }

  v94 = v20;
  v36 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  v97 = v28;
  swift_beginAccess();
  if ((v97 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v37 = *(v27 + v36);
    if (v97 < *(v37 + 16))
    {
      v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v39 = *(v9 + 72) * v97;
      v40 = v101;
      _s15ConversationKit11ParticipantVWOcTm_17(v37 + v38 + v39, v101);
      v41 = Participant.avInfo.getter();
      if (v41 == 2)
      {
        v42 = static os_log_type_t.error.getter();
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1BC4BA940;
        v44 = v100;
        _s15ConversationKit11ParticipantVWOcTm_17(v40, v100);
        __swift_storeEnumTagSinglePayload(v44, 0, 1, v99);
        specialized >> prefix<A>(_:)();
        v46 = v45;
        v48 = v47;
        outlined destroy of CallControlsService?(v44, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        v49 = v94;
        *(v43 + 56) = MEMORY[0x1E69E6158];
        *(v43 + 64) = v49;
        *(v43 + 32) = v46;
        *(v43 + 40) = v48;
        os_log(_:dso:log:type:_:)("Unable to determine A/V info for participant whose remote network quality did degrade: %@", 89, 2, &dword_1BBC58000, v104, v42, v43);

        _s15ConversationKit11ParticipantVWOhTm_18(v40, type metadata accessor for Participant);
        return;
      }

      v92 = v39;
      v93 = v41;
      v91 = v38;
      v14 = &v113;
      Participant.videoInfo.getter();
      v50 = v118;
      v116 = v119;
      v117 = v120;
      v51 = v121;
      v52 = v122;
      v113 = v123;
      v114 = v124;
      v115[0] = v125[0];
      *(v115 + 14) = *(v125 + 14);
      if (!v118 || (v122 & 1) == 0)
      {
        v63 = v118;
        v64 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("video does not degrade", 22, 2, &dword_1BBC58000, v104, v64, MEMORY[0x1E69E7CC0]);
        _s15ConversationKit11ParticipantVWOhTm_18(v40, type metadata accessor for Participant);
        v105 = v63;
        v106 = v119;
        v107 = v120;
        v108 = v51;
        v109 = v52;
        v110 = v123;
        v111 = v124;
        v112[0] = v125[0];
        v65 = *(v125 + 14);
LABEL_31:
        *(v112 + 14) = v65;
        outlined destroy of CallControlsService?(&v105, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        return;
      }

      v90 = v122;
      v89 = v118;
      if ((a2 & 1) == 0)
      {
        v62 = 1;
        v56 = v98;
        goto LABEL_28;
      }

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
      v56 = v98;
      v57 = v94;
      if (a3)
      {
        v58 = v53;
        v127 = v53;
        *v128 = v54;

        AnyHashable.init<A>(_:)();
        if (*(a3 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)();
          v60 = v59;
          outlined destroy of AnyHashable(&v105);
          if (v60)
          {
            *&v126[0] = v58;
            *(&v126[0] + 1) = v55;
            v61 = MEMORY[0x1E69E6158];
            AnyHashable.init<A>(_:)();
            specialized Dictionary.subscript.getter();
            outlined destroy of AnyHashable(&v105);
            if (*&v128[16])
            {
              if (swift_dynamicCast())
              {
                if (v105)
                {
                  v62 = 3;
                }

                else
                {
                  v62 = 2;
                }
              }

              else
              {
                v62 = 1;
              }
            }

            else
            {
              outlined destroy of CallControlsService?(&v127, &_sypSgMd, &_sypSgMR);
              v62 = 1;
            }

            v83 = swift_allocObject();
            *(v83 + 16) = xmmword_1BC4BA940;
            LOBYTE(v105) = v62;
            v84 = String.init<A>(reflecting:)();
            *(v83 + 56) = v61;
            *(v83 + 64) = v57;
            *(v83 + 32) = v84;
            *(v83 + 40) = v85;
            v86 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("video degraded state: %@", 24, 2, &dword_1BBC58000, v104, v86, v83);

            goto LABEL_27;
          }
        }

        else
        {
          outlined destroy of AnyHashable(&v105);
        }
      }

      v62 = 1;
LABEL_27:
      v50 = v89;
LABEL_28:
      *&v128[5] = v113;
      v127 = v50;
      *v128 = v116;
      v128[2] = v117;
      LODWORD(v20) = v62;
      v128[3] = v62;
      v128[4] = v90;
      *&v128[21] = v114;
      v129[0] = v115[0];
      *(v129 + 14) = *(v115 + 14);
      Participant.screenInfo.getter();
      v66 = Participant.captionInfo.getter();
      Participant.copresenceInfo.getter(v126);
      Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
      outlined destroy of CallControlsService?(v126, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
      v9 = v101;
      outlined consume of Participant.CaptionInfo?(v66);
      outlined destroy of CallControlsService?(&v105, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      _s15ConversationKit11ParticipantVWOhTm_18(v9, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWObTm_8(v56, v9);
      v67 = *(v103 + v36);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_37:
  specialized _ArrayBuffer._consumeAndCreateNew()();
  v67 = v87;
LABEL_29:
  if (v97 < *(v67 + 16))
  {
    outlined assign with copy of Participant.State(v9, v67 + v91 + v92);
    ConversationController.remoteParticipants.setter(v67, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v68);
    v69 = swift_allocObject();
    *(v69 + 16) = v96;
    LOBYTE(v105) = v95;
    v70 = String.init<A>(reflecting:)();
    v71 = MEMORY[0x1E69E6158];
    v72 = v94;
    *(v69 + 56) = MEMORY[0x1E69E6158];
    *(v69 + 64) = v72;
    *(v69 + 32) = v70;
    *(v69 + 40) = v73;
    LODWORD(v98) = v20;
    LOBYTE(v105) = v20;
    v74 = String.init<A>(reflecting:)();
    *(v69 + 96) = v71;
    *(v69 + 104) = v72;
    *(v69 + 72) = v74;
    *(v69 + 80) = v75;
    v76 = v100;
    _s15ConversationKit11ParticipantVWOcTm_17(v9, v100);
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v99);
    specialized >> prefix<A>(_:)();
    v78 = v77;
    v80 = v79;
    outlined destroy of CallControlsService?(v76, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v69 + 136) = v71;
    *(v69 + 144) = v72;
    *(v69 + 112) = v78;
    *(v69 + 120) = v80;
    v81 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("didDegrade: %@ update participant's videoDegradedState property to %@. %@", 73, 2, &dword_1BBC58000, v104, v81, v69);

    ConversationController.didUpdateVisibleParticipant(_:)(v9);
    _s15ConversationKit11ParticipantVWOhTm_18(v9, type metadata accessor for Participant);
    v82 = v14[1];
    v110 = *v14;
    v105 = v89;
    v106 = v116;
    v107 = v117;
    v108 = v98;
    v109 = v90;
    v111 = v82;
    v112[0] = v14[2];
    v65 = *(v14 + 46);
    goto LABEL_31;
  }

  __break(1u);
}

void ConversationController.remoteVideoClient(_:videoDidDegrade:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_0_1();
  if (((*(v11 + 120))() & 1) == 0)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v26 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_37_0();
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v4 & 1;
    *(v12 + 32) = v0;
    v27[4] = partial apply for closure #1 in ConversationController.remoteVideoClient(_:videoDidDegrade:);
    v27[5] = v12;
    OUTLINED_FUNCTION_5_73();
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v27[2] = v13;
    v27[3] = &block_descriptor_214;
    v14 = _Block_copy(v27);
    v15 = v6;
    v16 = v0;
    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v17, v18);
    v19 = OUTLINED_FUNCTION_325_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v21, v22, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_78_8();
    OUTLINED_FUNCTION_260();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v23);
    _Block_release(v14);

    v24 = OUTLINED_FUNCTION_309();
    v25(v24);
    (*(v9 + 8))(v2, v1);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.remoteVideoClient(_:videoDidDegrade:)(void *a1, int a2, uint64_t a3)
{
  v83 = a3;
  LODWORD(v82) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v72 - v5;
  v78 = type metadata accessor for Participant(0);
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v72 - v12;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BAA20;
  v85[0] = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
  v15 = a1;
  v16 = String.init<A>(reflecting:)();
  v18 = v17;
  v19 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v20 = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 64) = v20;
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v21 = v82 & 1;
  LOBYTE(v85[0]) = v82 & 1;
  v22 = String.init<A>(reflecting:)();
  *(v14 + 96) = v19;
  *(v14 + 104) = v20;
  v23 = v20;
  *(v14 + 72) = v22;
  *(v14 + 80) = v24;
  v25 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Did receive videoDidDegrade notification for: %@ didDegrade=%@", 62, 2, &dword_1BBC58000, v13, v25, v14);

  v26 = v83;
  v27 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v15, 0);
  if (v28)
  {
    v29 = static os_log_type_t.error.getter();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BC4BA940;
    v85[0] = v15;
    v31 = v15;
    v32 = String.init<A>(reflecting:)();
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = v20;
    *(v30 + 32) = v32;
    *(v30 + 40) = v33;
    os_log(_:dso:log:type:_:)("Unable to determine participant whose video degraded %@", 55, 2, &dword_1BBC58000, v13, v29, v30);

    return;
  }

  v34 = v27;
  v35 = v26;
  v73 = v15;
  v36 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v37 = *(v26 + v36);
  if (v34 >= *(v37 + 16))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v54 = v71;
LABEL_21:
    if (v34 >= *(v54 + 16))
    {
      __break(1u);
    }

    else
    {
      _s15ConversationKit11ParticipantVWOdTm_0(v15, v54 + v74 + v80);
      ConversationController.remoteParticipants.setter(v54, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v55);
      if (one-time initialization token for participant == -1)
      {
LABEL_23:
        v56 = type metadata accessor for Logger();
        __swift_project_value_buffer(v56, static Logger.participant);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v85[0] = v60;
          *v59 = 136315394;
          swift_beginAccess();
          if (v86[0])
          {
            v84 = BYTE3(v86[1]);
            v61 = String.init<A>(reflecting:)();
            v63 = v62;
          }

          else
          {
            v63 = 0xE300000000000000;
            v61 = 7104878;
          }

          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v85);

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          swift_beginAccess();
          v65 = v79;
          _s15ConversationKit11ParticipantVWOcTm_17(v35, v79);
          __swift_storeEnumTagSinglePayload(v65, 0, 1, v78);
          specialized >> prefix<A>(_:)();
          v67 = v66;
          v69 = v68;
          outlined destroy of CallControlsService?(v65, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v85);

          *(v59 + 14) = v70;
          _os_log_impl(&dword_1BBC58000, v57, v58, "Updated participant's videoDegradedState property to %s, %s", v59, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v60, -1, -1);
          MEMORY[0x1BFB23DF0](v59, -1, -1);
        }

        swift_beginAccess();
        ConversationController.didUpdateVisibleParticipant(_:)(v35);
        memcpy(v85, v86, 0x4BuLL);
        outlined destroy of CallControlsService?(v85, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        v47 = v35;
        goto LABEL_29;
      }
    }

    swift_once();
    goto LABEL_23;
  }

  v38 = v81;
  v74 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v80 = *(v80 + 72) * v34;
  _s15ConversationKit11ParticipantVWOcTm_17(v37 + v74 + v80, v81);
  if (Participant.avInfo.getter() != 2)
  {
    v72 = v39;
    Participant.videoInfo.getter();
    v48 = v86[0];
    if (v86[0])
    {
      BYTE4(v86[1]) = v21;
      if ((v82 & 1) == 0)
      {
        BYTE3(v86[1]) = 0;
        goto LABEL_20;
      }

      BYTE3(v86[1]) = 1;
      v49 = v73;
    }

    else
    {
      v49 = v73;
      if ((v82 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if ([v49 isNetworkDegraded] && v48)
    {
      if ([v49 isNetworkDegradedLocal])
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      BYTE3(v86[1]) = v50;
    }

LABEL_20:
    v82 = type metadata accessor for Participant;
    v51 = v75;
    _s15ConversationKit11ParticipantVWOcTm_17(v38, v75);
    memcpy(__dst, v86, 0x4BuLL);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(__dst, v85, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    Participant.screenInfo.getter();
    v52 = Participant.captionInfo.getter();
    Participant.copresenceInfo.getter(v87);
    v53 = v76;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(v87, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    outlined destroy of CallControlsService?(__dst, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    v35 = v81;
    outlined consume of Participant.CaptionInfo?(v52);
    outlined destroy of CallControlsService?(v85, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    _s15ConversationKit11ParticipantVWOhTm_18(v51, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOdTm_0(v53, v35);
    v15 = v77;
    _s15ConversationKit11ParticipantVWOcTm_17(v35, v77);
    v54 = *(v83 + v36);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  v40 = static os_log_type_t.error.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BC4BA940;
  v42 = v79;
  _s15ConversationKit11ParticipantVWOcTm_17(v38, v79);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v78);
  specialized >> prefix<A>(_:)();
  v44 = v43;
  v46 = v45;
  outlined destroy of CallControlsService?(v42, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v41 + 56) = MEMORY[0x1E69E6158];
  *(v41 + 64) = v23;
  *(v41 + 32) = v44;
  *(v41 + 40) = v46;
  os_log(_:dso:log:type:_:)("Unable to determine A/V info for participant whose remote media did degrade: %@", 79, 2, &dword_1BBC58000, v13, v40, v41);

  v47 = v38;
LABEL_29:
  _s15ConversationKit11ParticipantVWOhTm_18(v47, type metadata accessor for Participant);
}

void ConversationController.remoteVideoClient(_:videoDidSuspend:)()
{
  OUTLINED_FUNCTION_29();
  v26 = v3;
  v27 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_410_0();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_7();
  v28 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v11 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_37_0();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v6;
  *(v12 + 32) = v0;
  v29[4] = v26;
  v29[5] = v12;
  OUTLINED_FUNCTION_5_73();
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v29[2] = v13;
  v29[3] = v27;
  v14 = _Block_copy(v29);
  v15 = v2;
  v16 = v0;
  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v17, v18);
  v19 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v21, v22, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_78_8();
  OUTLINED_FUNCTION_260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v23);
  _Block_release(v14);

  v24 = OUTLINED_FUNCTION_15_44();
  v25(v24);
  (*(v9 + 8))(v1, v28);

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.remoteVideoClient(_:remoteMediaDidStall:)(void *a1, int a2, uint64_t a3)
{
  v79 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = v65 - v6;
  v75 = type metadata accessor for Participant(0);
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = v65 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.conversationKit;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  v73 = xmmword_1BC4BAA20;
  *(v12 + 16) = xmmword_1BC4BAA20;
  v80 = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
  v13 = a1;
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  v17 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v18 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 64) = v18;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v19 = v17;
  v20 = v18;
  v71 = a2;
  v72 = a2 & 1;
  LOBYTE(v80) = a2 & 1;
  v21 = String.init<A>(reflecting:)();
  *(v12 + 96) = v19;
  *(v12 + 104) = v20;
  *(v12 + 72) = v21;
  *(v12 + 80) = v22;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Did receive mediaDidStall notification for: %@ didStall=%@", 58, 2, &dword_1BBC58000, v10, v23, v12);

  v24 = v79;
  v25 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v13, 0);
  if (v26)
  {
    v27 = static os_log_type_t.error.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BC4BA940;
    v80 = v13;
    v29 = v13;
    v30 = String.init<A>(reflecting:)();
    *(v28 + 56) = v19;
    *(v28 + 64) = v20;
    *(v28 + 32) = v30;
    *(v28 + 40) = v31;
    os_log(_:dso:log:type:_:)("Unable to determine participant whose video stalled %@", 54, 2, &dword_1BBC58000, v10, v27, v28);

    return;
  }

  v32 = v25;
  v69 = v10;
  v70 = v11;
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v34 = *(v24 + v33);
  if (v32 >= *(v34 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v50 = v64;
    goto LABEL_12;
  }

  v35 = v78;
  v36 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v37 = *(v77 + 72) * v32;
  _s15ConversationKit11ParticipantVWOcTm_17(v34 + v36 + v37, v78);
  if (Participant.avInfo.getter() == 2)
  {
    v39 = static os_log_type_t.error.getter();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BC4BA940;
    v41 = v76;
    _s15ConversationKit11ParticipantVWOcTm_17(v35, v76);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v75);
    specialized >> prefix<A>(_:)();
    v43 = v42;
    v45 = v44;
    outlined destroy of CallControlsService?(v41, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = v20;
    *(v40 + 32) = v43;
    *(v40 + 40) = v45;
    os_log(_:dso:log:type:_:)("Unable to determine A/V info for participant whose remote media did stall: %@", 77, 2, &dword_1BBC58000, v69, v39, v40);

    _s15ConversationKit11ParticipantVWOhTm_18(v35, type metadata accessor for Participant);
    return;
  }

  v65[1] = v38;
  v66 = v36;
  v67 = v37;
  Participant.videoInfo.getter();
  v90 = v93;
  v91 = v94;
  v46 = v95;
  v87 = v96;
  v88 = v97;
  v89[0] = v98[0];
  *(v89 + 12) = *(v98 + 12);
  v77 = v92;
  v68 = v20;
  v47 = v79;
  if (v92)
  {
    v46 = ConversationController.isOneToOneModeEnabled.getter() & v71 & 1;
  }

  v100 = v77;
  v101 = v93;
  v102 = v94;
  v71 = v46;
  v103 = v46;
  v104 = v96;
  v105 = v97;
  v106[0] = v98[0];
  *(v106 + 12) = *(v98 + 12);
  Participant.screenInfo.getter();
  v48 = Participant.captionInfo.getter();
  Participant.copresenceInfo.getter(v99);
  v49 = v74;
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v99, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  outlined consume of Participant.CaptionInfo?(v48);
  outlined destroy of CallControlsService?(&v80, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  _s15ConversationKit11ParticipantVWOhTm_18(v35, type metadata accessor for Participant);
  _s15ConversationKit11ParticipantVWObTm_8(v49, v35);
  v50 = *(v47 + v33);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v51 = v68;
  if (v32 >= *(v50 + 16))
  {
    __break(1u);
  }

  else
  {
    v52 = v78;
    outlined assign with copy of Participant.State(v78, v50 + v66 + v67);
    ConversationController.remoteParticipants.setter(v50, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v53);
    v54 = swift_allocObject();
    *(v54 + 16) = v73;
    LOBYTE(v80) = v72;
    v55 = String.init<A>(reflecting:)();
    v56 = MEMORY[0x1E69E6158];
    *(v54 + 56) = MEMORY[0x1E69E6158];
    *(v54 + 64) = v51;
    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    v58 = v76;
    _s15ConversationKit11ParticipantVWOcTm_17(v52, v76);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v75);
    specialized >> prefix<A>(_:)();
    v60 = v59;
    v62 = v61;
    outlined destroy of CallControlsService?(v58, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v54 + 96) = v56;
    *(v54 + 104) = v51;
    *(v54 + 72) = v60;
    *(v54 + 80) = v62;
    v63 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updated participant's isVideoReconnecting property to %@. %@", 60, 2, &dword_1BBC58000, v69, v63, v54);

    ConversationController.didUpdateVisibleParticipant(_:)(v52);
    _s15ConversationKit11ParticipantVWOhTm_18(v52, type metadata accessor for Participant);
    v80 = v77;
    v81 = v90;
    v82 = v91;
    v83 = v71;
    v84 = v87;
    v85 = v88;
    v86[0] = v89[0];
    *(v86 + 12) = *(v89 + 12);
    outlined destroy of CallControlsService?(&v80, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }
}

void ConversationController.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:)()
{
  OUTLINED_FUNCTION_29();
  v40 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for shared);
  }

  if (Features.nudityDetectionEnabled.getter())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v39 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_194();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
    v10 = v6;
    OUTLINED_FUNCTION_338();
    v11 = String.init<A>(reflecting:)();
    v13 = v12;
    v14 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v15 = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 64) = v15;
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    v16 = OUTLINED_FUNCTION_2_125();
    outlined copy of Data._Representation(v16, v17);
    v18 = String.init<A>(reflecting:)();
    *(v9 + 96) = v14;
    *(v9 + 104) = v15;
    *(v9 + 72) = v18;
    *(v9 + 80) = v19;
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Received didDetectSensitiveContentWithAnalysis notification for: %@ analysis=%@", 79, 2, &dword_1BBC58000, v39, v20, v9);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v21 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_109();
    v22 = swift_allocObject();
    v22[2] = v40;
    v22[3] = v10;
    v22[4] = v4;
    v22[5] = v2;
    v41[4] = partial apply for closure #1 in ConversationController.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:);
    v41[5] = v22;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 1107296256;
    v41[2] = thunk for @escaping @callee_guaranteed () -> ();
    v41[3] = &block_descriptor_226;
    v23 = _Block_copy(v41);
    v24 = v10;
    v25 = OUTLINED_FUNCTION_2_125();
    outlined copy of Data._Representation(v25, v26);
    v27 = v40;
    static DispatchQoS.unspecified.getter();
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v28, v29);
    v30 = OUTLINED_FUNCTION_325_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v32, v33, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_78_8();
    OUTLINED_FUNCTION_260();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v34);
    _Block_release(v23);

    v35 = OUTLINED_FUNCTION_181();
    v36(v35);
    v37 = OUTLINED_FUNCTION_20_38();
    v38(v37);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Participant(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(a2, 0);
  if (v13)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.conversationKit;
    v15 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BA940;
    v33[1] = a2;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
    v17 = a2;
    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    os_log(_:dso:log:type:_:)("Unable to determine participant whose video was analyzed: %@", 60, 2, &dword_1BBC58000, v14, v15, v16);
  }

  else
  {
    v21 = v12;
    v22 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v23 = *&v22[a1];
      if (v21 < *(v23 + 16))
      {
        _s15ConversationKit11ParticipantVWOcTm_17(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v11);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCSensitivityAnalysis, 0x1E697B670);
        v32 = static SCSensitivityAnalysis.decoded(from:)(a3, a4);
        ConversationController.updateParticipant(for:withAnalysis:)();

        _s15ConversationKit11ParticipantVWOhTm_18(v11, type metadata accessor for Participant);
        return;
      }
    }

    __break(1u);
    swift_once();
    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.participant);
    v25 = v22;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v22;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1BBC58000, v26, v27, "Failed to decode sensitive content analysis: %@", v28, 0xCu);
      outlined destroy of CallControlsService?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1BFB23DF0](v29, -1, -1);
      MEMORY[0x1BFB23DF0](v28, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:wantsDispatchToMain:)(void *a1, void *a2, char *a3)
{
  v264 = type metadata accessor for UUID();
  v257 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v256 = &v250 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Participant(0);
  v282 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v271 = &v250 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v250 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v250 = &v250 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v255 = &v250 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v260 = &v250 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v261 = &v250 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v259 = &v250 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v262 = &v250 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v263 = &v250 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v272 = &v250 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v270 = &v250 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v269 = &v250 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v283 = &v250 - v33;
  if (one-time initialization token for participant != -1)
  {
    swift_once();
  }

  v284 = v7;
  v280 = a3;
  v251 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v251, static Logger.participant);
  v35 = a1;
  v36 = a2;
  v265 = v34;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v276 = v36;
  v252 = v11;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v299[0] = v41;
    *v40 = 136315394;
    v304[0] = v35;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCRemoteVideoClient, 0x1E69865D0);
    v42 = v35;
    v43 = String.init<A>(reflecting:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v299);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v304[0] = v36;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for VideoAttributes, 0x1E69865E8);
    v46 = v36;
    v47 = String.init<A>(reflecting:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v299);

    *(v40 + 14) = v49;
    _os_log_impl(&dword_1BBC58000, v37, v38, "Remote video attributes did change for video: %s; videoAttributes: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v41, -1, -1);
    MEMORY[0x1BFB23DF0](v40, -1, -1);
  }

  v50 = v283;
  v51 = v284;
  __swift_storeEnumTagSinglePayload(v283, 1, 1, v284);
  v315 = 0;
  memset(v304, 0, sizeof(v304));
  v305 = 1;
  bzero(v306, 0xB1uLL);
  v52 = v280;
  v53 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v35, 0);
  if (v54)
  {
    v55 = ConversationController.remoteParticipantIndex(for:useScreenProviders:)(v35, 1);
    if (v56)
    {
      outlined destroy of CallControlsService?(v304, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      memset(v299, 0, 75);
      outlined destroy of CallControlsService?(v299, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      v57 = v283;
      return outlined destroy of CallControlsService?(v57, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    }

    v71 = v55;
    v72 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    v73 = *&v52[v72];
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v74 = *(v282 + 80);
    v75 = *(v282 + 72);
    v264 = v71;
    v254 = v75;
    v76 = v73 + ((v74 + 32) & ~v74) + v75 * v71;
    v77 = v269;
    _s15ConversationKit11ParticipantVWOcTm_17(v76, v269);
    v78 = v284;
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v284);
    v50 = v283;
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v77, v283, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (__swift_getEnumTagSinglePayload(v50, 1, v78))
    {
      v282 = 0;
      LODWORD(v65) = 0;
      v273 = 0;
      v274 = 0;
      v277 = 0;
      v278 = 0;
      v79 = 0;
      v281 = 0;
      v80 = 0;
      v279 = 0;
      v67 = 0;
      v68 = 0.0;
      v69 = 0.0;
      v70 = 0.0;
    }

    else
    {
      v111 = v271;
      _s15ConversationKit11ParticipantVWOcTm_17(v50, v271);
      Participant.videoInfo.getter();
      v282 = v316;
      LODWORD(v65) = v319;
      LODWORD(v277) = v321;
      v79 = v322;
      v274 = v323;
      v281 = v324;
      v278 = v325 | ((v326 | (v327 << 16)) << 32);
      v279 = v317 | (v318 << 32);
      v67 = v328;
      v68 = v329;
      v69 = v330;
      v70 = v331;
      v80 = v332;
      LODWORD(v273) = v333;
      HIDWORD(v273) = v320;
      HIDWORD(v277) = v334;
      _s15ConversationKit11ParticipantVWOhTm_18(v111, type metadata accessor for Participant);
    }

    memset(v303, 0, 72);
    BYTE8(v303[4]) = v315;
    *(&v303[4] + 9) = 0;
    outlined destroy of CallControlsService?(v303, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    v315 = v80;
    v83 = v284;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v284);
    v266 = 0;
    v267 = 0;
    v268 = 0;
    if (!EnumTagSinglePayload)
    {
      v113 = v271;
      _s15ConversationKit11ParticipantVWOcTm_17(v50, v271);
      v266 = Participant.captionInfo.getter();
      v267 = v114;
      v268 = v115;
      _s15ConversationKit11ParticipantVWOhTm_18(v113, type metadata accessor for Participant);
    }

    if (__swift_getEnumTagSinglePayload(v50, 1, v83))
    {
      memset(v299, 0, 24);
      v299[3] = 1;
      bzero(&v299[4], 0xB1uLL);
    }

    else
    {
      v116 = v271;
      _s15ConversationKit11ParticipantVWOcTm_17(v50, v271);
      Participant.screenInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_18(v116, type metadata accessor for Participant);
    }

    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v299, v304, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    v117 = 1.0;
    v275 = v79;
    if (v305 == 1)
    {
      v118 = 1.0;
    }

    else
    {
      memcpy(v314, &v280[OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes], 0x61uLL);
      v119 = v276;
      v307 = VideoAttributeOrientation.deviceOrientation.getter([v276 orientation]);
      v118 = 1.0;
      if (v305 == 1)
      {
        goto LABEL_53;
      }

      v313 = VideoAttributes.scaleFactor.getter();
      v192 = v305;
      if (v305 >= 2)
      {
        v193 = v306[0];
        v194 = __swift_project_boxed_opaque_existential_1(v304, v305);
        v195 = *(v192 - 8);
        v196 = MEMORY[0x1EEE9AC00](v194);
        v198 = &v250 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v195 + 16))(v198, v196);
        (*(v193 + 64))(v335, v192, v193);
        v199 = *&v335[2];
        v117 = *&v335[3];
        (*(v195 + 8))(v198, v192);
        v83 = v284;
        if (v336)
        {
          v118 = 1.0;
        }

        else
        {
          v118 = v199;
        }

        if (v336)
        {
          v117 = 1.0;
        }

        v192 = v305;
      }

      if (v192 != 1)
      {
        v200 = v307;
        v201 = (v314[12] & 1) != 0 ? 0 : v314[9];
        v202 = v276;
        [v276 ratio];
        v204 = v203;
        [v202 ratio];
        v206 = ConversationController.remoteOrientationFor(aspectRatio:videoRotation:deviceFamily:)(v200, v201, v204, v205);
        if (v305 != 1)
        {
          v306[2] = v206;
        }
      }
    }

    v119 = v276;
LABEL_53:
    [v119 ratio];
    v58 = v264;
    if (v305 != 1)
    {
      if (v121 >= v120)
      {
        v122 = v120;
      }

      else
      {
        v122 = v121;
      }

      if (v120 > v121)
      {
        v121 = v120;
      }

      if (v122 == v120)
      {
        v123 = v118;
      }

      else
      {
        v123 = v117;
      }

      if (v123 == v118)
      {
        v124 = v117;
      }

      else
      {
        v124 = v118;
      }

      if (v121 == v120)
      {
        v125 = v118;
      }

      else
      {
        v125 = v117;
      }

      if (v122 == v121)
      {
        v125 = v124;
      }

      v308 = ceil(v122 * v123);
      v309 = ceil(v121 * v125);
      v310 = v309;
      v311 = v308;
      v312 = 0;
    }

    v253 = v74;
    v92 = v272;
    goto LABEL_72;
  }

  v58 = v53;
  v59 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v60 = *&v52[v59];
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  v253 = *(v282 + 80);
  v254 = *(v282 + 72);
  v61 = v60 + ((v253 + 32) & ~v253) + v254 * v58;
  v62 = v269;
  _s15ConversationKit11ParticipantVWOcTm_17(v61, v269);
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v51);
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v62, v50, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v63 = v52;
  if (__swift_getEnumTagSinglePayload(v50, 1, v51))
  {
    v64 = 0;
    LODWORD(v65) = 0;
    v273 = 0;
    v274 = 0;
    v277 = 0;
    v278 = 0;
    v275 = 0;
    v281 = 0;
    v66 = 0;
    v279 = 0;
    v67 = 0;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0.0;
  }

  else
  {
    v81 = v271;
    _s15ConversationKit11ParticipantVWOcTm_17(v50, v271);
    Participant.videoInfo.getter();
    v64 = v316;
    LODWORD(v65) = v319;
    HIDWORD(v273) = v320;
    LODWORD(v277) = v321;
    v274 = v323;
    v275 = v322;
    v281 = v324;
    v278 = v325 | ((v326 | (v327 << 16)) << 32);
    v279 = v317 | (v318 << 32);
    v67 = v328;
    v68 = v329;
    v69 = v330;
    v70 = v331;
    v66 = v332;
    LODWORD(v273) = v333;
    HIDWORD(v277) = v334;
    _s15ConversationKit11ParticipantVWOhTm_18(v81, type metadata accessor for Participant);
  }

  memset(v303, 0, 72);
  BYTE8(v303[4]) = v315;
  *(&v303[4] + 9) = 0;
  outlined destroy of CallControlsService?(v303, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  v315 = v66;
  v82 = v270;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v270, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v83 = v284;
  result = __swift_getEnumTagSinglePayload(v82, 1, v284);
  if (result == 1)
  {
    goto LABEL_170;
  }

  Participant.screenInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v82, type metadata accessor for Participant);
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v299, v304, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (__swift_getEnumTagSinglePayload(v50, 1, v83))
  {
    v266 = 0;
    v267 = 0;
    v268 = 0;
  }

  else
  {
    v85 = v271;
    _s15ConversationKit11ParticipantVWOcTm_17(v50, v271);
    v266 = Participant.captionInfo.getter();
    v267 = v86;
    v268 = v87;
    _s15ConversationKit11ParticipantVWOhTm_18(v85, type metadata accessor for Participant);
  }

  if (v64)
  {
    v88 = v63;
    v89 = v276;
    v90 = [v276 videoMirrored] ^ v65;
    LODWORD(v65) = [v89 videoMirrored];
    v274 = VideoAttributeOrientation.deviceOrientation.getter([v89 orientation]);
    v91 = v89;
    v63 = v88;
    v281 = VideoAttributeCamera.cameraPosition.getter([v91 camera]);
  }

  else
  {
    v90 = 0;
  }

  v92 = v272;
  if ([*&v63[OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags] afbEnabled])
  {
    if ([v276 frameOrientationReference] == 1)
    {
      v93 = HIDWORD(v277);
      if (v64)
      {
        v93 = 1;
      }
    }

    else
    {
      v93 = HIDWORD(v277);
      if (v64)
      {
        v93 = 0;
      }
    }

    HIDWORD(v277) = v93;
  }

  if (!v64)
  {
    v288 = 0;
    v286 = 0u;
    v287 = 0u;
    goto LABEL_35;
  }

  specialized Dictionary.subscript.getter();
  if (!*(&v287 + 1))
  {
LABEL_35:
    outlined destroy of CallControlsService?(&v286, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    goto LABEL_38;
  }

  outlined init with take of TapInteractionHandler(&v286, &v301);
  outlined init with copy of CallCenterProvider(&v301, v285);
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    HIDWORD(v258) = v65;
    v94 = v64;
    v95 = v58;
    v67 = 0;
    static AspectRatio.remoteAspectRatios(with:contentsRect:)(v285, v299, 1.0, 1.0);
    v96 = *v299;
    v68 = *&v299[1];
    v97 = v299[2];
    v69 = *&v299[3];
    v70 = *&v299[4];
    v98 = LOBYTE(v299[5]);
    __swift_destroy_boxed_opaque_existential_1(v285);
    __swift_destroy_boxed_opaque_existential_1(&v301);
    if ((v97 & 1) != 0 || v96 == v68)
    {
      v99 = 1;
      v68 = 0.0;
      v69 = 0.0;
      v70 = 0.0;
    }

    else
    {
      v99 = 0;
      if (v98)
      {
        v69 = v68;
        v70 = v96;
      }

      v67 = *&v96;
    }

    v58 = v95;
    v64 = v94;
    LODWORD(v65) = HIDWORD(v258);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v285);
    __swift_destroy_boxed_opaque_existential_1(&v301);
    v99 = 1;
    v67 = 0;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0.0;
  }

  v315 = v99;
LABEL_38:
  v282 = v64;
  if (v90)
  {
    result = __swift_getEnumTagSinglePayload(v50, 1, v83);
    if (result == 1)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v100 = v277;
    if (v64)
    {
      v100 = 1;
    }

    LODWORD(v277) = v100;
    v101 = v256;
    v102 = v257;
    v103 = v264;
    (*(v257 + 16))(v256, v50 + *(v83 + 20), v264);
    ConversationController.scheduleResetVideoInfo(for:after:)(v101, v104, v105, v106, v107, v108, v109, v110, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263);
    (*(v102 + 8))(v101, v103);
  }

LABEL_72:
  v264 = v58;
  v57 = v50;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v92, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  result = __swift_getEnumTagSinglePayload(v92, 1, v83);
  if (result == 1)
  {
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v126 = Participant.avInfo.getter();
  v270 = HIDWORD(v279);
  v271 = HIWORD(v278);
  v272 = HIDWORD(v278);
  if (v126 == 2)
  {
    _s15ConversationKit11ParticipantVWOhTm_18(v92, type metadata accessor for Participant);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      HIDWORD(v258) = v65;
      v131 = v130;
      v299[0] = v130;
      *v129 = 136315138;
      swift_beginAccess();
      v132 = v269;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v269, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      specialized >> prefix<A>(_:)();
      v65 = v133;
      v135 = v134;
      outlined destroy of CallControlsService?(v132, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v135, v299);
      v57 = v283;

      *(v129 + 4) = v136;
      _os_log_impl(&dword_1BBC58000, v127, v128, "Unable to determine A/V info for participant whose remote video attributes did change: %s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v131);
      v137 = v275;
      v138 = BYTE4(v273);
      LOBYTE(v65) = BYTE4(v258);
      MEMORY[0x1BFB23DF0](v131, -1, -1);
      MEMORY[0x1BFB23DF0](v129, -1, -1);
      outlined consume of Participant.CaptionInfo?(v266);
    }

    else
    {
      outlined consume of Participant.CaptionInfo?(v266);

      v138 = BYTE4(v273);
      v137 = v275;
    }

    outlined destroy of CallControlsService?(v304, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    v299[0] = v282;
    BYTE4(v299[1]) = v270;
    LODWORD(v299[1]) = v279;
    BYTE5(v299[1]) = v65;
    BYTE6(v299[1]) = v138;
    HIBYTE(v299[1]) = v277;
    v299[2] = v137;
    v299[3] = v274;
    LOBYTE(v299[4]) = v281;
    HIBYTE(v299[4]) = v271;
    *(&v299[4] + 5) = v272;
    *(&v299[4] + 1) = v278;
    v299[5] = v67;
    *&v299[6] = v68;
    *&v299[7] = v69;
    *&v299[8] = v70;
    LOBYTE(v299[9]) = v315;
    BYTE1(v299[9]) = v273;
    BYTE2(v299[9]) = BYTE4(v277);
    outlined destroy of CallControlsService?(v299, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    return outlined destroy of CallControlsService?(v57, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  }

  _s15ConversationKit11ParticipantVWOhTm_18(v92, type metadata accessor for Participant);
  if (v282)
  {
    v139 = v281;
  }

  else
  {
    v139 = 3;
  }

  v140 = v263;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v263, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  result = __swift_getEnumTagSinglePayload(v140, 1, v284);
  if (result == 1)
  {
    goto LABEL_171;
  }

  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v140, type metadata accessor for Participant);
  if (v337[0])
  {
    v141 = v338;
    outlined destroy of CallControlsService?(v337, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  }

  else
  {
    v141 = 3;
  }

  if (v139 == 3)
  {
    v142 = v141 == 3;
  }

  else
  {
    v142 = v141 != 3 && v141 == v139;
  }

  v143 = v142;
  v144 = v262;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v304, v303, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v144, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  result = __swift_getEnumTagSinglePayload(v144, 1, v284);
  if (result == 1)
  {
    goto LABEL_172;
  }

  Participant.screenInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v144, type metadata accessor for Participant);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v303, v299, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v301, v300, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  LODWORD(v263) = v143;
  if (v299[3] == 1)
  {
    outlined destroy of CallControlsService?(&v301, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of CallControlsService?(v303, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    if (v300[3] == 1)
    {
      outlined destroy of CallControlsService?(v299, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v145 = 1;
      goto LABEL_101;
    }

    goto LABEL_99;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v299, &v286, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (v300[3] == 1)
  {
    outlined destroy of CallControlsService?(&v301, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of CallControlsService?(v303, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of Participant.ScreenInfo(&v286);
LABEL_99:
    outlined destroy of CallControlsService?(v299, &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMR);
    v145 = 0;
    goto LABEL_101;
  }

  memcpy(v285, v300, 0xD1uLL);
  v145 = static Participant.ScreenInfo.== infix(_:_:)();
  outlined destroy of Participant.ScreenInfo(v285);
  outlined destroy of CallControlsService?(&v301, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined destroy of CallControlsService?(v303, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined destroy of Participant.ScreenInfo(&v286);
  outlined destroy of CallControlsService?(v299, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
LABEL_101:
  v146 = v261;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v50, v261, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v147 = v284;
  result = __swift_getEnumTagSinglePayload(v146, 1, v284);
  if (result == 1)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  LODWORD(v262) = v145;
  *&v286 = v282;
  DWORD2(v286) = v279;
  BYTE12(v286) = v270;
  BYTE13(v286) = v65;
  BYTE14(v286) = BYTE4(v273);
  HIBYTE(v286) = v277;
  *&v287 = v275;
  *(&v287 + 1) = v274;
  LOBYTE(v288) = v281;
  *(&v288 + 1) = v278;
  HIBYTE(v288) = v271;
  *(&v288 + 5) = v272;
  v289 = v67;
  v290 = v68;
  v291 = v69;
  v292 = v70;
  v293 = v315;
  v294 = v273;
  v295 = BYTE4(v277);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v304, v299, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  Participant.copresenceInfo.getter(v339);
  v148 = v259;
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v339, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  outlined destroy of CallControlsService?(v299, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  _s15ConversationKit11ParticipantVWOhTm_18(v146, type metadata accessor for Participant);
  __swift_storeEnumTagSinglePayload(v148, 0, 1, v147);
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v148, v57, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v149 = v260;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v57, v260, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  result = __swift_getEnumTagSinglePayload(v149, 1, v147);
  if (result == 1)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v150 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  v151 = v280;
  swift_beginAccess();
  v152 = *&v151[v150];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v154 = v264;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v152 = v249;
  }

  v155 = v275;
  if ((v154 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_167;
  }

  if (v154 >= *(v152 + 16))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  _s15ConversationKit11ParticipantVWOdTm_0(v149, v152 + ((v253 + 32) & ~v253) + v254 * v154);
  ConversationController.remoteParticipants.setter(v152, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v156);
  v285[0] = v282;
  BYTE4(v285[1]) = v270;
  LODWORD(v285[1]) = v279;
  HIDWORD(v258) = v65;
  BYTE5(v285[1]) = v65;
  LODWORD(v65) = HIDWORD(v273);
  BYTE6(v285[1]) = BYTE4(v273);
  HIBYTE(v285[1]) = v277;
  v285[2] = v155;
  v285[3] = v274;
  LOBYTE(v285[4]) = v281;
  HIBYTE(v285[4]) = v271;
  *(&v285[4] + 5) = v272;
  *(&v285[4] + 1) = v278;
  v285[5] = v67;
  *&v285[6] = v68;
  *&v285[7] = v69;
  *&v285[8] = v70;
  LOBYTE(v285[9]) = v315;
  BYTE1(v285[9]) = v273;
  BYTE2(v285[9]) = BYTE4(v277);
  memcpy(v298, &v285[1], sizeof(v298));
  if (!v282)
  {
    goto LABEL_112;
  }

  memcpy(v299, v285, 0x4BuLL);
  outlined init with copy of Participant.VideoInfo(v299, v303);
  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.info.getter();
  outlined destroy of CallControlsService?(v285, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v297[0] = v261;
    *v159 = 136315394;
    v301 = v282;
    memcpy(v302, v298, sizeof(v302));
    memcpy(v303, v285, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v303, v296);
    v160 = String.init<A>(reflecting:)();
    v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v161, v297);

    *(v159 + 4) = v162;
    *(v159 + 12) = 2080;
    swift_beginAccess();
    v163 = v269;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v57, v269, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    specialized >> prefix<A>(_:)();
    v164 = v155;
    v166 = v165;
    v168 = v167;
    v151 = v280;
    outlined destroy of CallControlsService?(v163, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v169 = v166;
    v170 = v283;
    v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v168, v297);
    v57 = v170;
    v155 = v164;

    *(v159 + 14) = v171;
    _os_log_impl(&dword_1BBC58000, v157, v158, "Updated participant's video attributes to %s. %s", v159, 0x16u);
    v172 = v261;
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v172, -1, -1);
    v173 = v159;
    v147 = v284;
    MEMORY[0x1BFB23DF0](v173, -1, -1);
  }

  v174 = v255;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v57, v174, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  result = __swift_getEnumTagSinglePayload(v174, 1, v147);
  if (result == 1)
  {
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  ConversationController.didUpdateVisibleParticipant(_:)(v174);
  _s15ConversationKit11ParticipantVWOhTm_18(v174, type metadata accessor for Participant);
LABEL_112:
  if (v262)
  {
    goto LABEL_135;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v304, v303, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (*(&v303[1] + 1) == 1)
  {
    outlined destroy of CallControlsService?(v303, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    goto LABEL_135;
  }

  v175 = v151;
  HIDWORD(v273) = v65;
  memcpy(v299, v303, 0xD1uLL);
  outlined init with copy of Participant.ScreenInfo(v299, v303);
  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    v262 = swift_slowAlloc();
    v296[0] = v262;
    *v178 = 136315394;
    outlined init with copy of Participant.ScreenInfo(v303, &v301);
    v179 = specialized >> prefix<A>(_:)(&v301);
    v181 = v180;
    outlined destroy of CallControlsService?(&v301, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of Participant.ScreenInfo(v303);
    v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v181, v296);

    *(v178 + 4) = v182;
    *(v178 + 12) = 2080;
    swift_beginAccess();
    v183 = v57;
    v184 = v269;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v183, v269, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    specialized >> prefix<A>(_:)();
    v186 = v185;
    v187 = v155;
    v189 = v188;
    v175 = v280;
    outlined destroy of CallControlsService?(v184, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v189, v296);
    v155 = v187;

    *(v178 + 14) = v190;
    _os_log_impl(&dword_1BBC58000, v176, v177, "Updated participant's screen attributes to %s. %s", v178, 0x16u);
    v191 = v262;
    swift_arrayDestroy();
    v147 = v284;
    MEMORY[0x1BFB23DF0](v191, -1, -1);
    MEMORY[0x1BFB23DF0](v178, -1, -1);
  }

  else
  {

    outlined destroy of Participant.ScreenInfo(v303);
  }

  v207 = v250;
  v208 = &v175[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo];
  swift_beginAccess();
  v209 = *v208;
  LODWORD(v65) = HIDWORD(v273);
  v151 = v175;
  if (!*v208)
  {
    outlined destroy of Participant.ScreenInfo(v299);
    v57 = v283;
LABEL_135:
    if (v282)
    {
      v211 = v263;
    }

    else
    {
      v211 = 1;
    }

    if (v211)
    {
      goto LABEL_144;
    }

    v212 = Logger.logObject.getter();
    v213 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v299[0] = v215;
      *v214 = 136315138;
      LOBYTE(v303[0]) = v281;
      v216 = String.init<A>(reflecting:)();
      HIDWORD(v273) = v65;
      v218 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v217, v299);
      LODWORD(v65) = HIDWORD(v273);

      *(v214 + 4) = v218;
      v147 = v284;
      _os_log_impl(&dword_1BBC58000, v212, v213, "Updated participant's video position to %s", v214, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v215);
      MEMORY[0x1BFB23DF0](v215, -1, -1);
      MEMORY[0x1BFB23DF0](v214, -1, -1);
    }

    v151 = v280;
    v219 = &v280[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange];
    swift_beginAccess();
    v220 = *v219;
    if (!*v219)
    {
LABEL_144:
      v275 = v155;
      v57 = v282;
      v223 = v276;
      [v276 ratio];
      v225 = v224;
      [v223 ratio];
      v147 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
      if (v225 != v226 && (v151[OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff] & 1) == 0 && v151[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff] == 1)
      {
        if (one-time initialization token for conversationController != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v251, static Logger.conversationController);
        v227 = v151;
        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          HIDWORD(v273) = v65;
          v231 = v230;
          v232 = swift_slowAlloc();
          v299[0] = v232;
          *v231 = 136315138;
          LOBYTE(v303[0]) = v227[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
          v233 = String.init<A>(reflecting:)();
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v234, v299);
          v147 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;

          *(v231 + 4) = v65;
          _os_log_impl(&dword_1BBC58000, v228, v229, "[%s] Resetting shouldShowLastFrameDuringUPlusOneHandoff on attributes change to non square", v231, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v232);
          MEMORY[0x1BFB23DF0](v232, -1, -1);
          LODWORD(v65) = HIDWORD(v273);
          MEMORY[0x1BFB23DF0](v231, -1, -1);
        }

        ConversationController.shouldShowLastFrameDuringUPlusOneHandoff.setter(0);
        v151 = v280;
      }

      if (v151[OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo] != 1 || (v235 = v276, [v276 ratio], v237 = v236, objc_msgSend(v235, sel_ratio), v237 == v238))
      {
        outlined consume of Participant.CaptionInfo?(v266);
        v239 = v283;
LABEL_155:
        outlined destroy of CallControlsService?(v304, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
        v299[0] = v57;
        BYTE4(v299[1]) = v270;
        LODWORD(v299[1]) = v279;
        BYTE5(v299[1]) = BYTE4(v258);
        BYTE6(v299[1]) = v65;
        HIBYTE(v299[1]) = v277;
        v299[2] = v275;
        v299[3] = v274;
        LOBYTE(v299[4]) = v281;
        HIBYTE(v299[4]) = v271;
        *(&v299[4] + 5) = v272;
        *(&v299[4] + 1) = v278;
        v299[5] = v67;
        *&v299[6] = v68;
        *&v299[7] = v69;
        *&v299[8] = v70;
        LOBYTE(v299[9]) = v315;
        BYTE1(v299[9]) = v273;
        BYTE2(v299[9]) = BYTE4(v277);
        outlined destroy of CallControlsService?(v299, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        v57 = v239;
        return outlined destroy of CallControlsService?(v57, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      if (one-time initialization token for conversationController == -1)
      {
LABEL_158:
        __swift_project_value_buffer(v251, static Logger.conversationController);
        v240 = v151;
        v241 = Logger.logObject.getter();
        v242 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v241, v242))
        {
          v243 = swift_slowAlloc();
          HIDWORD(v273) = v65;
          v244 = v243;
          v245 = swift_slowAlloc();
          v299[0] = v245;
          *v244 = 136315138;
          LOBYTE(v303[0]) = v240[v147[1]];
          v246 = String.init<A>(reflecting:)();
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v246, v247, v299);

          *(v244 + 4) = v65;
          _os_log_impl(&dword_1BBC58000, v241, v242, "[%s] Got non-square remote video frame, and was waiting before updating UI that oneToOne=1, updating now", v244, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v245);
          MEMORY[0x1BFB23DF0](v245, -1, -1);
          LOBYTE(v65) = BYTE4(v273);
          MEMORY[0x1BFB23DF0](v244, -1, -1);
        }

        v239 = v283;
        ConversationController.isOneToOneCallCenterUpdateWaitingForNonSquareVideo.setter(0);
        ConversationController.lookupActiveConversation()();
        if (*(&v303[1] + 1))
        {
          outlined init with take of TapInteractionHandler(v303, v299);
          v248 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
          swift_beginAccess();
          outlined init with copy of CallCenterProvider(&v240[v248], v303);
          ConversationController.callCenter(_:oneToOneModeChangedFor:)();
          outlined consume of Participant.CaptionInfo?(v266);
          __swift_destroy_boxed_opaque_existential_1(v303);
          __swift_destroy_boxed_opaque_existential_1(v299);
        }

        else
        {
          outlined consume of Participant.CaptionInfo?(v266);
          outlined destroy of CallControlsService?(v303, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        }

        goto LABEL_155;
      }

LABEL_168:
      swift_once();
      goto LABEL_158;
    }

    v221 = *(v219 + 1);
    swift_beginAccess();
    v222 = v252;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v57, v252, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    result = __swift_getEnumTagSinglePayload(v222, 1, v147);
    if (result != 1)
    {

      v220(v222, v281);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v220, v221);
      _s15ConversationKit11ParticipantVWOhTm_18(v222, type metadata accessor for Participant);
      goto LABEL_144;
    }

    goto LABEL_177;
  }

  v210 = *(v208 + 1);
  v57 = v283;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v57, v207, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  result = __swift_getEnumTagSinglePayload(v207, 1, v147);
  if (result != 1)
  {

    v209(v207, v264);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v209, v210);
    outlined destroy of Participant.ScreenInfo(v299);
    _s15ConversationKit11ParticipantVWOhTm_18(v207, type metadata accessor for Participant);
    goto LABEL_135;
  }

LABEL_178:
  __break(1u);
  return result;
}