uint64_t closure #2 in MediaPlaybackController.startMediaPlayback()(__n128 a1)
{
  lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
  v2 = swift_allocError();
  *v3 = 4;
  swift_willThrow();
  *(*(v1 + 208) + 160) = 0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.mediaPlayback);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Media Playback failed: %@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v12 = *(v1 + 208);

  v13 = *(v12 + 184);
  if (v13)
  {
    v14 = v13;
    v15 = [v14 analyticsEventBuilder];
    [v15 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t closure #2 in MediaPlaybackController.startMediaPlayback()(uint64_t a1)
{
  v3 = v1[38];
  v2 = v1[39];
  v4 = v1[37];
  swift_willThrow();

  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[39];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Failed to set Watch as MPAV active route. Now Playing View may show incorrectly. error=%@", v10, 0xCu);
    outlined destroy of NSObject?(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14();
}

uint64_t @objc closure #1 in MediaPlaybackController.startMediaPlayback()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in MediaPlaybackController.startMediaPlayback();

  return MediaPlaybackController.startMediaPlayback()();
}

void MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(char a1)
{
  v2 = v1;
  v47[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.mediaPlayback);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E6976726573626FLL;
    }

    else
    {
      v9 = 0x73626F20706F7473;
    }

    if (a1)
    {
      v10 = 0xE900000000000067;
    }

    else
    {
      v10 = 0xEE00676E69767265;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v47);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "%s pickableRoutesChanged notifications", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v14 = v13;
  if (a1)
  {
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMd, &_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20B423A90;
      v16 = *MEMORY[0x277D26C68];
      *(v15 + 32) = *MEMORY[0x277D26C68];
      type metadata accessor for NSNotificationName(0);
      v17 = v16;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v19 = *MEMORY[0x277D26DD0];
      v47[0] = 0;
      v20 = [v14 setAttribute:isa forKey:v19 error:v47];

      v21 = v47[0];
      if (v20)
      {
        v22 = objc_opt_self();
        v23 = v21;
        v24 = [v22 defaultCenter];
        v25 = [v12 sharedInstance];
        [v24 addObserver:v2 selector:sel_handlePickableRoutesChangedNotification_ name:v17 object:v25];
LABEL_18:

        return;
      }

      v33 = v47[0];
      v34 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v35 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v34;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        v42 = "Could not subscribe to pickable routes did change. error=%@";
LABEL_23:
        _os_log_impl(&dword_20AEA4000, v36, v37, v42, v38, 0xCu);
        outlined destroy of NSObject?(v39);
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v38, -1, -1);

        return;
      }

LABEL_24:

      return;
    }

    __break(1u);
  }

  else if (v13)
  {
    v26 = Array._bridgeToObjectiveC()().super.isa;
    v27 = *MEMORY[0x277D26DD0];
    v47[0] = 0;
    v28 = [v14 setAttribute:v26 forKey:v27 error:v47];

    v29 = v47[0];
    if (v28)
    {
      v30 = objc_opt_self();
      v31 = v29;
      v24 = [v30 defaultCenter];
      v32 = *MEMORY[0x277D26C68];
      v25 = [v12 sharedInstance];
      [v24 removeObserver:v2 name:v32 object:v25];
      goto LABEL_18;
    }

    v43 = v47[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v45 = v34;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v46;
      *v39 = v46;
      v42 = "Could not unsubscribe from pickable routes did change. error=%@";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:);

  return MediaPlaybackController.pickableRoutesChanged()();
}

uint64_t @objc MediaPlaybackController.handleAnnouncerWillStart(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t MediaPlaybackController.pickableRoutesChanged()()
{
  *(v1 + 312) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackController.pickableRoutesChanged(), v0, 0);
}

{
  v96 = v0;
  v2 = v0[39];
  if ((*(v2 + 179) & 1) == 0)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.mediaPlayback);

    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = *(v2 + 179);

      _os_log_impl(&dword_20AEA4000, v4, v9, "Ignoring pickableRoutesChanged due to shouldPlayWhenRouteAvailable=%{BOOL}d", v10, 8u);
      v11 = v10;
LABEL_80:
      MEMORY[0x20F2E9420](v11, -1, -1);
      goto LABEL_81;
    }

    goto LABEL_81;
  }

  if (*(v2 + 146) == 1)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_81;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Ignoring pickableRoutesChanged due to workout voice feedback announcer is active";
    goto LABEL_79;
  }

  specialized static WOAVRoute.pickableRoutes(for:)(0x69562F6F69647541, 0xEB000000006F6564);
  v13 = v12;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v0[40] = __swift_project_value_buffer(v14, static WOLog.mediaPlayback);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v95 = v18;
    *v17 = 136315138;
    v19 = type metadata accessor for WOAVRoute();
    v20 = MEMORY[0x20F2E6F70](v13, v19);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v95);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20AEA4000, v15, v16, "PickableRoutesChanged pickableRoutes=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x20F2E9420](v18, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  if (v13 >> 62)
  {
    v23 = __CocoaSet.count.getter();
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

  v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_77:

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "PickableRoutesChanged but no eligible audio route, not starting media playback";
LABEL_79:
      _os_log_impl(&dword_20AEA4000, v4, v5, v7, v6, 2u);
      v11 = v6;
      goto LABEL_80;
    }

LABEL_81:

    v90 = v0[1];

    return v90();
  }

LABEL_17:
  v24 = 0;
  v93 = v13 & 0xFFFFFFFFFFFFFF8;
  v94 = v13 & 0xC000000000000001;
  v91 = v23;
  v92 = v13;
  while (1)
  {
    if (v94)
    {
      v25 = MEMORY[0x20F2E7A20](v24, v13);
    }

    else
    {
      if (v24 >= *(v93 + 16))
      {
        goto LABEL_74;
      }

      v25 = *(v13 + 8 * v24 + 32);
    }

    v1 = v25;
    v0[41] = v25;
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v27 = OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary;
    v28 = *&v25[OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v28 + 16))
    {
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      v33 = v32;

      if (v33)
      {
        outlined init with copy of Any(*(v28 + 56) + 32 * v31, (v0 + 2));
        if ((swift_dynamicCast() & 1) != 0 && v0[32] == 0x4274657364616548 && v0[33] == 0xE900000000000054)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      v35 = *&v1[v27];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v35 + 16))
      {

LABEL_37:
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v41 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        goto LABEL_37;
      }

      outlined init with copy of Any(*(v35 + 56) + 32 * v38, (v0 + 6));
      if ((swift_dynamicCast() & 1) == 0 || v0[30] != 0x6E6F687064616548 || v0[31] != 0xEC00000054427365)
      {
        goto LABEL_37;
      }

LABEL_35:
    }

LABEL_38:
    v42 = *&v1[v27];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v42 + 16))
    {
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
      v47 = v46;

      if (v47)
      {
        outlined init with copy of Any(*(v42 + 56) + 32 * v45, (v0 + 10));
        _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v48 = v0[38];
          v49 = [v48 BOOLValue];

          if (v49)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else
    {
    }

    v50 = *&v1[v27];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v50 + 16))
    {
      goto LABEL_61;
    }

    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v50 + 56) + 32 * v53, (v0 + 14));
    _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_62;
    }

    v56 = v0[34];
    v57 = [v56 BOOLValue];

    if ((v57 & 1) == 0)
    {
      goto LABEL_62;
    }

    v58 = *&v1[v27];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v58 + 16))
    {
      goto LABEL_67;
    }

    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v60);
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      goto LABEL_68;
    }

    outlined init with copy of Any(*(v58 + 56) + 32 * v61, (v0 + 18));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v64 = v0[35];
    v65 = [v64 BOOLValue];

    if ((v65 & 1) == 0)
    {
      goto LABEL_68;
    }

    v66 = *&v1[v27];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v66 + 16))
    {
LABEL_67:

      goto LABEL_68;
    }

    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v68);
    v71 = v70;

    if ((v71 & 1) == 0)
    {
      goto LABEL_68;
    }

    outlined init with copy of Any(*(v66 + 56) + 32 * v69, (v0 + 22));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v72 = v0[36];
    v73 = [v72 BOOLValue];

    if ((v73 & 1) == 0)
    {
      goto LABEL_68;
    }

    v74 = *&v1[v27];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v74 + 16))
    {
LABEL_61:

LABEL_62:

      v13 = v92;
      goto LABEL_63;
    }

    v77 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76);
    v79 = v78;

    if ((v79 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v74 + 56) + 32 * v77, (v0 + 26));
    v13 = v92;
    if (swift_dynamicCast())
    {
      v80 = v0[37];
      v81 = [v80 BOOLValue];

      if (v81)
      {
        goto LABEL_68;
      }
    }

LABEL_63:
    ++v24;
    if (v26 == v91)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_68:

  v82 = v1;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138412290;
    *(v85 + 4) = v82;
    *v86 = v82;
    v87 = v82;
    _os_log_impl(&dword_20AEA4000, v83, v84, "Starting media playback as pickableRoutesChanged with eligible audio route=%@", v85, 0xCu);
    outlined destroy of NSObject?(v86);
    MEMORY[0x20F2E9420](v86, -1, -1);
    MEMORY[0x20F2E9420](v85, -1, -1);
  }

  v88 = swift_task_alloc();
  v0[42] = v88;
  *v88 = v0;
  v88[1] = MediaPlaybackController.pickableRoutesChanged();

  return MediaPlaybackController.startMediaPlayback()();
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 312);
  if (v0)
  {
    v4 = MediaPlaybackController.pickableRoutesChanged();
  }

  else
  {
    v4 = MediaPlaybackController.pickableRoutesChanged();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[43];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  v7 = v0[41];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v3, v4, "StartMediaPlayback failed with error=%@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t MediaPlaybackController.pickableRoutesChanged()(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 328);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "StartMediaPlayback completed successfully", v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t MediaPlaybackController.ppt_setupMediaConfiguration(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](MediaPlaybackController.ppt_setupMediaConfiguration(for:), v1, 0);
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](MediaPlaybackController.ppt_setupMediaConfiguration(for:), 0, 0);
  }
}

uint64_t MediaPlaybackController.ppt_setupMediaConfiguration(for:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + 136);
  *(v1 + 136) = v2;
  v4 = v2;

  type metadata accessor for WorkoutPlaylistMigration();
  swift_initStaticObject();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = MediaPlaybackController.ppt_setupMediaConfiguration(for:);

  return WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()();
}

{
  super_class = v0[3].super_class;
  v2 = v0[2].super_class;
  v3 = type metadata accessor for MediaPlaybackConfigurationItem(0);
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v4[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  ObservationRegistrar.init()();
  v4[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = 1;
  v4[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = 0;
  v6 = *&v4[v5];
  v7 = super_class;

  *&v4[v5] = super_class;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v0[4].receiver = objc_msgSendSuper2(v0 + 1, sel_init);

  return MEMORY[0x2822009F8](MediaPlaybackController.ppt_setupMediaConfiguration(for:), v2, 0);
}

{
  v1 = v0[5];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:)(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:);

  return MediaPlaybackController.ppt_setupMediaConfiguration(for:)(v5);
}

uint64_t @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:)()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

double MediaPlaybackController.setActivityType(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = a1;

  v13 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a3, v12);

  return result;
}

uint64_t closure #1 in MediaPlaybackController.setActiveWorkout(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackController.setActiveWorkout(_:), a4, 0);
}

uint64_t closure #1 in MediaPlaybackController.setActiveWorkout(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 184);
  *(v2 + 184) = v1;
  v4 = v1;

  v5 = v0[1];

  return v5();
}

double @objc MediaPlaybackController.setActivityType(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a3;
  v14 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a5, v13);

  return result;
}

uint64_t MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics()()
{
  *(v1 + 112) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics(), v0, 0);
}

{
  v1 = v0[14];
  v2 = v1[23];
  v0[15] = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v1[16];
  v0[16] = v3;
  v4 = v2;
  if (v3)
  {

    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics();
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v5, v3, v6);
  }

  v7 = v1[15];
  v8 = v4;
  v9 = v7;
  v10 = [v8 analyticsEventBuilder];
  v11 = v10;
  if (!v7)
  {
    v16 = v0[15];
    [v10 recordWorkoutMediaEnabled_];
LABEL_14:

    goto LABEL_15;
  }

  swift_getKeyPath();
  v0[11] = v9;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  [v11 recordWorkoutMediaEnabled_];

  swift_getKeyPath();
  v0[12] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  if (v9[v13] != 1)
  {
    swift_getKeyPath();
    v0[13] = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v18 = *&v9[v17];
    v19 = v0[15];
    if (!v18)
    {

      v11 = v19;
      goto LABEL_15;
    }

    v11 = v18;
    v16 = [v19 analyticsEventBuilder];
    v20 = [v11 bundleID];
    if (!v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = MEMORY[0x20F2E6C00](v21);
    }

    v22 = v0[15];
    [v16 recordWorkoutMediaSource_];

    goto LABEL_14;
  }

  v14 = v0[15];
  v11 = [v14 analyticsEventBuilder];
  v15 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
  [v11 recordWorkoutMediaSource_];

LABEL_15:
LABEL_16:
  v23 = v0[1];

  return v23();
}

{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics(), v1, 0);
}

{
  v1 = v0[15];
  v2 = *(v0[14] + 120);
  v3 = v2;
  v4 = [v1 analyticsEventBuilder];
  v5 = v4;
  if (!v2)
  {
    v10 = v0[15];
    [v4 recordWorkoutMediaEnabled_];
LABEL_9:

    goto LABEL_10;
  }

  swift_getKeyPath();
  v0[11] = v3;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  [v5 recordWorkoutMediaEnabled_];

  swift_getKeyPath();
  v0[12] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  if (v3[v7] == 1)
  {
    v8 = v0[15];
    v5 = [v8 analyticsEventBuilder];
    v9 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
    [v5 recordWorkoutMediaSource_];

    goto LABEL_10;
  }

  swift_getKeyPath();
  v0[13] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v12 = *&v3[v11];
  v13 = v0[15];
  if (v12)
  {
    v5 = v12;
    v10 = [v13 analyticsEventBuilder];
    v14 = [v5 bundleID];
    if (!v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = MEMORY[0x20F2E6C00](v15);
    }

    v16 = v0[15];
    [v10 recordWorkoutMediaSource_];

    goto LABEL_9;
  }

  v5 = v13;
LABEL_10:

  v17 = v0[1];

  return v17();
}

unint64_t MediaPlaybackError.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000010;
  if (a1 <= 4u)
  {
    v7 = 0xD00000000000001CLL;
    v8 = 0xD000000000000017;
    if (a1 != 3)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v3 = 0xD000000000000012;
    if (a1 != 9)
    {
      v3 = 0xD000000000000017;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001BLL;
    if (a1 == 6)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 == 5)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = v4;
    }

    if (a1 <= 7u)
    {
      return v5;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaPlaybackError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaPlaybackError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError;
  if (!lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackError and conformance MediaPlaybackError);
  }

  return result;
}

uint64_t partial apply for closure #1 in MediaPlaybackController.setActivityType(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MediaPlaybackController.setActivityType(_:);

  return closure #1 in MediaPlaybackController.setActivityType(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in MediaPlaybackController.prepareMediaPlayback()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in MediaPlaybackController.prepareMediaPlayback();

  return closure #2 in MediaPlaybackController.prepareMediaPlayback()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in MediaPlaybackController.startMediaPlayback()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in MediaPlaybackController.startMediaPlayback();

  return closure #1 in MediaPlaybackController.startMediaPlayback()();
}

uint64_t partial apply for closure #2 in MediaPlaybackController.startMediaPlayback()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in MediaPlaybackController.startMediaPlayback();

  return closure #2 in MediaPlaybackController.startMediaPlayback()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in MediaPlaybackController.setActiveWorkout(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MediaPlaybackController.setActiveWorkout(_:);

  return closure #1 in MediaPlaybackController.setActiveWorkout(_:)(a1, v4, v5, v7, v6);
}

uint64_t dispatch thunk of MediaPlaybackController.stopMediaPlayback()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of MediaPlaybackController.stopMediaPlayback();

  return v5();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of MediaPlaybackController.resetPlaybackController()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x230);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of MediaPlaybackController.resetPlaybackController();

  return v5();
}

uint64_t dispatch thunk of MediaPlaybackController.prepareMediaPlayback()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x258);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of MediaPlaybackController.prepareMediaPlayback();

  return v5();
}

uint64_t dispatch thunk of MediaPlaybackController.startMediaPlayback()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x260);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of MediaPlaybackController.startMediaPlayback();

  return v5();
}

uint64_t dispatch thunk of MediaPlaybackController.ppt_setupMediaConfiguration(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x298);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MediaPlaybackController.ppt_setupMediaConfiguration(for:);

  return v7(a1);
}

uint64_t getEnumTagSinglePayload for MediaPlaybackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlaybackError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _sSo17MPCPlayerResponseCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #1 in MediaPlaybackController.setActiveWorkout(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in MediaPlaybackController.setActiveWorkout(_:)partial apply;

  return closure #1 in MediaPlaybackController.setActiveWorkout(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:);

  return @objc closure #1 in MediaPlaybackController.ppt_setupMediaConfiguration(for:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:);

  return closure #1 in MediaPlaybackController.handlePickableRoutesChangedNotification(_:)();
}

uint64_t partial apply for closure #1 in MediaPlaybackController.handleAnnouncerDidStop(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MediaPlaybackController.handleAnnouncerDidStop(_:);

  return closure #1 in MediaPlaybackController.handleAnnouncerDidStop(_:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in MediaPlaybackController.handleAnnouncerWillStart(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MediaPlaybackController.handleAnnouncerWillStart(_:);

  return closure #1 in MediaPlaybackController.handleAnnouncerWillStart(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.startMediaPlayback()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in MediaPlaybackController.startMediaPlayback();

  return @objc closure #1 in MediaPlaybackController.startMediaPlayback()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_154()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTA_154TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_159(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeAgH_ytIeAgHr_TRTA_159TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.prepareMediaPlayback()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in MediaPlaybackController.prepareMediaPlayback();

  return @objc closure #1 in MediaPlaybackController.prepareMediaPlayback()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_169()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTA_169TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeAgH_ytIeAgHr_TRTA_174TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);

  return @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(v2, v3, v4);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sIeghH_IeAgH_TRTA_184()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTA_184TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_189(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeAgH_ytIeAgHr_TRTA_189TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.resetPlaybackController()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in MediaPlaybackController.resetPlaybackController();

  return @objc closure #1 in MediaPlaybackController.resetPlaybackController()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_202()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTA_202TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_207(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeAgH_ytIeAgHr_TRTA_207TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t closure #1 in MediaPlaybackController.setActivityType(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in MediaPlaybackController.setActivityType(_:)partial apply;

  return closure #1 in MediaPlaybackController.setActivityType(_:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_148Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in MediaPlaybackController.stopMediaPlayback()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in MediaPlaybackController.stopMediaPlayback();

  return @objc closure #1 in MediaPlaybackController.stopMediaPlayback()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_222()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTA_222TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_126Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_227(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeAgH_ytIeAgHr_TRTA_227TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t specialized static SmartRoutingStatus.fetch()()
{
  return MEMORY[0x2822009F8](specialized static SmartRoutingStatus.fetch(), 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static AudioRoutingControlManager.shared;
  *(v0 + 16) = static AudioRoutingControlManager.shared;

  return MEMORY[0x2822009F8](specialized static SmartRoutingStatus.fetch(), v1, 0);
}

{
  v1 = v0[2];
  if (*(v1 + 120))
  {
    v2 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
    v3 = swift_task_alloc();
    v0[5] = v3;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v3 = v0;
    v3[1] = specialized static SmartRoutingStatus.fetch();
    v5 = v0[2];

    return MEMORY[0x2822007B8](v0 + 6, v1, v2, 0xD000000000000026, 0x800000020B455B10, _s11WorkoutCore26AudioRoutingControlManagerC36areHeadphonesNearbyAndEligibleToPlaySo07AASmartd6DeviceiJ15StreamingStatusVyYaKFyScCyAFs5NeverOGXEfU_TA_1, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = specialized static SmartRoutingStatus.fetch();

    return AudioRoutingControlManager.activate()();
  }
}

{
  v2 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = specialized static SmartRoutingStatus.fetch();
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 16);
    v3 = specialized static SmartRoutingStatus.fetch();
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](specialized static SmartRoutingStatus.fetch(), v1, 0);
}

{
  return (*(v0 + 8))(((*(v0 + 48) & 0xFE) == 2) | ((*(v0 + 48) == 1) << 8));
}

{
  v1 = *(v0 + 16);
  v2 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v3 = v0;
  v3[1] = specialized static SmartRoutingStatus.fetch();
  v5 = *(v0 + 16);

  return MEMORY[0x2822007B8](v0 + 48, v1, v2, 0xD000000000000026, 0x800000020B455B10, _s11WorkoutCore26AudioRoutingControlManagerC36areHeadphonesNearbyAndEligibleToPlaySo07AASmartd6DeviceiJ15StreamingStatusVyYaKFyScCyAFs5NeverOGXEfU_TA_1, v5, v4);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Failed to fetch smart routing status:%@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(2);
}

uint64_t lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t partial apply for closure #1 in MediaPlaybackController.updateActivityType(to:)(uint64_t a1)
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
  v11[1] = partial apply for closure #1 in MediaPlaybackController.updateActivityType(to:);

  return closure #1 in MediaPlaybackController.updateActivityType(to:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_111Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t WOAVRoute.avRouteName.getter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
    v7 = v6;

    if (v7)
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v5, v10);
      if (swift_dynamicCast())
      {
        return v9;
      }
    }
  }

  else
  {
  }

  return 0;
}

id WOAVRoute.picked.getter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
    v7 = v6;

    if (v7)
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v5, v11);
      type metadata accessor for NSNumber();
      if (swift_dynamicCast())
      {
        v8 = [v10 BOOLValue];

        return v8;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t WOAVRoute.description.getter()
{
  _StringGuts.grow(_:)(107);
  MEMORY[0x20F2E6D80](0x74756F522820200ALL, 0xEF203A656D614E65);
  v0 = WOAVRoute.routeName.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](0x74756F525641202CLL, 0xEF203A656D614E65);
  v1 = WOAVRoute.avRouteName.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0x614D54427369202CLL, 0xEF203A646567616ELL);
  v2 = WOAVRoute.isBTManaged.getter();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v4, v5);

  MEMORY[0x20F2E6D80](0x64656B636950202CLL, 0xE90000000000003ALL);
  v6 = WOAVRoute.picked.getter();
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v8, v9);

  MEMORY[0x20F2E6D80](0xD00000000000001CLL, 0x800000020B46D130);
  if (WOAVRoute.inEarDetectSupported.getter() & 1) != 0 && (WOAVRoute.inEarDetectEnabled.getter())
  {
    v10 = 0xE400000000000000;
    v11 = 1702195828;
  }

  else
  {
    v10 = 0xE500000000000000;
    v11 = 0x65736C6166;
  }

  MEMORY[0x20F2E6D80](v11, v10);

  MEMORY[0x20F2E6D80](0x697463417369202CLL, 0xEC000000203A6576);
  v12 = WOAVRoute.isActive.getter();
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v14, v15);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

id WOAVRoute.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WOAVRoute();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized static WOAVRoute.pickableRoutes(for:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = MEMORY[0x20F2E6C00](a1, a2);
  v7 = [v5 pickableRoutesForCategory_];

  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = MEMORY[0x277D84F90];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      outlined init with copy of Any(v10, v18);
      outlined init with copy of Any(v18, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_dynamicCast();
      v11 = v16;
      v12 = type metadata accessor for WOAVRoute();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary] = v11;
      v15.receiver = v13;
      v15.super_class = v12;
      objc_msgSendSuper2(&v15, sel_init);
      v14 = __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F2E6F30](v14);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

double IntervalWorkoutTracker.currentCadence.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 160);
}

double IntervalWorkoutTracker.averageCadence.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 152);
}

void MirroredHostProtocolVersion.init(protobuf:)(uint64_t *a1)
{
  if ((a1[1] & 1) == 0)
  {
    v1 = *a1;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.dataLink);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 134218242;
      *(v4 + 4) = v1;
      *(v4 + 12) = 2080;
      *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C41696C6970616ELL, 0xED000064656E6769, &v7);
      _os_log_impl(&dword_20AEA4000, oslog, v3, "Unrecognized MirroredHostProtocolVersion rawValue: %ld, defaulted to %s", v4, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x20F2E9420](v5, -1, -1);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }

    else
    {
    }
  }
}

void protocol witness for MirroredEnumProtocol.init(protobuf:) in conformance MirroredHostProtocolVersion(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  MirroredHostProtocolVersion.init(protobuf:)(&v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostProtocolVersion()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostProtocolVersion(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredHostProtocolVersion(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion()
{
  result = lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion;
  if (!lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion;
  if (!lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostProtocolVersion and conformance MirroredHostProtocolVersion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostProtocolVersion(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MirroredHostProtocolVersion(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t IntervalWorkoutProgressionData.__allocating_init(role:activityMoveMode:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  IntervalWorkoutProgressionData.init(role:activityMoveMode:)(a1, a2);
  return v4;
}

id IntervalWorkoutProgressionData.role.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return outlined copy of IntervalWorkoutProgressionData.Role(v2, v3, v4);
}

double IntervalWorkoutProgressionData.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*IntervalWorkoutProgressionData.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return IntervalWorkoutProgressionData.delegate.modify;
}

void IntervalWorkoutProgressionData.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id IntervalWorkoutProgressionData.workoutSettingsManager.getter()
{
  v1 = v0[10];
  v2 = v1;
  if (v1 != 1)
  {
    goto LABEL_7;
  }

  v3 = v0[4];
  if (!v3)
  {
    v2 = 0;
    v8 = 1;
    goto LABEL_6;
  }

  v4 = v0[5];
  v5 = v3;
  v6 = v4;

  result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:v6 activityMoveMode:v0[7]];
  if (result)
  {
    v2 = result;

    v8 = v0[10];
LABEL_6:
    v0[10] = v2;
    v9 = v2;
    outlined consume of FIUIWorkoutSettingsManager??(v8);
LABEL_7:
    outlined copy of FIUIWorkoutSettingsManager??(v1);
    return v2;
  }

  __break(1u);
  return result;
}

void IntervalWorkoutProgressionData.workoutSettingsManager.setter(uint64_t a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
  outlined consume of FIUIWorkoutSettingsManager??(v2);
}

void (*IntervalWorkoutProgressionData.workoutSettingsManager.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = IntervalWorkoutProgressionData.workoutSettingsManager.getter();
  return IntervalWorkoutProgressionData.workoutSettingsManager.modify;
}

void IntervalWorkoutProgressionData.workoutSettingsManager.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 80);
  *(v3 + 80) = *a1;
  if (a2)
  {
    v5 = v2;
    outlined consume of FIUIWorkoutSettingsManager??(v4);
  }

  else
  {

    outlined consume of FIUIWorkoutSettingsManager??(v4);
  }
}

void IntervalWorkoutProgressionData.distance.setter(Swift::Double a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 88) = a1;
  v4 = *(v1 + 16);
  if (v4)
  {
    swift_beginAccess();
    v5 = *(v2 + 96);
    v6 = v4;
    SegmentPaceAccumulator.updateDistance(_:duration:)(a1, v5);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v2 + 72);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(1, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t (*IntervalWorkoutProgressionData.distance.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.distance.modify;
}

void IntervalWorkoutProgressionData.distance.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + 2);
    if (v5)
    {
      v6 = v4[11];
      swift_beginAccess();
      v7 = v4[12];
      v8 = v5;
      SegmentPaceAccumulator.updateDistance(_:duration:)(v6, v7);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v3[6] + 72);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(1, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

void IntervalWorkoutProgressionData.duration.setter(Swift::Double a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 96) = a1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4;
    SegmentPaceAccumulator.updateDuration(_:)(a1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 72);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(3, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

void (*IntervalWorkoutProgressionData.duration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.duration.modify;
}

void IntervalWorkoutProgressionData.duration.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 96);
      v7 = v5;
      SegmentPaceAccumulator.updateDuration(_:)(v6);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(*(a1 + 24) + 72);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(3, ObjectType, v8);

      swift_unknownObjectRelease();
    }
  }
}

void IntervalWorkoutProgressionData.activeEnergy.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
  v6[3] = &type metadata for WorkoutFeatures;
  v6[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v6[0]) = 3;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 72);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(2, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t (*IntervalWorkoutProgressionData.activeEnergy.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.activeEnergy.modify;
}

void IntervalWorkoutProgressionData.activeEnergy.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v3[3] = &type metadata for WorkoutFeatures;
    v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    *v3 = 3;
    v4 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (v4)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v3[5] + 72);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(2, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }
  }

  free(v3);
}

void key path setter for IntervalWorkoutProgressionData.averagePace : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(8, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void IntervalWorkoutProgressionData.averagePace.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(8, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

double (*IntervalWorkoutProgressionData.averagePace.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.averagePace.modify;
}

void IntervalWorkoutProgressionData.currentPace.didset()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(4, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v3 = *(v0 + 128);
  swift_beginAccess();
  v4 = *(v0 + 120);
  if (v3 > v4)
  {
    v4 = v3;
  }

  *(v0 + 128) = v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 72);
    v6 = swift_getObjectType();
    (*(v5 + 8))(48, v6, v5);
    swift_unknownObjectRelease();
  }
}

void IntervalWorkoutProgressionData.currentPace.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
  IntervalWorkoutProgressionData.currentPace.didset();
}

void (*IntervalWorkoutProgressionData.currentPace.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.currentPace.modify;
}

void IntervalWorkoutProgressionData.currentPace.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    IntervalWorkoutProgressionData.currentPace.didset();
  }
}

void key path setter for IntervalWorkoutProgressionData.fastestPace : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(48, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void IntervalWorkoutProgressionData.fastestPace.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(48, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

double (*IntervalWorkoutProgressionData.fastestPace.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.fastestPace.modify;
}

void key path setter for IntervalWorkoutProgressionData.averagePower : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(12, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void IntervalWorkoutProgressionData.averagePower.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(12, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

double (*IntervalWorkoutProgressionData.averagePower.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.averagePower.modify;
}

void key path setter for IntervalWorkoutProgressionData.currentPower : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(11, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void IntervalWorkoutProgressionData.currentPower.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(11, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

double (*IntervalWorkoutProgressionData.currentPower.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.currentPower.modify;
}

void key path setter for IntervalWorkoutProgressionData.averageCadence : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 152) = v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(16, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void IntervalWorkoutProgressionData.averageCadence.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(16, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

double (*IntervalWorkoutProgressionData.averageCadence.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.averageCadence.modify;
}

void key path setter for IntervalWorkoutProgressionData.currentCadence : IntervalWorkoutProgressionData(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 160) = v2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 72);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(15, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void IntervalWorkoutProgressionData.currentCadence.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(15, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

double (*IntervalWorkoutProgressionData.currentCadence.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.currentCadence.modify;
}

double IntervalWorkoutProgressionData.averagePace.modify(uint64_t a1, char a2, uint64_t a3)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(*(a1 + 24) + 72);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a3, ObjectType, v7);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t key path getter for IntervalWorkoutProgressionData.distanceTimestamp : IntervalWorkoutProgressionData@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for IntervalWorkoutProgressionData.distanceTimestamp : IntervalWorkoutProgressionData(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t IntervalWorkoutProgressionData.distanceTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t IntervalWorkoutProgressionData.distanceTimestamp.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for IntervalWorkoutProgressionData.distanceGoalAchievedDate : IntervalWorkoutProgressionData(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t IntervalWorkoutProgressionData.distanceGoalAchievedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t IntervalWorkoutProgressionData.distanceGoalAchievedDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

void key path setter for IntervalWorkoutProgressionData.distanceGoalAchievedDuration : IntervalWorkoutProgressionData(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  if ((v3 & 1) == 0 && v2 > 0.0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v4 + 72);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6, v2);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t IntervalWorkoutProgressionData.distanceGoalAchievedDuration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  swift_beginAccess();
  return *v1;
}

void IntervalWorkoutProgressionData.distanceGoalAchievedDuration.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  swift_beginAccess();
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if ((a2 & 1) == 0)
  {
    v7 = *&a1;
    if (*&a1 > 0.0)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v2 + 72);
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(ObjectType, v8, v7);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t (*IntervalWorkoutProgressionData.distanceGoalAchievedDuration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return IntervalWorkoutProgressionData.distanceGoalAchievedDuration.modify;
}

void IntervalWorkoutProgressionData.distanceGoalAchievedDuration.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3] + v3[4];
    if ((*(v4 + 8) & 1) == 0)
    {
      v5 = *v4;
      if (*v4 > 0.0)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v6 = *(v3[3] + 72);
          ObjectType = swift_getObjectType();
          (*(v6 + 16))(ObjectType, v6, v5);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  free(v3);
}

uint64_t IntervalWorkoutProgressionData.init(role:activityMoveMode:)(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  *(v2 + 72) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 80) = 1;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  Date.init()();
  v5 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = v2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v2 + 32) = v9;
  *(v2 + 48) = v4;
  *(v2 + 56) = a2;
  IntervalWorkoutProgressionData.createAccumulators()();
  return v2;
}

id outlined copy of IntervalWorkoutProgressionData.Role(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

void outlined consume of FIUIWorkoutSettingsManager??(id a1)
{
  if (a1 != 1)
  {
  }
}

id outlined copy of FIUIWorkoutSettingsManager??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void IntervalWorkoutProgressionData.createAccumulators()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v51 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[4];
  if (v11)
  {
    v13 = v0[5];
    v12 = v0[6];
    v14 = v11;
    v15 = v13;
    v54 = v12;
    v16 = IntervalWorkoutProgressionData.workoutSettingsManager.getter();
    if (v16)
    {
      v17 = v16;
      v53 = v7;
      if (one-time initialization token for intervalWorkout != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static WOLog.intervalWorkout);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = v14;
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20AEA4000, v19, v20, "create accumulators for interval progression data", v22, 2u);
        v23 = v22;
        v14 = v21;
        MEMORY[0x20F2E9420](v23, -1, -1);
      }

      FIUIWorkoutSettingsManager.supportsPace.getter();
      if (v24)
      {
        v25 = type metadata accessor for SegmentPaceAccumulator();
        v26 = objc_allocWithZone(v25);
        *&v26[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
        *&v26[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
        *&v26[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
        *&v26[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
        v27 = v14;
        v28 = v14;
        v29 = v15;
        v52 = v15;
        v30 = v29;
        v31 = [v29 effectiveTypeIdentifier];
        *&v26[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v31;
        v55.receiver = v26;
        v55.super_class = v25;
        v32 = objc_msgSendSuper2(&v55, sel_initWithBuilder_, v28);

        v14 = v27;
        v33 = v1[2];
        v1[2] = v32;
        v34 = v32;

        v35 = swift_allocObject();
        swift_weakInit();
        v60 = partial apply for closure #1 in IntervalWorkoutProgressionData.createAccumulators();
        v61 = v35;
        aBlock = MEMORY[0x277D85DD0];
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_55_3;
        v36 = _Block_copy(&aBlock);

        [v34 startAccumulatingWithUpdateHandler_];
        v37 = v36;
        v15 = v52;
        _Block_release(v37);
      }

      FIUIWorkoutSettingsManager.supportsPowerMetrics.getter();
      if (v38)
      {
        static Date.now.getter();
        v39 = v1[3];
        if (v39)
        {
          goto LABEL_14;
        }

        v52 = v14;
        v40 = v15;
        v41 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator(0));
        v42 = v54;
        v43 = AveragePowerAccumulator.init(powerAccumulator:)(v42);
        v44 = v1[3];
        v1[3] = v43;
        v45 = v43;

        if (v45)
        {
          v46 = swift_allocObject();
          swift_weakInit();
          v60 = partial apply for closure #2 in IntervalWorkoutProgressionData.createAccumulators();
          v61 = v46;
          aBlock = MEMORY[0x277D85DD0];
          v57 = 1107296256;
          v58 = thunk for @escaping @callee_guaranteed () -> ();
          v59 = &block_descriptor_85;
          v47 = _Block_copy(&aBlock);

          [v45 setUpdateHandler_];
          _Block_release(v47);
        }

        v39 = v1[3];
        v15 = v40;
        v14 = v52;
        if (v39)
        {
LABEL_14:
          v48 = v53;
          (*(v53 + 16))(v5, v10, v6);
          (*(v48 + 56))(v5, 0, 1, v6);
          v49 = v39;
          AveragePowerAccumulator.reset(with:)(v5);

          outlined destroy of Date?(v5);
          (*(v48 + 8))(v10, v6);
        }

        else
        {

          (*(v53 + 8))(v10, v6);
        }
      }

      else
      {
      }
    }

    else
    {

      v50 = v54;
    }
  }
}

void closure #1 in IntervalWorkoutProgressionData.createAccumulators()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    v4 = 0.0;
    if (v3)
    {
      v5 = *(v3 + 16);
      v6 = v5;

      if (v5)
      {
        if (*&v6[OBJC_IVAR___WOSegmentPaceAccumulator_duration] > 0.0 && *&v6[OBJC_IVAR___WOSegmentPaceAccumulator_distance] > 0.0)
        {
          v4 = MEMORY[0x20F2E8430](v7);
        }
      }
    }

    swift_beginAccess();
    *(v2 + 112) = v4;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v2 + 72);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(8, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }
}

void closure #2 in IntervalWorkoutProgressionData.createAccumulators()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    v4 = 0.0;
    if (v3)
    {
      v5 = *(v3 + 24);
      v6 = v5;

      if (v5)
      {
        v7 = objc_opt_self();
        v8 = [v7 wattUnit];
        v9 = *&v6[OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator];
        v10 = *(v9 + 24);
        if (v10 >= 1)
        {
          v4 = *(v9 + 16) / v10;
        }

        v11 = [objc_opt_self() quantityWithUnit:v8 doubleValue:v4];

        v12 = [v7 wattUnit];
        [v11 doubleValueForUnit_];
        v4 = v13;
      }
    }

    swift_beginAccess();
    *(v2 + 136) = v4;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v2 + 72);
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(12, ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }
}

void IntervalWorkoutProgressionData.destroyAccumulators()()
{
  if (v0[4])
  {
    v1 = v0;
    v2 = IntervalWorkoutProgressionData.workoutSettingsManager.getter();
    if (v2)
    {
      v3 = v2;
      if (one-time initialization token for intervalWorkout != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static WOLog.intervalWorkout);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_20AEA4000, v5, v6, "destroy accumulators for interval progression data", v7, 2u);
        MEMORY[0x20F2E9420](v7, -1, -1);
      }

      FIUIWorkoutSettingsManager.supportsPace.getter();
      if (v8)
      {
        v9 = v1[2];
        v1[2] = 0;

        swift_beginAccess();
        v1[14] = 0;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = v1[9];
          ObjectType = swift_getObjectType();
          (*(v10 + 8))(8, ObjectType, v10);
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        v1[15] = 0;
        IntervalWorkoutProgressionData.currentPace.didset();
        swift_beginAccess();
        v1[16] = 0;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = v1[9];
          v13 = swift_getObjectType();
          (*(v12 + 8))(48, v13, v12);
          swift_unknownObjectRelease();
        }
      }

      FIUIWorkoutSettingsManager.supportsPowerMetrics.getter();
      if (v14)
      {
        v15 = v1[3];
        v1[3] = 0;

        swift_beginAccess();
        v1[17] = 0;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v16 = v1[9];
          v17 = swift_getObjectType();
          (*(v16 + 8))(12, v17, v16);
          swift_unknownObjectRelease();
        }

        swift_beginAccess();
        v1[18] = 0;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = v1[9];
          v19 = swift_getObjectType();
          (*(v18 + 8))(11, v19, v18);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t IntervalWorkoutProgressionData.achievedGoal(goal:checkDistanceIsWithinRange:)(void *a1, char a2)
{
  [a1 doubleValue];
  v6 = v5;
  result = [a1 goalTypeIdentifier];
  if (result <= 1)
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      if (a2)
      {
        swift_beginAccess();
        v8 = v2[11];
        if (v6 > v8)
        {
          return v6 - v8 < 0.1;
        }

        return 1;
      }

      swift_beginAccess();
      v9 = v2[11];
      return v6 <= v9;
    }

LABEL_25:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, 0x800000020B46D190, "WorkoutCore/IntervalWorkoutProgressionData.swift", 48, 2, 187, 0);
    __break(1u);
    return result;
  }

  if (result == 3)
  {
    swift_beginAccess();
    v9 = v2[13];
    return v6 <= v9;
  }

  if (result != 2)
  {
    goto LABEL_25;
  }

  v10 = [a1 requiredDistance];
  if (!v10 || (v11 = v10, v12 = [objc_opt_self() meterUnit], objc_msgSend(v11, sel_doubleValueForUnit_, v12), v14 = v13, v11, v12, v14 <= 0.0))
  {
    swift_beginAccess();
    v9 = v2[12];
    return v6 <= v9;
  }

  swift_beginAccess();
  v15 = v2[12];
  if (a2)
  {
    swift_beginAccess();
    v16 = v2[11];
    if (v14 <= v16)
    {
      return v6 <= v15;
    }

    result = v14 - v16 < 0.1;
  }

  else
  {
    swift_beginAccess();
    result = v14 <= v2[11];
  }

  if (v6 > v15)
  {
    return 0;
  }

  return result;
}

void IntervalWorkoutProgressionData.rollDataIntoAccumulated(accumulated:with:lapLength:)(double *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  LODWORD(v249) = a6;
  v241 = *&a5;
  v243 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v238 - v13;
  swift_beginAccess();
  v15 = *(v7 + 88);
  v247 = (v7 + 96);
  swift_beginAccess();
  v16 = *(v7 + 96);
  v240 = a2;
  static Date.now.getter();
  v17 = v7 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  swift_beginAccess();
  v245 = *v17;
  v244 = *(v17 + 8);
  IntervalWorkoutProgressionData.destroyAccumulators()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v251);

  v18 = v251[0];
  v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v20 = *(a4 + v19);
  if ([v20 effectiveTypeIdentifier] == 46)
  {
    v21 = [v20 swimmingLocationType];

    v22 = v21 == 1;
  }

  else
  {

    v22 = 0;
  }

  v23 = IntervalWorkoutProgressionData.achievedGoal(goal:checkDistanceIsWithinRange:)(v18, v22);
  v248 = v7;
  v246 = a4;
  v242 = v18;
  if (v23)
  {
    [v18 doubleValue];
    v25 = v24;
    v26 = [v18 goalTypeIdentifier];
    if (v26 <= 1)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v249 = v14;
          v27 = (*(v7 + 88) - v25) / (*(v7 + 88) / *v247);
          swift_beginAccess();
          v28 = v25 + *(a3 + 88);
          *(a3 + 88) = v28;
          v29 = *(a3 + 16);
          if (v29)
          {
            swift_beginAccess();
            v30 = *(a3 + 96);
            v31 = v29;
            SegmentPaceAccumulator.updateDistance(_:duration:)(v28, v30);
          }

          v16 = v16 - v27;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = *(a3 + 72);
            ObjectType = swift_getObjectType();
            (*(v32 + 8))(1, ObjectType, v32);
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          v34 = v16 + *(a3 + 96);
          *(a3 + 96) = v34;
          v35 = *(a3 + 16);
          if (v35)
          {
            v36 = v35;
            SegmentPaceAccumulator.updateDuration(_:)(v34);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(a3 + 72);
            v38 = swift_getObjectType();
            (*(v37 + 8))(3, v38, v37);
            swift_unknownObjectRelease();
          }

          swift_beginAccess();
          v39 = *(v7 + 104);
          swift_beginAccess();
          *(a3 + 104) = v39 + *(a3 + 104);
          v252 = &type metadata for WorkoutFeatures;
          v40 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
          v253 = v40;
          LOBYTE(v251[0]) = 3;
          v41 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v251);
          if ((v41 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
          {
            v42 = *(a3 + 72);
            v43 = swift_getObjectType();
            (*(v42 + 8))(2, v43, v42);
            swift_unknownObjectRelease();
          }

          v44 = *(v7 + 88) - v25;
          *(v7 + 88) = v44;
          v45 = *(v7 + 16);
          if (v45)
          {
            v46 = *v247;
            v47 = v45;
            SegmentPaceAccumulator.updateDistance(_:duration:)(v44, v46);
          }

          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v48 = *(v7 + 72);
            v49 = swift_getObjectType();
            (*(v48 + 8))(1, v49, v48);
            swift_unknownObjectRelease();
          }

          *(v7 + 96) = v27;
          v50 = *(v7 + 16);
          if (v50)
          {
            v51 = v50;
            SegmentPaceAccumulator.updateDuration(_:)(v27);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v52 = *(v7 + 72);
            v53 = swift_getObjectType();
            (*(v52 + 8))(3, v53, v52);
            swift_unknownObjectRelease();
          }

          *(v7 + 104) = 0;
          v252 = &type metadata for WorkoutFeatures;
          v253 = v40;
          LOBYTE(v251[0]) = 3;
          v54 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v251);
          if ((v54 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
          {
            v55 = *(v7 + 72);
            v56 = swift_getObjectType();
            (*(v55 + 8))(2, v56, v55);
            swift_unknownObjectRelease();
          }

          Date.addTimeInterval(_:)(-v27);
          v14 = v249;
          goto LABEL_138;
        }

LABEL_165:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, 0x800000020B46D190, "WorkoutCore/IntervalWorkoutProgressionData.swift", 48, 2, 286, 0);
        __break(1u);
        return;
      }

LABEL_71:
      v25 = v15;
      goto LABEL_138;
    }

    if (v26 == 3)
    {
      v249 = v19;
      swift_beginAccess();
      *(a3 + 104) = v25 + *(a3 + 104);
      v252 = &type metadata for WorkoutFeatures;
      v87 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      v253 = v87;
      LOBYTE(v251[0]) = 3;
      v88 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if (v88)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v89 = v17;
          v90 = v14;
          v91 = *(a3 + 72);
          v92 = swift_getObjectType();
          v93 = *(v91 + 8);
          v94 = v91;
          v14 = v90;
          v17 = v89;
          v93(2, v92, v94);
          swift_unknownObjectRelease();
        }
      }

      v95 = v248;
      swift_beginAccess();
      *(v95 + 104) = *(v95 + 104) - v25;
      v252 = &type metadata for WorkoutFeatures;
      v253 = v87;
      v7 = v95;
      LOBYTE(v251[0]) = 3;
      LOBYTE(v95) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if (v95)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v96 = *(v7 + 72);
          v97 = swift_getObjectType();
          (*(v96 + 8))(2, v97, v96);
          swift_unknownObjectRelease();
        }
      }

      v98 = *v247;
      swift_beginAccess();
      v99 = v98 + *(a3 + 96);
      *(a3 + 96) = v99;
      v100 = *(a3 + 16);
      if (v100)
      {
        v101 = v100;
        SegmentPaceAccumulator.updateDuration(_:)(v99);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v19 = v249;
      if (Strong)
      {
        v103 = *(a3 + 72);
        v104 = swift_getObjectType();
        (*(v103 + 8))(3, v104, v103);
        swift_unknownObjectRelease();
      }

      v105 = *(v7 + 88);
      swift_beginAccess();
      v106 = v105 + *(a3 + 88);
      *(a3 + 88) = v106;
      v107 = *(a3 + 16);
      if (v107)
      {
        v108 = *(a3 + 96);
        v109 = v107;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v106, v108);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v110 = *(a3 + 72);
        v111 = swift_getObjectType();
        (*(v110 + 8))(1, v111, v110);
        swift_unknownObjectRelease();
      }

      *(v7 + 96) = 0;
      v112 = *(v7 + 16);
      if (v112)
      {
        v113 = v112;
        SegmentPaceAccumulator.updateDuration(_:)(0.0);
      }

      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_70;
      }

      v114 = *(v7 + 72);
      v115 = swift_getObjectType();
      (*(v114 + 8))(3, v115, v114);
LABEL_69:
      swift_unknownObjectRelease();
LABEL_70:
      IntervalWorkoutProgressionData.distance.setter(0.0);
      goto LABEL_71;
    }

    if (v26 != 2)
    {
      goto LABEL_165;
    }

    v129 = [v18 requiredDistance];
    if (v129 && (v130 = v129, v131 = [objc_opt_self() meterUnit], objc_msgSend(v130, sel_doubleValueForUnit_, v131), v133 = v132, v130, v131, v133 > 0.0))
    {
      v249 = v14;
      if (*(v17 + 8))
      {
        v134 = v247;
      }

      else
      {
        v134 = v17;
      }

      v245 = *v134;
      v135 = (*(v7 + 88) - v133) / (*(v7 + 88) / *v247);
      swift_beginAccess();
      v136 = v133 + *(a3 + 88);
      *(a3 + 88) = v136;
      v137 = *(a3 + 16);
      if (v137)
      {
        swift_beginAccess();
        v138 = *(a3 + 96);
        v139 = v137;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v136, v138);
      }

      v16 = v16 - v135;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v140 = *(a3 + 72);
        v141 = swift_getObjectType();
        (*(v140 + 8))(1, v141, v140);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v142 = v16 + *(a3 + 96);
      *(a3 + 96) = v142;
      v143 = *(a3 + 16);
      if (v143)
      {
        v144 = v143;
        SegmentPaceAccumulator.updateDuration(_:)(v142);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v145 = *(a3 + 72);
        v146 = swift_getObjectType();
        (*(v145 + 8))(3, v146, v145);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v147 = *(v7 + 104);
      swift_beginAccess();
      *(a3 + 104) = v147 + *(a3 + 104);
      v252 = &type metadata for WorkoutFeatures;
      v148 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      v253 = v148;
      LOBYTE(v251[0]) = 3;
      v149 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if ((v149 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v150 = *(a3 + 72);
        v151 = swift_getObjectType();
        (*(v150 + 8))(2, v151, v150);
        swift_unknownObjectRelease();
      }

      v152 = *(v7 + 88) - v133;
      *(v7 + 88) = v152;
      v153 = *(v7 + 16);
      if (v153)
      {
        v154 = *v247;
        v155 = v153;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v152, v154);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v156 = *(v7 + 72);
        v157 = swift_getObjectType();
        (*(v156 + 8))(1, v157, v156);
        swift_unknownObjectRelease();
      }

      *(v7 + 96) = v135;
      v158 = *(v7 + 16);
      if (v158)
      {
        v159 = v158;
        SegmentPaceAccumulator.updateDuration(_:)(v135);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v160 = *(v7 + 72);
        v161 = swift_getObjectType();
        (*(v160 + 8))(3, v161, v160);
        swift_unknownObjectRelease();
      }

      *(v7 + 104) = 0;
      v252 = &type metadata for WorkoutFeatures;
      v253 = v148;
      LOBYTE(v251[0]) = 3;
      v162 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if ((v162 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v163 = *(v7 + 72);
        v164 = swift_getObjectType();
        (*(v163 + 8))(2, v164, v163);
        swift_unknownObjectRelease();
      }

      *v17 = 0;
      *(v17 + 8) = 1;
      Date.addTimeInterval(_:)(-v135);
      v244 = 0;
      v25 = v133;
      v14 = v249;
    }

    else
    {
      swift_beginAccess();
      v165 = v25 + *(a3 + 96);
      *(a3 + 96) = v165;
      v166 = *(a3 + 16);
      if (v166)
      {
        v167 = v166;
        SegmentPaceAccumulator.updateDuration(_:)(v165);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v168 = *(a3 + 72);
        v169 = swift_getObjectType();
        (*(v168 + 8))(3, v169, v168);
        swift_unknownObjectRelease();
      }

      v170 = *(v7 + 96) - v25;
      *(v7 + 96) = v170;
      v171 = *(v7 + 16);
      if (v171)
      {
        v172 = v171;
        SegmentPaceAccumulator.updateDuration(_:)(v170);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v173 = *(v7 + 72);
        v174 = swift_getObjectType();
        (*(v173 + 8))(3, v174, v173);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v175 = *(v7 + 104);
      swift_beginAccess();
      *(a3 + 104) = v175 + *(a3 + 104);
      v252 = &type metadata for WorkoutFeatures;
      v176 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      v253 = v176;
      LOBYTE(v251[0]) = 3;
      v177 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if ((v177 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v239 = v17;
        v178 = *(a3 + 72);
        v179 = swift_getObjectType();
        v17 = v239;
        (*(v178 + 8))(2, v179, v178);
        swift_unknownObjectRelease();
      }

      v180 = v248;
      *(v248 + 104) = 0;
      v252 = &type metadata for WorkoutFeatures;
      v253 = v176;
      v7 = v180;
      LOBYTE(v251[0]) = 3;
      v181 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v251);
      if ((v181 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v182 = *(v7 + 72);
        v183 = swift_getObjectType();
        (*(v182 + 8))(2, v183, v182);
        swift_unknownObjectRelease();
      }

      Date.addTimeInterval(_:)(-*v247);
      a4 = v246;
      if (v249)
      {
        v184 = *(v7 + 88);
        swift_beginAccess();
        v185 = v184 + *(a3 + 88);
        *(a3 + 88) = v185;
        v186 = *(a3 + 16);
        if (v186)
        {
          v187 = *(a3 + 96);
          v188 = v186;
          SegmentPaceAccumulator.updateDistance(_:duration:)(v185, v187);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v189 = *(a3 + 72);
          v190 = swift_getObjectType();
          (*(v189 + 8))(1, v190, v189);
          swift_unknownObjectRelease();
        }

        IntervalWorkoutProgressionData.distance.setter(0.0);
        v16 = v25;
        goto LABEL_71;
      }

      v191 = floor(v15 / v241 + 0.3) * v241;
      swift_beginAccess();
      v192 = v191 + *(a3 + 88);
      *(a3 + 88) = v192;
      v193 = *(a3 + 16);
      if (v193)
      {
        v194 = *(a3 + 96);
        v195 = v193;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v192, v194);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v196 = *(a3 + 72);
        v197 = swift_getObjectType();
        (*(v196 + 8))(1, v197, v196);
        swift_unknownObjectRelease();
      }

      v198 = *(v7 + 88) - v191;
      *(v7 + 88) = v198;
      v199 = *(v7 + 16);
      if (v199)
      {
        v200 = *v247;
        v201 = v199;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v198, v200);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v202 = *(v7 + 72);
        v203 = swift_getObjectType();
        (*(v202 + 8))(1, v203, v202);
        swift_unknownObjectRelease();
      }

      v16 = v25;
      v25 = v191;
    }
  }

  else
  {
    v57 = *v247;
    swift_beginAccess();
    v58 = v57 + *(a3 + 96);
    *(a3 + 96) = v58;
    v59 = *(a3 + 16);
    if (v59)
    {
      v60 = v59;
      SegmentPaceAccumulator.updateDuration(_:)(v58);
    }

    v239 = v17;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v61 = *(a3 + 72);
      v62 = swift_getObjectType();
      (*(v61 + 8))(3, v62, v61);
      swift_unknownObjectRelease();
    }

    v63 = v14;
    swift_beginAccess();
    v64 = *(v7 + 104);
    swift_beginAccess();
    *(a3 + 104) = v64 + *(a3 + 104);
    v252 = &type metadata for WorkoutFeatures;
    v65 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    v253 = v65;
    LOBYTE(v251[0]) = 3;
    v66 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v251);
    if ((v66 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v67 = *(a3 + 72);
      v68 = swift_getObjectType();
      (*(v67 + 8))(2, v68, v67);
      swift_unknownObjectRelease();
    }

    v69 = v19;
    v70 = v248;
    *(v248 + 96) = 0;
    v71 = *(v70 + 16);
    if (v71)
    {
      v72 = v71;
      SegmentPaceAccumulator.updateDuration(_:)(0.0);
    }

    v73 = v248;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v74 = *(v73 + 72);
      v75 = swift_getObjectType();
      (*(v74 + 8))(3, v75, v74);
      swift_unknownObjectRelease();
    }

    *(v73 + 104) = 0;
    v252 = &type metadata for WorkoutFeatures;
    v253 = v65;
    LOBYTE(v251[0]) = 3;
    v76 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v251);
    v7 = v73;
    if ((v76 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v77 = *(v73 + 72);
      v78 = swift_getObjectType();
      (*(v77 + 8))(2, v78, v77);
      swift_unknownObjectRelease();
    }

    v19 = v69;
    if (v249)
    {
      v79 = *(v7 + 88);
      swift_beginAccess();
      v80 = v79 + *(a3 + 88);
      *(a3 + 88) = v80;
      v81 = *(a3 + 16);
      v14 = v63;
      if (v81)
      {
        v82 = *(a3 + 96);
        v83 = v81;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v80, v82);
      }

      v84 = swift_unknownObjectWeakLoadStrong();
      v17 = v239;
      if (!v84)
      {
        goto LABEL_70;
      }

      v85 = *(a3 + 72);
      v86 = swift_getObjectType();
      (*(v85 + 8))(1, v86, v85);
      goto LABEL_69;
    }

    v25 = floor(v15 / v241 + 0.3) * v241;
    swift_beginAccess();
    v116 = v25 + *(a3 + 88);
    *(a3 + 88) = v116;
    v117 = *(a3 + 16);
    v14 = v63;
    if (v117)
    {
      v118 = *(a3 + 96);
      v119 = v117;
      SegmentPaceAccumulator.updateDistance(_:duration:)(v116, v118);
    }

    v120 = swift_unknownObjectWeakLoadStrong();
    v17 = v239;
    if (v120)
    {
      v121 = *(a3 + 72);
      v122 = swift_getObjectType();
      (*(v121 + 8))(1, v122, v121);
      swift_unknownObjectRelease();
    }

    v123 = *(v7 + 88) - v25;
    *(v7 + 88) = v123;
    v124 = *(v7 + 16);
    if (v124)
    {
      v125 = *v247;
      v126 = v124;
      SegmentPaceAccumulator.updateDistance(_:duration:)(v123, v125);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v127 = *(v7 + 72);
      v128 = swift_getObjectType();
      (*(v127 + 8))(1, v128, v127);
      swift_unknownObjectRelease();
    }
  }

LABEL_138:
  *v17 = 0;
  *(v17 + 8) = 1;
  v204 = type metadata accessor for Date();
  (*(*(v204 - 8) + 56))(v14, 1, 1, v204);
  v205 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  outlined assign with take of Date?(v14, v7 + v205);
  swift_endAccess();
  if (one-time initialization token for intervalWorkout != -1)
  {
    goto LABEL_158;
  }

  while (1)
  {
    v206 = type metadata accessor for Logger();
    __swift_project_value_buffer(v206, static WOLog.intervalWorkout);

    v207 = Logger.logObject.getter();
    v208 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v250[0] = v210;
      *v209 = 136315394;
      v211 = IntervalWorkoutProgressionData.description.getter();
      v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v211, v212, v250);

      *(v209 + 4) = v213;
      *(v209 + 12) = 2080;
      v214 = IntervalWorkoutProgressionData.description.getter();
      v216 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v214, v215, v250);

      *(v209 + 14) = v216;
      _os_log_impl(&dword_20AEA4000, v207, v208, "rolled data into accumulated: %s\n currentData: %s", v209, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v210, -1, -1);
      MEMORY[0x20F2E9420](v209, -1, -1);
    }

    v217 = *(v7 + 56);
    v218 = objc_opt_self();
    v219 = *(a4 + v19);

    v220 = [v218 fiui:v219 supportedMetricsForActivityType:v217 activityMoveMode:?];
    if (!v220)
    {
      __break(1u);
      goto LABEL_165;
    }

    v221 = v220;
    type metadata accessor for NSNumber();
    v222 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v249 = v222;
    if (v222 >> 62)
    {
      break;
    }

    v223 = *((v249 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v223)
    {
      goto LABEL_160;
    }

LABEL_144:
    v224 = 0;
    v7 = v249 & 0xC000000000000001;
    a4 = v249 & 0xFFFFFFFFFFFFFF8;
    v225 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v7)
      {
        v226 = MEMORY[0x20F2E7A20](v224, v249);
      }

      else
      {
        if (v224 >= *(a4 + 16))
        {
          goto LABEL_157;
        }

        v226 = *(v249 + 8 * v224 + 32);
      }

      v227 = v226;
      v19 = v224 + 1;
      if (__OFADD__(v224, 1))
      {
        break;
      }

      v228 = [v226 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v225 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v225 + 2) + 1, 1, v225);
      }

      v230 = *(v225 + 2);
      v229 = *(v225 + 3);
      if (v230 >= v229 >> 1)
      {
        v225 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v229 > 1), v230 + 1, 1, v225);
      }

      *(v225 + 2) = v230 + 1;
      *&v225[8 * v230 + 32] = v228;
      ++v224;
      if (v19 == v223)
      {
        goto LABEL_161;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    swift_once();
  }

  v223 = __CocoaSet.count.getter();
  if (v223)
  {
    goto LABEL_144;
  }

LABEL_160:
  v225 = MEMORY[0x277D84F90];
LABEL_161:

  v231 = v248;
  IntervalWorkoutProgressionData.createAccumulators()();
  v232 = *(v231 + 16);
  if (v232)
  {
    v233 = *(v231 + 88);
    v234 = *v247;
    v235 = v232;
    SegmentPaceAccumulator.updateDistance(_:duration:)(v233, v234);
  }

  v236 = v243;
  *v243 = v25;
  v236[1] = v16;
  v237 = v245;
  *(v236 + 2) = v246;
  *(v236 + 3) = v225;
  *(v236 + 4) = v237;
  *(v236 + 40) = v244;
}

void IntervalWorkoutProgressionData.setDistanceAchievedDurationForTimeAndDistanceGoal(distanceGoal:newDistance:newDistanceTimestamp:)(double a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 <= a2)
  {
    v17 = v2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
    swift_beginAccess();
    if (*(v17 + 8) == 1)
    {
      v18 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
      swift_beginAccess();
      (*(v11 + 16))(v14, v3 + v18, v10);
      Date.timeIntervalSince(_:)();
      v20 = v19;
      (*(v11 + 8))(v14, v10);
      swift_beginAccess();
      v21 = (a2 - *(v3 + 88) - (a1 - *(v3 + 88))) / ((a2 - *(v3 + 88)) / v20);
      swift_beginAccess();
      v22 = *(v3 + 96) - v21;
      *v17 = v22;
      *(v17 + 8) = 0;
      if (v22 > 0.0)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v3 + 72);
          ObjectType = swift_getObjectType();
          (*(v23 + 16))(ObjectType, v23, v22);
          swift_unknownObjectRelease();
        }
      }

      Date.addingTimeInterval(_:)();
      (*(v11 + 56))(v9, 0, 1, v10);
      v25 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
      swift_beginAccess();
      outlined assign with take of Date?(v9, v3 + v25);
      swift_endAccess();
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    v15 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
    swift_beginAccess();
    outlined assign with take of Date?(v9, v2 + v15);
    swift_endAccess();
    v16 = v2 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
    swift_beginAccess();
    *v16 = 0;
    *(v16 + 8) = 1;
  }
}

uint64_t IntervalWorkoutProgressionData.description.getter()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20B423920;
    swift_beginAccess();
    v3 = MEMORY[0x277D839F8];
    v4 = v0[11];
    v5 = MEMORY[0x277D83A80];
    *(v2 + 56) = MEMORY[0x277D839F8];
    *(v2 + 64) = v5;
    *(v2 + 32) = v4;
    swift_beginAccess();
    v6 = v0[13];
    *(v2 + 96) = v3;
    *(v2 + 104) = v5;
    *(v2 + 72) = v6;
    swift_beginAccess();
    v7 = v0[12];
    *(v2 + 136) = v3;
    *(v2 + 144) = v5;
    *(v2 + 112) = v7;
    swift_beginAccess();
    v8 = v0[14];
    *(v2 + 176) = v3;
    *(v2 + 184) = v5;
    *(v2 + 152) = v8;
    swift_beginAccess();
    v9 = v0[15];
    *(v2 + 216) = v3;
    *(v2 + 224) = v5;
    *(v2 + 192) = v9;
    swift_beginAccess();
    v10 = v0[18];
    *(v2 + 256) = v3;
    *(v2 + 264) = v5;
    *(v2 + 232) = v10;
    swift_beginAccess();
    v11 = v0[20];
    *(v2 + 296) = v3;
    *(v2 + 304) = v5;
    *(v2 + 272) = v11;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20B423A20;
    swift_beginAccess();
    v13 = MEMORY[0x277D839F8];
    v14 = v0[11];
    v15 = MEMORY[0x277D83A80];
    *(v12 + 56) = MEMORY[0x277D839F8];
    *(v12 + 64) = v15;
    *(v12 + 32) = v14;
    swift_beginAccess();
    v16 = v0[13];
    *(v12 + 96) = v13;
    *(v12 + 104) = v15;
    *(v12 + 72) = v16;
    swift_beginAccess();
    v17 = v0[12];
    *(v12 + 136) = v13;
    *(v12 + 144) = v15;
    *(v12 + 112) = v17;
  }

  return String.init(format:_:)();
}

id *IntervalWorkoutProgressionData.deinit()
{
  outlined consume of IntervalWorkoutProgressionData.Role(v0[4], v0[5], v0[6]);
  outlined destroy of weak IntervalWorkoutProgressionDataDelegate?((v0 + 8));
  outlined consume of FIUIWorkoutSettingsManager??(v0[10]);
  v1 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate);
  return v0;
}

uint64_t IntervalWorkoutProgressionData.__deallocating_deinit()
{
  outlined consume of IntervalWorkoutProgressionData.Role(v0[4], v0[5], v0[6]);
  outlined destroy of weak IntervalWorkoutProgressionDataDelegate?((v0 + 8));
  outlined consume of FIUIWorkoutSettingsManager??(v0[10]);
  v1 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate);

  return swift_deallocClassInstance();
}

void outlined consume of IntervalWorkoutProgressionData.Role(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t type metadata accessor for IntervalWorkoutProgressionData(uint64_t a1)
{
  result = type metadata singleton initialization cache for IntervalWorkoutProgressionData;
  if (!type metadata singleton initialization cache for IntervalWorkoutProgressionData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalWorkoutProgressionData(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore08IntervalA15ProgressionDataC4RoleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for IntervalWorkoutProgressionData.Role(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for IntervalWorkoutProgressionData.Role(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for IntervalWorkoutProgressionData.Role(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySd11WorkoutCore0D10DataBucketCG_AF14RaceChartPointVs5NeverOTg504_s11d6Core31h9Elevationij64ProviderC_14numberOfPointsACSayypG_SiSgtcfcAA0ceF0VSd3key_AA0A10fG15C5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v21 = a1 + 64;
    v3 = _HashTable.startBucket.getter();
    v4 = 0;
    v22 = *(a1 + 36);
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(a1 + 32))
    {
      v6 = v3 >> 6;
      if ((*(v21 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_22;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v7 = *(*(a1 + 48) + 8 * v3);
      v8 = *(*(a1 + 56) + 8 * v3);
      swift_beginAccess();
      v9 = *(v8 + 16);
      swift_beginAccess();
      v10 = *(v8 + 24);
      v12 = *(v23 + 16);
      v11 = *(v23 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      *(v23 + 16) = v12 + 1;
      v13 = v23 + 16 * v12;
      *(v13 + 32) = v7;
      *(v13 + 40) = v9 / v10;
      v5 = 1 << *(a1 + 32);
      if (v3 >= v5)
      {
        goto LABEL_24;
      }

      v14 = *(v21 + 8 * v6);
      if ((v14 & (1 << v3)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v15 = v14 & (-2 << (v3 & 0x3F));
      if (v15)
      {
        v5 = __clz(__rbit64(v15)) | v3 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v6 << 6;
        v17 = v6 + 1;
        v18 = (a1 + 72 + 8 * v6);
        while (v17 < (v5 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            outlined consume of [Double : WorkoutDataBucket].Index._Variant(v3, v22, 0);
            v5 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        outlined consume of [Double : WorkoutDataBucket].Index._Variant(v3, v22, 0);
      }

LABEL_4:
      ++v4;
      v3 = v5;
      if (v4 == v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t RaceElevationChartPointProvider.__allocating_init(_:numberOfPoints:)(uint64_t a1, char *a2, char a3)
{
  v6 = swift_allocObject();
  RaceElevationChartPointProvider.init(_:numberOfPoints:)(a1, a2, a3 & 1);
  return v6;
}

char *RaceElevationChartPointProvider.init(_:numberOfPoints:)(uint64_t a1, char *a2, char a3)
{
  v5 = v3;
  LOBYTE(v6) = a3;
  v8 = specialized _arrayConditionalCast<A, B>(_:)(a1);

  if (!v8)
  {
LABEL_55:
    *(v5 + 2) = MEMORY[0x277D84F90];
    return v5;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_53;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_54:

    goto LABEL_55;
  }

  while (1)
  {
    v11 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
LABEL_58:
      v12 = MEMORY[0x20F2E7A20](v11, v8);
LABEL_9:
      v13 = v12;
      [v12 odometer_m];
      v4 = v14;

      if (one-time initialization token for zoomedDomain == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_60;
    }

    v46 = v8 & 0xC000000000000001;
    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_58;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_62;
      }

      v12 = *(v8 + 8 * v11 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_60:
    swift_once();
LABEL_10:
    v15 = v4 / *&static RaceElevationChartLayout.zoomedDomain * 75.0;
    if (COERCE__INT64(fabs(v15)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v15 <= -9.22337204e18)
    {
      goto LABEL_63;
    }

    if (v15 >= 9.22337204e18)
    {
      goto LABEL_64;
    }

    v44 = v5;
    v45 = v9;
    if (v6)
    {
      v5 = v15;
    }

    else
    {
      v5 = a2;
    }

    a2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore0C10DataBucketCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v6 = 0;
    v16 = v5;
    v17 = v4 / v5;
    v18 = __OFSUB__(v5, 1);
    v19 = (v5 - 1);
    while (1)
    {
      if (v46)
      {
        v20 = MEMORY[0x20F2E7A20](v6, v8);
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_52;
        }

        v20 = *(v8 + 8 * v6 + 32);
      }

      v21 = v20;
      v5 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v20 odometer_m];
      v23 = floor(v22 / v17);
      if (v23 == v16 && v18)
      {
        goto LABEL_50;
      }

      if (v23 == v16)
      {
        v23 = v19;
      }

      v25 = v23 + 0.5;
      v4 = v17 * v25;
      if (*(a2 + 2) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17 * v25), (v27 & 1) != 0))
      {
        v9 = *(*(a2 + 7) + 8 * v26);
      }

      else
      {
        type metadata accessor for WorkoutDataBucket();
        v9 = swift_allocObject();
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
      }

      [v21 altitude_m];
      v29 = v28;
      swift_beginAccess();
      *(v9 + 16) = v29 + *(v9 + 16);
      swift_beginAccess();
      *(v9 + 24) = *(v9 + 24) + 1.0;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = a2;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      v33 = *(a2 + 2);
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_49;
      }

      v37 = v32;
      if (*(a2 + 3) < v36)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_65;
        }

LABEL_42:
        a2 = v47;
        if (v37)
        {
          goto LABEL_20;
        }

        goto LABEL_43;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_42;
      }

      v41 = v31;
      specialized _NativeDictionary.copy()();
      v31 = v41;
      a2 = v47;
      if (v37)
      {
LABEL_20:
        *(*(a2 + 7) + 8 * v31) = v9;

        goto LABEL_21;
      }

LABEL_43:
      *&a2[8 * (v31 >> 6) + 64] |= 1 << v31;
      *(*(a2 + 6) + 8 * v31) = v4;
      *(*(a2 + 7) + 8 * v31) = v9;

      v39 = *(a2 + 2);
      v35 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v35)
      {
        goto LABEL_51;
      }

      *(a2 + 2) = v40;
LABEL_21:
      ++v6;
      if (v5 == v10)
      {

        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySd11WorkoutCore0D10DataBucketCG_AF14RaceChartPointVs5NeverOTg504_s11d6Core31h9Elevationij64ProviderC_14numberOfPointsACSayypG_SiSgtcfcAA0ceF0VSd3key_AA0A10fG15C5valuet_tXEfU_Tf1cn_n(a2);
        v5 = v44;
        v47 = v42;

        specialized MutableCollection<>.sort(by:)(&v47);

        *(v44 + 2) = v47;

        return v5;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v10 = __CocoaSet.count.getter();
    if (!v10)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  type metadata accessor for RaceElevationChartPointProvider();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t RaceElevationChartPointProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v79 = v8 + 16;
    v80 = *(v8 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[16 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v33 = *(v8 + 3);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v34;
    v35 = v8 + 32;
    v36 = &v8[16 * v5 + 32];
    *v36 = v9;
    *(v36 + 1) = v7;
    v88 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 4);
          v38 = *(v8 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[16 * v34];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[16 * v34];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[16 * v5 - 16];
        v75 = *v74;
        v76 = &v35[16 * v5];
        v77 = *(v76 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        v78 = *(v8 + 2);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        memmove(&v35[16 * v5], v76 + 16, 16 * (v78 - 1 - v5));
        *(v8 + 2) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[16 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[16 * v34];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

id FeaturedTileConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeaturedTileConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedTileConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeaturedTileConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedTileConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TargetZone.__allocating_init(type:min:max:enabled:)(unsigned __int8 *a1, unsigned __int8 a2, double a3, double a4)
{
  v8 = a2;
  result = swift_allocObject();
  v10 = *a1;
  *(result + 16) = v10;
  *(result + 24) = a3;
  *(result + 32) = a4;
  if (v8 == 2)
  {
    v11 = result;
    if (v10 <= 5 || v10 == 6)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v13 = a3 > 0.0 || a4 > 0.0;
      if (v12)
      {
        v13 = 0;
      }
    }

    else
    {

      v13 = 0;
    }

    result = v11;
    *(v11 + 40) = v13;
  }

  else
  {
    *(result + 40) = a2 & 1;
  }

  return result;
}

WorkoutCore::TargetZone::ZoneType_optional __swiftcall TargetZone.ZoneType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TargetZone.ZoneType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t TargetZone.description.getter()
{
  _StringGuts.grow(_:)(17);
  MEMORY[0x20F2E6D80](60, 0xE100000000000000);
  v1 = 0x5F676E696C6C6F72;
  v2 = *(v0 + 16);
  v3 = 0xED00007265776F70;
  v4 = 0x5F65676172657661;
  if (v2 != 6)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  v5 = 0xEF65636E65646163;
  v6 = 0x5F65676172657661;
  if (v2 != 4)
  {
    v6 = 0xD000000000000013;
    v5 = 0x800000020B4544E0;
  }

  if (*(v0 + 16) <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000012;
  v8 = 0x800000020B454490;
  if (v2 != 2)
  {
    v7 = 0xD000000000000015;
    v8 = 0x800000020B4544B0;
  }

  if (*(v0 + 16))
  {
    v1 = 0x5F65676172657661;
  }

  if (*(v0 + 16) <= 1u)
  {
    v9 = 0xEC00000065636170;
  }

  else
  {
    v1 = v7;
    v9 = v8;
  }

  if (*(v0 + 16) <= 3u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v4;
  }

  if (*(v0 + 16) <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x20F2E6D80](v10, v11);

  MEMORY[0x20F2E6D80](5972026, 0xE300000000000000);
  swift_beginAccess();
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](58, 0xE100000000000000);
  swift_beginAccess();
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](2108509, 0xE300000000000000);
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v12, v13);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0;
}

unint64_t TargetZone.metadata.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    if (v1 - 5 >= 2)
    {
      v3 = 0xD000000000000021;
      v2 = "audioTranscriptionsEnabled";
    }

    else
    {
      v2 = "oneMasterTypeCadence";
      v3 = 0xD000000000000022;
    }
  }

  else if (v1 >= 3)
  {
    v2 = "oneMasterTypePace";
    v3 = 0xD000000000000024;
  }

  else
  {
    v2 = "oneMasterTypeNone";
    v3 = 0xD000000000000021;
  }

  v4 = v2 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySSs11AnyHashableVGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySSs11AnyHashableVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s11AnyHashableVtGMd, &_ss23_ContiguousArrayStorageCySS_s11AnyHashableVtGMR);
  v6 = swift_initStackObject();
  *(v6 + 32) = 0xD00000000000001ELL;
  *(v6 + 16) = xmmword_20B423A20;
  *(v6 + 40) = 0x800000020B46D420;
  swift_beginAccess();
  AnyHashable.init<A>(_:)();
  *(v6 + 88) = 0xD00000000000001ELL;
  *(v6 + 96) = 0x800000020B46D440;
  swift_beginAccess();
  AnyHashable.init<A>(_:)();
  *(v6 + 144) = 0xD00000000000001FLL;
  *(v6 + 152) = 0x800000020B46D460;
  AnyHashable.init<A>(_:)();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s11AnyHashableVTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_s11AnyHashableVtMd, &_sSS_s11AnyHashableVtMR);
  swift_arrayDestroy();
  *(inited + 48) = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSs11AnyHashableVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, [String : AnyHashable])(inited + 32);
  return v8;
}

uint64_t TargetZone.ZoneType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5F676E696C6C6F72;
  v3 = 0x5F65676172657661;
  if (v1 != 6)
  {
    v3 = 1701736302;
  }

  v4 = 0x5F65676172657661;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 2)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0x5F65676172657661;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void TargetZone.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v2);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v3);
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 40));
}

BOOL TargetZone.isSingleThreshold.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_beginAccess();
  return v1 == *(v0 + 32);
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TargetZone.ZoneType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x5F676E696C6C6F72;
  v4 = 0xED00007265776F70;
  v5 = 0x5F65676172657661;
  if (v2 != 6)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = 0xEF65636E65646163;
  v7 = 0x5F65676172657661;
  if (v2 != 4)
  {
    v7 = 0xD000000000000013;
    v6 = 0x800000020B4544E0;
  }

  if (*v1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xD000000000000012;
  v9 = 0x800000020B454490;
  if (v2 != 2)
  {
    v8 = 0xD000000000000015;
    v9 = 0x800000020B4544B0;
  }

  if (*v1)
  {
    v3 = 0x5F65676172657661;
  }

  if (*v1 <= 1u)
  {
    v10 = 0xEC00000065636170;
  }

  else
  {
    v3 = v8;
    v10 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t TargetZone.PrimaryType.metadataString.getter()
{
  v1 = 0xD000000000000024;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000021;
  }

  else
  {
    return v1;
  }
}

WorkoutCore::TargetZone::PrimaryType_optional __swiftcall TargetZone.PrimaryType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TargetZone.PrimaryType.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetZone.PrimaryType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance TargetZone.PrimaryType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetZone.PrimaryType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TargetZone.PrimaryType(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000021;
  v3 = "audioTranscriptionsEnabled";
  v4 = "oneMasterTypePace";
  v5 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000022;
    v4 = "oneMasterTypeCadence";
  }

  if (*v1)
  {
    v3 = "oneMasterTypeNone";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t TargetZone.State.description.getter()
{
  v1 = 1701736302;
  v2 = 0x6E6968746977;
  if (*v0 != 2)
  {
    v2 = 0x65766F6261;
  }

  if (*v0)
  {
    v1 = 0x776F6C6562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int TargetZone.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t TargetZone.TargetZoneHolder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore10TargetZoneC0fG6Holder33_92AF4F0C72AD87834C5CD689BFC4E3DDLLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore10TargetZoneC0fG6Holder33_92AF4F0C72AD87834C5CD689BFC4E3DDLLV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t TargetZone.TargetZoneHolder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore10TargetZoneC0fG6Holder33_92AF4F0C72AD87834C5CD689BFC4E3DDLLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore10TargetZoneC0fG6Holder33_92AF4F0C72AD87834C5CD689BFC4E3DDLLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19 = 0;
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v20;
    v18 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    v17 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TargetZone.State()
{
  v1 = 1701736302;
  v2 = 0x6E6968746977;
  if (*v0 != 2)
  {
    v2 = 0x65766F6261;
  }

  if (*v0)
  {
    v1 = 0x776F6C6562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetZone.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetZone.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TargetZone.TargetZoneHolder.CodingKeys()
{
  v1 = 7235949;
  if (*v0 != 1)
  {
    v1 = 7889261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TargetZone.TargetZoneHolder.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TargetZone.TargetZoneHolder.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TargetZone.TargetZoneHolder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TargetZone.TargetZoneHolder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TargetZone.init(type:min:max:enabled:)(unsigned __int8 *a1, char a2, double a3, double a4)
{
  v5 = *a1;
  *(v4 + 16) = v5;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  if (a2 == 2)
  {
    if (v5 > 3)
    {
      if (v5 > 5)
      {
        if (v5 != 6)
        {

          v8 = 0;
          goto LABEL_14;
        }

        v6 = a4;
        v7 = a3;
      }

      else
      {
        v6 = a4;
        v7 = a3;
      }
    }

    else
    {
      v6 = a4;
      v7 = a3;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = 0;
    if ((v9 & 1) == 0)
    {
      v8 = v7 > 0.0 || v6 > 0.0;
    }
  }

  else
  {
    v8 = a2 & 1;
  }

LABEL_14:
  *(v4 + 40) = v8;
  return v4;
}

WorkoutCore::TargetZone::State __swiftcall TargetZone.state(forDistanceUnit:currentValue:)(HKUnit forDistanceUnit, Swift::Double currentValue)
{
  v4 = *(v3 + 16);
  if (v4 - 3 < 4)
  {
    if (currentValue > 2.22044605e-16)
    {
      v5 = v2;
      LOBYTE(forDistanceUnit.super.isa) = swift_beginAccess();
      v7 = *(v3 + 32);
      if (v7 > 2.22044605e-16 && v7 < currentValue)
      {
        v11 = 3;
      }

      else
      {
        LOBYTE(forDistanceUnit.super.isa) = swift_beginAccess();
        v9 = *(v3 + 24);
        if (v9 <= 2.22044605e-16 || v9 <= currentValue)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }
      }

      *v5 = v11;
      return forDistanceUnit.super.isa;
    }

LABEL_17:
    *v2 = 0;
    return forDistanceUnit.super.isa;
  }

  if (v4 >= 3)
  {
    goto LABEL_17;
  }

  TargetZone.paceState(forDistanceUnit:currentValue:)(forDistanceUnit.super.isa, v2, currentValue);
  return forDistanceUnit.super.isa;
}

void TargetZone.paceState(forDistanceUnit:currentValue:)(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v7 = objc_opt_self();
  v8 = [v7 meterUnit];
  v9 = objc_opt_self();
  v10 = [v9 quantityWithUnit:v8 doubleValue:a3];

  v11 = [v7 meterUnit];
  swift_beginAccess();
  v12 = [v9 quantityWithUnit:v11 doubleValue:*(v3 + 24)];

  v13 = [v7 meterUnit];
  swift_beginAccess();
  v14 = [v9 quantityWithUnit:v13 doubleValue:*(v3 + 32)];

  v15 = MEMORY[0x20F2E8400](v10, a1, 1, 1.0);
  v16 = MEMORY[0x20F2E8400](v12, a1, 1, 1.0);
  v17 = MEMORY[0x20F2E8400](v14, a1, 1, 1.0);

  if (v15 <= 2.22044605e-16)
  {
    v18 = 0;
  }

  else if (*(v3 + 24) <= 2.22044605e-16 || v16 >= v15)
  {
    if (v15 >= v17 || *(v3 + 32) <= 2.22044605e-16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {
    v18 = 1;
  }

  *a2 = v18;
}

Swift::Int TargetZone.hashValue.getter()
{
  Hasher.init(_seed:)();
  TargetZone.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetZone()
{
  Hasher.init(_seed:)();
  TargetZone.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetZone(uint64_t a1)
{
  Hasher.init(_seed:)();
  TargetZone.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t static TargetZone.canonical()(uint64_t a1)
{
  type metadata accessor for TargetZone();
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  *(v1 + 24) = xmmword_20B44CB90;
  *(v1 + 40) = 1;

  return swift_dynamicCastClassUnconditional();
}

double static TargetZone.canonical(zoneType:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for TargetZone();
  v2 = swift_allocObject();
  result = dbl_20B44D160[v1];
  v4 = qword_20B44D178[v1];
  *(v2 + 16) = 0x60401u >> (8 * v1);
  *(v2 + 24) = result;
  *(v2 + 32) = v4;
  *(v2 + 40) = 1;
  return result;
}

uint64_t protocol witness for static Canonical.canonical() in conformance TargetZone@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TargetZone();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  *(v3 + 24) = xmmword_20B44CB90;
  *(v3 + 40) = 1;
  result = swift_dynamicCastClassUnconditional();
  *a2 = result;
  return result;
}

uint64_t specialized static TargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized == infix<A>(_:_:)(*(a1 + 16), *(a2 + 16)) & 1) != 0 && (swift_beginAccess(), v4 = *(a1 + 24), swift_beginAccess(), v4 == *(a2 + 24)) && (swift_beginAccess(), v5 = *(a1 + 32), swift_beginAccess(), v5 == *(a2 + 32)))
  {
    swift_beginAccess();
    v6 = *(a1 + 40);
    swift_beginAccess();
    v7 = v6 ^ *(a2 + 40) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType()
{
  result = lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType;
  if (!lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.PrimaryType and conformance TargetZone.PrimaryType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TargetZone.ZoneType] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type TargetZone.State and conformance TargetZone.State()
{
  result = lazy protocol witness table cache variable for type TargetZone.State and conformance TargetZone.State;
  if (!lazy protocol witness table cache variable for type TargetZone.State and conformance TargetZone.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.State and conformance TargetZone.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone and conformance TargetZone()
{
  result = lazy protocol witness table cache variable for type TargetZone and conformance TargetZone;
  if (!lazy protocol witness table cache variable for type TargetZone and conformance TargetZone)
  {
    type metadata accessor for TargetZone();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone and conformance TargetZone);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetZone.ZoneType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetZone.ZoneType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetZone.PrimaryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetZone.PrimaryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetZone.TargetZoneHolder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[24])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetZone.TargetZoneHolder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder.CodingKeys and conformance TargetZone.TargetZoneHolder.CodingKeys);
  }

  return result;
}

uint64_t specialized TargetZone.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v5 = JSONDecoder.init()();
  lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder();
  v6 = v5;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {

    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    type metadata accessor for TargetZone();
    v6 = swift_allocObject();
    *(v6 + 16) = v10;
    *(v6 + 24) = v11;
    *(v6 + 32) = v12;
    if (v10 > 6u)
    {

      outlined consume of Data._Representation(a1, a2);

      v8 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined consume of Data._Representation(a1, a2);

      v8 = 0;
      if ((v7 & 1) == 0)
      {
        v8 = v11 > 0.0 || v12 > 0.0;
      }
    }

    *(v6 + 40) = v8;
  }

  return v6;
}

uint64_t getEnumTagSinglePayload for TargetZone.TargetZoneHolder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetZone.TargetZoneHolder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized TargetZone.TargetZoneHolder.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t WorkoutConfiguration.serializedCompositionData.getter()
{
  v2 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutPlan();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutConfiguration.workoutPlanRepresentation()(v11);
  if (!v1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CE3FA0], v2);
    v0 = WorkoutPlan.dataRepresentation(as:)();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return v0;
}

void WorkoutConfiguration.workoutPlanRepresentation()(uint64_t a1@<X8>)
{
  v74 = a1;
  v72 = type metadata accessor for UUID();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v2);
  v73 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v69 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v77 = &v63 - v15;
  v66 = type metadata accessor for SwimBikeRunWorkout();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PacerWorkout();
  v76 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CustomWorkout();
  v75 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SingleGoalWorkout();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for WorkoutPlan.Workout();
  v79 = *(v81 - 8);
  v33 = MEMORY[0x28223BE20](v81, v32);
  v67 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v78 = &v63 - v36;
  type metadata accessor for GoalWorkoutConfiguration(0);
  v83 = v1;
  if (swift_dynamicCastClass())
  {
    v37 = v83;
    v38 = v80;
    GoalWorkoutConfiguration.workoutKitRepresentation.getter(v31);

    if (v38)
    {
      return;
    }

    v39 = v78;
    (*(v28 + 32))(v78, v31, v27);
    v40 = MEMORY[0x277CE3F88];
    v41 = v77;
    goto LABEL_13;
  }

  v43 = v75;
  v42 = v76;
  v64 = v19;
  v44 = v18;
  v45 = v80;
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v46 = v83;
    IntervalWorkoutConfiguration.workoutKitRepresentation.getter(v26);

    if (v45)
    {
      return;
    }

    v39 = v78;
    (*(v43 + 32))(v78, v26, v23);
    v40 = MEMORY[0x277CE3F98];
    v41 = v77;
    goto LABEL_13;
  }

  type metadata accessor for PacerWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v47 = v83;
    PacerWorkoutConfiguration.workoutKitRepresentation.getter(v22);

    if (v45)
    {
      return;
    }

    v39 = v78;
    (*(v42 + 32))(v78, v22, v64);
    v40 = MEMORY[0x277CE3F90];
    v41 = v77;
    goto LABEL_13;
  }

  type metadata accessor for MultiSportWorkoutConfiguration(0);
  v48 = swift_dynamicCastClass();
  v41 = v77;
  if (!v48)
  {
    v61 = type metadata accessor for ImportError();
    _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, MEMORY[0x277CE4010], MEMORY[0x277CE4018]);
    swift_allocError();
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277CE4000], v61);
    swift_willThrow();
    return;
  }

  v49 = v83;
  v50 = v44;
  MultiSportWorkoutConfiguration.workoutKitRepresentation.getter();

  if (!v45)
  {
    v39 = v78;
    (*(v65 + 32))(v78, v50, v66);
    v40 = MEMORY[0x277CE3F80];
LABEL_13:
    (*(v79 + 104))(v39, *v40, v81);
    v51 = type metadata accessor for WorkoutKitFeatures();
    v82[3] = v51;
    v82[4] = _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8], MEMORY[0x277CE3FB8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
    (*(*(v51 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FB0], v51);
    LOBYTE(v51) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v82);
    v80 = 0;
    if (v51)
    {
      v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
      v54 = v83;
      swift_beginAccess();
      _s10Foundation4UUIDVSgWOcTm_2(v54 + v53, v41, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    }

    else
    {
      v55 = type metadata accessor for WorkoutPlan.Route();
      (*(*(v55 - 8) + 56))(v41, 1, 1, v55);
    }

    v56 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
    v57 = v83;
    swift_beginAccess();
    v58 = v69;
    _s10Foundation4UUIDVSgWOcTm_2(&v57[v56], v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_beginAccess();
    v59 = v79;
    (*(v79 + 16))(v67, v39, v81);
    v60 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v71 + 16))(v73, &v57[v60], v72);
    _s10Foundation4UUIDVSgWOcTm_2(v41, v68, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    _s10Foundation4UUIDVSgWOcTm_2(v58, v70, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    WorkoutPlan.init(_:id:route:referenceUUID:alternativeUUIDs:)();
    _s10Foundation4UUIDVSgWOhTm_6(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _s10Foundation4UUIDVSgWOhTm_6(v41, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    (*(v59 + 8))(v78, v81);
  }
}

uint64_t WorkoutConfiguration.exportToFile()@<X0>(char *a1@<X8>)
{
  v63 = a1;
  v70[3] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WorkoutPlan();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v54 - v18;
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = [v21 URLsForDirectory:9 inDomains:1];

  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v23 + 16))
  {

    v48 = type metadata accessor for ExportError();
    _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type ExportError and conformance ExportError, MEMORY[0x277CE3FF0], MEMORY[0x277CE3FF8]);
    swift_allocError();
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277CE3FE8], v48);
    return swift_willThrow();
  }

  (*(v8 + 16))(v16, v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

  (*(v8 + 32))(v19, v16, v7);
  v24 = [v20 defaultManager];
  v25 = URL.path.getter();
  v26 = MEMORY[0x20F2E6C00](v25);

  v27 = [v24 fileExistsAtPath_];

  if ((v27 & 1) == 0)
  {
    v28 = [v20 defaultManager];
    URL._bridgeToObjectiveC()(v29);
    v31 = v30;
    v70[0] = 0;
    v32 = [v28 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v70];

    if (!v32)
    {
      v50 = v70[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v8 + 8))(v19, v7);
    }

    v33 = v70[0];
  }

  v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  v35 = v60;
  swift_beginAccess();
  v36 = [*(v35 + v34) localizedName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v68 = v37;
  v69 = v39;
  v66 = 32;
  v67 = 0xE100000000000000;
  v64 = 0;
  v65 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  URL.appendingPathComponent(_:)();

  v40 = v63;
  URL.appendingPathExtension(_:)();
  v41 = *(v8 + 8);
  v41(v12, v7);
  v42 = v61;
  v43 = v62;
  WorkoutConfiguration.workoutPlanRepresentation()(v62);
  if (v42)
  {
    v41(v40, v7);
    return (v41)(v19, v7);
  }

  else
  {
    v44 = v43;
    v45 = v58;
    v46 = v55;
    (*(v58 + 104))(v55, *MEMORY[0x277CE3FA0], v59);
    v60 = WorkoutPlan.dataRepresentation(as:)();
    v61 = v47;
    (*(v45 + 8))(v46, v59);
    (*(v56 + 8))(v44, v57);
    v52 = v60;
    v51 = v61;
    Data.write(to:options:)();
    v41(v19, v7);
    return outlined consume of Data._Representation(v52, v51);
  }
}

char *WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)(void *a1, uint64_t a2)
{
  v113 = a1;
  v116 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v105 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v103 = &v97 - v7;
  v8 = type metadata accessor for SwimBikeRunWorkout();
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v100 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for PacerWorkout();
  v107 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v11);
  v106 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustomWorkout();
  v109 = *(v13 - 8);
  v110 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v108 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v111 = v16;
  v112 = v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v98 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v99 = &v97 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v97 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v97 - v29;
  v31 = type metadata accessor for SingleGoalWorkout();
  v115 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32);
  v118 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for WorkoutPlan.Workout();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v97 - v41;
  WorkoutPlan.workout.getter();
  v43 = (*(v35 + 88))(v42, v34);
  if (v43 == *MEMORY[0x277CE3F88])
  {
    (*(v35 + 96))(v42, v34);
    (*(v115 + 32))(v118, v42, v31);
    WorkoutPlan.workout.getter();
    v44 = WorkoutPlan.Workout.activity.getter();
    v45 = *(v35 + 8);
    v45(v39, v34);
    v46 = v116;
    if (((*(*v116 + 312))(v44) & 1) == 0)
    {
      v58 = type metadata accessor for CompositionValidationError();
      _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError, MEMORY[0x277CE4128], MEMORY[0x277CE4130]);
      v116 = swift_allocError();
      v59 = v45;
      v61 = v60;
      WorkoutPlan.workout.getter();
      v62 = WorkoutPlan.Workout.activity.getter();
      v59(v39, v34);
      *v61 = v62;
      (*(*(v58 - 8) + 104))(v61, *MEMORY[0x277CE4118], v58);
      swift_willThrow();
      (*(v115 + 8))(v118, v31);
      return v39;
    }

    v47 = v115;
    WorkoutPlan.id.getter();
    v48 = v114;
    v49 = specialized static GoalWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(v118, v30, v113, v46);
    if (v48)
    {
      (*(v112 + 8))(v30, v111);
      (*(v47 + 8))(v118, v31);
      return v39;
    }

    v39 = v49;
    (*(v112 + 8))(v30, v111);
    (*(v47 + 8))(v118, v31);
  }

  else
  {
    v50 = v34;
    v51 = v116;
    if (v43 == *MEMORY[0x277CE3F98])
    {
      v52 = v50;
      (*(v35 + 96))(v42, v50);
      (*(v109 + 32))(v108, v42, v110);
      WorkoutPlan.workout.getter();
      v53 = WorkoutPlan.Workout.activity.getter();
      v54 = *(v35 + 8);
      v54(v39, v52);
      if (((*(*v51 + 312))(v53) & 1) == 0)
      {
        v71 = type metadata accessor for CompositionValidationError();
        _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError, MEMORY[0x277CE4128], MEMORY[0x277CE4130]);
        swift_allocError();
        v73 = v72;
        WorkoutPlan.workout.getter();
        v74 = WorkoutPlan.Workout.activity.getter();
        v54(v39, v52);
        *v73 = v74;
        (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277CE4118], v71);
        swift_willThrow();
        (*(v109 + 8))(v108, v110);
        return v39;
      }

      WorkoutPlan.id.getter();
      v55 = v108;
      v56 = v114;
      v57 = specialized static IntervalWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(v108, v27, v113, v51);
      if (v56)
      {
        (*(v112 + 8))(v27, v111);
        (*(v109 + 8))(v55, v110);
        return v39;
      }

      v39 = v57;
      (*(v112 + 8))(v27, v111);
      (*(v109 + 8))(v55, v110);
    }

    else
    {
      v63 = v50;
      if (v43 == *MEMORY[0x277CE3F90])
      {
        (*(v35 + 96))(v42, v50);
        v64 = v104;
        (*(v107 + 32))(v106, v42, v104);
        WorkoutPlan.workout.getter();
        v65 = WorkoutPlan.Workout.activity.getter();
        v66 = *(v35 + 8);
        v66(v39, v63);
        if (((*(*v51 + 312))(v65) & 1) == 0)
        {
          v82 = type metadata accessor for CompositionValidationError();
          _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError, MEMORY[0x277CE4128], MEMORY[0x277CE4130]);
          v116 = swift_allocError();
          v84 = v83;
          WorkoutPlan.workout.getter();
          v85 = WorkoutPlan.Workout.activity.getter();
          v66(v39, v63);
          *v84 = v85;
          (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277CE4118], v82);
          swift_willThrow();
          (*(v107 + 8))(v106, v64);
          return v39;
        }

        v67 = v99;
        WorkoutPlan.id.getter();
        v68 = v106;
        v69 = v114;
        v70 = specialized static PacerWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(v106, v67, v113, v51);
        if (v69)
        {
          (*(v112 + 8))(v67, v111);
          (*(v107 + 8))(v68, v64);
          return v39;
        }

        v39 = v70;
        (*(v112 + 8))(v67, v111);
        (*(v107 + 8))(v68, v64);
      }

      else
      {
        if (v43 != *MEMORY[0x277CE3F80])
        {
          v86 = type metadata accessor for CompositionValidationError();
          _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError, MEMORY[0x277CE4128], MEMORY[0x277CE4130]);
          swift_allocError();
          (*(*(v86 - 8) + 104))(v87, *MEMORY[0x277CE4120], v86);
          swift_willThrow();
          (*(v35 + 8))(v42, v63);
          return v39;
        }

        (*(v35 + 96))(v42, v50);
        v75 = v101;
        v76 = v100;
        v77 = v42;
        v78 = v102;
        (*(v101 + 32))(v100, v77, v102);
        v79 = v98;
        WorkoutPlan.id.getter();
        v80 = v114;
        v81 = specialized static MultiSportWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:)(v76, v79, v113);
        if (v80)
        {
          (*(v112 + 8))(v79, v111);
          (*(v75 + 8))(v76, v78);
          return v39;
        }

        v39 = v81;
        (*(v112 + 8))(v79, v111);
        (*(v75 + 8))(v76, v78);
      }
    }
  }

  v88 = type metadata accessor for WorkoutKitFeatures();
  v117[3] = v88;
  v117[4] = _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8], MEMORY[0x277CE3FB8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
  (*(*(v88 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FB0], v88);
  LOBYTE(v88) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v117);
  if (v88)
  {
    v90 = v103;
    WorkoutPlan.route.getter();
    v91 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    swift_beginAccess();
    outlined assign with take of UUID?(v90, &v39[v91], &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    swift_endAccess();
  }

  v92 = v105;
  WorkoutPlan.originalPlanReferenceUUID.getter();
  v93 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
  swift_beginAccess();
  outlined assign with take of UUID?(v92, &v39[v93], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  v94 = WorkoutPlan.alternativeUUIDs.getter();
  v95 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  *&v39[v95] = v94;

  return v39;
}

uint64_t static WorkoutConfiguration.transferRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v5, v6);
  (*(v7 + 56))(v4, 1, 1);
  UTType.init(exportedAs:conformingTo:)();
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for WorkoutConfiguration(0);
  _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for WorkoutConfiguration, &protocol conformance descriptor for WorkoutConfiguration);
  return FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)();
}

uint64_t closure #1 in static WorkoutConfiguration.transferRepresentation.getter(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for URL();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x2822009F8](closure #1 in static WorkoutConfiguration.transferRepresentation.getter, 0, 0);
}

uint64_t closure #1 in static WorkoutConfiguration.transferRepresentation.getter()
{
  WorkoutConfiguration.exportToFile()(*(v0 + 48));
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*(v3 + 16))(*(v0 + 40), v1, v2);
  SentTransferredFile.init(_:allowAccessingOriginalFile:)();
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #2 in static WorkoutConfiguration.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in static WorkoutConfiguration.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static WorkoutConfiguration.transferRepresentation.getter()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  MEMORY[0x20F2E55E0]();
  v4 = URL.dataRepresentation.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = specialized Occurrence.__allocating_init(count:)(0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(v4, v6, v7, static WorkoutConfigurationValidator.shared);

  outlined consume of Data._Representation(v4, v6);
  **(v0 + 16) = v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t protocol witness for static Transferable.transferRepresentation.getter in conformance WorkoutConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v7, v8);
  (*(v9 + 56))(v6, 1, 1);
  UTType.init(exportedAs:conformingTo:)();
  *(swift_allocObject() + 16) = v2;
  type metadata accessor for WorkoutConfiguration(0);
  return FileRepresentation.init(contentType:shouldAttemptToOpenInPlace:exporting:importing:)();
}

NSObject *specialized static WorkoutConfiguration.importFromData(_:with:validator:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v9 = type metadata accessor for WorkoutPlan();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Data._Representation(a1, a2);
  WorkoutPlan.init(from:)();
  if (v4)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);
    v15 = v4;
    v22 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v4;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_20AEA4000, v22, v16, "[Serialization] failed to deserialize due to %@", v17, 0xCu);
      _s10Foundation4UUIDVSgWOhTm_6(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v22 = WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)(a3, a4);
    (*(v10 + 8))(v13, v9);
    v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf;
    swift_beginAccess();
    *(&v22->isa + v23) = 1;
  }

  return v22;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #2 in static WorkoutConfiguration.transferRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in static WorkoutConfiguration.transferRepresentation.getter;

  return closure #2 in static WorkoutConfiguration.transferRepresentation.getter(a1, a2);
}

uint64_t _s10WorkoutKit11ImportErrorOACs0D0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type FileRepresentation<WorkoutConfiguration> and conformance FileRepresentation<A>()
{
  result = lazy protocol witness table cache variable for type FileRepresentation<WorkoutConfiguration> and conformance FileRepresentation<A>;
  if (!lazy protocol witness table cache variable for type FileRepresentation<WorkoutConfiguration> and conformance FileRepresentation<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16CoreTransferable18FileRepresentationVy07WorkoutA00E13ConfigurationCGMd, &_s16CoreTransferable18FileRepresentationVy07WorkoutA00E13ConfigurationCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FileRepresentation<WorkoutConfiguration> and conformance FileRepresentation<A>);
  }

  return result;
}

uint64_t closure #2 in static WorkoutConfiguration.transferRepresentation.getterpartial apply(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #2 in static WorkoutConfiguration.transferRepresentation.getterpartial apply;

  return closure #2 in static WorkoutConfiguration.transferRepresentation.getter(a1, a2);
}

uint64_t closure #2 in static WorkoutConfiguration.transferRepresentation.getterpartial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s10Foundation4UUIDVSgWOhTm_6(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static FunctionalThresholdPower.emptyFTP()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  static Date.now.getter();
  (*(v1 + 16))(v5, v8, v0);
  type metadata accessor for FunctionalThresholdPower(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  v10 = *(v1 + 32);
  v10(v9 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v5, v0);
  v10(v9 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v8, v0);
  return v9;
}

uint64_t FunctionalThresholdPower.__allocating_init(value:source:creationDate:)(char *a1, char *a2, double a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  type metadata accessor for FunctionalThresholdPower(0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  v13 = *(v7 + 32);
  v13(v12 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v10, v6);
  v13(v12 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, a2, v6);
  return v12;
}

uint64_t FunctionalThresholdPower.__allocating_init(value:source:creationDate:fetchDate:)(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  v9 = *a1;
  *(v8 + 16) = a4;
  *(v8 + 24) = v9;
  v10 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 32);
  v12(v8 + v10, a2, v11);
  v12(v8 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, a3, v11);
  return v8;
}

uint64_t type metadata accessor for FunctionalThresholdPower(uint64_t a1)
{
  result = type metadata singleton initialization cache for FunctionalThresholdPower;
  if (!type metadata singleton initialization cache for FunctionalThresholdPower)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FunctionalThresholdPowerSource.description.getter()
{
  if (*v0)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x656C707061;
  }
}

WorkoutCore::FunctionalThresholdPowerSource_optional __swiftcall FunctionalThresholdPowerSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FunctionalThresholdPowerSource.init(rawValue:), v3);

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

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FunctionalThresholdPowerSource(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726568746FLL;
  }

  else
  {
    v2 = 0x656C707061;
  }

  if (*a2)
  {
    v3 = 0x726568746FLL;
  }

  else
  {
    v3 = 0x656C707061;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FunctionalThresholdPowerSource()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance FunctionalThresholdPowerSource(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FunctionalThresholdPowerSource(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance FunctionalThresholdPowerSource(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FunctionalThresholdPowerSource.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FunctionalThresholdPowerSource(uint64_t *a1@<X8>)
{
  v2 = 0x656C707061;
  if (*v1)
  {
    v2 = 0x726568746FLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionalThresholdPowerSource()
{
  if (*v0)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x656C707061;
  }
}

uint64_t FunctionalThresholdPower.creationDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FunctionalThresholdPower.init(value:source:creationDate:fetchDate:)(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a1;
  *(v4 + 16) = a4;
  *(v4 + 24) = v7;
  v8 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 32);
  v10(v4 + v8, a2, v9);
  v10(v4 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, a3, v9);
  return v4;
}

id FunctionalThresholdPower.quantity.getter()
{
  v1 = [objc_opt_self() wattUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:*(v0 + 16)];

  return v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FunctionalThresholdPower.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance FunctionalThresholdPower.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FunctionalThresholdPower.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FunctionalThresholdPower.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FunctionalThresholdPower.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FunctionalThresholdPower.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x65756C6176;
  v4 = 0xEC00000065746144;
  v5 = 0x6E6F697461657263;
  if (*v1 != 2)
  {
    v5 = 0x7461446863746566;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x656372756F73;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FunctionalThresholdPower.CodingKeys()
{
  v1 = 0x65756C6176;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0x7461446863746566;
  }

  if (*v0)
  {
    v1 = 0x656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FunctionalThresholdPower.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized FunctionalThresholdPower.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionalThresholdPower.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FunctionalThresholdPower.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FunctionalThresholdPower.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FunctionalThresholdPower.init(from:)(a1);
  return v2;
}

_BYTE *FunctionalThresholdPower.init(from:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v30 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v27 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore24FunctionalThresholdPowerC10CodingKeys33_77C86E9BE0DCEB479DE08DF792395C7ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore24FunctionalThresholdPowerC10CodingKeys33_77C86E9BE0DCEB479DE08DF792395C7ELLOGMR);
  v11 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v12);
  v14 = v27 - v13;
  v15 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v16 = v32;
    type metadata accessor for FunctionalThresholdPower(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v7;
    v29 = v10;
    v17 = v11;
    v39 = 0;
    v18 = v31;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v32;
    *(v32 + 16) = v19;
    v37 = 1;
    lazy protocol witness table accessor for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v16 + 24) = v38;
    v36 = 2;
    v20 = _s10Foundation4DateVACSeAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27[0] = v20;
    v22 = v29;
    v23 = v30;
    v24 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
    v29 = *(v30 + 32);
    v27[1] = v30 + 32;
    v29(v16 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v22, v3);
    v35 = 3;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v34 = 3;
      v25 = v28;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v17 + 8))(v14, v18);
      v26 = v25;
    }

    else
    {
      (*(v17 + 8))(v14, v18);
      v26 = v28;
      (*(v23 + 16))(v28, v16 + v24, v3);
    }

    v29(v16 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v26, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v16;
}

uint64_t FunctionalThresholdPower.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore24FunctionalThresholdPowerC10CodingKeys33_77C86E9BE0DCEB479DE08DF792395C7ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore24FunctionalThresholdPowerC10CodingKeys33_77C86E9BE0DCEB479DE08DF792395C7ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[14] = *(v3 + 24);
    v11[13] = 1;
    lazy protocol witness table accessor for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[12] = 2;
    type metadata accessor for Date();
    _s10Foundation4DateVACSeAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[11] = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double FunctionalThresholdPower.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v2);
  String.hash(into:)();

  return result;
}

uint64_t FunctionalThresholdPower.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v2);
  return v0;
}

uint64_t FunctionalThresholdPower.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v2);

  return swift_deallocClassInstance();
}

Swift::Int FunctionalThresholdPower.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

_BYTE *protocol witness for Decodable.init(from:) in conformance FunctionalThresholdPower@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FunctionalThresholdPower(0);
  v5 = swift_allocObject();
  result = FunctionalThresholdPower.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FunctionalThresholdPower(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(*v1 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t FunctionalThresholdPower.description.getter()
{
  _StringGuts.grow(_:)(41);
  MEMORY[0x20F2E6D80](0x203A65756C617628, 0xE800000000000000);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x656372756F73202CLL, 0xEA0000000000203ALL);
  if (*(v0 + 24))
  {
    v1 = 0x726568746FLL;
  }

  else
  {
    v1 = 0x656C707061;
  }

  MEMORY[0x20F2E6D80](v1, 0xE500000000000000);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B456020);
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v2 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v2 stringFromDate_];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x20F2E6D80](v5, v7);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

uint64_t specialized static FunctionalThresholdPower.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 24))
    {
      v2 = 0x726568746FLL;
    }

    else
    {
      v2 = 0x656C707061;
    }

    if (*(a2 + 24))
    {
      v3 = 0x726568746FLL;
    }

    else
    {
      v3 = 0x656C707061;
    }

    if (v2 == v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t lazy protocol witness table accessor for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPower.CodingKeys and conformance FunctionalThresholdPower.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource()
{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource;
  if (!lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionalThresholdPowerSource and conformance FunctionalThresholdPowerSource);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FunctionalThresholdPowerSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FunctionalThresholdPowerSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for FunctionalThresholdPower(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t getEnumTagSinglePayload for FunctionalThresholdPower.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FunctionalThresholdPower.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized FunctionalThresholdPower.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FunctionalThresholdPower.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t _HKWorkoutGoalType.analyticsKey.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x796772656E65;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701669236;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x65636E6174736964;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1852141679;
  }
}

uint64_t _HKWorkoutGoalType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x796772656E45;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1701669204;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x65636E6174736944;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1852141647;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _HKWorkoutGoalType()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x796772656E45;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1701669204;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x65636E6174736944;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1852141647;
  }
}

id static NLWorkoutFactory.make(configuration:healthStore:formattingManager:locationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(NLWorkout);

  return [v8 initWithWorkoutConfiguration:a1 healthStore:a2 formattingManager:a3 locationProvider:a4];
}

id static NLWorkoutFactory.make(configuration:healthStore:formattingManager:session:locationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(NLWorkout);

  return [v10 initWithWorkoutConfiguration:a1 healthStore:a2 formattingManager:a3 session:a4 locationProvider:a5];
}

double closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = a1;
  v12 = a2;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded(), v14);

  return result;
}

uint64_t closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded(), v8, v7);
}

uint64_t closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    NLWorkoutRecoveryController.handleCrashRecovery(session:error:)(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void NLWorkoutRecoveryController.handleCrashRecovery(session:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v54 - v8;
  if (a2)
  {
    if (one-time initialization token for recovery != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.recovery);
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v54[1] = a2;
      *&v55[0] = v15;
      *v14 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v16 = Optional.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v55);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Attempted crash recovery failed. error=%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    [v3 setAppInWorkoutSession_];
    return;
  }

  if (a1)
  {
    v19 = a1;
    v20 = [v19 associatedWorkoutBuilder];
    v21 = [v20 startDate];

    if (!v21)
    {
      v39 = type metadata accessor for Date();
      (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
      _s10Foundation4DateVSgWOhTm_14(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for recovery != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static WOLog.recovery);
      v19 = v19;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v19;
        *v44 = a1;
        v45 = v19;
        _os_log_impl(&dword_20AEA4000, v41, v42, "Attempted crash recovery failed. start date nil for session=%@", v43, 0xCu);
        _s10Foundation4DateVSgWOhTm_14(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v44, -1, -1);
        MEMORY[0x20F2E9420](v43, -1, -1);
      }

      goto LABEL_28;
    }

    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    _s10Foundation4DateVSgWOhTm_14(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v23 = [v19 associatedWorkoutBuilder];
    v24 = [v23 metadata];

    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = static HealthDataConstants.workoutSessionIdentifierProperty.getter();
    if (*(v25 + 16))
    {
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
      v30 = v29;

      if (v30)
      {
        outlined init with copy of Any(*(v25 + 56) + 32 * v28, v55);

        _s10Foundation4DateVSgWOhTm_14(v55, &_sypSgMd, &_sypSgMR);
        if (one-time initialization token for recovery != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static WOLog.recovery);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_20AEA4000, v32, v33, "Fitness+ workouts do not support crash recovery. Ending workout.", v34, 2u);
          MEMORY[0x20F2E9420](v34, -1, -1);
        }

        [v19 end];
LABEL_28:
        [v3 setAppInWorkoutSession_];

        return;
      }
    }

    else
    {
    }

    memset(v55, 0, sizeof(v55));
    _s10Foundation4DateVSgWOhTm_14(v55, &_sypSgMd, &_sypSgMR);
    if (one-time initialization token for recovery != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static WOLog.recovery);
    v47 = v19;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = a1;
      v52 = v47;
      _os_log_impl(&dword_20AEA4000, v48, v49, "Recover workout session with workout controller. session=%@", v50, 0xCu);
      _s10Foundation4DateVSgWOhTm_14(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v51, -1, -1);
      MEMORY[0x20F2E9420](v50, -1, -1);
    }

    v53 = [v3 workoutController];
    [v53 recoverWorkoutWithWorkoutSession_];
  }

  else
  {
    if (one-time initialization token for recovery != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.recovery);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20AEA4000, v36, v37, "Attempted crash recovery failed. session nil", v38, 2u);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }

    [v3 setAppInWorkoutSession_];
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t partial apply for closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded();

  return closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in NLWorkoutRecoveryController.recoverFromCrashIfNeeded()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s10Foundation4DateVSgWOhTm_14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}