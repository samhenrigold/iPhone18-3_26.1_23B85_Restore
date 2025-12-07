id ActivityAuthorizationManager.init(dataSource:queue:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = one-time initialization token for shared;
  v5 = static IMUserNotificationCenter.shared;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = one-time initialization token for shared;
  v7 = static CPApplicationPolicyManager.shared;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = static CPAudioRoutePolicyManager.shared;
  v9 = objc_allocWithZone(CPFeatureFlags);
  v10 = v8;
  v11 = [v9 init];
  v12 = objc_allocWithZone(ObjectType);
  v22[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v22[4] = &protocol witness table for IMUserNotificationCenter;
  v22[0] = v5;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v13 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *&v12[v13] = v14;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  v12[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v22, &v12[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a2;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = v7;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = v10;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = v11;
  v21.receiver = v12;
  v21.super_class = ObjectType;
  v16 = v7;
  v17 = a2;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  [a1 addObserver:v18 queue:v17];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  swift_deallocPartialClassInstance();
  return v18;
}

void ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(void *a1, void *a2, int a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v136 = a6;
  v134 = a3;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v7[OBJC_IVAR___CPActivityAuthorizationManager_queue];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v133 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE09B00;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v20;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v21;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v22;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v136(0, 0);
    return;
  }

  v135 = a1;
  v24 = [Strong activityAuthorizationStatePresentAlertIfIncapable_];
  v25 = [v24 isSharePlayCapable];
  if (!v25)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (one-time initialization token for host == -1)
    {
LABEL_12:
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Log.host);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1AEB26000, v38, v39, "At least one of the active participants is on an older SharePlay protocol version. Not allowing SharePlay", v40, 2u);
        MEMORY[0x1B27120C0](v40, -1, -1);
      }

      v36 = 0;
      goto LABEL_15;
    }

LABEL_61:
    swift_once();
    goto LABEL_12;
  }

  v26 = a7;
  v138 = v135;
  v139 = a2;
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v138;
  v27 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v125 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v27)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.host);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136315138;
      v137 = v32;
      v138 = v135;
      v139 = a2;

      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v137);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1AEB26000, v29, v30, "Bypassing user authorization for activity started from %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1B27120C0](v32, -1, -1);
      MEMORY[0x1B27120C0](v31, -1, -1);
    }

    v36 = 1;
LABEL_15:
    v136(v36, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v41 = [v24 activeConversation];
  if ([v24 hasActiveActivitySessionContainer])
  {
    v132 = v41;
    v42 = *&v7[OBJC_IVAR___CPActivityAuthorizationManager_lock];
    os_unfair_lock_lock(*(v42 + 16));
    swift_beginAccess();
    v43 = v7;
    specialized Set._Variant.remove(_:)(v135, a2);
    v45 = v44;
    swift_endAccess();
    v131 = v26;
    if (v45)
    {

      os_unfair_lock_unlock(*(v42 + 16));
      v46 = a4;
      if ((v134 & 1) == 0)
      {
        v136(1, 0);
LABEL_32:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      os_unfair_lock_unlock(*(v42 + 16));
      v46 = a4;
    }

    os_unfair_lock_lock(*(v42 + 16));
    v52 = v7[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest];
    v7[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 1;
    os_unfair_lock_unlock(*(v42 + 16));
    if (v52)
    {
      v53 = v135;
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static Log.host);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v138 = v58;
        *v57 = 136315138;
        *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, a2, &v138);
        _os_log_impl(&dword_1AEB26000, v55, v56, "Not allowing activation from %s because an authorization prompt is already being displayed", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x1B27120C0](v58, -1, -1);
        MEMORY[0x1B27120C0](v57, -1, -1);
      }

      lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
      v59 = swift_allocError();
      *v60 = 3;
      v136(0, v59);

      goto LABEL_32;
    }

    v130 = v24;
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = swift_allocObject();
    v63 = v136;
    v62[2] = v61;
    v62[3] = v63;
    v129 = v62;
    v62[4] = v131;
    v64 = 2;
    swift_retain_n();

    v66 = v135;
    if (v132)
    {
      v67 = v132;
      v68 = TUConversation.hasLocalActivitySession(forBundleIdentifier:)(v66, a2);

      v64 = v68 & 1;
    }

    v69 = MEMORY[0x1E69E7D40];
    if (!v46)
    {
      goto LABEL_47;
    }

    (*((*MEMORY[0x1E69E7D40] & *v46) + 0x80))(&v138, v65);
    if (!v138)
    {
      goto LABEL_47;
    }

    if (v138 == 1)
    {
      goto LABEL_38;
    }

    if (v64 == 2)
    {
      v82 = swift_allocObject();
      v83 = v129;
      *(v82 + 16) = partial apply for closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:);
      *(v82 + 24) = v83;
      *(v82 + 32) = v7;
      *(v82 + 40) = v66;
      v84 = v132;
      *(v82 + 48) = a2;
      *(v82 + 56) = v84;
      v85 = v134 & 1;
      *(v82 + 64) = v134 & 1;
      *(v82 + 72) = v133;
      *(v82 + 80) = v46;
      swift_unknownObjectRetain();
      v86 = v84;
      v128 = v61;
      v87 = v66;
      v88 = v86;
      v89 = v46;

      v90 = v7;
      v91 = closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
      v92 = v87;
      v93 = a2;
      v94 = v84;
      v95 = v85;
      v96 = v46;
      v97 = v82;
LABEL_59:
      ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(v92, v93, v94, v95, v96, v91, v97);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    if ((v64 & 1) == 0)
    {
LABEL_38:
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static Log.host);
      v71 = v46;

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      v136 = v71;

      v127 = v73;
      v74 = os_log_type_enabled(v72, v73);
      v128 = v61;
      if (v74)
      {
        v126 = v72;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v138 = v76;
        *v75 = 136315650;
        (*((*MEMORY[0x1E69E7D40] & *v136) + 0x80))(&v137);
        v77 = String.init<A>(reflecting:)();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v138);

        *(v75 + 4) = v79;
        *(v75 + 12) = 2080;
        *(v75 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, a2, &v138);
        *(v75 + 22) = 2080;
        if (v64 == 2)
        {
          v80 = 0xE300000000000000;
          v81 = 7104878;
        }

        else
        {
          LOBYTE(v137) = v64;
          v81 = String.init<A>(reflecting:)();
          v80 = v116;
        }

        v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v80, &v138);

        *(v75 + 24) = v117;
        v118 = v126;
        _os_log_impl(&dword_1AEB26000, v126, v127, "Prompting to start activity due to override %s; bundleID %s has existing session? %s", v75, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v76, -1, -1);
        MEMORY[0x1B27120C0](v75, -1, -1);

        v66 = v135;
      }

      else
      {
      }

      v109 = swift_allocObject();
      v119 = v129;
      *(v109 + 16) = partial apply for closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:);
      *(v109 + 24) = v119;
      *(v109 + 32) = v43;
      *(v109 + 40) = v66;
      v120 = v132;
      *(v109 + 48) = a2;
      *(v109 + 56) = v120;
      v121 = v134 & 1;
      *(v109 + 64) = v134 & 1;
      *(v109 + 72) = v133;
      *(v109 + 80) = v46;
      swift_unknownObjectRetain();
      v122 = v66;
      v88 = v120;
      v123 = v136;

      v43;
      v91 = closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
      v92 = v122;
      v93 = a2;
      v94 = v120;
      v95 = v121;
      v96 = v46;
    }

    else
    {
LABEL_47:
      v98 = v7;
      if (((*((*v69 & **&v7[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager]) + 0x150))(v66, a2) & 1) != 0 && [*&v7[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] sharePlaySupported])
      {
        if (one-time initialization token for host != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        __swift_project_value_buffer(v99, static Log.host);

        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = v61;
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v138 = v104;
          *v103 = 136315138;
          *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, a2, &v138);
          _os_log_impl(&dword_1AEB26000, v100, v101, "Skipping confirmation prompt as sharing is enabled for: %s", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v104);
          MEMORY[0x1B27120C0](v104, -1, -1);
          v105 = v103;
          v61 = v102;
          MEMORY[0x1B27120C0](v105, -1, -1);
        }

        v106 = v43;
        v107 = v131;

        v108 = v132;
        specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(v66, a2, v132, v134 & 1, v46, v106, v61, v136, v107);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      v109 = swift_allocObject();
      v110 = v129;
      *(v109 + 16) = partial apply for closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:);
      *(v109 + 24) = v110;
      *(v109 + 32) = v7;
      *(v109 + 40) = v66;
      v128 = v61;
      v111 = v46;
      v112 = v132;
      *(v109 + 48) = a2;
      *(v109 + 56) = v112;
      v113 = v134 & 1;
      *(v109 + 64) = v134 & 1;
      *(v109 + 72) = v133;
      *(v109 + 80) = v111;
      swift_unknownObjectRetain();
      v114 = v66;
      v88 = v112;
      v115 = v111;

      v98;
      v91 = partial apply for closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:);
      v92 = v114;
      v93 = a2;
      v94 = v112;
      v95 = v113;
      v96 = v111;
    }

    v97 = v109;
    goto LABEL_59;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Log.host);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v138 = v51;
    *v50 = 136315138;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, a2, &v138);
    _os_log_impl(&dword_1AEB26000, v48, v49, "Not allowing activation from %s because there is no active conversation or call.", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1B27120C0](v51, -1, -1);
    MEMORY[0x1B27120C0](v50, -1, -1);
  }

  v136(0, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___CPActivityAuthorizationManager_lock);
    v9 = Strong;

    os_unfair_lock_lock(*(v8 + 16));
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v10[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
    }

    os_unfair_lock_unlock(*(v8 + 16));
  }

  return a4(a1 & 1, a2);
}

uint64_t ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(uint64_t a1, unint64_t a2, void *a3, int a4, unint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v90 = a7;
  v86 = a6;
  v80 = a5;
  LODWORD(v9) = a4;
  v93 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v87 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = v14;
  v89 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v75[-v15];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v82);
  v91 = &v75[-v16];
  v83 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v79 = *(v83 - 1);
  v17 = *(v79 + 64);
  v18 = MEMORY[0x1EEE9AC00](v83);
  v85 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75[-v19];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.host);
  v22 = a3;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v84 = a2;
  v81 = a3;
  v78 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v76 = v9;
    v9 = v27;
    v28 = swift_slowAlloc();
    v77 = v17;
    v29 = v20;
    v30 = v8;
    v31 = v28;
    v94 = v28;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, a2, &v94);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v22;
    *v9 = a3;
    v32 = v22;
    _os_log_impl(&dword_1AEB26000, v23, v24, "Deferring activity authorization request to user for bundleIdentifier: %s on conversation: %@.", v26, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = v9;
    LOBYTE(v9) = v76;
    MEMORY[0x1B27120C0](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v34 = v31;
    v8 = v30;
    v20 = v29;
    v17 = v77;
    MEMORY[0x1B27120C0](v34, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  v35 = *&v8[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager];
  v36 = [v35 sharePlaySupported];
  v37 = v91;
  if ((v36 & 1) != 0 || (v38 = [v35 pickedRoute]) == 0)
  {
    v45 = v93;
    v47 = v84;
    v80 = specialized ActivityAuthorizationManager.authorizationRequestDisplayInformation(forApplicationWithBundleIdentifier:onNearbyDeviceHandle:preparing:overrides:)(v93, v84, 0, v9 & 1, v80);
  }

  else
  {
    v39 = v38;
    v40 = [v38 name];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v8;
    v44 = v43;

    v37 = v91;
    v45 = v93;
    v46 = v41;
    v47 = v84;
    v80 = specialized ActivityAuthorizationManager.unsupportedAudioRouteDisplayInformation(forApplicationWithBundleIdentifier:onNearbyDeviceHandle:preparing:routeName:)(v93, v84, v9 & 1, v46, v44);
    v8 = v42;
  }

  LOBYTE(v94) = 9;

  specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)();
  v94 = 0;
  v95 = 0xE000000000000000;
  if (v81)
  {
    v48 = [v78 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = type metadata accessor for UUID();
  (*(*(v50 - 8) + 56))(v37, v49, 1, v50);
  v51 = String.init<A>(describing:)();
  MEMORY[0x1B2710020](v51);

  MEMORY[0x1B2710020](46, 0xE100000000000000);
  MEMORY[0x1B2710020](v45, v47);
  v91 = v94;
  v82 = v95;
  v52 = v92;
  outlined init with copy of SharePlayLatencyLogger.Interval(v20, v92);
  v53 = v79 + 56;
  (*(v79 + 56))(v52, 0, 1, v83);
  v54 = v85;
  outlined init with copy of SharePlayLatencyLogger.Interval(v20, v85);
  v55 = (*(v53 + 24) + 16) & ~*(v53 + 24);
  v56 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = v47;
  v59 = swift_allocObject();
  v83 = v20;
  v60 = v59;
  outlined init with take of SharePlayLatencyLogger.Interval(v54, v59 + v55);
  *(v60 + v56) = v8;
  v61 = (v60 + v57);
  *v61 = v45;
  v61[1] = v47;
  v62 = (v60 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8));
  v63 = v90;
  *v62 = v86;
  v62[1] = v63;
  v64 = *&v8[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
  v85 = *&v8[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
  v86 = __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v85);
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = v89;
  outlined init with copy of SharePlayLatencyLogger.Interval?(v52, v89);
  v67 = v8;
  v68 = (*(v87 + 80) + 24) & ~*(v87 + 80);
  v69 = (v88 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  *(v70 + 16) = v65;
  outlined init with take of SharePlayLatencyLogger.Interval?(v66, v70 + v68);
  v71 = (v70 + v69);
  *v71 = partial apply for closure #1 in ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:);
  v71[1] = v60;
  v72 = *(v64 + 8);

  v73 = v67;

  v72(v91, v82, v93, v58, v80, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v70, v85, v64);

  outlined destroy of NSObject?(v92, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  outlined destroy of SharePlayLatencyLogger.Interval(v83);
}

id TUConversation.hasLocalActivitySession(forBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.max(by:)(v7);
  v9 = v8;

  if (v9)
  {
    v10 = [v9 activity];
    v11 = [v10 bundleIdentifier];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v17 = [v9 isLocallyInitiated];
      goto LABEL_12;
    }

LABEL_8:
    v17 = 0;
LABEL_12:

    return v17;
  }

  return 0;
}

void ActivityAuthorizationManager.requestAuthorizationForApplicationLaunch(withActivity:completionHandler:)(void *a1, void *a2, uint64_t a3)
{
  v92 = a2;
  v93 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v87 = *(v5 - 8);
  v6 = *(v87 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v78 - v10;
  v12 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v13 = *(v12 - 8);
  v84 = v12;
  v85 = v13;
  v14 = *(v13 + 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v86 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v78 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *&v3[OBJC_IVAR___CPActivityAuthorizationManager_queue];
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v23 = [a1 bundleIdentifier];
  if (!v23)
  {
    if (one-time initialization token for host == -1)
    {
LABEL_13:
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Log.host);
      v37 = a1;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_1AEB26000, v38, v39, "Invalid bundleIdentifier for activity %@", v40, 0xCu);
        outlined destroy of NSObject?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v41, -1, -1);
        MEMORY[0x1B27120C0](v40, -1, -1);
      }

      goto LABEL_17;
    }

LABEL_29:
    swift_once();
    goto LABEL_13;
  }

  v24 = v23;
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_17:
    (v92)(0, 0);
    return;
  }

  v28 = Strong;
  v83 = a1;
  v29 = [Strong activityAuthorizationStatePresentAlertIfIncapable_];
  v30 = [v29 activeConversation];
  if ([v29 hasActiveActivitySessionContainer])
  {
    v82 = v28;
    v31 = v3;
    if (((*((*MEMORY[0x1E69E7D40] & **&v3[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager]) + 0x150))(v91, v26) & 1) != 0 && [*&v3[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] sharePlaySupported])
    {

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Log.host);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1AEB26000, v33, v34, "Bypassing authorization since application is already authorized.", v35, 2u);
        MEMORY[0x1B27120C0](v35, -1, -1);
      }

      (v92)(1, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v94) = 10;

      specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)();
      v94 = 0;
      v95 = 0xE000000000000000;
      v81 = v29;
      if (v30)
      {
        v51 = [v30 groupUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v53 = type metadata accessor for UUID();
      (*(*(v53 - 8) + 56))(v11, v52, 1, v53);
      v54 = String.init<A>(describing:)();
      MEMORY[0x1B2710020](v54);

      MEMORY[0x1B2710020](46, 0xE100000000000000);
      MEMORY[0x1B2710020](v91, v26);
      v79 = v95;
      v80 = v94;
      v55 = v31;
      v83 = specialized static ActivityAuthorizationManager.notificationDisplayInformation(audioRoutePolicyManager:activity:conversation:)(*&v31[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager], v83, v30);
      v56 = v89;
      v57 = v90;
      outlined init with copy of SharePlayLatencyLogger.Interval(v89, v90);
      v58 = v85 + 56;
      (*(v85 + 7))(v57, 0, 1, v84);
      v59 = v56;
      v60 = v86;
      outlined init with copy of SharePlayLatencyLogger.Interval(v59, v86);
      v61 = (v58[24] + 16) & ~v58[24];
      v85 = v30;
      v62 = (v14 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      outlined init with take of SharePlayLatencyLogger.Interval(v60, v64 + v61);
      *(v64 + v62) = v55;
      v65 = (v64 + v63);
      v66 = v92;
      *v65 = v91;
      v65[1] = v26;
      v67 = (v64 + ((v63 + 23) & 0xFFFFFFFFFFFFFFF8));
      v68 = v93;
      *v67 = v66;
      v67[1] = v68;
      v69 = *&v55[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
      v86 = *&v55[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
      v92 = __swift_project_boxed_opaque_existential_1(&v55[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v86);
      v70 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v71 = v88;
      outlined init with copy of SharePlayLatencyLogger.Interval?(v90, v88);
      v72 = (*(v87 + 80) + 24) & ~*(v87 + 80);
      v73 = (v6 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      *(v74 + 16) = v70;
      outlined init with take of SharePlayLatencyLogger.Interval?(v71, v74 + v72);
      v75 = (v74 + v73);
      *v75 = partial apply for closure #1 in ActivityAuthorizationManager.confirmActivityLaunchAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:withActivity:completionHandler:);
      v75[1] = v64;
      v76 = *(v69 + 8);

      v77 = v55;

      v76(v80, v79, v91, v26, v83, 1, partial apply for closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:), v74, v86, v69);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      outlined destroy of NSObject?(v90, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
      outlined destroy of SharePlayLatencyLogger.Interval(v89);
    }
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.host);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v30;
      v48 = swift_slowAlloc();
      v94 = v48;
      *v46 = 136315138;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v26, &v94);

      *(v46 + 4) = v49;
      _os_log_impl(&dword_1AEB26000, v44, v45, "Not allowing activation from %s because there is no active conversation or call.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      v50 = v48;
      v30 = v47;
      MEMORY[0x1B27120C0](v50, -1, -1);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }

    else
    {
    }

    (v92)(0, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void closure #1 in ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void *))
{
  specialized static SharePlayLatencyLogger.endInterval(_:)(a2);
  if (a1 == 2)
  {
    v12 = 0;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    [*(a3 + OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager) switchToSpeakerRouteIfNecessary];
    v11._countAndFlagsBits = a4;
    v11._object = a5;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v11);
    v12 = 1;
LABEL_5:
    a6(v12, 0);
    return;
  }

  lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
  v13 = swift_allocError();
  *v14 = 0;
  a6(0, v13);
}

Swift::Void __swiftcall ActivityAuthorizationManager.setAuthorization(_:for:)(Swift::Bool _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 67109378;
    *(v10 + 4) = _;
    *(v10 + 8) = 2080;
    *(v10 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v12);
    _os_log_impl(&dword_1AEB26000, v8, v9, "Setting authorization: %{BOOL}d for identifier: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & **(v3 + OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager)) + 0x178))(_, countAndFlagsBits, object);
}

void closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, void (*a7)(uint64_t, void *))
{
  specialized static SharePlayLatencyLogger.endInterval(_:)(a2);
  if (a1)
  {
    lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
    v13 = swift_allocError();
    *v14 = 1;
    a7(0, v13);
  }

  else
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v15);
    if (a6)
    {
      v16 = *(a3 + OBJC_IVAR___CPActivityAuthorizationManager_lock);
      os_unfair_lock_lock(*(v16 + 16));
      swift_beginAccess();

      specialized Set._Variant.insert(_:)(&v17, a4, a5);
      swift_endAccess();

      os_unfair_lock_unlock(*(v16 + 16));
    }

    a7(1, 0);
  }
}

void closure #1 in ActivityAuthorizationManager.confirmActivityLaunchAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:withActivity:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void *))
{
  specialized static SharePlayLatencyLogger.endInterval(_:)(a2);
  if (a1)
  {
    lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
    v11 = swift_allocError();
    *v12 = 0;
    a6(0, v11);
  }

  else
  {
    [*(a3 + OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager) switchToSpeakerRouteIfNecessary];
    v13._countAndFlagsBits = a4;
    v13._object = a5;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v13);
    a6(1, 0);
  }
}

void closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    outlined init with copy of SharePlayLatencyLogger.Interval?(a3, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of NSObject?(v11, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    }

    else
    {
      outlined init with take of SharePlayLatencyLogger.Interval(v11, v15);
      v24 = 8;
      aBlock = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      MEMORY[0x1B2710020](0xD000000000000020, 0x80000001AEE34810);
      v25 = a1;
      type metadata accessor for IMUserNotificationResponse(0);
      _print_unlocked<A, B>(_:_:)();
      specialized static SharePlayLatencyLogger.emitEvent(_:in:message:)(&v24, v15, aBlock, v27);

      outlined destroy of SharePlayLatencyLogger.Interval(v15);
    }

    static DispatchQoS.userInitiated.getter();
    v18 = swift_allocObject();
    v19 = v23;
    v18[2] = v22;
    v18[3] = v19;
    v18[4] = a1;
    v30 = partial apply for closure #1 in closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:);
    v31 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v29 = &block_descriptor_15;
    _Block_copy(&aBlock);
    v25 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    DispatchWorkItem.init(qos:flags:block:)();

    v20 = *&v17[OBJC_IVAR___CPActivityAuthorizationManager_queue];
    OS_dispatch_queue.async(execute:)();
  }
}

id ActivityAuthorizationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityAuthorizationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized Sequence.max(by:)(uint64_t a1)
{
  v42 = type metadata accessor for Date();
  v3 = *(v42 - 8);
  v4 = MEMORY[0x1EEE9AC00](v42);
  v41 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = v36 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v39 = v3;
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v46;
    v7 = v47;
    v8 = v48;
    v9 = v49;
    v10 = v50;
    if (v46 < 0)
    {
      v34 = v48;
      v35 = __CocoaSet.Iterator.next()();
      if (v35)
      {
        v45 = v35;
        swift_dynamicCast();
        v44 = 0;
        v43 = v9;
        v12 = v10;
        v8 = v34;
        v18 = v51;
        v3 = v39;
        if (v51)
        {
          goto LABEL_15;
        }
      }

LABEL_31:
      outlined consume of Set<String>.Iterator._Variant(a1);
      return;
    }

    v3 = v39;
    v43 = v49;
    if (v50)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v10 = v15 & *(a1 + 56);

    v9 = 0;
    v43 = 0;
    if (v10)
    {
LABEL_4:
      v11 = __clz(__rbit64(v10));
      v12 = (v10 - 1) & v10;
      goto LABEL_14;
    }
  }

  v16 = v9;
  do
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_34;
    }

    if (v9 >= ((v8 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v17 = *(v7 + 8 * v9);
    ++v16;
  }

  while (!v17);
  v11 = __clz(__rbit64(v17));
  v12 = (v17 - 1) & v17;
LABEL_14:
  v18 = *(*(a1 + 48) + 8 * (v11 | (v9 << 6)));
  v44 = 1;
  if (!v18)
  {
    goto LABEL_31;
  }

LABEL_15:
  v43 = a1;
  v36[0] = v8;
  v36[1] = v1;
  v19 = (v8 + 64) >> 6;
  v38 = v19;
  v39 = v3 + 1;
  v37 = v7;
  while (!v44)
  {
    v25 = __CocoaSet.Iterator.next()();
    if (!v25 || (v45 = v25, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58), swift_dynamicCast(), v24 = v51, v22 = v9, v23 = v12, !v51))
    {
LABEL_28:
      outlined consume of Set<String>.Iterator._Variant(v43);
      return;
    }

LABEL_25:
    v26 = v18;
    v27 = [v18 timestamp];
    v28 = v40;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = [v24 timestamp];
    v30 = v41;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v29) = static Date.< infix(_:_:)();
    v31 = *v39;
    v32 = v30;
    v33 = v42;
    (*v39)(v32, v42);
    v31(v28, v33);
    if (v29)
    {

      v18 = v24;
      v9 = v22;
      v12 = v23;
      v7 = v37;
      v19 = v38;
    }

    else
    {

      v9 = v22;
      v12 = v23;
      v7 = v37;
      v19 = v38;
      v18 = v26;
    }
  }

  v20 = v9;
  v21 = v12;
  v22 = v9;
  if (v12)
  {
LABEL_21:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v43 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_28;
    }

    v21 = *(v7 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id specialized ActivityAuthorizationManager.init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  v28[3] = a9;
  v28[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a2, a9);
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v20 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *(v21 + 16) = v22;
  *v22 = 0;
  *&a7[v20] = v21;
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  a7[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v28, &a7[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a3;
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = a4;
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = a5;
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = a6;
  v27.receiver = a7;
  v27.super_class = ObjectType;
  v23 = a3;
  v24 = a4;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  [a1 addObserver:v25 queue:v23];
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v25;
}

id specialized ActivityAuthorizationManager.__allocating_init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a6;
  v24 = a8;
  v22 = a5;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a2, a9);
  return specialized ActivityAuthorizationManager.init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(a1, v17, a3, a4, v22, v23, v19, v24, a9, a10, a11);
}

unint64_t specialized ActivityAuthorizationManager.unsupportedAudioRouteDisplayInformation(forApplicationWithBundleIdentifier:onNearbyDeviceHandle:preparing:routeName:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v70 = objc_opt_self();
  v71 = ObjCClassFromMetadata;
  v10 = [v70 bundleForClass_];
  v73._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000025;
  v11._object = 0x80000001AEE34970;
  v12.value._countAndFlagsBits = 0x6E65736572706F43;
  v12.value._object = 0xEE0065726F436563;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v73);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AEE07B20;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 64) = v16;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;

  v66 = String.init(format:_:)();
  v18 = v17;

  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v19 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  if (v19)
  {
    v68 = v19;
    v27 = [v19 localizedName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v29;

    v30 = [v70 bundleForClass_];
    v75._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0xD000000000000029;
    v31._object = 0x80000001AEE349D0;
    v32.value._countAndFlagsBits = 0x6E65736572706F43;
    v32.value._object = 0xEE0065726F436563;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v75._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v75);

    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AEE07B20;
    *(v34 + 56) = v15;
    *(v34 + 64) = v16;
    *(v34 + 32) = v28;
    *(v34 + 40) = v65;
    v24 = String.init(format:_:)();
    v26 = v35;
  }

  else
  {
    v20 = [v70 bundleForClass_];
    v74._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD000000000000026;
    v21._object = 0x80000001AEE349A0;
    v22.value._countAndFlagsBits = 0x6E65736572706F43;
    v22.value._object = 0xEE0065726F436563;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v74._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v74);

    v24 = String.init(format:_:)();
    v26 = v25;
    v68 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v15;
  *(inited + 40) = v37;
  *(inited + 48) = v66;
  *(inited + 56) = v18;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v38;
  *(inited + 120) = v15;
  *(inited + 96) = v24;
  *(inited + 104) = v26;
  v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1AEE09B00;
  *(v39 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v39 + 40) = v40;
  v41 = [v70 bundleForClass_];
  v76._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0x4C45434E4143;
  v42._object = 0xE600000000000000;
  v43.value._countAndFlagsBits = 0x6E65736572706F43;
  v43.value._object = 0xEE0065726F436563;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v76._countAndFlagsBits = 0;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v76);

  *(v39 + 72) = v15;
  *(v39 + 48) = v45;
  *(v39 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v39 + 88) = v46;
  v47 = [v70 bundleForClass_];
  v77._object = 0xE000000000000000;
  v48._object = 0x80000001AEE34890;
  v48._countAndFlagsBits = 0xD000000000000011;
  v49.value._countAndFlagsBits = 0x6E65736572706F43;
  v49.value._object = 0xEE0065726F436563;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v77._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v77);

  *(v39 + 96) = v51;
  *(v39 + 120) = v15;
  *(v39 + 128) = 0xD000000000000022;
  *(v39 + 168) = MEMORY[0x1E69E6810];
  *(v39 + 136) = 0x80000001AEE2F710;
  *(v39 + 144) = 1;
  v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v67;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v52, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v72);

  v54 = v72;
  if (a3)
  {
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_1AEE07B20;
    *(v55 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v55 + 40) = v56;
    v57 = [v70 bundleForClass_];
    v78._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0x4F465F5452415453;
    v58._object = 0xEC000000454D5F52;
    v59.value._countAndFlagsBits = 0x6E65736572706F43;
    v59.value._object = 0xEE0065726F436563;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v78._countAndFlagsBits = 0;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v78);

    *(v55 + 72) = v15;
    *(v55 + 48) = v61;
    v62 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v55);
    swift_setDeallocating();
    outlined destroy of NSObject?(v55 + 32, &_sSS_yptMd, &_sSS_yptMR);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v54;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v62, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v63, &v72);

    return v72;
  }

  else
  {
  }

  return v54;
}

unint64_t specialized ActivityAuthorizationManager.authorizationRequestDisplayInformation(forApplicationWithBundleIdentifier:onNearbyDeviceHandle:preparing:overrides:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v9 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  v10 = MEMORY[0x1E69E6158];
  v109 = v9;
  if (a5 && *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8))
  {
    v106 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_title);
    v107 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8);
  }

  else
  {
    if (v9)
    {
      v11 = [v9 localizedName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      type metadata accessor for ConversationManagerHost();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      v111._object = 0xE000000000000000;
      v17._countAndFlagsBits = 0xD00000000000001DLL;
      v17._object = 0x80000001AEE34A90;
      v18.value._countAndFlagsBits = 0x6E65736572706F43;
      v18.value._object = 0xEE0065726F436563;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v111._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v111);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AEE07B20;
      *(v20 + 56) = v10;
      *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 32) = v12;
      *(v20 + 40) = v14;
    }

    else
    {
      type metadata accessor for ConversationManagerHost();
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v112._object = 0xE000000000000000;
      v23._countAndFlagsBits = 0xD00000000000001FLL;
      v23._object = 0x80000001AEE34A00;
      v24.value._countAndFlagsBits = 0x6E65736572706F43;
      v24.value._object = 0xEE0065726F436563;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v112._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v112);
    }

    v106 = String.init(format:_:)();
    v107 = v26;

    if (!a5)
    {
      goto LABEL_10;
    }
  }

  v27 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8);
  if (v27)
  {
    v104 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_message);

    v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    goto LABEL_18;
  }

LABEL_10:
  if (a3)
  {
    v29 = a3;
    v30 = [v29 name];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      type metadata accessor for ConversationManagerHost();
      v35 = swift_getObjCClassFromMetadata();
      v36 = [objc_opt_self() bundleForClass_];
      v113._object = 0xE000000000000000;
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001AEE34A70;
      v38.value._countAndFlagsBits = 0x6E65736572706F43;
      v38.value._object = 0xEE0065726F436563;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v113._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v113);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1AEE07B20;
      *(v40 + 56) = MEMORY[0x1E69E6158];
      *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v40 + 32) = v32;
      *(v40 + 40) = v34;
      v104 = String.init(format:_:)();
      v27 = v41;
      v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    }

    else
    {
      type metadata accessor for ConversationManagerHost();
      v52 = swift_getObjCClassFromMetadata();
      v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      v53 = [objc_opt_self() bundleForClass_];
      v115._object = 0xE000000000000000;
      v54._countAndFlagsBits = 0xD000000000000025;
      v54._object = 0x80000001AEE34A40;
      v55.value._countAndFlagsBits = 0x6E65736572706F43;
      v55.value._object = 0xEE0065726F436563;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v115._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, v53, v56, v115);

      v104 = String.init(format:_:)();
      v27 = v57;
    }
  }

  else
  {
    if (v9)
    {
      v42 = [v9 localizedName];
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      type metadata accessor for ConversationManagerHost();
      v45 = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass_];
      v114._object = 0xE000000000000000;
      v47._countAndFlagsBits = 0xD000000000000015;
      v47._object = 0x80000001AEE348D0;
      v48.value._countAndFlagsBits = 0x6E65736572706F43;
      v48.value._object = 0xEE0065726F436563;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v114._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v114);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1AEE07B20;
      *(v50 + 56) = v10;
      v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      *(v50 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v50 + 32) = v105;
      *(v50 + 40) = v44;
    }

    else
    {
      type metadata accessor for ConversationManagerHost();
      v96 = swift_getObjCClassFromMetadata();
      v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      v97 = [objc_opt_self() bundleForClass_];
      v119._object = 0xE000000000000000;
      v98._object = 0x80000001AEE348B0;
      v98._countAndFlagsBits = 0xD000000000000012;
      v99.value._countAndFlagsBits = 0x6E65736572706F43;
      v99.value._object = 0xEE0065726F436563;
      v100._countAndFlagsBits = 0;
      v100._object = 0xE000000000000000;
      v119._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v98, v99, v97, v100, v119);
    }

    v104 = String.init(format:_:)();
    v27 = v51;
  }

LABEL_18:
  type metadata accessor for ConversationManagerHost();
  v58 = swift_getObjCClassFromMetadata();
  v59 = objc_opt_self();
  v60 = [v59 v28[62]];
  v116._object = 0xE000000000000000;
  v61._object = 0x80000001AEE34A20;
  v61._countAndFlagsBits = 0xD000000000000012;
  v62.value._countAndFlagsBits = 0x6E65736572706F43;
  v62.value._object = 0xEE0065726F436563;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v116._countAndFlagsBits = 0;
  v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v116);
  countAndFlagsBits = v64._countAndFlagsBits;
  object = v64._object;

  if (a5)
  {
    v67 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8);
    if (v67)
    {
      countAndFlagsBits = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone);

      object = v67;
    }
  }

  v68 = [v59 bundleForClass_];
  v117._object = 0xE000000000000000;
  v69._countAndFlagsBits = 0x4F465F5452415453;
  v69._object = 0xEC000000454D5F52;
  v70.value._countAndFlagsBits = 0x6E65736572706F43;
  v70.value._object = 0xEE0065726F436563;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  v117._countAndFlagsBits = 0;
  v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v70, v68, v71, v117);

  v102 = object;
  if (a5 && (v73 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8)) != 0)
  {
    v74 = countAndFlagsBits;
    v101 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe);

    v103 = v73;
  }

  else
  {
    v74 = countAndFlagsBits;
    v101 = v72._countAndFlagsBits;
    v103 = v72._object;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v77;
  *(inited + 48) = v106;
  *(inited + 56) = v107;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v78;
  *(inited + 120) = v76;
  *(inited + 96) = v104;
  *(inited + 104) = v27;
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v80 = swift_initStackObject();
  *(v80 + 16) = xmmword_1AEE09B00;
  *(v80 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v80 + 40) = v81;
  v82 = [v59 bundleForClass_];
  v118._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0x4C45434E4143;
  v83._object = 0xE600000000000000;
  v84.value._countAndFlagsBits = 0x6E65736572706F43;
  v84.value._object = 0xEE0065726F436563;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v118._countAndFlagsBits = 0;
  v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v118);

  *(v80 + 72) = v76;
  *(v80 + 48) = v86;
  *(v80 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v80 + 88) = v87;
  *(v80 + 96) = v74;
  *(v80 + 104) = v102;
  *(v80 + 120) = v76;
  *(v80 + 128) = 0xD000000000000022;
  *(v80 + 168) = MEMORY[0x1E69E6810];
  *(v80 + 136) = 0x80000001AEE2F710;
  *(v80 + 144) = 1;
  v88 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = v79;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v88, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v110);

  v90 = v110;
  if (a4)
  {
    v91 = swift_initStackObject();
    *(v91 + 16) = xmmword_1AEE07B20;
    *(v91 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v91 + 72) = v76;
    *(v91 + 40) = v92;
    *(v91 + 48) = v101;
    *(v91 + 56) = v103;
    v93 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v91);
    swift_setDeallocating();
    outlined destroy of NSObject?(v91 + 32, &_sSS_yptMd, &_sSS_yptMR);
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v110 = v90;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v93, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v94, &v110);

    return v110;
  }

  else
  {
  }

  return v90;
}

void specialized closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___CPActivityAuthorizationManager_lock);
    v9 = Strong;

    os_unfair_lock_lock(*(v8 + 16));
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v10[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
    }

    os_unfair_lock_unlock(*(v8 + 16));
  }

  if (a2)
  {
    a2 = _convertErrorToNSError(_:)();
  }

  (*(a4 + 16))(a4, a1 & 1, a2);
}

void specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1, void *a2, void *a3, int a4, void *a5, char *a6, uint64_t a7, const void *a8)
{
  v172 = a6;
  v173._countAndFlagsBits = a1;
  LODWORD(v171) = a4;
  v173._object = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v167 = *(v12 - 8);
  v13 = *(v167 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v168 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v170 = &v151 - v15;
  v165 = type metadata accessor for UUID();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v161 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v163 = *(v162 - 8);
  v17 = *(v163 + 64);
  v18 = MEMORY[0x1EEE9AC00](v162);
  v166 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v151 - v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a8;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v174 = v21;
  *(v21 + 4) = v20;
  if (a5)
  {
    v22 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x98);
    _Block_copy(a8);
    _Block_copy(a8);
    _Block_copy(a8);

    if ((v22(v23) & 1) == 0)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.default);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      countAndFlagsBits = v173._countAndFlagsBits;
      object = v173._object;
      v30 = v172;
      if (!v27)
      {
        goto LABEL_32;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, confirmReplacement override is set";
LABEL_31:
      _os_log_impl(&dword_1AEB26000, v25, v26, v32, v31, 2u);
      MEMORY[0x1B27120C0](v31, -1, -1);
LABEL_32:

      v150._countAndFlagsBits = countAndFlagsBits;
      v150._object = object;
      ActivityAuthorizationManager.setAuthorization(_:for:)(1, v150);
      if ((v171 & 1) == 0)
      {
LABEL_35:
        _Block_copy(a8);
        specialized closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(1, 0, a7, a8);
        _Block_release(a8);

        goto LABEL_36;
      }

      v41 = *&v30[OBJC_IVAR___CPActivityAuthorizationManager_lock];
      os_unfair_lock_lock(*(v41 + 16));
      swift_beginAccess();

      v42 = countAndFlagsBits;
      v43 = object;
LABEL_34:
      specialized Set._Variant.insert(_:)(v176, v42, v43);
      swift_endAccess();

      os_unfair_lock_unlock(*(v41 + 16));
      goto LABEL_35;
    }
  }

  else
  {
    _Block_copy(a8);
    _Block_copy(a8);
    _Block_copy(a8);
  }

  if ([objc_opt_self() supportsMultipleActivitySessions])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.default);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v172;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1AEB26000, v34, v35, "Skipping prompt in confirmActivityAuthorizationIfNecessary, multiple activities supported", v38, 2u);
      MEMORY[0x1B27120C0](v38, -1, -1);
    }

    v40 = v173._countAndFlagsBits;
    v39 = v173._object;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v173);
    if ((v171 & 1) == 0)
    {
      goto LABEL_35;
    }

    v41 = *&v37[OBJC_IVAR___CPActivityAuthorizationManager_lock];
    os_unfair_lock_lock(*(v41 + 16));
    swift_beginAccess();

    v42 = v40;
    v43 = v39;
    goto LABEL_34;
  }

  if (!a3)
  {
LABEL_27:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v148 = type metadata accessor for Logger();
    __swift_project_value_buffer(v148, static Log.default);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v149 = os_log_type_enabled(v25, v26);
    countAndFlagsBits = v173._countAndFlagsBits;
    object = v173._object;
    v30 = v172;
    if (!v149)
    {
      goto LABEL_32;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, no representative activity session";
    goto LABEL_31;
  }

  v160 = v20;
  v44 = a3;
  v45 = [v44 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
  v46 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.max(by:)(v46);
  v48 = v47;

  if (!v48)
  {

    goto LABEL_27;
  }

  v159 = v44;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v155 = v13;
  v156 = a7;
  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Log.default);
  v50 = v48;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v48;
    v55 = v50;
    _os_log_impl(&dword_1AEB26000, v51, v52, "Prompting user to replace activity: %@", v53, 0xCu);
    outlined destroy of NSObject?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v54, -1, -1);
    MEMORY[0x1B27120C0](v53, -1, -1);
  }

  v154 = v17;

  v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v158 = v50;
  v57 = [v50 activity];
  v58 = [v57 metadata];

  if (v58 && (v59 = [v58 title], v58, v59))
  {
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v61;

    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v153 = objc_opt_self();
    v65 = [v153 bundleForClass_];
    v66.value._object = 0xEE0065726F436563;
    v179._object = 0xE000000000000000;
    v67._countAndFlagsBits = 0xD000000000000015;
    v67._object = 0x80000001AEE347D0;
    v66.value._countAndFlagsBits = 0x6E65736572706F43;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    v179._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v66, v65, v68, v179);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1AEE07B20;
    v70 = MEMORY[0x1E69E6158];
    *(v69 + 56) = MEMORY[0x1E69E6158];
    *(v69 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v71 = v152;
    *(v69 + 32) = v60;
    *(v69 + 40) = v71;
    v72 = String.init(format:_:)();
    v74 = v73;

    v178 = v70;
    v177._countAndFlagsBits = v72;
    v177._object = v74;
    outlined init with take of Any(&v177, v176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = v56;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v176, v157, v63, isUniquelyReferenced_nonNull_native);

    v76 = v175;
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;
    v157 = ObjCClassFromMetadata;
    v80 = [v153 bundleForClass_];
    v180._object = 0xE000000000000000;
    v81._countAndFlagsBits = 0xD000000000000017;
    v81._object = 0x80000001AEE347F0;
    v82.value._countAndFlagsBits = 0x6E65736572706F43;
    v82.value._object = 0xEE0065726F436563;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v180._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v81, v82, v80, v83, v180);

    v84 = String.init(format:_:)();
    v86 = v85;

    v178 = v70;
    v177._countAndFlagsBits = v84;
    v177._object = v86;
    outlined init with take of Any(&v177, v176);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v175 = v76;
    v88 = v77;
  }

  else
  {
    v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v89;
    type metadata accessor for ConversationManagerHost();
    v90 = swift_getObjCClassFromMetadata();
    v91 = objc_opt_self();
    v157 = v90;
    v92 = [v91 bundleForClass_];
    v181._object = 0xE000000000000000;
    v93._countAndFlagsBits = 0xD000000000000016;
    v93._object = 0x80000001AEE34790;
    v94.value._countAndFlagsBits = 0x6E65736572706F43;
    v94.value._object = 0xEE0065726F436563;
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    v181._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v93, v94, v92, v95, v181);

    v96 = String.init(format:_:)();
    v98 = v97;

    v70 = MEMORY[0x1E69E6158];
    v178 = MEMORY[0x1E69E6158];
    v177._countAndFlagsBits = v96;
    v177._object = v98;
    outlined init with take of Any(&v177, v176);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v175 = v56;
    v88 = v153;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v176, v88, v79, v87);

  v99 = v175;
  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;
  type metadata accessor for ConversationManagerHost();
  v153 = objc_opt_self();
  v102 = [v153 bundleForClass_];
  v182._object = 0xE000000000000000;
  v103._object = 0x80000001AEE347B0;
  v103._countAndFlagsBits = 0xD000000000000010;
  v104.value._countAndFlagsBits = 0x6E65736572706F43;
  v104.value._object = 0xEE0065726F436563;
  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  v182._countAndFlagsBits = 0;
  v106 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v104, v102, v105, v182);

  v178 = v70;
  v177 = v106;
  outlined init with take of Any(&v177, v176);
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v175 = v99;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v176, v152, v101, v107);

  v108 = v175;
  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;
  v112 = [v153 bundleForClass_];
  v183._object = 0xE000000000000000;
  v113._countAndFlagsBits = 0x4C45434E4143;
  v113._object = 0xE600000000000000;
  v114.value._countAndFlagsBits = 0x6E65736572706F43;
  v114.value._object = 0xEE0065726F436563;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v183._countAndFlagsBits = 0;
  v116 = NSLocalizedString(_:tableName:bundle:value:comment:)(v113, v114, v112, v115, v183);

  v178 = v70;
  v177 = v116;
  outlined init with take of Any(&v177, v176);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v175 = v108;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v176, v109, v111, v117);

  v157 = v175;
  LOBYTE(v177._countAndFlagsBits) = 11;

  v118 = v169;
  v119 = v173._countAndFlagsBits;
  specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)();
  v120 = [v159 groupUUID];
  v121 = v161;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v122 = v165;
  v177._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v177._object = v123;
  v124 = v164[1];
  v124(v121, v122);
  MEMORY[0x1B2710020](46, 0xE100000000000000);
  v125 = [v158 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v126 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v126);

  v124(v121, v122);
  v164 = v177._object;
  v165 = v177._countAndFlagsBits;
  v127 = v170;
  outlined init with copy of SharePlayLatencyLogger.Interval(v118, v170);
  v128 = v163 + 56;
  (*(v163 + 56))(v127, 0, 1, v162);
  v129 = v166;
  outlined init with copy of SharePlayLatencyLogger.Interval(v118, v166);
  v130 = (*(v128 + 24) + 16) & ~*(v128 + 24);
  v131 = (v154 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
  v132 = (v131 + 39) & 0xFFFFFFFFFFFFFFF8;
  v133 = swift_allocObject();
  outlined init with take of SharePlayLatencyLogger.Interval(v129, v133 + v130);
  v134 = v172;
  *(v133 + v131) = v172;
  v135 = v133 + ((v131 + 15) & 0xFFFFFFFFFFFFFFF8);
  v136 = v173._object;
  *v135 = v119;
  *(v135 + 8) = v136;
  *(v135 + 16) = v171 & 1;
  v137 = (v133 + v132);
  v138 = v174;
  *v137 = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
  v137[1] = v138;
  v139 = *&v134[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
  v166 = *&v134[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
  v171 = __swift_project_boxed_opaque_existential_1(&v134[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v166);
  v140 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v141 = v168;
  outlined init with copy of SharePlayLatencyLogger.Interval?(v127, v168);
  v142 = (*(v167 + 80) + 24) & ~*(v167 + 80);
  v143 = (v155 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
  v144 = swift_allocObject();
  *(v144 + 16) = v140;
  outlined init with take of SharePlayLatencyLogger.Interval?(v141, v144 + v142);
  v145 = (v144 + v143);
  *v145 = partial apply for closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:);
  v145[1] = v133;
  v146 = *(v139 + 8);

  v147 = v134;

  v146(v165, v164, v173._countAndFlagsBits, v136, v157, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v144, v166, v139);

  outlined destroy of NSObject?(v170, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  outlined destroy of SharePlayLatencyLogger.Interval(v169);

LABEL_36:

  _Block_release(a8);
  _Block_release(a8);
}

void specialized ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(void *a1, void *a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (**a7)(void, void, void))
{
  LODWORD(v127) = a3;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = swift_allocObject();
  *(v129 + 16) = a7;
  v17 = *&a6[OBJC_IVAR___CPActivityAuthorizationManager_queue];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  _Block_copy(a7);
  _Block_copy(a7);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v19 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE09B00;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v21;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v22;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    a7[2](a7, 0, 0);

    goto LABEL_33;
  }

  v128 = [Strong activityAuthorizationStatePresentAlertIfIncapable_];
  v25 = [v128 isSharePlayCapable];
  if ((v25 & 1) == 0)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (one-time initialization token for host == -1)
    {
LABEL_12:
      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Log.host);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1AEB26000, v36, v37, "At least one of the active participants is on an older SharePlay protocol version. Not allowing SharePlay", v38, 2u);
        MEMORY[0x1B27120C0](v38, -1, -1);
      }

      a7[2](a7, 0, 0);
      goto LABEL_15;
    }

LABEL_63:
    swift_once();
    goto LABEL_12;
  }

  v126 = a1;
  v131 = a1;
  v132 = a2;
  MEMORY[0x1EEE9AC00](v25);
  *(&v116 - 2) = &v131;
  v26 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v116 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v26)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.host);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136315138;
      v130 = v31;
      v131 = v126;
      v132 = a2;

      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v130);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1AEB26000, v28, v29, "Bypassing user authorization for activity started from %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1B27120C0](v31, -1, -1);
      MEMORY[0x1B27120C0](v30, -1, -1);
    }

    a7[2](a7, 1, 0);
LABEL_15:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v39 = v128;
  v125 = [v128 activeConversation];
  if (([v39 hasActiveActivitySessionContainer] & 1) == 0)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Log.host);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v131 = v48;
      *v47 = 136315138;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, a2, &v131);
      _os_log_impl(&dword_1AEB26000, v45, v46, "Not allowing activation from %s because there is no active conversation or call.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v47, -1, -1);
    }

    a7[2](a7, 0, 0);
    goto LABEL_32;
  }

  v40 = *&a6[OBJC_IVAR___CPActivityAuthorizationManager_lock];
  os_unfair_lock_lock(*(v40 + 16));
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v126, a2);
  v42 = v41;
  swift_endAccess();
  if (v42)
  {

    os_unfair_lock_unlock(*(v40 + 16));
    v43 = a4;
    if ((v127 & 1) == 0)
    {
      a7[2](a7, 1, 0);
LABEL_32:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_33;
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v40 + 16));
    v43 = a4;
  }

  os_unfair_lock_lock(*(v40 + 16));
  v49 = a6[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest];
  a6[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 1;
  os_unfair_lock_unlock(*(v40 + 16));
  if (v49 == 1)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Log.host);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v131 = v54;
      *v53 = 136315138;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, a2, &v131);
      _os_log_impl(&dword_1AEB26000, v51, v52, "Not allowing activation from %s because an authorization prompt is already being displayed", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1B27120C0](v54, -1, -1);
      MEMORY[0x1B27120C0](v53, -1, -1);
    }

    lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
    v55 = swift_allocError();
    *v56 = 3;
    v57 = _convertErrorToNSError(_:)();
    (a7)[2](a7, 0, v57);

    goto LABEL_32;
  }

  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = swift_allocObject();
  v59[2] = v58;
  v59[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v124 = v59;
  v59[4] = v129;
  v60 = 2;
  swift_retain_n();
  v123 = v58;

  if (v125)
  {
    v62 = v125;
    v63 = TUConversation.hasLocalActivitySession(forBundleIdentifier:)(v126, a2);

    v60 = v63 & 1;
  }

  v64 = MEMORY[0x1E69E7D40];
  if (v43)
  {
    (*((*MEMORY[0x1E69E7D40] & *v43) + 0x80))(&v131, v61);
    if (v131)
    {
      if (v131 == 1)
      {
        goto LABEL_39;
      }

      if (v60 == 2)
      {
        v75 = swift_allocObject();
        v76 = v124;
        v77 = v125;
        *(v75 + 16) = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
        *(v75 + 24) = v76;
        v78 = v126;
        *(v75 + 32) = a6;
        *(v75 + 40) = v78;
        *(v75 + 48) = a2;
        *(v75 + 56) = v77;
        v79 = v127 & 1;
        *(v75 + 64) = v127 & 1;
        *(v75 + 72) = v19;
        *(v75 + 80) = v43;
        swift_unknownObjectRetain();

        v80 = v77;
        v81 = v43;
        v82 = v80;
        v83 = v81;

        v84 = a6;
        ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(v78, a2, v125, v79, v81, closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply, v75);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_60:

        goto LABEL_61;
      }

      if ((v60 & 1) == 0)
      {
LABEL_39:
        if (one-time initialization token for host != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        __swift_project_value_buffer(v65, static Log.host);

        v66 = v43;
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();

        v69 = os_log_type_enabled(v67, v68);
        v122 = v43;
        v121 = v66;
        if (v69)
        {
          v118 = v68;
          v119 = v67;
          v70 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v131 = v117;
          *v70 = 136315650;
          (*((*MEMORY[0x1E69E7D40] & *v66) + 0x80))(&v130);
          v71 = String.init<A>(reflecting:)();
          v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v131);

          *(v70 + 4) = v120;
          *(v70 + 12) = 2080;
          *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, a2, &v131);
          v120 = v70;
          *(v70 + 22) = 2080;
          if (v60 == 2)
          {
            v73 = 0xE300000000000000;
            v74 = 7104878;
          }

          else
          {
            LOBYTE(v130) = v60;
            v74 = String.init<A>(reflecting:)();
            v73 = v103;
          }

          v104 = v119;
          v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v131);

          v106 = v120;
          *(v120 + 24) = v105;
          _os_log_impl(&dword_1AEB26000, v104, v118, "Prompting to start activity due to override %s; bundleID %s has existing session? %s", v106, 0x20u);
          v107 = v117;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v107, -1, -1);
          MEMORY[0x1B27120C0](v106, -1, -1);
        }

        else
        {
        }

        v108 = swift_allocObject();
        v109 = v124;
        v110 = v125;
        *(v108 + 16) = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
        *(v108 + 24) = v109;
        v111 = v126;
        *(v108 + 32) = a6;
        *(v108 + 40) = v111;
        *(v108 + 48) = a2;
        *(v108 + 56) = v110;
        v112 = v127 & 1;
        *(v108 + 64) = v112;
        *(v108 + 72) = v19;
        v113 = v122;
        *(v108 + 80) = v122;
        swift_unknownObjectRetain();

        v82 = v110;
        v114 = v121;

        v115 = a6;
        ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(v111, a2, v125, v112, v113, closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply, v108);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_60;
      }
    }
  }

  v85 = *((*v64 & **&a6[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager]) + 0x150);
  v86 = v126;
  if ((v85(v126, a2) & 1) == 0 || ![*&a6[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] sharePlaySupported])
  {
    v94 = swift_allocObject();
    v95 = v124;
    *(v94 + 16) = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
    *(v94 + 24) = v95;
    *(v94 + 32) = a6;
    *(v94 + 40) = v86;
    v96 = v43;
    v97 = v125;
    *(v94 + 48) = a2;
    *(v94 + 56) = v97;
    v98 = v127 & 1;
    *(v94 + 64) = v127 & 1;
    *(v94 + 72) = v19;
    *(v94 + 80) = v96;
    swift_unknownObjectRetain();

    v127 = v97;
    v99 = v96;

    v100 = a6;
    ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(v86, a2, v97, v98, v96, closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply, v94);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_61:

    goto LABEL_33;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static Log.host);

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v131 = v91;
    *v90 = 136315138;
    *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, a2, &v131);
    _os_log_impl(&dword_1AEB26000, v88, v89, "Skipping confirmation prompt as sharing is enabled for: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    MEMORY[0x1B27120C0](v91, -1, -1);
    v92 = v90;
    v43 = a4;
    v93 = v126;
    MEMORY[0x1B27120C0](v92, -1, -1);
  }

  else
  {

    v93 = v126;
  }

  _Block_copy(a7);

  v101 = v123;

  v102 = v125;
  specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(v93, a2, v125, v127 & 1, v43, a6, v101, a7);
  _Block_release(a7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_33:
  _Block_release(a7);
}

uint64_t specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1, void *a2, void *a3, int a4, void *a5, char *a6, uint64_t a7, uint64_t (*a8)(void, uint64_t), uint64_t a9)
{
  v174 = a6;
  v175 = a2;
  LODWORD(v173) = a4;
  v176 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v168 = *(v13 - 8);
  v14 = *(v168 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v169 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v171 = &v156 - v16;
  countAndFlagsBits = type metadata accessor for UUID();
  object = *(countAndFlagsBits - 8);
  MEMORY[0x1EEE9AC00](countAndFlagsBits);
  v162 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v164 = *(v163 - 8);
  v18 = *(v164 + 64);
  v19 = MEMORY[0x1EEE9AC00](v163);
  v167 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v170 = &v156 - v20;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  v172 = v21;
  *(v21 + 4) = a9;
  if (a5)
  {
    v22 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x98);

    if ((v22(v23) & 1) == 0)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.default);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v175;
      v29 = v176;
      v30 = v174;
      if (!v27)
      {
        goto LABEL_32;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, confirmReplacement override is set";
LABEL_31:
      _os_log_impl(&dword_1AEB26000, v25, v26, v32, v31, 2u);
      MEMORY[0x1B27120C0](v31, -1, -1);
LABEL_32:

      v154._countAndFlagsBits = v29;
      v154._object = v28;
      ActivityAuthorizationManager.setAuthorization(_:for:)(1, v154);
      if ((v173 & 1) == 0)
      {
LABEL_35:
        closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(1, 0, a7, a8);
      }

      v40 = *&v30[OBJC_IVAR___CPActivityAuthorizationManager_lock];
      os_unfair_lock_lock(*(v40 + 16));
      swift_beginAccess();

LABEL_34:
      specialized Set._Variant.insert(_:)(v178, v29, v28);
      swift_endAccess();

      os_unfair_lock_unlock(*(v40 + 16));
      goto LABEL_35;
    }
  }

  else
  {
  }

  if ([objc_opt_self() supportsMultipleActivitySessions])
  {
    v33 = v174;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.default);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v28 = v175;
    v29 = v176;
    if (v37)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1AEB26000, v35, v36, "Skipping prompt in confirmActivityAuthorizationIfNecessary, multiple activities supported", v38, 2u);
      MEMORY[0x1B27120C0](v38, -1, -1);
    }

    v39._countAndFlagsBits = v29;
    v39._object = v28;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v39);
    if ((v173 & 1) == 0)
    {
      goto LABEL_35;
    }

    v40 = *&v33[OBJC_IVAR___CPActivityAuthorizationManager_lock];
    os_unfair_lock_lock(*(v40 + 16));
    swift_beginAccess();

    goto LABEL_34;
  }

  if (!a3)
  {
LABEL_27:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v152 = type metadata accessor for Logger();
    __swift_project_value_buffer(v152, static Log.default);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v153 = os_log_type_enabled(v25, v26);
    v28 = v175;
    v29 = v176;
    v30 = v174;
    if (!v153)
    {
      goto LABEL_32;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, no representative activity session";
    goto LABEL_31;
  }

  v41 = a3;
  v42 = [v41 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
  v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.max(by:)(v43);
  v45 = v44;

  if (!v45)
  {

    goto LABEL_27;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.default);
  v47 = v45;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = v45;
    v52 = v47;
    _os_log_impl(&dword_1AEB26000, v48, v49, "Prompting user to replace activity: %@", v50, 0xCu);
    outlined destroy of NSObject?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v51, -1, -1);
    MEMORY[0x1B27120C0](v50, -1, -1);
  }

  v161 = v41;

  v158 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v160 = v47;
  v53 = [v47 activity];
  v54 = [v53 metadata];

  if (v54 && (v55 = [v54 title], v54, v55))
  {
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v157 = v57;

    v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = objc_opt_self();
    v62 = [v61 &selRef:ObjCClassFromMetadata sendMessageWithDictionary:? error:? + 3];
    v181._object = 0xE000000000000000;
    v63._countAndFlagsBits = 0xD000000000000015;
    v63._object = 0x80000001AEE347D0;
    v64.value._countAndFlagsBits = 0x6E65736572706F43;
    v64.value._object = 0xEE0065726F436563;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v181._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v63, v64, v62, v65, v181);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1AEE07B20;
    v67 = MEMORY[0x1E69E6158];
    *(v66 + 56) = MEMORY[0x1E69E6158];
    *(v66 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v68 = v157;
    *(v66 + 32) = v56;
    *(v66 + 40) = v68;
    v69 = String.init(format:_:)();
    v71 = v70;

    v180 = v67;
    v179._countAndFlagsBits = v69;
    v179._object = v71;
    outlined init with take of Any(&v179, v178);
    v72 = v158;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v177 = v72;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v178, v159, v59, isUniquelyReferenced_nonNull_native);

    v74 = v177;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
    v159 = ObjCClassFromMetadata;
    v78 = [v61 bundleForClass_];
    v182._object = 0xE000000000000000;
    v79._countAndFlagsBits = 0xD000000000000017;
    v79._object = 0x80000001AEE347F0;
    v80.value._countAndFlagsBits = 0x6E65736572706F43;
    v80.value._object = 0xEE0065726F436563;
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    v182._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v78, v81, v182);

    v82 = String.init(format:_:)();
    v84 = v83;

    v180 = MEMORY[0x1E69E6158];
    v179._countAndFlagsBits = v82;
    v179._object = v84;
    outlined init with take of Any(&v179, v178);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v177 = v74;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v178, v75, v77, v85);
  }

  else
  {
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;
    type metadata accessor for ConversationManagerHost();
    v89 = swift_getObjCClassFromMetadata();
    v90 = objc_opt_self();
    v159 = v89;
    v91 = [v90 bundleForClass_];
    v183._object = 0xE000000000000000;
    v92._countAndFlagsBits = 0xD000000000000016;
    v92._object = 0x80000001AEE34790;
    v93.value._countAndFlagsBits = 0x6E65736572706F43;
    v93.value._object = 0xEE0065726F436563;
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    v183._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v92, v93, v91, v94, v183);

    v95 = String.init(format:_:)();
    v97 = v96;

    v180 = MEMORY[0x1E69E6158];
    v179._countAndFlagsBits = v95;
    v179._object = v97;
    outlined init with take of Any(&v179, v178);
    v98 = v158;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v177 = v98;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v178, v86, v88, v99);
  }

  v100 = v177;
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;
  type metadata accessor for ConversationManagerHost();
  v104 = objc_opt_self();
  v105 = v159;
  v106 = [v104 bundleForClass_];
  v184._object = 0xE000000000000000;
  v107._object = 0x80000001AEE347B0;
  v107._countAndFlagsBits = 0xD000000000000010;
  v108.value._countAndFlagsBits = 0x6E65736572706F43;
  v108.value._object = 0xEE0065726F436563;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v184._countAndFlagsBits = 0;
  v110 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, v108, v106, v109, v184);

  v111 = MEMORY[0x1E69E6158];
  v180 = MEMORY[0x1E69E6158];
  v179 = v110;
  outlined init with take of Any(&v179, v178);
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v177 = v100;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v178, v101, v103, v112);

  v113 = v177;
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v115;
  v117 = [v104 bundleForClass_];
  v185._object = 0xE000000000000000;
  v118._countAndFlagsBits = 0x4C45434E4143;
  v118._object = 0xE600000000000000;
  v119.value._countAndFlagsBits = 0x6E65736572706F43;
  v119.value._object = 0xEE0065726F436563;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v185._countAndFlagsBits = 0;
  v121 = NSLocalizedString(_:tableName:bundle:value:comment:)(v118, v119, v117, v120, v185);

  v180 = v111;
  v179 = v121;
  outlined init with take of Any(&v179, v178);
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v177 = v113;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v178, v114, v116, v122);

  v159 = v177;
  LOBYTE(v179._countAndFlagsBits) = 11;

  v123 = v170;
  specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)();
  v124 = [v161 groupUUID];
  v125 = v162;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v126 = countAndFlagsBits;
  v179._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v179._object = v127;
  v128 = object[1];
  v128(v125, v126);
  MEMORY[0x1B2710020](46, 0xE100000000000000);
  v129 = [v160 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v130 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v130);

  v128(v125, v126);
  object = v179._object;
  countAndFlagsBits = v179._countAndFlagsBits;
  v131 = v171;
  outlined init with copy of SharePlayLatencyLogger.Interval(v123, v171);
  v132 = v164 + 56;
  (*(v164 + 56))(v131, 0, 1, v163);
  v133 = v167;
  outlined init with copy of SharePlayLatencyLogger.Interval(v123, v167);
  v134 = (*(v132 + 24) + 16) & ~*(v132 + 24);
  v135 = (v18 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
  v136 = swift_allocObject();
  outlined init with take of SharePlayLatencyLogger.Interval(v133, v136 + v134);
  v138 = v174;
  v137 = v175;
  *(v136 + v135) = v174;
  v139 = v136 + ((v135 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v139 = v176;
  *(v139 + 8) = v137;
  *(v139 + 16) = v173 & 1;
  v140 = (v136 + ((v135 + 39) & 0xFFFFFFFFFFFFFFF8));
  v141 = v172;
  *v140 = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
  v140[1] = v141;
  v142 = *&v138[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
  v167 = *&v138[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
  v173 = __swift_project_boxed_opaque_existential_1(&v138[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v167);
  v143 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = v131;
  v145 = v169;
  outlined init with copy of SharePlayLatencyLogger.Interval?(v144, v169);
  v146 = (*(v168 + 80) + 24) & ~*(v168 + 80);
  v147 = (v14 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = swift_allocObject();
  *(v148 + 16) = v143;
  outlined init with take of SharePlayLatencyLogger.Interval?(v145, v148 + v146);
  v149 = (v148 + v147);
  *v149 = closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)partial apply;
  v149[1] = v136;
  v150 = *(v142 + 8);

  v151 = v138;

  v150(countAndFlagsBits, object, v176, v137, v159, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v148, v167, v142);

  outlined destroy of NSObject?(v171, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  outlined destroy of SharePlayLatencyLogger.Interval(v170);
}

unint64_t lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError()
{
  result = lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError;
  if (!lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError;
  if (!lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError);
  }

  return result;
}

uint64_t specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1, void *a2, void *a3, int a4, void *a5, uint64_t (*a6)(uint64_t, void), uint64_t a7)
{
  v8 = v7;
  v162 = a7;
  LODWORD(v161) = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v157 = *(v14 - 8);
  v15 = *(v157 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v158 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v160 = &v140 - v17;
  v18 = type metadata accessor for UUID();
  object = *(v18 - 8);
  countAndFlagsBits = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v22 = *(v21 - 8);
  v153 = v21;
  v154 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v159 = &v140 - v26;
  if (a5 && ((*((*MEMORY[0x1E69E7D40] & *a5) + 0x98))(v25) & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Log.default);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_29;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, confirmReplacement override is set";
    goto LABEL_28;
  }

  if ([objc_opt_self() supportsMultipleActivitySessions])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.default);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_29;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, multiple activities supported";
LABEL_28:
    _os_log_impl(&dword_1AEB26000, v28, v29, v31, v30, 2u);
    MEMORY[0x1B27120C0](v30, -1, -1);
LABEL_29:

    v138._countAndFlagsBits = a1;
    v138._object = a2;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v138);
    if (v161)
    {
      v139 = *&v8[OBJC_IVAR___CPActivityAuthorizationManager_lock];
      os_unfair_lock_lock(*(v139 + 16));
      swift_beginAccess();

      specialized Set._Variant.insert(_:)(v164, a1, a2);
      swift_endAccess();

      os_unfair_lock_unlock(*(v139 + 16));
    }

    return a6(1, 0);
  }

  if (!a3)
  {
LABEL_24:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    __swift_project_value_buffer(v137, static Log.default);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_29;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, no representative activity session";
    goto LABEL_28;
  }

  v147 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v8;
  v32 = a3;
  v33 = [v32 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
  v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.max(by:)(v34);
  v36 = v35;

  if (!v36)
  {

    v8 = v152;
    goto LABEL_24;
  }

  v149 = v32;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v146 = a6;
  v150 = a1;
  v151 = a2;
  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Log.default);
  v38 = v36;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v38;
    *v42 = v36;
    v43 = v38;
    _os_log_impl(&dword_1AEB26000, v39, v40, "Prompting user to replace activity: %@", v41, 0xCu);
    outlined destroy of NSObject?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v42, -1, -1);
    MEMORY[0x1B27120C0](v41, -1, -1);
  }

  v145 = v20;

  v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v148 = v38;
  v45 = [v38 activity];
  v46 = [v45 metadata];

  v144 = v15;
  if (v46 && (v47 = [v46 title], v46, v47))
  {
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v49;

    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v142 = objc_opt_self();
    v53 = [v142 bundleForClass_];
    v167._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0xD000000000000015;
    v54._object = 0x80000001AEE347D0;
    v55.value._countAndFlagsBits = 0x6E65736572706F43;
    v55.value._object = 0xEE0065726F436563;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v167._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, v53, v56, v167);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1AEE07B20;
    v58 = MEMORY[0x1E69E6158];
    *(v57 + 56) = MEMORY[0x1E69E6158];
    *(v57 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v59 = v141;
    *(v57 + 32) = v48;
    *(v57 + 40) = v59;
    v60 = String.init(format:_:)();
    v62 = v61;

    v166 = v58;
    v165._countAndFlagsBits = v60;
    v165._object = v62;
    outlined init with take of Any(&v165, v164);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v44;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v143, v51, isUniquelyReferenced_nonNull_native);

    v64 = v163;
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    v67 = ObjCClassFromMetadata;
    v68 = [v142 bundleForClass_];
    v168._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0xD000000000000017;
    v69._object = 0x80000001AEE347F0;
    v70.value._countAndFlagsBits = 0x6E65736572706F43;
    v70.value._object = 0xEE0065726F436563;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v168._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v70, v68, v71, v168);

    v72 = String.init(format:_:)();
    v74 = v73;

    v166 = v58;
    v165._countAndFlagsBits = v72;
    v165._object = v74;
    outlined init with take of Any(&v165, v164);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v163 = v64;
    v76 = v143;
  }

  else
  {
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v79;
    type metadata accessor for ConversationManagerHost();
    v67 = swift_getObjCClassFromMetadata();
    v80 = [objc_opt_self() &selRef:v67 sendMessageWithDictionary:? error:? + 3];
    v169._object = 0xE000000000000000;
    v81._countAndFlagsBits = 0xD000000000000016;
    v81._object = 0x80000001AEE34790;
    v82.value._countAndFlagsBits = 0x6E65736572706F43;
    v82.value._object = 0xEE0065726F436563;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v169._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v81, v82, v80, v83, v169);

    v84 = String.init(format:_:)();
    v86 = v85;

    v166 = MEMORY[0x1E69E6158];
    v165._countAndFlagsBits = v84;
    v165._object = v86;
    outlined init with take of Any(&v165, v164);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v163 = v44;
    v76 = v78;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v76, v66, v75);

  v87 = v163;
  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;
  type metadata accessor for ConversationManagerHost();
  v143 = objc_opt_self();
  v90 = [v143 bundleForClass_];
  v170._object = 0xE000000000000000;
  v91._object = 0x80000001AEE347B0;
  v91._countAndFlagsBits = 0xD000000000000010;
  v92.value._countAndFlagsBits = 0x6E65736572706F43;
  v92.value._object = 0xEE0065726F436563;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  v170._countAndFlagsBits = 0;
  v94 = NSLocalizedString(_:tableName:bundle:value:comment:)(v91, v92, v90, v93, v170);

  v95 = MEMORY[0x1E69E6158];
  v166 = MEMORY[0x1E69E6158];
  v165 = v94;
  outlined init with take of Any(&v165, v164);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v87;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v142, v89, v96);

  v97 = v163;
  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;
  v100 = [v143 bundleForClass_];
  v171._object = 0xE000000000000000;
  v101._countAndFlagsBits = 0x4C45434E4143;
  v101._object = 0xE600000000000000;
  v102.value._countAndFlagsBits = 0x6E65736572706F43;
  v102.value._object = 0xEE0065726F436563;
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  v171._countAndFlagsBits = 0;
  v104 = NSLocalizedString(_:tableName:bundle:value:comment:)(v101, v102, v100, v103, v171);

  v166 = v95;
  v165 = v104;
  outlined init with take of Any(&v165, v164);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v97;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, v142, v99, v105);

  v143 = v163;
  LOBYTE(v165._countAndFlagsBits) = 11;

  v106 = v159;
  v107 = v150;
  specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)();
  v108 = [v149 groupUUID];
  v109 = v145;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v110 = countAndFlagsBits;
  v165._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v165._object = v111;
  v112 = object[1];
  v112(v109, v110);
  MEMORY[0x1B2710020](46, 0xE100000000000000);
  v113 = [v148 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v114 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v114);

  v112(v109, v110);
  object = v165._object;
  countAndFlagsBits = v165._countAndFlagsBits;
  v115 = v160;
  outlined init with copy of SharePlayLatencyLogger.Interval(v106, v160);
  v116 = v154 + 56;
  (*(v154 + 56))(v115, 0, 1, v153);
  v117 = v147;
  outlined init with copy of SharePlayLatencyLogger.Interval(v106, v147);
  v118 = (*(v116 + 24) + 16) & ~*(v116 + 24);
  v119 = (v23 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
  v120 = swift_allocObject();
  outlined init with take of SharePlayLatencyLogger.Interval(v117, v120 + v118);
  v121 = v152;
  *(v120 + v119) = v152;
  v122 = v120 + ((v119 + 15) & 0xFFFFFFFFFFFFFFF8);
  v123 = v151;
  *v122 = v107;
  *(v122 + 8) = v123;
  *(v122 + 16) = v161 & 1;
  v124 = (v120 + ((v119 + 39) & 0xFFFFFFFFFFFFFFF8));
  v125 = v162;
  *v124 = v146;
  v124[1] = v125;
  v126 = *&v121[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
  v154 = *&v121[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
  v161 = __swift_project_boxed_opaque_existential_1(&v121[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v154);
  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v128 = v115;
  v129 = v158;
  outlined init with copy of SharePlayLatencyLogger.Interval?(v128, v158);
  v130 = (*(v157 + 80) + 24) & ~*(v157 + 80);
  v131 = (v144 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
  v132 = swift_allocObject();
  *(v132 + 16) = v127;
  outlined init with take of SharePlayLatencyLogger.Interval?(v129, v132 + v130);
  v133 = (v132 + v131);
  *v133 = closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)partial apply;
  v133[1] = v120;
  v134 = *(v126 + 8);

  v135 = v121;

  v134(countAndFlagsBits, object, v150, v123, v143, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v132, v154, v126);

  outlined destroy of NSObject?(v160, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  outlined destroy of SharePlayLatencyLogger.Interval(v159);
}

unint64_t specialized static ActivityAuthorizationManager.notificationDisplayInformation(audioRoutePolicyManager:activity:conversation:)(void *a1, void *a2, void *a3)
{
  v129 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = [a1 pickedRoute];
  v7 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  v8 = MEMORY[0x1E69E6158];
  v9 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  v127 = a2;
  if (v6)
  {
    v10 = v6;
    if (([a1 sharePlaySupported] & 1) == 0)
    {
      type metadata accessor for ConversationManagerHost();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45 = [objc_opt_self() bundleForClass_];
      v135._object = 0xE000000000000000;
      v46._countAndFlagsBits = 0xD000000000000025;
      v46._object = 0x80000001AEE34970;
      v47.value._countAndFlagsBits = 0x6E65736572706F43;
      v47.value._object = 0xEE0065726F436563;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      v135._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v135);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1AEE07B20;
      v50 = [v10 name];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      *(v49 + 56) = v8;
      v9 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      *(v49 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      goto LABEL_11;
    }
  }

  v11 = [a2 metadata];
  if (!v11 || (v12 = v11, v13 = [v11 title], v12, !v13))
  {
    if (!a3)
    {
LABEL_13:
      type metadata accessor for ConversationManagerHost();
      v55 = swift_getObjCClassFromMetadata();
      v56 = [objc_opt_self() bundleForClass_];
      v136._object = 0xE000000000000000;
      v57._object = 0x80000001AEE34840;
      v57._countAndFlagsBits = 0xD000000000000011;
      v58.value._countAndFlagsBits = 0x6E65736572706F43;
      v58.value._object = 0xEE0065726F436563;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      v136._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v136);

      v128 = String.init(format:_:)();
      v32 = v60;

      goto LABEL_14;
    }

    type metadata accessor for ConversationManagerHost();
    v33 = swift_getObjCClassFromMetadata();
    v34 = objc_opt_self();
    v10 = a3;
    v35 = [v34 bundleForClass_];
    v134._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000023;
    v36._object = 0x80000001AEE34920;
    v37.value._countAndFlagsBits = 0x6E65736572706F43;
    v37.value._object = 0xEE0065726F436563;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v134._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v134);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AEE07B20;
    v40 = [v10 displayName];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v39 + 32) = v41;
    *(v39 + 40) = v43;
LABEL_11:
    v128 = String.init(format:_:)();
    v32 = v54;
    v7 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;

    goto LABEL_14;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (!a3)
  {

    v7 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    goto LABEL_13;
  }

  type metadata accessor for ConversationManagerHost();
  v17 = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = a3;
  v20 = [v18 bundleForClass_];
  v133._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = 0x80000001AEE34950;
  v22.value._countAndFlagsBits = 0x6E65736572706F43;
  v22.value._object = 0xEE0065726F436563;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v133._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v133);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AEE07B10;
  v25 = MEMORY[0x1E69E6158];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  v26 = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 64) = v26;
  *(v24 + 32) = v14;
  *(v24 + 40) = v16;
  v27 = [v19 displayName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  v9 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  *(v24 + 72) = v28;
  *(v24 + 80) = v30;
  v128 = String.init(format:_:)();
  v32 = v31;

  v7 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
LABEL_14:
  if (([a1 v7[246]] & 1) == 0)
  {
    v61 = [v127 localizedApplicationName];
    if (v61)
    {
      v62 = v61;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      type metadata accessor for ConversationManagerHost();
      v66 = swift_getObjCClassFromMetadata();
      v67 = [objc_opt_self() v9[62]];
      v124 = 0xE000000000000000;
      v68 = 0xD000000000000028;
      v69 = 0x80000001AEE348F0;
      v70 = 0x6E65736572706F43;
LABEL_20:
      v75 = 0xEE0065726F436563;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      v77 = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v68, *&v70, v67, v76, *(&v124 - 1));

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1AEE07B20;
      v79 = MEMORY[0x1E69E6158];
      *(v78 + 56) = MEMORY[0x1E69E6158];
      *(v78 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v78 + 32) = v63;
      *(v78 + 40) = v65;
      v80 = String.init(format:_:)();
      v82 = v81;
      goto LABEL_24;
    }
  }

  if ([a1 v7[246]])
  {
    v71 = [v127 localizedApplicationName];
    if (v71)
    {
      v72 = v71;
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v73;

      type metadata accessor for ConversationManagerHost();
      v74 = swift_getObjCClassFromMetadata();
      v67 = [objc_opt_self() v9[62]];
      v124 = 0xE000000000000000;
      v68 = 0xD000000000000015;
      v69 = 0x80000001AEE348D0;
      v70 = 0x6E65736572706F43;
      goto LABEL_20;
    }

    v83 = "SWITCH_TO_SPEAKER";
    type metadata accessor for ConversationManagerHost();
    v87 = swift_getObjCClassFromMetadata();
    v85 = [objc_opt_self() v9[62]];
    v125 = 0xE000000000000000;
    v86 = 0xD000000000000012;
  }

  else
  {
    v83 = "ASK_START_CONTENT";
    type metadata accessor for ConversationManagerHost();
    v84 = swift_getObjCClassFromMetadata();
    v85 = [objc_opt_self() v9[62]];
    v125 = 0xE000000000000000;
    v86 = 0xD000000000000025;
  }

  v88 = v83 | 0x8000000000000000;
  v89.value._countAndFlagsBits = 0x6E65736572706F43;
  v89.value._object = 0xEE0065726F436563;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v91 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v86, v89, v85, v90, *(&v125 - 1));

  v80 = String.init(format:_:)();
  v82 = v92;
  v79 = MEMORY[0x1E69E6158];
LABEL_24:

  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;
  v132 = v79;
  v131._countAndFlagsBits = v128;
  v131._object = v32;
  outlined init with take of Any(&v131, v130);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v130, v93, v95, isUniquelyReferenced_nonNull_native);

  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;
  v132 = v79;
  v131._countAndFlagsBits = v80;
  v131._object = v82;
  outlined init with take of Any(&v131, v130);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v130, v97, v99, v100);

  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;
  if ([a1 sharePlaySupported])
  {
    type metadata accessor for ConversationManagerHost();
    v104 = swift_getObjCClassFromMetadata();
    v105 = [objc_opt_self() bundleForClass_];
    v126 = 0xE000000000000000;
    v106 = 0x4148535F4E494F4ALL;
    v107 = 0xEE0059414C504552;
  }

  else
  {
    type metadata accessor for ConversationManagerHost();
    v104 = swift_getObjCClassFromMetadata();
    v105 = [objc_opt_self() bundleForClass_];
    v126 = 0xE000000000000000;
    v107 = 0x80000001AEE34890;
    v106 = 0xD000000000000011;
  }

  v108.value._countAndFlagsBits = 0x6E65736572706F43;
  v108.value._object = 0xEE0065726F436563;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v110 = 0;
  v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v106, v108, v105, v109, *(&v126 - 1));

  v112 = MEMORY[0x1E69E6158];
  v132 = MEMORY[0x1E69E6158];
  v131 = v111;
  outlined init with take of Any(&v131, v130);
  v113 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v130, v101, v103, v113);

  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v115;
  type metadata accessor for ConversationManagerHost();
  v117 = [objc_opt_self() bundleForClass_];
  v137._object = 0xE000000000000000;
  v118._countAndFlagsBits = 0x574F4E5F544F4ELL;
  v118._object = 0xE700000000000000;
  v119.value._countAndFlagsBits = 0x6E65736572706F43;
  v119.value._object = 0xEE0065726F436563;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v137._countAndFlagsBits = 0;
  v121 = NSLocalizedString(_:tableName:bundle:value:comment:)(v118, v119, v117, v120, v137);

  v132 = v112;
  v131 = v121;
  outlined init with take of Any(&v131, v130);
  v122 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v130, v114, v116, v122);

  return v129;
}

uint64_t outlined init with copy of SharePlayLatencyLogger.Interval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SharePlayLatencyLogger.Interval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SharePlayLatencyLogger.Interval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SharePlayLatencyLogger.Interval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SharePlayLatencyLogger.Interval(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized ActivityAuthorizationManager.requestAuthorizationForApplicationLaunch(withActivity:completionHandler:)(void *a1, char *a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v86 = *(v6 - 8);
  v7 = *(v86 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v75 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v82);
  v11 = &v75 - v10;
  v12 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v13 = *(v12 - 8);
  v83 = v12;
  v84 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v85 = (&v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v75 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = swift_allocObject();
  *(v90 + 16) = a3;
  v21 = *&a2[OBJC_IVAR___CPActivityAuthorizationManager_queue];
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  _Block_copy(a3);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v23 = [a1 bundleIdentifier];
  if (!v23)
  {
    if (one-time initialization token for host == -1)
    {
LABEL_13:
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Log.host);
      v37 = a1;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_1AEB26000, v38, v39, "Invalid bundleIdentifier for activity %@", v40, 0xCu);
        outlined destroy of NSObject?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v41, -1, -1);
        MEMORY[0x1B27120C0](v40, -1, -1);
      }

      goto LABEL_17;
    }

LABEL_31:
    swift_once();
    goto LABEL_13;
  }

  v78 = a1;
  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_17:
    a3[2](a3, 0, 0);
LABEL_18:

    return;
  }

  v29 = Strong;
  v81 = v25;
  v30 = [Strong activityAuthorizationStatePresentAlertIfIncapable_];
  v31 = [v30 activeConversation];
  v79 = v30;
  v80 = v31;
  if (([v30 hasActiveActivitySessionContainer] & 1) == 0)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.host);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v91 = v47;
      *v46 = 136315138;
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v27, &v91);

      *(v46 + 4) = v48;
      _os_log_impl(&dword_1AEB26000, v44, v45, "Not allowing activation from %s because there is no active conversation or call.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1B27120C0](v47, -1, -1);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }

    else
    {
    }

    a3[2](a3, 0, 0);

    goto LABEL_27;
  }

  v77 = v29;
  if (((*((*MEMORY[0x1E69E7D40] & **&a2[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager]) + 0x150))(v81, v27) & 1) == 0 || ![*&a2[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] sharePlaySupported])
  {
    LOBYTE(v91) = 10;

    specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)();
    v91 = 0;
    v92 = 0xE000000000000000;
    v49 = v80;
    if (v80)
    {
      v50 = [v80 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = type metadata accessor for UUID();
    (*(*(v52 - 8) + 56))(v11, v51, 1, v52);
    v53 = String.init<A>(describing:)();
    MEMORY[0x1B2710020](v53);

    MEMORY[0x1B2710020](46, 0xE100000000000000);
    MEMORY[0x1B2710020](v81, v27);
    v82 = v91;
    v76 = v92;
    v78 = specialized static ActivityAuthorizationManager.notificationDisplayInformation(audioRoutePolicyManager:activity:conversation:)(*&a2[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager], v78, v49);
    v55 = v88;
    v54 = v89;
    outlined init with copy of SharePlayLatencyLogger.Interval(v89, v88);
    v56 = v84 + 56;
    (*(v84 + 56))(v55, 0, 1, v83);
    v57 = v54;
    v58 = v85;
    outlined init with copy of SharePlayLatencyLogger.Interval(v57, v85);
    v59 = (*(v56 + 24) + 16) & ~*(v56 + 24);
    v60 = (v14 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    outlined init with take of SharePlayLatencyLogger.Interval(v58, v62 + v59);
    *(v62 + v60) = a2;
    v63 = (v62 + v61);
    *v63 = v81;
    v63[1] = v27;
    v64 = (v62 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8));
    v65 = v90;
    *v64 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
    v64[1] = v65;
    v66 = *&a2[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
    v84 = *&a2[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
    v85 = __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v84);
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68 = v87;
    outlined init with copy of SharePlayLatencyLogger.Interval?(v55, v87);
    v69 = (*(v86 + 80) + 24) & ~*(v86 + 80);
    v70 = (v7 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    *(v71 + 16) = v67;
    outlined init with take of SharePlayLatencyLogger.Interval?(v68, v71 + v69);
    v72 = (v71 + v70);
    *v72 = closure #1 in ActivityAuthorizationManager.confirmActivityLaunchAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:withActivity:completionHandler:)partial apply;
    v72[1] = v62;
    v73 = *(v66 + 8);

    v74 = a2;

    v73(v82, v76, v81, v27, v78, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v71, v84, v66);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    outlined destroy of NSObject?(v88, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    outlined destroy of SharePlayLatencyLogger.Interval(v89);

    goto LABEL_18;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Log.host);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1AEB26000, v33, v34, "Bypassing authorization since application is already authorized.", v35, 2u);
    MEMORY[0x1B27120C0](v35, -1, -1);
  }

  a3[2](a3, 1, 0);

LABEL_27:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void specialized ActivityAuthorizationManager.conversationManager(_:conversationChanged:)(void *a1)
{
  if ([a1 state] == 4)
  {
    v2 = *(v1 + OBJC_IVAR___CPActivityAuthorizationManager_lock);
    os_unfair_lock_lock(*(v2 + 16));
    v3 = OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers;
    swift_beginAccess();
    *(v1 + v3) = MEMORY[0x1E69E7CD0];

    os_unfair_lock_unlock(*(v2 + 16));
  }
}

uint64_t objectdestroy_5Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t partial apply for closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(char a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    return specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 80), v2, *(v1 + 24));
  }

  else
  {
    return (v2)(0);
  }
}

unint64_t lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(type metadata accessor for SharePlayLatencyLogger.Interval(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);

    v9 = *(v6 + 32);
    v10 = type metadata accessor for OSSignpostID();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in ActivityAuthorizationManager.confirmActivityLaunchAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:withActivity:completionHandler:)(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SharePlayLatencyLogger.Interval(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = *(v2 + v7);
  v10 = *(v2 + v7 + 8);
  v11 = (v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a2(a1, v2 + v5, v8, v9, v10, v12, v13);
}

uint64_t objectdestroy_71Tm()
{
  v1 = *(type metadata accessor for SharePlayLatencyLogger.Interval(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);

    v9 = *(v6 + 32);
    v10 = type metadata accessor for OSSignpostID();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 16, v2 | 7);
}

void partial apply for closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1)
{
  v3 = *(type metadata accessor for SharePlayLatencyLogger.Interval(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = *(v1 + v6 + 16);
  v11 = *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(a1, v1 + v4, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = type metadata accessor for ContinuousClock.Instant();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);

      v10 = *(v7 + 32);
      v11 = type metadata accessor for OSSignpostID();
      (*(*(v11 - 8) + 8))(v5 + v10, v11);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void partial apply for closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)(a1, v5, v1 + v4, v7, v8);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_So8TUHandleCs5NeverOTg504_s14d154Core28BackgroundSessionManagerHostC39didReceiveUpdatedUnknownParticipantList010backgrounddE002onD019unknownParticipantsyAA0cdE0C_10Foundation4UUIDVShyAA17fg33CGtFyAA0cdeF10ConnectionCXEfU_So8H8CANXEfU_Tf1cn_n(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    specialized Set.subscript.getter(v26, v27, v28, a1);
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14CopresenceCore17AddressableMemberC_GMd, &_sSh5IndexVy14CopresenceCore17AddressableMemberC_GMR);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        outlined consume of Set<AddressableMember>.Index._Variant(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t BackgroundSessionManagerHost.__allocating_init(listeners:featureFlags:)(unint64_t a1, void *a2)
{
  v14 = a1;
  v15 = a2;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v7 - 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = objc_allocWithZone(v13);
  v10 = v15;
  v11 = specialized BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(v14, v8, v15);

  return v11;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t BackgroundSessionManagerHost.__allocating_init(listeners:queue:featureFlags:)(unint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(a1, a2, a3);

  return v8;
}

uint64_t BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(unint64_t a1, void *a2, void *a3)
{
  v5 = specialized BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(a1, a2, a3);

  return v5;
}

objc_class *BackgroundSessionManagerHost.__deallocating_deinit()
{
  result = swift_getObjectType();
  v2 = result;
  v3 = *&v0[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_listeners];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8.receiver = v0;
    v8.super_class = v2;
    return objc_msgSendSuper2(&v8, sel_dealloc);
  }

  result = __CocoaSet.count.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2710B10](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 invalidate];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall BackgroundSessionManagerHost.resume()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_listeners);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1B2710B10](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 resume];
    }
  }
}

uint64_t BackgroundSessionManagerHost.dataSource(for:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_clientIdentifierToDataSourceMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v11 & 1) != 0))
  {
    outlined init with copy of UserNotificationCenter(*(v9 + 56) + 40 * v10, &v20);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  if (*(&v21 + 1))
  {
    outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v18, a3);
  }

  else
  {
    v12 = type metadata accessor for BackgroundSessionManager();
    v13 = *(v4 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue);

    v14 = BackgroundSessionManager.__allocating_init(clientIdentifier:queue:)(a1, a2, v13);
    v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0xB0);
    v16 = swift_unknownObjectRetain();
    v15(v16, &protocol witness table for BackgroundSessionManagerHost);
    a3[3] = v12;
    a3[4] = &protocol witness table for BackgroundSessionManager;
    *a3 = v14;
    outlined destroy of NSObject?(v18, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMd, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMR);
  }

  swift_endAccess();
  outlined init with copy of UserNotificationCenter(a3, &v20);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v20, a1, a2);
  return swift_endAccess();
}

uint64_t BackgroundSessionManagerHost.withConnections(_:)(void (*a1)(id), uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_connections;
    swift_beginAccess();
    v26 = *(v2 + v11);
    if ((v26 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for BackgroundSessionManagerHostConnection(0);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection and conformance NSObject, type metadata accessor for BackgroundSessionManagerHostConnection, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      result = v31;
      v12 = v32;
      v13 = v33;
      v14 = v34;
      v15 = v35;
    }

    else
    {
      v16 = -1 << *(v26 + 32);
      v12 = v26 + 56;
      v13 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(v26 + 56);
      v19 = v26;
      swift_bridgeObjectRetain_n();
      v14 = 0;
      result = v19;
    }

    v25 = v13;
    v20 = (v13 + 64) >> 6;
    v29 = result;
    while (1)
    {
      if (result < 0)
      {
        v24 = __CocoaSet.Iterator.next()();
        if (!v24 || (v30 = v24, type metadata accessor for BackgroundSessionManagerHostConnection(0), swift_dynamicCast(), (v21 = v36) == 0))
        {
LABEL_19:
          result = v29;
LABEL_20:
          outlined consume of Set<String>.Iterator._Variant(result);
        }
      }

      else
      {
        v22 = v14;
        v23 = v15;
        if (!v15)
        {
          while (1)
          {
            v14 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v14 >= v20)
            {
              goto LABEL_20;
            }

            v23 = *(v12 + 8 * v14);
            ++v22;
            if (v23)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:
        v15 = (v23 - 1) & v23;
        v21 = *(*(result + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v23)))));
        if (!v21)
        {
          goto LABEL_19;
        }
      }

      v27(v21);

      result = v29;
      if (v3)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

id BackgroundSessionManagerHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t specialized EntitlementValueProviding.stableAppIdentifier.getter()
{
  v0 = NSXPCConnection.bundleIdentifier.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    if (v0 == 0x6C7070612E6D6F63 && v1 == 0xEF7365746F4E2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000015 && 0x80000001AEE2E800 == v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0x6C7070612E6D6F63;
    }

    if (v2 == 0xD000000000000010 && 0x80000001AEE33DF0 == v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000012 && 0x80000001AEE33E10 == v3)
    {

      return 0xD000000000000012;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 0xD000000000000012;
    }
  }

  result = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SSSgTt0B5(13);
  if (v6 == 1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v8 = *(v7 + 56);

    return v8;
  }

  return result;
}

void closure #1 in BackgroundSessionManagerHost.didRejectKeyRecoveryRequest(backgroundSessionManager:onSession:)(uint64_t a1)
{
  v1 = [*(a1 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMd, &_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMR);
  if (swift_dynamicCast())
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v3 sessionDidRejectKeyRecoveryRequestWithSessionID_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in BackgroundSessionManagerHost.didReceiveUpdatedUnknownParticipantList(backgroundSessionManager:onSession:unknownParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMd, &_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMR);
  if (swift_dynamicCast())
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_So8TUHandleCs5NeverOTg504_s14d154Core28BackgroundSessionManagerHostC39didReceiveUpdatedUnknownParticipantList010backgrounddE002onD019unknownParticipantsyAA0cdE0C_10Foundation4UUIDVShyAA17fg33CGtFyAA0cdeF10ConnectionCXEfU_So8H8CANXEfU_Tf1cn_n(a3);
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v6);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v7 = Set._bridgeToObjectiveC()().super.isa;

    [v8 sessionDidReceiveUpdatedUnknownParticipantListWithSessionID:isa unknownParticipants:v7];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized BackgroundSessionManagerHost.didUpdateActivitySessions(backgroundSessionManager:activitySessions:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for host == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.host);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v37 = v2;
      v12 = v11;
      v13 = swift_slowAlloc();
      v40[0] = v13;
      *v12 = 136315138;
      v39 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38TUConversationActivitySessionContainerCGMd, &_sSaySo38TUConversationActivitySessionContainerCGMR);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v40);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1AEB26000, v9, v10, "BackgroundSessionManagerHost received didUpdateActivitySessions %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      v17 = v12;
      v2 = v37;
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v18 = *(v2 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue);
    *v7 = v18;
    (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    result = (*(v5 + 8))(v7, v4);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v21 = OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_connections;
    swift_beginAccess();
    v5 = *(v2 + v21);
    if ((v5 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for BackgroundSessionManagerHostConnection(0);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection and conformance NSObject, type metadata accessor for BackgroundSessionManagerHostConnection, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v22 = v40[0];
      v4 = v40[1];
      v23 = v40[2];
      v24 = v40[3];
      v7 = v40[4];
    }

    else
    {
      v25 = -1 << *(v5 + 32);
      v4 = v5 + 56;
      v23 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v7 = (v27 & *(v5 + 56));
      swift_bridgeObjectRetain_n();
      v24 = 0;
      v22 = v5;
    }

    v37 = v23;
    for (i = (v23 + 64) >> 6; v22 < 0; v7 = v31)
    {
      v33 = __CocoaSet.Iterator.next()();
      if (!v33)
      {
        goto LABEL_23;
      }

      v38 = v33;
      type metadata accessor for BackgroundSessionManagerHostConnection(0);
      swift_dynamicCast();
      v32 = v39;
      v2 = v24;
      v31 = v7;
      if (!v39)
      {
        goto LABEL_23;
      }

LABEL_20:
      v34 = [*&v32[direct field offset for XPCHostConnection.connection] remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMd, &_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMR);
      result = swift_dynamicCast();
      if (!result)
      {
        goto LABEL_27;
      }

      v35 = v38;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v35 updateWithActivitySessions_];
      swift_unknownObjectRelease();

      v24 = v2;
    }

    v29 = v24;
    v30 = v7;
    v2 = v24;
    if (v7)
    {
LABEL_16:
      v31 = (v30 - 1) & v30;
      v32 = *(*(v22 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v30)))));
      if (v32)
      {
        goto LABEL_20;
      }

LABEL_23:
      outlined consume of Set<String>.Iterator._Variant(v22);
    }

    while (1)
    {
      v2 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v2 >= i)
      {
        goto LABEL_23;
      }

      v30 = *(v4 + 8 * v2);
      ++v29;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized BackgroundSessionManagerHost.didRejectKeyRecoveryRequest(backgroundSessionManager:onSession:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);
  (*(v4 + 16))(v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v8, v9, "BackgroundSessionManagerHost received didRejectKeyRecoveryRequest on %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  else
  {

    v17 = (*(v4 + 8))(v6, v3);
  }

  MEMORY[0x1EEE9AC00](v17);
  v19[-2] = a1;
  return BackgroundSessionManagerHost.withConnections(_:)(partial apply for closure #1 in BackgroundSessionManagerHost.didRejectKeyRecoveryRequest(backgroundSessionManager:onSession:), &v19[-4]);
}

uint64_t specialized BackgroundSessionManagerHost.didReceiveUpdatedUnknownParticipantList(backgroundSessionManager:onSession:unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23[0] = a2;
    v15 = v14;
    v24 = v14;
    *v13 = 136315138;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v24);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v10, v11, "BackgroundSessionManagerHost received didReceiveUpdatedUnknownParticipantList on %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v20 = v15;
    a2 = v23[0];
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  else
  {

    v21 = (*(v6 + 8))(v8, v5);
  }

  MEMORY[0x1EEE9AC00](v21);
  v23[-2] = a1;
  v23[-1] = a2;
  return BackgroundSessionManagerHost.withConnections(_:)(partial apply for closure #1 in BackgroundSessionManagerHost.didReceiveUpdatedUnknownParticipantList(backgroundSessionManager:onSession:unknownParticipants:), &v23[-4]);
}

uint64_t specialized BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(unint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore38BackgroundSessionManagerHostConnectionC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_connections] = v9;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result >= 1)
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < 1)
  {
    goto LABEL_19;
  }

LABEL_5:
  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_listeners] = a1;
  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue] = a2;

  v11 = a2;
  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_clientIdentifierToDataSourceMap] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14CopresenceCore34BackgroundSessionManagerDataSource_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_featureFlags] = a3;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v12 = a3;
  result = objc_msgSendSuper2(&v18, sel_init);
  v13 = result;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    v14 = result;
    if (!result)
    {
      return v13;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return v13;
    }
  }

  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B2710B10](i, a1);
      }

      else
      {
        v16 = *(a1 + 8 * i + 32);
      }

      v17 = v16;
      [v16 setDelegate_];
    }

    return v13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized BackgroundSessionManagerHost.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Asked to accept new connection from %@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_featureFlags);
  if (![v11 sharePlayLiteEnabled])
  {
    v27 = v5;
    v22 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v22, v28))
    {
LABEL_20:

      return 0;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v27;
    *v30 = v27;
    v31 = v27;
    v32 = "BackgroundSessionManagerHost rejecting connection because flag is not enabled: %@";
    goto LABEL_16;
  }

  v12 = specialized EntitlementValueProviding.stableAppIdentifier.getter();
  if (!v13)
  {
    v12 = NSXPCConnection.bundleIdentifier.getter();
    if (!v13)
    {
      v36 = v5;
      v22 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v22, v28))
      {
        goto LABEL_20;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v36;
      *v30 = v36;
      v37 = v36;
      v32 = "BackgroundSessionManagerHost rejecting connection because a client identifier could not be derived: %@";
LABEL_16:
      _os_log_impl(&dword_1AEB26000, v22, v28, v32, v29, 0xCu);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v30, -1, -1);
LABEL_19:
      MEMORY[0x1B27120C0](v29, -1, -1);
      goto LABEL_20;
    }
  }

  v14 = v12;
  v15 = v13;
  v16 = *(v2 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue);
  BackgroundSessionManagerHost.dataSource(for:)(v14, v15, v39);

  v17 = objc_allocWithZone(type metadata accessor for BackgroundSessionManagerHostConnection(0));
  v18 = v5;
  v19 = BackgroundSessionManagerHostConnection.init(connection:queue:dataSource:)(v18, v16, v39);
  if (!v19)
  {
    v20 = v18;
    v22 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v33))
    {
LABEL_21:

      return 0;
    }

    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = [v20 processIdentifier];

    _os_log_impl(&dword_1AEB26000, v22, v33, "BackgroundSessionManagerHost could not be created; rejecting connection from PID %d.", v29, 8u);
    goto LABEL_19;
  }

  v20 = v19;
  if ([v11 gameCenterFastSyncTransport])
  {
    if ((v20[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] & 1) == 0 && !v20[direct field offset for XPCHostConnection.isEntitledToUseGameCenter])
    {
      goto LABEL_12;
    }
  }

  else if ((v20[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] & 1) == 0)
  {
LABEL_12:
    v21 = v18;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_1AEB26000, v22, v23, "BackgroundSessionManagerHost rejecting connection %@ because client is not entitled", v24, 0xCu);
      outlined destroy of NSObject?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v25, -1, -1);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    goto LABEL_21;
  }

  swift_beginAccess();
  v35 = v20;
  specialized Set._Variant.insert(_:)(&v38, v35);
  swift_endAccess();

  return 1;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_SSs5NeverOTg5109_s14CopresenceCore27ActivityListPresenceContextV24dictionaryRepresentationSDySSypGvgSS10Foundation4UUIDVXEfU_Tf1cn_n(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UUID.uuidString.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

void ActivityListPresenceContext.insert(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  (*(v5 + 16))(v8, a1, v4);
  v21 = *v2;

  specialized Set._Variant.insert(_:)(v10, v8);
  (*(v5 + 8))(v10, v4);
  v11 = v21;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.service);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v17 = Set.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Updating activity list context to current activities: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  *v2 = v11;
}

void ActivityListPresenceContext.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v17 = *v1;

  specialized Set._Variant.remove(_:)(a1, v6);
  outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = v17;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.service);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v13 = Set.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Updating activity list context to current activities: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  *v2 = v7;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(a4 + 24);
  if (v4 >> 62)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!(v4 >> 59))
  {
    v5 = (16 * v4) & 0xFFFFFFFFFFFFFFE0;
    if (v5)
    {
      v6 = 0;
      while (v6 >> 5 < *(a4 + 16))
      {
        *(a2 + v6) = (*(a4 + 32 + 4 * (v6 >> 5)) >> v6) & 1;
        if (a3 - 1 == v6)
        {
          goto LABEL_13;
        }

        if (v5 == ++v6)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_11:
    a3 = v5;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

CopresenceCore::EmptyPresenceContext_optional __swiftcall EmptyPresenceContext.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = *(dictionary._rawValue + 2);

  return (v1 != 0);
}

uint64_t protocol witness for DictionaryConvertible.init(dictionary:) in conformance EmptyPresenceContext@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 16);

  *a2 = v3 != 0;
  return result;
}

uint64_t *ActivityListPresenceContext.defaultValue.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return &static ActivityListPresenceContext.defaultValue;
}

uint64_t static ActivityListPresenceContext.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }
}

uint64_t key path setter for ActivityListPresenceContext.activityIDs : ActivityListPresenceContext(uint64_t *a1, void *a2)
{
  v3 = *a1;

  ActivityListPresenceContext.activityIDs.willset(v4);

  *a2 = v3;
  return result;
}

uint64_t ActivityListPresenceContext.activityIDs.setter(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v9 = Set.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Updating activity list context to current activities: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  *v2 = a1;
  return result;
}

void ActivityListPresenceContext.activityIDs.willset(uint64_t a1)
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.service);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v5 = Set.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEB26000, oslog, v2, "Updating activity list context to current activities: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1B27120C0](v4, -1, -1);
    MEMORY[0x1B27120C0](v3, -1, -1);
  }
}

uint64_t (*ActivityListPresenceContext.activityIDs.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return ActivityListPresenceContext.activityIDs.modify;
}

uint64_t ActivityListPresenceContext.activityIDs.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = one-time initialization token for service;
  if (a2)
  {

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.service);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v10 = Set.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1AEB26000, v6, v7, "Updating activity list context to current activities: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    *a1[1] = v3;
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.service);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v19 = Set.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Updating activity list context to current activities: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    *a1[1] = v3;
  }

  return result;
}

uint64_t ActivityListPresenceContext.makeIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  v4 = -v2;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  *a2 = a1;
  a2[1] = a1 + 56;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v6;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ActivityListPresenceContext@<X0>(void *a1@<X8>)
{
  ActivityListPresenceContext.makeIterator()(*v1, a1);
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ActivityListPresenceContext()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

BOOL ActivityListPresenceContext.DictionaryKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActivityListPresenceContext.DictionaryKeys.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityListPresenceContext.DictionaryKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityListPresenceContext.DictionaryKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ActivityListPresenceContext.DictionaryKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ActivityListPresenceContext.DictionaryKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t ActivityListPresenceContext.dictionaryRepresentation.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  *(inited + 32) = 0x7974697669746361;
  *(inited + 40) = 0xEB00000000734449;
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_SSs5NeverOTg5109_s14CopresenceCore27ActivityListPresenceContextV24dictionaryRepresentationSDySSypGvgSS10Foundation4UUIDVXEfU_Tf1cn_n(a1);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(inited + 48) = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v4;
}

Swift::Int ActivityListPresenceContext.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static PresenceContext.defaultValue.getter in conformance ActivityListPresenceContext@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ActivityListPresenceContext.defaultValue;
}

uint64_t protocol witness for DictionaryConvertible.init(dictionary:) in conformance ActivityListPresenceContext@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ActivityListPresenceContext.init(dictionary:)(a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for DictionaryConvertible.dictionaryRepresentation.getter in conformance ActivityListPresenceContext()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  *(inited + 32) = 0x7974697669746361;
  *(inited + 40) = 0xEB00000000734449;
  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_SSs5NeverOTg5109_s14CopresenceCore27ActivityListPresenceContextV24dictionaryRepresentationSDySSypGvgSS10Foundation4UUIDVXEfU_Tf1cn_n(v1);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(inited + 48) = v3;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  return v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityListPresenceContext()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityListPresenceContext(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v54 = type metadata accessor for UUID();
  v2 = MEMORY[0x1EEE9AC00](v54);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v43 - v5;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = *(v4 + 80);
  v11 = MEMORY[0x1E69E7CC0];
  v45 = v10;
  v46 = (v10 + 32) & ~v10;
  v12 = MEMORY[0x1E69E7CC0] + v46;
  v13 = (v7 + 63) >> 6;
  v47 = v4 + 16;
  v49 = v4;
  v50 = a1;
  v52 = v4 + 32;

  v15 = 0;
  v16 = 0;
  if (v9)
  {
    while (1)
    {
      v51 = v12;
      v17 = v11;
      v18 = v16;
LABEL_9:
      v19 = v49;
      v20 = *(v49 + 72);
      v21 = v48;
      v22 = v54;
      (*(v49 + 16))(v48, *(v50 + 48) + v20 * (__clz(__rbit64(v9)) | (v18 << 6)), v54);
      v23 = *(v19 + 32);
      result = v23(v53, v21, v22);
      if (v15)
      {
        v11 = v17;
        v24 = v51;
        v25 = __OFSUB__(v15--, 1);
        if (v25)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }

      v26 = v17[3];
      if (((v26 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_42;
      }

      v27 = v26 & 0xFFFFFFFFFFFFFFFELL;
      if (v27 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v29 = v46;
      v11 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v11);
      if (!v20)
      {
        goto LABEL_43;
      }

      v30 = result - v29;
      if ((result - v29) == 0x8000000000000000 && v20 == -1)
      {
        goto LABEL_44;
      }

      v32 = v30 / v20;
      v11[2] = v28;
      v11[3] = 2 * (v30 / v20);
      v33 = v11 + v29;
      v34 = v17;
      v35 = v17[3] >> 1;
      v36 = v35 * v20;
      if (v17[2])
      {
        break;
      }

LABEL_33:
      v24 = &v33[v36];
      v39 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v35;

      v25 = __OFSUB__(v39, 1);
      v15 = v39 - 1;
      if (v25)
      {
        goto LABEL_41;
      }

LABEL_34:
      v9 &= v9 - 1;
      result = v23(v24, v53, v54);
      v12 = v24 + v20;
      v16 = v18;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    if (v11 < v17 || v33 >= v17 + v46 + v36)
    {
      v38 = v33;
      v51 = v30 / v20;
      v44 = v35 * v20;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v11 == v17)
      {
LABEL_32:
        v34[2] = 0;
        goto LABEL_33;
      }

      v38 = v33;
      v51 = v30 / v20;
      v44 = v35 * v20;
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v44;
    v33 = v38;
    v32 = v51;
    goto LABEL_32;
  }

  while (1)
  {
LABEL_5:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v18 >= v13)
    {
      break;
    }

    v9 = *(v6 + 8 * v18);
    ++v16;
    if (v9)
    {
      v51 = v12;
      v17 = v11;
      goto LABEL_9;
    }
  }

  v40 = v11[3];
  if (v40 < 2)
  {
    return v11;
  }

  v41 = v40 >> 1;
  v25 = __OFSUB__(v41, v15);
  v42 = v41 - v15;
  if (!v25)
  {
    v11[2] = v42;
    return v11;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = Hasher._finalize()();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x1B27111E0](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

{
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B27111E0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v11 = Hasher._finalize()();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized ActivityListPresenceContext.init(dictionary:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UUID();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x7974697669746361, 0xEB00000000734449), (v9 & 1) == 0))
  {

    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v8, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v11 = v26;
  v25 = *(v26 + 16);
  if (v25)
  {
    v12 = 0;
    v13 = (v23 + 48);
    v24 = (v23 + 32);
    v14 = v26 + 40;
    v15 = MEMORY[0x1E69E7CC0];
    v22 = v7;
    while (v12 < *(v11 + 16))
    {

      UUID.init(uuidString:)();

      if ((*v13)(v4, 1, v5) == 1)
      {
        result = outlined destroy of NSObject?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v16 = *v24;
        (*v24)(v7, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
        }

        v15[2] = v18 + 1;
        v19 = v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18;
        v7 = v22;
        result = (v16)(v19, v22, v5);
      }

      ++v12;
      v14 += 16;
      if (v25 == v12)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_18:

    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v15);

    return v20;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EmptyPresenceContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EmptyPresenceContext and conformance EmptyPresenceContext();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityListPresenceContext.DictionaryKeys and conformance ActivityListPresenceContext.DictionaryKeys()
{
  result = lazy protocol witness table cache variable for type ActivityListPresenceContext.DictionaryKeys and conformance ActivityListPresenceContext.DictionaryKeys;
  if (!lazy protocol witness table cache variable for type ActivityListPresenceContext.DictionaryKeys and conformance ActivityListPresenceContext.DictionaryKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityListPresenceContext.DictionaryKeys and conformance ActivityListPresenceContext.DictionaryKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ActivityListPresenceContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ActivityListPresenceContext and conformance ActivityListPresenceContext();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityListPresenceContext and conformance ActivityListPresenceContext()
{
  result = lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext;
  if (!lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext;
  if (!lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityListPresenceContext and conformance ActivityListPresenceContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Set<UUID>.Iterator and conformance Set<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type Set<UUID>.Iterator and conformance Set<A>.Iterator;
  if (!lazy protocol witness table cache variable for type Set<UUID>.Iterator and conformance Set<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSh8IteratorVy10Foundation4UUIDV_GMd, &_sSh8IteratorVy10Foundation4UUIDV_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<UUID>.Iterator and conformance Set<A>.Iterator);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t DatagramEndpoint.participantEndpoint(topic:participantId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(v4 + 32) == 1)
  {
    v8 = v4[2];
    v7 = v4[3];
    v10 = *v4;
    v9 = v4[1];
    v13 = MEMORY[0x1B270FF70](v10, v9);
    v14 = MEMORY[0x1B270FF70](a1, a2);
    if (v7 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = v8;
    }

    if (v7 >> 60 == 15)
    {
      v16 = 0xC000000000000000;
    }

    else
    {
      v16 = v7;
    }

    v17 = objc_opt_self();
    outlined copy of Data?(v8, v7);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v15, v16);
    v19 = [v17 createEndpointForSessionIDAlias:v13 topic:v14 participantIDAlias:a3 salt:isa];

    return NWEndpoint.init(_:)();
  }

  else
  {
    v21 = type metadata accessor for NWEndpoint();
    v22 = *(*(v21 - 8) + 56);

    return v22(a4, 1, 1, v21);
  }
}

uint64_t PluginClient.doCreateQuicConnection()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for NWEndpoint();
  v39 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - v10;
  v11 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = destructiveProjectEnumData for ActivitySession.Errors;
  v45 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ();
  v43 = &block_descriptor_16;
  v17 = _Block_copy(&aBlock);
  v44 = partial apply for closure #2 in PluginClient.doCreateQuicConnection();
  v45 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ();
  v43 = &block_descriptor_17_0;
  v18 = _Block_copy(&aBlock);

  quic_stream = nw_parameters_create_quic_stream();
  _Block_release(v18);
  _Block_release(v17);
  if (!quic_stream)
  {
    return 0;
  }

  (*(*v0 + 136))();
  outlined init with copy of PluginEndpoint(v16, v13);
  outlined destroy of PluginClient.Configuration(v16, type metadata accessor for PluginClient.Configuration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v13;
    v20 = v13[1];
    v22 = v13[2];
    v23 = v13[3];
    v24 = v13[4];
    v25 = objc_opt_self();
    if (v24 >> 60 == 15)
    {
      isa = MEMORY[0x1B270FF70](v21, v20);

      v27 = [v25 augmentNetworkParametersForSession:isa participantID:v22 parameters:quic_stream];
    }

    else
    {
      outlined copy of Data._Representation(v23, v24);
      v31 = MEMORY[0x1B270FF70](v21, v20);

      isa = Data._bridgeToObjectiveC()().super.isa;
      v32 = [v25 augmentNetworkParametersForSessionAlias:v31 participantIDAlias:v22 salt:isa parameters:quic_stream];
      outlined consume of Data?(v23, v24);
    }

    v33 = v39;

    swift_unknownObjectRetain();
    NWEndpoint.init(_:)();
    if ((*(v33 + 48))(v3, 1, v4) == 1)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      outlined consume of Data?(v23, v24);
      outlined destroy of NSObject?(v3, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
      return 0;
    }

    v35 = v37;
    (*(v33 + 32))(v37, v3, v4);
    (*(v33 + 16))(v38, v35, v4);
    type metadata accessor for NWParameters();
    swift_unknownObjectRetain();
    NWParameters.__allocating_init(_:)();
    type metadata accessor for NWConnection();
    swift_allocObject();
    v30 = NWConnection.init(to:using:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    outlined consume of Data?(v23, v24);
    (*(v33 + 8))(v35, v4);
  }

  else
  {
    v29 = v38;
    v28 = v39;
    (*(v39 + 32))(v38, v13, v4);
    (*(v28 + 16))(v9, v29, v4);
    type metadata accessor for NWParameters();
    swift_unknownObjectRetain();
    NWParameters.__allocating_init(_:)();
    type metadata accessor for NWConnection();
    swift_allocObject();
    v30 = NWConnection.init(to:using:)();
    swift_unknownObjectRelease();
    (*(v28 + 8))(v29, v4);
  }

  return v30;
}

uint64_t closure #2 in PluginClient.doCreateQuicConnection()(uint64_t a1, uint64_t a2)
{
  nw_quic_connection_set_initial_max_streams_bidirectional();
  nw_quic_connection_set_initial_max_streams_unidirectional();
  v3 = nw_quic_connection_copy_sec_protocol_options();
  sec_protocol_options_set_pqtls_mode();
  v4 = String.utf8CString.getter();
  sec_protocol_options_add_tls_application_protocol(v3, (v4 + 32));

  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = partial apply for closure #1 in closure #2 in PluginClient.doCreateQuicConnection();
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_sec_protocol_metadata, @guaranteed OS_sec_trust, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
  v8[3] = &block_descriptor_23_1;
  v6 = _Block_copy(v8);

  sec_protocol_options_set_verify_block(v3, v6, *(a2 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue));
  _Block_release(v6);
  return swift_unknownObjectRelease();
}

void closure #1 in closure #2 in PluginClient.doCreateQuicConnection()(uint64_t a1, NSObject *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for PluginClient.Configuration(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57[-v12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(*Strong + 136);
    v17 = *Strong + 136;
    v16();
    v18 = v13[v8[7]];
    outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
    if (v18)
    {
      v62 = a3;
      v63 = a4;
      v61 = sec_trust_copy_ref(a2);
      v60 = MEMORY[0x1B270FF70](0x2065736E61707845, 0xEE006E6967756C50);
      v16();
      v19 = &v13[v8[8]];
      v20 = *v19;
      v21 = v19[1];

      outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
      v22 = MEMORY[0x1B270FF70](v20, v21);

      v59 = v17;
      (v16)(v23);
      v24 = v16;
      v25 = &v11[v8[9]];
      v26 = *v25;
      v27 = v25[1];

      outlined destroy of PluginClient.Configuration(v11, type metadata accessor for PluginClient.Configuration);
      v28 = MEMORY[0x1B270FF70](v26, v27);

      v29 = v60;
      AppleSSLPinned = SecPolicyCreateAppleSSLPinned();

      if (AppleSSLPinned)
      {
        v31 = v61;
        SecTrustSetPolicies(v61, AppleSSLPinned);
        v32 = *(v15 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
        v33 = swift_allocObject();
        v34 = v62;
        v35 = v63;
        v33[2] = v15;
        v33[3] = v34;
        v33[4] = v35;
        aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in PluginClient.doCreateQuicConnection();
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SecTrustRef, @unowned Bool, @guaranteed CFErrorRef?) -> ();
        aBlock[3] = &block_descriptor_32;
        v36 = _Block_copy(aBlock);
        v37 = v32;

        SecTrustEvaluateAsyncWithError(v31, v37, v36);
        _Block_release(v36);
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, log);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          aBlock[0] = v60;
          *v45 = 136315394;
          v58 = v44;
          v24();
          v46 = &v13[v8[8]];
          v47 = *v46;
          v48 = v46[1];

          outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, aBlock);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          (v24)(v50);
          v51 = &v13[v8[9]];
          v52 = *v51;
          v53 = v51[1];

          outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, aBlock);

          *(v45 + 14) = v54;
          _os_log_impl(&dword_1AEB26000, v43, v58, "Cannot create pinning policy, hostname=%s, leafMarkerOID=%s", v45, 0x16u);
          v55 = v60;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v55, -1, -1);
          MEMORY[0x1B27120C0](v45, -1, -1);
        }

        v56 = v61;
        (v62)(0);
      }
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, log);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1AEB26000, v39, v40, "Server cert validation disabled", v41, 2u);
        MEMORY[0x1B27120C0](v41, -1, -1);
      }

      (a3)(1);
    }
  }

  else
  {
    a3();
  }
}

void closure #1 in closure #1 in closure #2 in PluginClient.doCreateQuicConnection()(uint64_t a1, char a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v11 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = one-time initialization token for log;
    v15 = a3;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, log);
    v17 = v15;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v20 = 136315650;
      v21 = *(*a4 + 136);
      v41 = a6;
      v39 = v19;
      v21();
      v22 = &v13[*(v11 + 32)];
      v42 = a5;
      v23 = *v22;
      v24 = v22[1];

      v38 = v18;
      outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v44);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      (v21)(v26);
      v27 = &v13[*(v11 + 36)];
      v28 = *v27;
      v29 = v27[1];

      outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginClient.Configuration);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v44);
      a5 = v42;

      *(v20 + 14) = v30;
      *(v20 + 22) = 2080;
      v43 = v17;
      type metadata accessor for CFErrorRef(0);
      v31 = v17;
      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

      *(v20 + 24) = v34;
      v35 = v38;
      _os_log_impl(&dword_1AEB26000, v38, v39, "Failed to validate trust, hostname=%s, leafMarkerOID=%s: %s", v20, 0x20u);
      v36 = v40;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v36, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    else
    {
    }

    a5(0);
  }

  else
  {
    a5(a2 & 1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed SecTrustRef, @unowned Bool, @guaranteed CFErrorRef?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_sec_protocol_metadata, @guaranteed OS_sec_trust, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> (), v8);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t PluginClient.createQuicConnection()()
{
  v1 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, log);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    (*(*v0 + 136))();
    outlined init with copy of PluginEndpoint(v3, v6);
    outlined destroy of PluginClient.Configuration(v3, type metadata accessor for PluginClient.Configuration);
    v12 = PluginEndpoint.description.getter();
    v14 = v13;
    outlined destroy of PluginClient.Configuration(v6, type metadata accessor for PluginEndpoint);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1AEB26000, v8, v9, "Creating QUIC connection to %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t closure #1 in PluginClient.createQuicConnection()(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PluginClient.doCreateQuicConnection()())
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v45 = a1;
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, log);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v44 = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 134218242;
      *(v19 + 4) = NWConnection.identifier.getter();

      *(v19 + 12) = 2080;
      (*(*a3 + 136))(v21);
      outlined init with copy of PluginEndpoint(v11, v14);
      outlined destroy of PluginClient.Configuration(v11, type metadata accessor for PluginClient.Configuration);
      v22 = PluginEndpoint.description.getter();
      v24 = v23;
      outlined destroy of PluginClient.Configuration(v14, type metadata accessor for PluginEndpoint);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v46);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_1AEB26000, v16, v17, "QUIC connection C%llu created for endpoint: %s", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1B27120C0](v20, -1, -1);
      v26 = v19;
      a2 = v44;
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    else
    {
    }

    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = a3;
    v41[4] = v45;
    v41[5] = a2;

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in closure #1 in PluginClient.createQuicConnection(), v41);
    NWConnection.stateUpdateHandler.setter();

    if (*(a3 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter))
    {
      v42 = NWConnection.startDataTransferReport()();
      (*(*a3 + 216))(v42);
    }

    NWConnection.start(queue:)();
  }

  else
  {
    v44 = a2;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, log);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = a1;
      v46 = v31;
      v32 = v31;
      *v30 = 136315138;
      (*(*a3 + 136))();
      outlined init with copy of PluginEndpoint(v11, v14);
      outlined destroy of PluginClient.Configuration(v11, type metadata accessor for PluginClient.Configuration);
      v33 = PluginEndpoint.description.getter();
      v35 = v34;
      outlined destroy of PluginClient.Configuration(v14, type metadata accessor for PluginEndpoint);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v46);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1AEB26000, v28, v29, "Failed to create NWConnection for QUIC connection to %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v37 = v32;
      a1 = v45;
      MEMORY[0x1B27120C0](v37, -1, -1);
      MEMORY[0x1B27120C0](v30, -1, -1);
    }

    v38 = type metadata accessor for NWError();
    (*(*(v38 - 8) + 56))(v8, 1, 3, v38);
    swift_storeEnumTagMultiPayload();
    a1(v8);
    return outlined destroy of NSObject?(v8, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }
}

void closure #1 in closure #1 in PluginClient.createQuicConnection()(uint64_t a1, uint64_t a2, NSObject *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v137 = a5;
  v138 = a4;
  v131 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v130 = (&v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v134 = &v119 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v126 = (&v119 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v119 - v13;
  v14 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v125 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NWError();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v119 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v128 = &v119 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v129 = &v119 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v132 = (&v119 - v32);
  MEMORY[0x1EEE9AC00](v31);
  v133 = (&v119 - v33);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v135);
  v136 = (&v119 - v34);
  v35 = type metadata accessor for NWProtocolQUIC.Metadata.KeepAliveBehavior();
  v123 = *(v35 - 8);
  v124 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v122 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for NWConnection.State();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v38 + 16))(v40, a1, v37);
    v41 = (*(v38 + 88))(v40, v37);
    if (v41 == *MEMORY[0x1E6977C18])
    {
      (*(v38 + 96))(v40, v37);
      v132 = *(v20 + 32);
      v132(v26, v40, v19);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, log);
      v43 = *(v20 + 16);
      v43(v23, v26, v19);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v133 = v43;
      if (v46)
      {
        LODWORD(v127) = v45;
        v131 = v44;
        v47 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v140 = v126;
        *v47 = 134218242;
        *(v47 + 4) = NWConnection.identifier.getter();

        *(v47 + 12) = 2080;
        v48 = v134;
        v43(v134, v23, v19);
        (*(v20 + 56))(v48, 0, 1, v19);
        v49 = v48;
        v50 = v130;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v49, v130, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
        if ((*(v20 + 48))(v50, 1, v19) == 1)
        {
          v51 = 7104878;
          v52 = 0xE300000000000000;
        }

        else
        {
          v85 = v129;
          v132(v129, v50, v19);
          v43(v128, v85, v19);
          v51 = String.init<A>(reflecting:)();
          v52 = v86;
          (*(v20 + 8))(v85, v19);
        }

        outlined destroy of NSObject?(v134, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
        v79 = *(v20 + 8);
        v79(v23, v19);
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v140);

        *(v47 + 14) = v87;
        v88 = v131;
        _os_log_impl(&dword_1AEB26000, v131, v127, "QUIC connection (C%llu)  in waiting state, error: %s", v47, 0x16u);
        v89 = v126;
        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        MEMORY[0x1B27120C0](v89, -1, -1);
        MEMORY[0x1B27120C0](v47, -1, -1);
      }

      else
      {

        v79 = *(v20 + 8);
        v79(v23, v19);
      }

      v90 = v136;
      v133(v136, v26, v19);
      (*(v20 + 56))(v90, 0, 3, v19);
      swift_storeEnumTagMultiPayload();
      v138(v90);
      outlined destroy of NSObject?(v90, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
      NWConnection.cancel()();

      v79(v26, v19);
      return;
    }

    if (v41 == *MEMORY[0x1E6977C10])
    {
      (*(v38 + 96))(v40, v37);
      v57 = *(v20 + 32);
      v58 = v133;
      v123 = v20 + 32;
      v122 = v57;
      (v57)(v133, v40, v19);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, log);
      v134 = v20;
      v60 = *(v20 + 16);
      v61 = v132;
      v60(v132, v58, v19);

      v62 = v131;

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      LODWORD(v124) = v64;
      v65 = os_log_type_enabled(v63, v64);
      v130 = v60;
      if (v65)
      {
        v121 = v63;
        v66 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v140 = v120;
        *v66 = 134218498;
        *(v66 + 4) = NWConnection.identifier.getter();

        *(v66 + 12) = 2080;
        v68 = v125;
        (*(v62->isa + 17))(v67);
        outlined init with copy of PluginEndpoint(v68, v18);
        outlined destroy of PluginClient.Configuration(v68, type metadata accessor for PluginClient.Configuration);
        v69 = PluginEndpoint.description.getter();
        v71 = v70;
        outlined destroy of PluginClient.Configuration(v18, type metadata accessor for PluginEndpoint);
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v140);

        *(v66 + 14) = v72;
        *(v66 + 22) = 2080;
        v73 = v127;
        v60(v127, v61, v19);
        v74 = v134;
        (*(v134 + 56))(v73, 0, 1, v19);
        v75 = v126;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v73, v126, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
        if ((*(v74 + 48))(v75, 1, v19) == 1)
        {
          v76 = 7104878;
          v77 = 0xE300000000000000;
          v78 = v134;
        }

        else
        {
          v93 = v129;
          (v122)(v129, v75, v19);
          v60(v128, v93, v19);
          v76 = String.init<A>(reflecting:)();
          v77 = v94;
          v78 = v134;
          v61 = v132;
          (*(v134 + 8))(v93, v19);
        }

        outlined destroy of NSObject?(v73, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
        v91 = *(v78 + 8);
        v91(v61, v19);
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v140);

        *(v66 + 24) = v95;
        v96 = v121;
        _os_log_impl(&dword_1AEB26000, v121, v124, "QUIC connection to (C%llu) %s failed, error: %s", v66, 0x20u);
        v97 = v120;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v97, -1, -1);
        MEMORY[0x1B27120C0](v66, -1, -1);

        v58 = v133;
      }

      else
      {

        v78 = v134;
        v91 = *(v134 + 8);
        v91(v61, v19);
      }

      v98 = v136;
      v130(v136, v58, v19);
      (*(v78 + 56))(v98, 0, 3, v19);
      swift_storeEnumTagMultiPayload();
      v138(v98);
      outlined destroy of NSObject?(v98, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
      NWConnection.cancel()();

      v91(v58, v19);
      return;
    }

    if (v41 == *MEMORY[0x1E6977C08])
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      __swift_project_value_buffer(v80, log);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 134217984;
        *(v83 + 4) = NWConnection.identifier.getter();

        v84 = "QUIC connection (C%llu) in setup state";
LABEL_34:
        _os_log_impl(&dword_1AEB26000, v81, v82, v84, v83, 0xCu);
        MEMORY[0x1B27120C0](v83, -1, -1);

        return;
      }

      goto LABEL_48;
    }

    if (v41 == *MEMORY[0x1E6977C28])
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, log);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 134217984;
        *(v83 + 4) = NWConnection.identifier.getter();

        v84 = "QUIC connection (C%llu) in preparing state";
        goto LABEL_34;
      }

LABEL_48:

      return;
    }

    if (v41 == *MEMORY[0x1E6977C00])
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v99 = type metadata accessor for Logger();
      __swift_project_value_buffer(v99, log);
      v100 = Strong;

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 134217984;
        *(v103 + 4) = NWConnection.identifier.getter();

        _os_log_impl(&dword_1AEB26000, v101, v102, "QUIC connection (C%llu) in ready state", v103, 0xCu);
        MEMORY[0x1B27120C0](v103, -1, -1);
      }

      else
      {
      }

      v105 = *(&v131->isa + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter);
      if (v105)
      {
        v107 = *(&v131->isa + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
        v106 = *(&v131[1].isa + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
        v108 = *(v105 + 16);
        v109 = swift_allocObject();
        v109[2] = v105;
        v109[3] = v107;
        v109[4] = v106;
        swift_retain_n();

        v110 = v108;
        v100 = Strong;
        v111 = v110;
        NWConnection.requestEstablishmentReport(queue:completion:)();
      }

      type metadata accessor for NWProtocolQUIC();
      static NWProtocolQUIC.definition.getter();
      v112 = NWConnection.metadata(definition:)();

      if (v112)
      {
        type metadata accessor for NWProtocolQUIC.Metadata();
        if (swift_dynamicCastClass())
        {
          v113 = v122;
          *v122 = 10;
          (*(v123 + 104))(v113, *MEMORY[0x1E6977C98], v124);

          dispatch thunk of NWProtocolQUIC.Metadata.keepAlive.setter();
        }
      }

      v118 = v136;
      *v136 = v100;
      swift_storeEnumTagMultiPayload();

      v138(v118);

      outlined destroy of NSObject?(v118, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    }

    else
    {
      if (v41 == *MEMORY[0x1E6977C20])
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v104 = type metadata accessor for Logger();
        __swift_project_value_buffer(v104, log);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 134217984;
          *(v83 + 4) = NWConnection.identifier.getter();

          v84 = "QUIC connection (C%llu) in cancelled state";
          goto LABEL_34;
        }

        goto LABEL_48;
      }

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v114 = type metadata accessor for Logger();
      __swift_project_value_buffer(v114, log);

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 134217984;
        *(v117 + 4) = NWConnection.identifier.getter();

        _os_log_impl(&dword_1AEB26000, v115, v116, "QUIC connection (C%llu) in unknown state", v117, 0xCu);
        MEMORY[0x1B27120C0](v117, -1, -1);
      }

      else
      {
      }

      (*(v38 + 8))(v40, v37);
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, log);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1AEB26000, v54, v55, "QUIC connection deallocated when getting state update callback", v56, 2u);
      MEMORY[0x1B27120C0](v56, -1, -1);
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in PluginClient.createQuicConnection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for NWConnection.EstablishmentReport();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v10, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of NSObject?(v10, &_s7Network12NWConnectionC19EstablishmentReportVSgMd, &_s7Network12NWConnectionC19EstablishmentReportVSgMR);
  }

  (*(v12 + 32))(v14, v10, v11);
  (*(*a2 + 168))(v14, a3, a4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t PluginClient.createQuicStream(quicConnection:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, log);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    (*(*v1 + 136))();
    outlined init with copy of PluginEndpoint(v6, v9);
    outlined destroy of PluginClient.Configuration(v6, type metadata accessor for PluginClient.Configuration);
    v15 = PluginEndpoint.description.getter();
    v17 = v16;
    outlined destroy of PluginClient.Configuration(v9, type metadata accessor for PluginEndpoint);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v11, v12, "Creating QUIC stream to %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t closure #1 in PluginClient.createQuicStream(quicConnection:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v31 - v6;
  v8 = type metadata accessor for PluginClient.Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PluginEndpoint(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWConnection.parameters.getter();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  type metadata accessor for NWProtocolFramer.Options();
  swift_allocObject();

  v14 = NWProtocolFramer.Options.init(definition:)();
  NWParameters.defaultProtocolStack.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AEE07B40;
  *(v15 + 32) = v14;

  dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.setter();

  type metadata accessor for NWConnection();

  if (NWConnection.__allocating_init(connection:parameters:)())
  {
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v18 = v35;
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = a2;

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in closure #1 in PluginClient.createQuicStream(quicConnection:), v17);
    NWConnection.stateUpdateHandler.setter();

    NWConnection.start(queue:)();
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, log);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = a2;
      v24 = v23;
      v32 = swift_slowAlloc();
      v36 = v32;
      *v24 = 136315138;
      (*(*a4 + 136))();
      outlined init with copy of PluginEndpoint(v10, v13);
      outlined destroy of PluginClient.Configuration(v10, type metadata accessor for PluginClient.Configuration);
      v25 = PluginEndpoint.description.getter();
      v27 = v26;
      outlined destroy of PluginClient.Configuration(v13, type metadata accessor for PluginEndpoint);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v36);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1AEB26000, v21, v22, "Failed to create NWConnection for QUIC stream to %s", v24, 0xCu);
      v29 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    v30 = type metadata accessor for NWError();
    (*(*(v30 - 8) + 56))(v7, 2, 3, v30);
    swift_storeEnumTagMultiPayload();
    v35(v7);

    return outlined destroy of NSObject?(v7, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }
}

uint64_t closure #1 in closure #1 in PluginClient.createQuicStream(quicConnection:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v111 = a4;
  v112 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v99 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v102 = (&v99 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v106 = (&v99 - v13);
  v14 = type metadata accessor for NWError();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v99 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v99 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v104 = &v99 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v107 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v108 = (&v99 - v28);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v109);
  v110 = (&v99 - v29);
  v30 = type metadata accessor for NWConnection.State();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v113 = result;
  if (!result)
  {
    return result;
  }

  (*(v31 + 16))(v33, a1, v30);
  v35 = (*(v31 + 88))(v33, v30);
  if (v35 == *MEMORY[0x1E6977C18])
  {
    (*(v31 + 96))(v33, v30);
    v36 = v15;
    v106 = *(v15 + 32);
    v106(v21, v33, v14);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, log);
    v38 = *(v15 + 16);
    v38(v18, v21, v14);

    v39 = Logger.logObject.getter();
    LODWORD(v107) = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v39, v107);
    v108 = v38;
    if (v40)
    {
      v102 = v39;
      v41 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v114 = v101;
      *v41 = 134218242;
      *(v41 + 4) = NWConnection.identifier.getter();

      v99 = v41;
      *(v41 + 12) = 2080;
      v38(v10, v18, v14);
      (*(v36 + 56))(v10, 0, 1, v14);
      v42 = v105;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v10, v105, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v100 = v36;
      if ((*(v36 + 48))(v42, 1, v14) == 1)
      {
        v43 = 7104878;
        v44 = 0xE300000000000000;
        v45 = v100;
      }

      else
      {
        v67 = v104;
        v106(v104, v42, v14);
        v38(v103, v67, v14);
        v43 = String.init<A>(reflecting:)();
        v44 = v68;
        v45 = v100;
        (*(v100 + 8))(v67, v14);
      }

      outlined destroy of NSObject?(v10, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v61 = *(v45 + 8);
      v61(v18, v14);
      v69 = v45;
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v114);

      v71 = v99;
      *(v99 + 14) = v70;
      v72 = v102;
      _os_log_impl(&dword_1AEB26000, v102, v107, "QUIC stream (C%llu) in waiting state, error: %s", v71, 0x16u);
      v73 = v101;
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x1B27120C0](v73, -1, -1);
      MEMORY[0x1B27120C0](v71, -1, -1);

      v36 = v69;
    }

    else
    {

      v61 = *(v36 + 8);
      v61(v18, v14);
    }

    v74 = v110;
    v108(v110, v21, v14);
    (*(v36 + 56))(v74, 0, 3, v14);
    swift_storeEnumTagMultiPayload();
    v112(v74);
    outlined destroy of NSObject?(v74, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    NWConnection.cancel()();

    return (v61)(v21, v14);
  }

  if (v35 == *MEMORY[0x1E6977C10])
  {
    (*(v31 + 96))(v33, v30);
    v46 = v108;
    v101 = *(v15 + 32);
    (v101)(v108, v33, v14);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, log);
    v48 = *(v15 + 16);
    v49 = v107;
    v48(v107, v46, v14);
    v50 = v15;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v51, v52);
    v105 = v48;
    if (v53)
    {
      LODWORD(v100) = v52;
      v54 = v49;
      v55 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v114 = v99;
      *v55 = 134218242;
      *(v55 + 4) = NWConnection.identifier.getter();

      *(v55 + 12) = 2080;
      v56 = v106;
      v48(v106, v54, v14);
      (*(v50 + 56))(v56, 0, 1, v14);
      v57 = v56;
      v58 = v102;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v57, v102, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      if ((*(v50 + 48))(v58, 1, v14) == 1)
      {
        v59 = 7104878;
        v60 = 0xE300000000000000;
      }

      else
      {
        v77 = v104;
        (v101)(v104, v58, v14);
        v48(v103, v77, v14);
        v59 = String.init<A>(reflecting:)();
        v60 = v78;
        (*(v50 + 8))(v77, v14);
      }

      outlined destroy of NSObject?(v106, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v75 = *(v50 + 8);
      v75(v107, v14);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v114);

      *(v55 + 14) = v79;
      _os_log_impl(&dword_1AEB26000, v51, v100, "QUIC stream (C%llu) failed, error: %s", v55, 0x16u);
      v80 = v99;
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      MEMORY[0x1B27120C0](v80, -1, -1);
      MEMORY[0x1B27120C0](v55, -1, -1);
    }

    else
    {

      v75 = *(v50 + 8);
      v75(v49, v14);
    }

    v81 = v110;
    v82 = v108;
    v105(v110, v108, v14);
    (*(v50 + 56))(v81, 0, 3, v14);
    swift_storeEnumTagMultiPayload();
    v112(v81);
    outlined destroy of NSObject?(v81, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    NWConnection.cancel()();

    return (v75)(v82, v14);
  }

  if (v35 == *MEMORY[0x1E6977C08])
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, log);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 134217984;
      *(v65 + 4) = NWConnection.identifier.getter();

      v66 = "QUIC stream (C%llu) in setup state";
LABEL_29:
      _os_log_impl(&dword_1AEB26000, v63, v64, v66, v65, 0xCu);
      MEMORY[0x1B27120C0](v65, -1, -1);
    }

    goto LABEL_43;
  }

  if (v35 == *MEMORY[0x1E6977C28])
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, log);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 134217984;
      *(v65 + 4) = NWConnection.identifier.getter();

      v66 = "QUIC stream (C%llu) in preparing state";
      goto LABEL_29;
    }

LABEL_43:
  }

  if (v35 == *MEMORY[0x1E6977C00])
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, log);
    v84 = v113;

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 134217984;
      *(v87 + 4) = NWConnection.identifier.getter();

      _os_log_impl(&dword_1AEB26000, v85, v86, "QUIC stream (C%llu) in ready state", v87, 0xCu);
      MEMORY[0x1B27120C0](v87, -1, -1);
    }

    else
    {
    }

    type metadata accessor for NWProtocolQUIC();
    static NWProtocolQUIC.definition.getter();
    v89 = NWConnection.metadata(definition:)();

    if (v89)
    {
      type metadata accessor for NWProtocolQUIC.Metadata();
      if (swift_dynamicCastClass())
      {

        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 134217984;
          *(v92 + 4) = dispatch thunk of NWProtocolQUIC.Metadata.streamIdentifier.getter();

          _os_log_impl(&dword_1AEB26000, v90, v91, "QUIC stream identifier is %llu", v92, 0xCu);
          v93 = v92;
          v84 = v113;
          MEMORY[0x1B27120C0](v93, -1, -1);
        }

        else
        {
        }
      }
    }

    v98 = v110;
    *v110 = v84;
    swift_storeEnumTagMultiPayload();

    v112(v98);

    return outlined destroy of NSObject?(v98, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }

  else
  {
    if (v35 == *MEMORY[0x1E6977C20])
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      __swift_project_value_buffer(v88, log);

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 134217984;
        *(v65 + 4) = NWConnection.identifier.getter();

        v66 = "QUIC stream (C%llu) in cancelled state";
        goto LABEL_29;
      }

      goto LABEL_43;
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, log);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134217984;
      *(v97 + 4) = NWConnection.identifier.getter();

      _os_log_impl(&dword_1AEB26000, v95, v96, "QUIC stream (C%llu) in unknown state", v97, 0xCu);
      MEMORY[0x1B27120C0](v97, -1, -1);
    }

    else
    {
    }

    return (*(v31 + 8))(v33, v30);
  }
}

uint64_t outlined destroy of PluginClient.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PluginConnectError(uint64_t a1)
{
  result = type metadata singleton initialization cache for PluginConnectError;
  if (!type metadata singleton initialization cache for PluginConnectError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PluginConnectError(uint64_t a1)
{
  v1 = type metadata accessor for NWError();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t objectdestroy_6Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

id ParticipantTranslationRequest.__allocating_init(aliasedIdentifier:isSaltVerified:isLocalParticipant:)(uint64_t a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier] = a1;
  v7[OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified] = a2;
  v7[OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ParticipantTranslationRequest.init(aliasedIdentifier:isSaltVerified:isLocalParticipant:)(uint64_t a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier] = a1;
  v3[OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified] = a2;
  v3[OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::Void __swiftcall ParticipantTranslationRequest.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v4 = MEMORY[0x1B270FF70](0xD000000000000011, 0x80000001AEE34C10);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified);
  v6 = MEMORY[0x1B270FF70](0x6556746C61537369, 0xEE00646569666972);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant);
  v8 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE34C30);
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

id ParticipantTranslationRequest.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 unsignedLongLongValue];
    *&v2[OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier] = v7;
    v8 = MEMORY[0x1B270FF70](0x6556746C61537369, 0xEE00646569666972);
    v9 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified] = v9;
    v10 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE34C30);
    v11 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant] = v11;
    v14.receiver = v2;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

uint64_t ParticipantTranslationRequest.description.getter()
{
  _StringGuts.grow(_:)(93);
  MEMORY[0x1B2710020](0xD000000000000030, 0x80000001AEE34C50);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE34C90);
  if (*(v0 + OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v2, v3);

  MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE34CB0);
  if (*(v0 + OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v4, v5);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

id ParticipantTranslationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ParticipantTranslationResponse.handle.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPParticipantTranslation_handle);

  return v1;
}

uint64_t ParticipantTranslationResponse.stableDeviceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier);

  return v1;
}

id ParticipantTranslationResponse.__allocating_init(aliasedIdentifier:unaliasedIdentifier:handle:stableDeviceIdentifier:isNearby:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v17 = objc_allocWithZone(v8);
  *&v17[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = a1;
  v18 = &v17[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
  *v18 = a2;
  v18[8] = a3 & 1;
  v19 = &v17[OBJC_IVAR___CPParticipantTranslation_handle];
  *v19 = a4;
  v19[1] = a5;
  v20 = &v17[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
  *v20 = a6;
  v20[1] = a7;
  v17[OBJC_IVAR___CPParticipantTranslation_isNearby] = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id ParticipantTranslationResponse.init(aliasedIdentifier:unaliasedIdentifier:handle:stableDeviceIdentifier:isNearby:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = a1;
  v18 = &v8[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
  *v18 = a2;
  v18[8] = a3 & 1;
  v19 = &v8[OBJC_IVAR___CPParticipantTranslation_handle];
  *v19 = a4;
  v19[1] = a5;
  v20 = &v8[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
  *v20 = a6;
  v20[1] = a7;
  v8[OBJC_IVAR___CPParticipantTranslation_isNearby] = a8;
  v22.receiver = v8;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

Swift::Void __swiftcall ParticipantTranslationResponse.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v4 = MEMORY[0x1B270FF70](0xD000000000000011, 0x80000001AEE34C10);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if ((*(v1 + OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier + 8) & 1) == 0)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v6 = MEMORY[0x1B270FF70](0xD000000000000013, 0x80000001AEE34D20);
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  if (*(v1 + OBJC_IVAR___CPParticipantTranslation_handle + 8))
  {
    v7 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPParticipantTranslation_handle));
    v8 = MEMORY[0x1B270FF70](0x656C646E6168, 0xE600000000000000);
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }

  if (*(v1 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier + 8))
  {
    v9 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier));
    v10 = MEMORY[0x1B270FF70](0xD000000000000016, 0x80000001AEE34D00);
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  }

  v11 = *(v1 + OBJC_IVAR___CPParticipantTranslation_isNearby);
  v12 = MEMORY[0x1B270FF70](0x79627261654E7369, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];
}

id ParticipantTranslationResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 unsignedLongLongValue];
    *&v2[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = v7;
    v8 = NSCoder.decodeObject<A>(of:forKey:)();
    v9 = v8;
    if (v8)
    {
      v10 = [v8 unsignedLongLongValue];
    }

    else
    {
      v10 = 0;
    }

    v12 = &v2[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
    *v12 = v10;
    v12[8] = v9 == 0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v13 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = &v2[OBJC_IVAR___CPParticipantTranslation_handle];
    *v18 = v15;
    v18[1] = v17;
    v19 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = &v2[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
    *v24 = v21;
    v24[1] = v23;
    v25 = MEMORY[0x1B270FF70](0x79627261654E7369, 0xE800000000000000);
    v26 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CPParticipantTranslation_isNearby] = v26;
    v28.receiver = v2;
    v28.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v28, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

id @objc ParticipantTranslationRequest.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1B270FF70](v5, v7);

  return v8;
}

uint64_t ParticipantTranslationResponse.description.getter()
{
  _StringGuts.grow(_:)(127);
  MEMORY[0x1B2710020](0xD000000000000031, 0x80000001AEE34D40);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE34D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1B2710020](v2);

  MEMORY[0x1B2710020](0x656C646E6168202CLL, 0xE90000000000003DLL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v3 = String.init<A>(describing:)();
  MEMORY[0x1B2710020](v3);

  MEMORY[0x1B2710020](0xD000000000000019, 0x80000001AEE34DA0);

  v4 = String.init<A>(describing:)();
  MEMORY[0x1B2710020](v4);

  MEMORY[0x1B2710020](0x7261654E7369202CLL, 0xEB000000003D7962);
  if (*(v0 + OBJC_IVAR___CPParticipantTranslation_isNearby))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPParticipantTranslation_isNearby))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v5, v6);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

id ParticipantTranslationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for CPApplicationMonitor.appVisibilityMonitor : CPApplicationMonitor(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t CPApplicationMonitor.__allocating_init(applicationController:queue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static CPApplicationPolicyManager.shared;
  v11[3] = type metadata accessor for CPApplicationController();
  v11[4] = &protocol witness table for CPApplicationController;
  v11[0] = a1;
  v9 = (*(ObjectType + 136))(v8, v11, a2);
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t CPApplicationMonitor.init(applicationController:queue:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static CPApplicationPolicyManager.shared;
  v8[3] = type metadata accessor for CPApplicationController();
  v8[4] = &protocol witness table for CPApplicationController;
  v8[0] = a1;
  v6 = (*(ObjectType + 136))(v5, v8, a2);
  swift_deallocPartialClassInstance();
  return v6;
}

id CPApplicationMonitor.__allocating_init(applicationPolicyManager:applicationController:queue:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v7[OBJC_IVAR___CPApplicationMonitor_appPolicyManager] = a1;
  outlined init with copy of UserNotificationCenter(a2, &v7[OBJC_IVAR___CPApplicationMonitor_applicationController]);
  *&v7[OBJC_IVAR___CPApplicationMonitor_queue] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v9;
}

id CPApplicationMonitor.init(applicationPolicyManager:applicationController:queue:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR___CPApplicationMonitor_appPolicyManager] = a1;
  outlined init with copy of UserNotificationCenter(a2, &v3[OBJC_IVAR___CPApplicationMonitor_applicationController]);
  *&v3[OBJC_IVAR___CPApplicationMonitor_queue] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for CPApplicationMonitor();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

id CPApplicationMonitor.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor];
  swift_beginAccess();
  if (*v1)
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for CPApplicationMonitor();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

Swift::Void __swiftcall CPApplicationMonitor.createAppVisibilityMonitorIfNecessary(nearbyOption:)(Swift::String_optional nearbyOption)
{
  v2 = v1;
  object = nearbyOption.value._object;
  countAndFlagsBits = nearbyOption.value._countAndFlagsBits;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPApplicationMonitor_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v6 + 8);
  v11 = (v6 + 8);
  v13 = v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & *v2) + 0x70))(v13))
  {
    if (!object)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.default);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Creating process monitor since conversation was joined";
      goto LABEL_11;
    }

    if (one-time initialization token for default == -1)
    {
LABEL_5:
      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.default);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v15, v16))
      {
LABEL_12:

        v20 = (*((*v11 & *v2) + 0xC0))(countAndFlagsBits, object);
        v22 = v21;
        v23 = (v2 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
        swift_beginAccess();
        *v23 = v20;
        v23[1] = v22;
        goto LABEL_13;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Creating process monitor since nearby shareplay is joinable";
LABEL_11:
      _os_log_impl(&dword_1AEB26000, v15, v16, v18, v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
      goto LABEL_12;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

LABEL_13:
  swift_unknownObjectRelease();
}

uint64_t *CPApplicationMonitor.createAppVisibilityMonitor(nearbyOption:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___CPApplicationMonitor_appPolicyManager);
  outlined init with copy of UserNotificationCenter(v2 + OBJC_IVAR___CPApplicationMonitor_applicationController, v7);
  type metadata accessor for RunningBoardAppVisibilityMonitor();
  swift_allocObject();

  return RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(v5, v7, a1, a2);
}

id CPApplicationMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AppVisibilityMonitor.applicationType(forBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(v18, a3, a4);
  v8 = v19;
  v9 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v10 = (*(v9 + 8))(a1, a2, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if ((v10 & 1) == 0)
  {
    return 2;
  }

  v11 = (*(a4 + 8))(a3, a4);
  v12 = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x98))();

  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    v16 = [v15 BOOLValue];

    if (v16)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

id AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v63 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - v23;
  (*(a5 + 24))(a4, a5);
  v65 = a1;
  if (v25)
  {
    v26 = v68;
    v64 = v24;

    v27 = objc_opt_self();
    v28 = a2;
    v29 = MEMORY[0x1B270FF70](a1, a2);
    v30 = [v27 nearbyUpdateForegroundAppURLForBundleIdentifier:v29 applicationType:a3];

    if (v30)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = *(v26 + 56);
      v32 = v19;
      v33 = 0;
    }

    else
    {
      v31 = *(v26 + 56);
      v32 = v19;
      v33 = 1;
    }

    v41 = v67;
    v31(v32, v33, 1, v67);
    v22 = v19;
    v37 = v28;
    v24 = v64;
  }

  else
  {
    v34 = objc_opt_self();
    v35 = MEMORY[0x1B270FF70](a1, a2);
    v36 = [v34 faceTimeUpdateForegroundAppURLForBundleIdentifier:v35 applicationType:a3];

    v37 = a2;
    if (v36)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = *(v68 + 56);
      v39 = v22;
      v40 = 0;
    }

    else
    {
      v38 = *(v68 + 56);
      v39 = v22;
      v40 = 1;
    }

    v41 = v67;
    v38(v39, v40, 1, v67);
  }

  outlined init with take of URL?(v22, v24);
  outlined init with copy of URL?(v24, v16);
  if ((*(v68 + 48))(v16, 1, v41) == 1)
  {
    outlined destroy of NSObject?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v42 = v65;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.default);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v24;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v70 = v48;
      *v47 = 136315394;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v37, &v70);
      *(v47 + 12) = 2080;
      v69 = a3;
      type metadata accessor for CPApplicationType(0);
      v49 = String.init<A>(reflecting:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v70);

      *(v47 + 14) = v51;
      _os_log_impl(&dword_1AEB26000, v44, v45, "AppVisibilityMonitor: Unable to create update foreground app URL for bundle identifier: %s with type: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v47, -1, -1);

      v52 = v46;
      return outlined destroy of NSObject?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

LABEL_18:
    v52 = v24;
    return outlined destroy of NSObject?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v53 = v66;
  (*(v68 + 32))(v66, v16, v41);
  v54 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v56;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSObject?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v54 setFrontBoardOptions_];

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v60 = result;
    URL._bridgeToObjectiveC()(v59);
    v62 = v61;
    [v60 openURL:v61 configuration:v54 completionHandler:0];

    (*(v68 + 8))(v53, v41);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t specialized CPApplicationMonitor.conversationManager(_:conversationChanged:)(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  if (result)
  {
    v5 = v4;
    v6 = [a1 conversationsByUUID];
    type metadata accessor for UUID();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5();
      v10 = specialized Sequence._copySequenceContents(initializing:)(&v12, (v9 + 32), v8, v7);
      result = outlined consume of Set<String>.Iterator._Variant(v12);
      if (v10 != v8)
      {
        __break(1u);
        return result;
      }
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 64))(v9, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized CPApplicationMonitor.conversationManager(_:activitySessionContainersChanged:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPApplicationMonitor_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v9 = (v4 + 8);
  v10(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  if (v11)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(0, 0);
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  a1 = v1;
  result = v9();
  if (result)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for default == -1)
    {
LABEL_9:
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.default);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1AEB26000, v14, v15, "Invalidating process monitor since no longer in active call", v16, 2u);
        MEMORY[0x1B27120C0](v16, -1, -1);
      }

      if (v9())
      {
        v18 = v17;
        ObjectType = swift_getObjectType();
        (*(v18 + 32))(ObjectType, v18);
        swift_unknownObjectRelease();
      }

      v20 = (a1 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
      swift_beginAccess();
      *v20 = 0;
      v20[1] = 0;
      return swift_unknownObjectRelease();
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized CPApplicationMonitor.conversationManager(_:conversationAdvertisementLost:)()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  result = v2();
  if (result)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Invalidating process monitor since we no longer have a nearby shareplay session", v7, 2u);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    if (v2())
    {
      v9 = v8;
      ObjectType = swift_getObjectType();
      (*(v9 + 32))(ObjectType, v9);
      swift_unknownObjectRelease();
    }

    v11 = (v1 + OBJC_IVAR___CPApplicationMonitor_appVisibilityMonitor);
    swift_beginAccess();
    *v11 = 0;
    v11[1] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized AppVisibilityMonitor.shouldHandleAppVisibilityUpdate(forBundleIdentifier:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v5 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  if (!v5)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v26);
      _os_log_impl(&dword_1AEB26000, v7, v8, "AppVisibilityMonitor: Unable to get application record for bundle identifier: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    goto LABEL_7;
  }

  v13 = v5;
  v14 = [v5 appTags];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26[0] = 0x6E6564646968;
  v26[1] = 0xE600000000000000;
  MEMORY[0x1EEE9AC00](v16);
  v25[2] = v26;
  LOBYTE(v14) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v25, v15);

  if (v14)
  {

LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  v17 = [v13 compatibilityObject];
  v18 = [v17 bundleType];

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_18;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v21)
  {
LABEL_18:

    v11 = 1;
    return v11 & 1;
  }

  if (v19 == v22 && v21 == v23)
  {

    v11 = 0;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v24 ^ 1;
  }

  return v11 & 1;
}

{
  return specialized AppVisibilityMonitor.shouldHandleAppVisibilityUpdate(forBundleIdentifier:)(a1, a2, _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject);
  }

  return result;
}

_BYTE *PluginRpcStatus.init(code:cause:errorMessage:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t PluginRpcStatus.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  v5 = *(v1 + 8);
  *(a1 + 8) = v5;
  *(a1 + 24) = v2;
  type metadata accessor for PluginRpcError(0);
  swift_storeEnumTagMultiPayload();
  v3 = v5;
}

uint64_t type metadata accessor for PluginRpcError(uint64_t a1)
{
  result = type metadata singleton initialization cache for PluginRpcError;
  if (!type metadata singleton initialization cache for PluginRpcError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CopresenceCore::PluginRpcStatusCode_optional __swiftcall PluginRpcStatusCode.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0x11u)
  {
    v2 = 17;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PluginRpcStatusCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PluginRpcStatusCode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *PluginRpcStatus.cause.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t PluginRpcStatus.errorMessage.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PluginRpcStatus.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];

  _StringGuts.grow(_:)(28);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v4);

  MEMORY[0x1B2710020](8236, 0xE200000000000000);
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (!v3)
  {
    v3 = 0x80000001AEE34EE0;
  }

  MEMORY[0x1B2710020](v5, v3);

  MEMORY[0x1B2710020](0x3A6573756163202CLL, 0xE900000000000020);
  if (v1)
  {
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE400000000000000;
    v7 = 1701736302;
  }

  MEMORY[0x1B2710020](v7, v9);

  return 0x7461745320435052;
}

uint64_t PluginRpcDefinition.path.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PluginRpcDefinition.init(path:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type PluginRpcStatusCode and conformance PluginRpcStatusCode()
{
  result = lazy protocol witness table cache variable for type PluginRpcStatusCode and conformance PluginRpcStatusCode;
  if (!lazy protocol witness table cache variable for type PluginRpcStatusCode and conformance PluginRpcStatusCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginRpcStatusCode and conformance PluginRpcStatusCode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginRpcStatusCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginRpcStatusCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}