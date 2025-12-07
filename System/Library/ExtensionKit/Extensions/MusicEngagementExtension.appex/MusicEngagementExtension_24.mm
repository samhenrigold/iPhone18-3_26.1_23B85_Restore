double GroupActivitiesManager.reaction.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double key path getter for GroupActivitiesManager.reaction : GroupActivitiesManager@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t key path setter for GroupActivitiesManager.reaction : GroupActivitiesManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of SharedListening.Reaction?(v2, v3, v4, v5, v6, v7);
  static Published.subscript.getter();

  v12[0] = v9;
  v12[1] = v10;
  v12[2] = v11;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  GroupActivitiesManager.reaction.didset(v12);
  return outlined destroy of TaskPriority?(v12, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);
}

void GroupActivitiesManager.reaction.didset(void **a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v53 = a1[2];
  v55 = v5;
  v6 = a1[5];
  v51 = a1[4];
  v54 = v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Participant();
  v50 = *(v11 - 8);
  __chkstk_darwin();
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v1;
  static Published.subscript.getter();

  v13 = v62;
  if (v62)
  {
    v45 = v11;
    v46 = v10;
    v47 = v8;
    v48 = v7;
    v14 = v61;
    v16 = v63;
    v15 = v64;
    v17 = v65;
    v18 = v66;
    v52 = v65;
    if (!v3)
    {

      v43 = v14;
      outlined consume of SharedListening.Reaction?(v14, v13, v16, v15, v17, v18);
      outlined consume of SharedListening.Reaction?(v4, 0, v53, v55, v51, v54);
      v19 = v17;
      goto LABEL_23;
    }

    v44 = v63;
    if (v61 == v4 && v62 == v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v16 = v44;
      if (v44 == v53 && v15 == v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v18)
        {
          if (!v54)
          {
            outlined consume of SharedListening.Reaction?(v14, v13, v16, v15, v52, 0);
            return;
          }

          outlined init with copy of TaskPriority?(a1, &v61, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);

          v43 = v14;
          v20 = v14;
          v21 = v13;
          v22 = v16;
          v23 = v15;
          v19 = v52;
          v24 = v52;
          v25 = 0;
          goto LABEL_22;
        }

        if (v54)
        {
          if (v52 == v51 && v18 == v54)
          {

            outlined init with copy of TaskPriority?(a1, &v61, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);

LABEL_40:

            outlined consume of SharedListening.Reaction?(v14, v13, v16, v15, v52, v18);
            return;
          }

          v40 = v52;
          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined init with copy of TaskPriority?(a1, &v61, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);

          if (v41)
          {
            v16 = v44;
            goto LABEL_40;
          }

          v43 = v14;
          v42 = v44;
          outlined consume of SharedListening.Reaction?(v14, v13, v44, v15, v40, v18);
          v19 = v40;
          v16 = v42;
LABEL_23:
          if (one-time initialization token for groupActivities != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static Logger.groupActivities);

          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *&v60[0] = v30;
            *v29 = 136446210;
            v61 = v16;
            v62 = v15;

            v31 = String.init<A>(reflecting:)();
            v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v31, v32, v60);

            *(v29 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v27, v28, "🌚 received: %{public}s)", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v30);

            v19 = v52;
          }

          if (!v18)
          {
            goto LABEL_36;
          }

          if (*(v56 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
          {

            v34 = v49;
            GroupSession.localParticipant.getter();

            v35 = v46;
            Participant.id.getter();
            (*(v50 + 8))(v34, v45);
            v36 = UUID.uuidString.getter();
            v38 = v37;
            (*(v47 + 8))(v35, v48);
            if (v19 == v36 && v18 == v38)
            {

LABEL_36:

              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v60[0] = v57;
              v60[1] = v58;
              v60[2] = v59;
              swift_getKeyPath();
              swift_getKeyPath();
              v58 = 0u;
              v59 = 0u;
              v57 = 0u;

              static Published.subscript.setter();
              GroupActivitiesManager.reaction.didset(v60);
              outlined destroy of TaskPriority?(v60, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);
              return;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v39)
            {

              goto LABEL_36;
            }
          }

          else
          {
          }

          v61 = v43;
          v62 = v13;
          v63 = v16;
          v64 = v15;
          v65 = v19;
          v66 = v18;
          v67 = 1;
          GroupActivitiesManager.postEvent(_:participantID:)(&v61, v19, v18);
          swift_bridgeObjectRelease_n();
          goto LABEL_36;
        }

        outlined init with copy of TaskPriority?(a1, &v61, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);
      }

      else
      {

        outlined init with copy of TaskPriority?(a1, &v61, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);
      }

      v43 = v14;
      v20 = v14;
      v21 = v13;
    }

    else
    {

      outlined init with copy of TaskPriority?(a1, &v61, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);

      v43 = v14;
      v20 = v14;
      v21 = v13;
      v16 = v44;
    }

    v22 = v16;
    v23 = v15;
    v19 = v52;
    v24 = v52;
    v25 = v18;
LABEL_22:
    outlined consume of SharedListening.Reaction?(v20, v21, v22, v23, v24, v25);
    goto LABEL_23;
  }
}

uint64_t key path setter for GroupActivitiesManager.$reaction : GroupActivitiesManager(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore15SharedListeningO8ReactionVSg_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore15SharedListeningO8ReactionVSg_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMd, &_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupActivitiesManager.maxParticipantsCount.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupActivitiesManager.hasJoined.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMR);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v21 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMR);
  __chkstk_darwin();
  v6 = &v20 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.state.getter();

    v13 = *(v2 + 56);
    v13(v12, 0, 1, v1);
  }

  else
  {
    v13 = *(v2 + 56);
    v13(&v20 - v11, 1, 1, v1);
  }

  (*(v2 + 104))(v10, enum case for GroupSession.State.joined<A>(_:), v1);
  v13(v10, 0, 1, v1);
  v14 = *(v4 + 48);
  outlined init with copy of TaskPriority?(v12, v6, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  outlined init with copy of TaskPriority?(v10, &v6[v14], &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  v15 = *(v2 + 48);
  if (v15(v6, 1, v1) != 1)
  {
    outlined init with copy of TaskPriority?(v6, v8, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    if (v15(&v6[v14], 1, v1) != 1)
    {
      v17 = v21;
      (*(v2 + 32))(v21, &v6[v14], v1);
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.State and conformance GroupSession<A>.State, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMR, &protocol conformance descriptor for GroupSession<A>.State);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v2 + 8);
      v18(v17, v1);
      outlined destroy of TaskPriority?(v10, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      outlined destroy of TaskPriority?(v12, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      v18(v8, v1);
      outlined destroy of TaskPriority?(v6, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
      return v16 & 1;
    }

    outlined destroy of TaskPriority?(v10, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    outlined destroy of TaskPriority?(v12, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
    (*(v2 + 8))(v8, v1);
    goto LABEL_9;
  }

  outlined destroy of TaskPriority?(v10, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  outlined destroy of TaskPriority?(v12, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  if (v15(&v6[v14], 1, v1) != 1)
  {
LABEL_9:
    outlined destroy of TaskPriority?(v6, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMR);
    v16 = 0;
    return v16 & 1;
  }

  outlined destroy of TaskPriority?(v6, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMR);
  v16 = 1;
  return v16 & 1;
}

uint64_t GroupActivitiesManager.isSessionEligible.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  v12 = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  if ((GroupActivitiesManager.hasJoined.getter() & 1) != 0 || (GroupStateObserver.isEligibleForGroupSession.getter() & 1) == 0)
  {
    outlined destroy of ApplicationCapabilities(v10);
    return 0;
  }

  else
  {
    if (v11 == 2)
    {

      outlined destroy of ApplicationCapabilities(v10);
      return BYTE1(v10[0]);
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of ApplicationCapabilities(v10);
    result = 0;
    if (v1)
    {
      return BYTE1(v10[0]);
    }
  }

  return result;
}

id GroupActivitiesManager.itemProvider(with:metadata:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v46 - v8;
  if (a1)
  {
    goto LABEL_2;
  }

  v47 = v6;
  v49 = a2;
  swift_beginAccess();
  v18 = v2[5];
  v19 = v2[6];
  __swift_project_boxed_opaque_existential_0Tm(v2 + 2, v18);
  v48 = &v46;
  v20 = *(v18 - 8);
  v21 = __chkstk_darwin();
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v24 = (*(v19 + 48))(v18, v19);
  (*(v20 + 8))(v23, v18);
  if (!v24)
  {
LABEL_12:
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v14 = __swift_project_value_buffer(v26, static Logger.groupActivities);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v29 = 136446466;
    v50 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MPCPlaybackIntentCSgMd, &_sSo17MPCPlaybackIntentCSgMR);
    v30 = String.init<A>(describing:)();
    v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v31, &v52);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = v3[5];
    v34 = v3[6];
    __swift_project_boxed_opaque_existential_0Tm(v3 + 2, v33);
    v49 = &v46;
    v35 = *(v33 - 8);
    v36 = __chkstk_darwin();
    v38 = &v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = (*(v34 + 48))(v33, v34);
    (*(v35 + 8))(v38, v33);
    if (v39)
    {
      v40 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      if (*&v39[v40])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v41 = v51;
LABEL_20:
        v51 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MPCPlayerResponseCSgMd, &_sSo17MPCPlayerResponseCSgMR);
        v42 = String.init<A>(describing:)();
        v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v43, &v52);

        *(v29 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v27, v28, "    Cannot build itemProvider with intent=%{public}s)\n    and player=%{public}s)", v29, 0x16u);
        swift_arrayDestroy();

LABEL_21:

        lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
        swift_allocError();
        *v44 = 0;
        *(v44 + 8) = 4;
        swift_willThrow();
        return v14;
      }
    }

    v41 = 0;
    goto LABEL_20;
  }

  v25 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v24[v25])
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v50)
  {
    goto LABEL_12;
  }

  a2 = v49;
  v6 = v47;
LABEL_2:
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.groupActivities);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v49 = a2;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Building GroupActivity item provider", v13, 2u);
    a2 = v49;
  }

  v14 = [objc_allocWithZone(NSItemProvider) init];
  outlined init with copy of TaskPriority?(a2, v9, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  outlined init with take of GroupActivitiesManager.Activity.Metadata?(v9, v16 + v15);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v17 = a1;

  NSItemProvider.registerGroupActivity<A>(preparationHandler:)();

  return v14;
}

uint64_t closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

uint64_t closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);

    return specialized static SharedListening.buildSharedSession(with:)(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *(v5 + 16) = *(v0 + 96);
    *(v5 + 32) = 0;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    v7 = type metadata accessor for GroupActivitiesManager.Activity(0);
    *v6 = v0;
    v6[1] = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
    v8 = *(v0 + 80);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x80000001004CE570, partial apply for closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v5, v7);
  }
}

{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = v0[20];
  v2 = v0[13];
  outlined init with copy of TaskPriority?(v0[12], v0[14], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v2 + 16, (v0 + 2));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[10];

  return GroupActivitiesManager.Activity.init(with:metadata:coordinator:)(v7, v5, v6, (v0 + 2));
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  else
  {
    v2 = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v0[23] = v0[16];
  v1 = v0[11];
  type metadata accessor for MainActor();
  v2 = v1;
  v0[24] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v4, v3);
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);

  GroupActivitiesManager.handleError(_:intent:)(v1, v2);

  return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

{

  *(v0 + 184) = *(v0 + 176);
  v1 = *(v0 + 88);
  type metadata accessor for MainActor();
  v2 = v1;
  *(v0 + 192) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v2 = *(v1 + 88);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void GroupActivitiesManager.handleError(_:intent:)(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v23[0] = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v5 = *&v27[0];
    v6 = BYTE8(v27[0]);
    swift_beginAccess();
    v7 = v2[5];
    v8 = v2[6];
    __swift_project_boxed_opaque_existential_0Tm(v2 + 2, v7);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin();
    v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v12, v10);
    v13 = (*(v8 + 48))(v7, v8);
    (*(v9 + 8))(v12, v7);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      v15 = *&v13[v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = a2;

    SharedListening.ErrorHandling.Error.log()();
    SharedListening.ErrorHandling.Error.alert(with:)(a2, v3, v15, v5, v6, v23);
    if (v25)
    {
      v27[0] = v23[0];
      v27[1] = v23[1];
      v27[2] = v23[2];
      v28 = v24;
      v29 = v25;
      v30 = v26;
      outlined init with copy of ActionPerforming(v3 + 16, v20);
      v17 = v21;
      v18 = v22;
      __swift_project_boxed_opaque_existential_0Tm(v20, v21);
      (*(v18 + 32))(v27, v17, v18);
      outlined destroy of TaskPriority?(v23, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);

      outlined consume of SharedListening.ErrorHandling.Error(v5, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {

      outlined consume of SharedListening.ErrorHandling.Error(v5, v6);
    }
  }
}

double closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a3;
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v25 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  outlined init with copy of TaskPriority?(a2, v14, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  (*(v7 + 16))(v10, a1, v6);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v7 + 80) + v19 + 8) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  outlined init with take of GroupActivitiesManager.Activity.Metadata?(v14, v21 + v18);
  *(v21 + v19) = v25;
  (*(v7 + 32))(v21 + v20, v10, v6);
  v22 = v26;
  *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v23 = v22;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v21);

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v7[19] = v10;
  v7[20] = *(v10 + 64);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[15];
  v7 = v0[13];
  v23 = v0[12];
  outlined init with copy of TaskPriority?(v0[11], v1, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  (*(v5 + 16))(v3, v7, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v5 + 80) + v9 + 8) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[22] = v11;
  outlined init with take of GroupActivitiesManager.Activity.Metadata?(v1, v11 + v8);
  *(v11 + v9) = v23;
  (*(v5 + 32))(v11 + v10, v3, v6);
  v12 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[6] = CFRange.init(_:);
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v0[5] = &block_descriptor_149;
  v13 = _Block_copy(v0 + 2);

  v14 = [v12 initWithBlock:v13];
  v0[23] = v14;
  _Block_release(v13);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[12];
    swift_beginAccess();
    v17 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_0Tm(v16 + 2, v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    v0[24] = v20;
    (*(v19 + 16))();
    v21 = (*(v18 + 48))(v17, v18);
    v0[25] = v21;
    (*(v19 + 8))(v20, v17);
    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);

    return specialized static SharedListening.buildSharedSession(with:on:)(v14, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v11, v21);
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  else
  {

    v3 = closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v2, v1);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);

  GroupActivitiesManager.handleError(_:intent:)(v1, v2);

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

double closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v25 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  outlined init with copy of TaskPriority?(a2, v13, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  v17 = v9;
  v18 = v6;
  (*(v7 + 16))(v17, v27, v6);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a1;
  outlined init with take of GroupActivitiesManager.Activity.Metadata?(v13, &v22[v19]);
  *&v22[v20] = v28;
  (*(v7 + 32))(&v22[v21], v26, v18);
  v23 = a1;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v22);

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  v7[14] = swift_task_alloc();
  type metadata accessor for GroupActivitiesManager.Activity(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)()
{
  v1 = v0[12];
  v2 = v0[10];
  outlined init with copy of TaskPriority?(v0[11], v0[14], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v1 + 16, (v0 + 2));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[10];

  return GroupActivitiesManager.Activity.init(with:metadata:coordinator:)(v5, v7, v6, (v0 + 2));
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  else
  {
    v2 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[16];
  outlined init with copy of GroupActivitiesManager.PrepareResult(v1, v0[15], type metadata accessor for GroupActivitiesManager.Activity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  outlined destroy of GroupActivitiesManager.PrepareResult(v1, type metadata accessor for GroupActivitiesManager.Activity);

  v2 = v0[1];

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupActivitiesManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for GroupActivityActivationResult();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.prepareForActivation(options:), 0, 0);
}

uint64_t GroupActivitiesManager.prepareForActivation(options:)()
{
  v26 = v0;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 144) = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "GroupActivitiesManager prepareForActivation", v4, 2u);
  }

  if ((GroupActivitiesManager.isSessionEligible.getter() & 1) == 0)
  {
    v12 = 1;
LABEL_11:
    (*(*(v0 + 128) + 56))(*(v0 + 56), v12, 4, *(v0 + 120));

    v13 = *(v0 + 8);

    return v13();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 49))
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446210;
      *(v0 + 40) = 1;
      *(v0 + 48) = 4;
      v9 = String.init<A>(describing:)();
      v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Prepare error=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    v12 = 2;
    goto LABEL_11;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 72);
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v18 = *(v16 + 32);
  v19 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  outlined destroy of TaskPriority?(v15, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd, &_s9MusicCore26GroupActivitiesCoordinator_pSgMR);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v17 + 16, v15);
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  v21 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v20 = v0;
  v20[1] = GroupActivitiesManager.prepareForActivation(options:);
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v24 = *(v0 + 64);

  return GroupActivity.prepareForActivation(options:)(v22, v24, v23, v21);
}

{

  return _swift_task_switch(GroupActivitiesManager.prepareForActivation(options:), 0, 0);
}

{
  v38 = v0;
  v1 = *(*(v0 + 88) + 16);
  v1(*(v0 + 104), *(v0 + 112), *(v0 + 80));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v9 = 136446210;
    v1(v6, v5, v8);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v13;
    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "User choice=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);

    v14 = *(v17 + 8);
    v14(v5, v16);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(*(v0 + 88) + 104);
  v20(v18, enum case for GroupActivityActivationResult.activationPreferred(_:), v19);
  v21 = static GroupActivityActivationResult.== infix(_:_:)();
  v14(v18, v19);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 112);
  v36 = *(v0 + 120);
  if (v21)
  {
    v34 = *(v0 + 80);
    v25 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = *(v0 + 50);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 51) = 1;

    static Published.subscript.setter();
    GroupActivitiesManager.isLoading.didset(v26);
    v14(v24, v34);
    outlined init with copy of GroupActivitiesManager.PrepareResult(v22, v25, type metadata accessor for GroupActivitiesManager.Activity);
    (*(v23 + 56))(v25, 0, 4, v36);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v20(v27, enum case for GroupActivityActivationResult.activationDisabled(_:), v28);
    v30 = static GroupActivityActivationResult.== infix(_:_:)();
    v14(v27, v28);
    v14(v24, v28);
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 4;
    }

    (*(v23 + 56))(v29, v31, 4, v36);
  }

  outlined destroy of GroupActivitiesManager.PrepareResult(v22, type metadata accessor for GroupActivitiesManager.Activity);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t GroupActivitiesManager.beginMeasuringInitiationTime()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v3 = &v19 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = type metadata accessor for Signpost(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.groupActivities);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "beginMeasuringInitiationTime", v13, 2u);
  }

  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.sharePlay;

  Signpost.init(name:object:log:)("InitiationToFirstAudioFrame", 27, 2, v14, v9);
  Signpost.begin(dso:_:_:)(&_mh_execute_header, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);
  outlined init with copy of GroupActivitiesManager.PrepareResult(v9, v5, type metadata accessor for Signpost);
  (*(v7 + 56))(v5, 0, 1, v6);
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v5, v1 + v15, &_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  swift_endAccess();
  Date.init()();
  outlined destroy of GroupActivitiesManager.PrepareResult(v9, type metadata accessor for Signpost);
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v3, v1 + v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v6[14] = v7;
  v6[15] = *(v7 + 64);
  v6[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v9, v8);
}

uint64_t closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);

    return specialized static SharedListening.buildSharedSession(with:)(v2);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    outlined init with copy of GroupActivitiesManager.PrepareResult(v0[13], v5, type metadata accessor for GroupActivitiesManager.Activity);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = v7;
    outlined init with take of GroupActivitiesManager.PrepareResult(v5, v9 + v8, type metadata accessor for GroupActivitiesManager.Activity);
    v10 = objc_allocWithZone(ICLiveLinkIdentity);
    v0[6] = CFRange.init(_:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    v0[5] = &block_descriptor_221;
    v11 = _Block_copy(v0 + 2);

    v12 = [v10 initWithBlock:v11];
    v0[23] = v12;
    _Block_release(v11);

    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v13 = v0[12];
      swift_beginAccess();
      v14 = v13[5];
      v15 = v13[6];
      __swift_project_boxed_opaque_existential_0Tm(v13 + 2, v14);
      v16 = *(v14 - 8);
      v17 = swift_task_alloc();
      v0[24] = v17;
      (*(v16 + 16))();
      v18 = (*(v15 + 48))(v14, v15);
      v0[25] = v18;
      (*(v16 + 8))(v17, v14);
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);

      return specialized static SharedListening.buildSharedSession(with:on:)(v12, partial apply for closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v9, v18);
    }
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v2) = *(v0 + 240);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 241) = 0;

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v2);
  GroupActivitiesManager.handleError(_:intent:)(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v3, v2);
}

{
  v1 = v0[28];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v0 + 242);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 243) = 0;

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v3);
  v4 = v2;
  GroupActivitiesManager.handleError(_:intent:)(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[18];
    v7 = v4[19];

    return _swift_task_switch(closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v6, v7);
  }

  else
  {
    v4[28] = a1;
    v8 = swift_task_alloc();
    v4[29] = v8;
    *v8 = v5;
    v8[1] = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);
    v9 = v4[13];

    return GroupActivitiesManager.activateIntent(_:with:)(a1, v9);
  }
}

uint64_t GroupActivitiesManager.activateIntent(_:with:)(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.activateIntent(_:with:), 0, 0);
}

uint64_t GroupActivitiesManager.activateIntent(_:with:)()
{
  v22 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 sharedListeningProperties];
    *(v0 + 304) = v3;
    if (v3)
    {
      if (one-time initialization token for startingItemProperties != -1)
      {
        swift_once();
      }

      v4 = static GroupActivitiesManager.Activity.startingItemProperties;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = GroupActivitiesManager.activateIntent(_:with:);
      v5 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo20MPModelGenericObjectCs5Error_pGMd, &_sSccySo20MPModelGenericObjectCs5Error_pGMR);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?, @unowned NSError?) -> () with result type UIImage;
      *(v0 + 104) = &block_descriptor_227;
      *(v0 + 112) = v5;
      [v2 getRepresentativeObjectWithProperties:v4 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(v0 + 352);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v6);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.groupActivities);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    *(v0 + 216) = v12;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MPCPlaybackIntentCSgMd, &_sSo17MPCPlaybackIntentCSgMR);
    v16 = String.init<A>(reflecting:)();
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cannot activate intent=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = GroupActivitiesManager.activateIntent(_:with:);
  }

  else
  {
    v2 = GroupActivitiesManager.activateIntent(_:with:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v36 = v0;
  v1 = v0[28];
  v0[40] = v1;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[41] = __swift_project_value_buffer(v2, static Logger.groupActivities);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136446210;
    v0[30] = v1;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20MPModelGenericObjectCSgMd, &_sSo20MPModelGenericObjectCSgMR);
    v9 = String.init<A>(describing:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activity starting item=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v12 = v0[37];
  v13 = v0[33];
  outlined init with copy of GroupActivitiesManager.PrepareResult(v0[32], v12, type metadata accessor for GroupActivitiesManager.Activity);
  outlined destroy of TaskPriority?(v12, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd, &_s9MusicCore26GroupActivitiesCoordinator_pSgMR);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v13 + 16, v12);
  if (v3)
  {
    v14 = [v3 innermostModelObject];
    type metadata accessor for CodableModelObjectIdentity();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
  }

  else
  {
    type metadata accessor for CodableModelObjectIdentity();
    swift_allocObject();
    swift_deallocPartialClassInstance();
    v15 = 0;
  }

  v17 = v0[37];
  v16 = v0[38];

  *(v17 + 56) = v15;
  type metadata accessor for CodableListeningProperties();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 48) = v18;
  v19 = v16;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[36];
    v22 = v0[37];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    swift_beginAccess();
    outlined init with copy of GroupActivitiesManager.PrepareResult(v22, v23, type metadata accessor for GroupActivitiesManager.Activity);
    v26 = String.init<A>(describing:)();
    v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "🚀 Activiting activity=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  v29 = v0[37];
  v30 = v0[35];
  swift_beginAccess();
  outlined init with copy of GroupActivitiesManager.PrepareResult(v29, v30, type metadata accessor for GroupActivitiesManager.Activity);
  v31 = swift_task_alloc();
  v0[42] = v31;
  v32 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v31 = v0;
  v31[1] = GroupActivitiesManager.activateIntent(_:with:);
  v33 = v0[34];

  return GroupActivity.activate()(v33, v32);
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  outlined destroy of GroupActivitiesManager.PrepareResult(*(v2 + 280), type metadata accessor for GroupActivitiesManager.Activity);
  if (v0)
  {
    v3 = GroupActivitiesManager.activateIntent(_:with:);
  }

  else
  {
    v3 = GroupActivitiesManager.activateIntent(_:with:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);

  outlined destroy of GroupActivitiesManager.PrepareResult(v2, type metadata accessor for GroupActivitiesManager.Activity);

  v4 = *(v0 + 8);

  return v4();
}

{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v17 = *(v0 + 304);
    v18 = *(v0 + 296);
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 232) = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activation failed=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);

    v11 = v18;
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 248);

    v11 = v13;
  }

  outlined destroy of GroupActivitiesManager.PrepareResult(v11, type metadata accessor for GroupActivitiesManager.Activity);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t GroupActivitiesManager.activateIntent(_:with:)(uint64_t a1)
{
  v32 = v1;
  swift_willThrow();

  v1[40] = 0;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v1[41] = __swift_project_value_buffer(v2, static Logger.groupActivities);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136446210;
    v1[30] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20MPModelGenericObjectCSgMd, &_sSo20MPModelGenericObjectCSgMR);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, v31);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activity starting item=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v1[37];
  v11 = v1[33];
  outlined init with copy of GroupActivitiesManager.PrepareResult(v1[32], v10, type metadata accessor for GroupActivitiesManager.Activity);
  outlined destroy of TaskPriority?(v10, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd, &_s9MusicCore26GroupActivitiesCoordinator_pSgMR);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v11 + 16, v10);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v13 = v1[37];
  v12 = v1[38];

  *(v13 + 56) = 0;
  type metadata accessor for CodableListeningProperties();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 48) = v14;
  v15 = v12;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v19 = v1[36];
    v18 = v1[37];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136446210;
    swift_beginAccess();
    outlined init with copy of GroupActivitiesManager.PrepareResult(v18, v19, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = String.init<A>(describing:)();
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, v31);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "🚀 Activiting activity=%{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  v25 = v1[37];
  v26 = v1[35];
  swift_beginAccess();
  outlined init with copy of GroupActivitiesManager.PrepareResult(v25, v26, type metadata accessor for GroupActivitiesManager.Activity);
  v27 = swift_task_alloc();
  v1[42] = v27;
  v28 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v27 = v1;
  v27[1] = GroupActivitiesManager.activateIntent(_:with:);
  v29 = v1[34];

  return GroupActivity.activate()(v29, v28);
}

double closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  outlined init with copy of GroupActivitiesManager.PrepareResult(a3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivitiesManager.Activity);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;
  outlined init with take of GroupActivitiesManager.PrepareResult(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for GroupActivitiesManager.Activity);
  v13 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v12);

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return GroupActivitiesManager.activateIntent(_:with:)(a5, a6);
}

uint64_t String.rawIdentifier.getter(uint64_t a1, unint64_t a2)
{
  v4._countAndFlagsBits = 0x616C506572616853;
  v4._object = 0xEC0000003D444979;
  if (String.hasPrefix(_:)(v4))
  {
    specialized Collection.subscript.getter(0xC0007uLL, a1, a2);
    a1 = static String._fromSubstring(_:)();
  }

  else
  {
  }

  return a1;
}

uint64_t GroupActivitiesManager.sessionForReactionAssociation()()
{
  if (GroupActivitiesManager.hasJoined.getter())
  {
  }

  else
  {
    return 0;
  }
}

void GroupActivitiesManager.activity.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityVSg_AFtMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSg_AFtMR);
  __chkstk_darwin();
  v67 = &v59 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
  __chkstk_darwin();
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v59 - v4;
  __chkstk_darwin();
  v7 = &v59 - v6;
  __chkstk_darwin();
  v9 = &v59 - v8;
  v10 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v14 = &v59 - v13;
  __chkstk_darwin();
  v16 = &v59 - v15;
  __chkstk_darwin();
  v20 = &v59 - v19;
  v69 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    v63 = v18;
    v64 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
    v68 = v17;

    GroupSession.activity.getter();

    v21 = *(v20 + 6);
    if (!v21)
    {
      v28 = v20;
LABEL_9:
      outlined destroy of GroupActivitiesManager.PrepareResult(v28, type metadata accessor for GroupActivitiesManager.Activity);
      return;
    }

    v61 = v12;
    v62 = v16;
    v65 = *(v21 + 16);
    outlined destroy of GroupActivitiesManager.PrepareResult(v20, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = v69 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v23 = *(v10 + 48);
    if (!v23(v22, 1, v68))
    {
      type metadata accessor for CodableListeningProperties();
      v24 = swift_allocObject();
      v25 = v65;
      *(v24 + 16) = v65;
      *(v22 + 48) = v24;
      v26 = v25;
    }

    swift_endAccess();
    if ((GroupActivitiesManager.hasJoined.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    outlined init with copy of TaskPriority?(v22, v9, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
    v27 = v68;
    if (v23(v9, 1, v68) == 1)
    {

      outlined destroy of TaskPriority?(v9, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
      return;
    }

    v29 = v62;
    outlined init with take of GroupActivitiesManager.PrepareResult(v9, v62, type metadata accessor for GroupActivitiesManager.Activity);
    outlined init with copy of GroupActivitiesManager.PrepareResult(v29, v7, type metadata accessor for GroupActivitiesManager.Activity);
    v30 = 1;
    v60 = *(v10 + 56);
    v60(v7, 0, 1, v27);
    if (*(v69 + v64))
    {

      GroupSession.activity.getter();

      v30 = 0;
    }

    v32 = v67;
    v31 = v68;
    v60(v5, v30, 1, v68);
    v33 = *(v1 + 48);
    outlined init with copy of TaskPriority?(v7, v32, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
    outlined init with copy of TaskPriority?(v5, v32 + v33, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
    if (v23(v32, 1, v31) == 1)
    {
      outlined destroy of TaskPriority?(v5, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
      outlined destroy of TaskPriority?(v7, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
      v34 = v23(v32 + v33, 1, v31);
      v35 = v62;
      if (v34 == 1)
      {
        outlined destroy of TaskPriority?(v32, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
LABEL_15:
        outlined destroy of GroupActivitiesManager.PrepareResult(v35, type metadata accessor for GroupActivitiesManager.Activity);
LABEL_16:

        return;
      }
    }

    else
    {
      v36 = v66;
      outlined init with copy of TaskPriority?(v32, v66, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
      if (v23(v32 + v33, 1, v31) != 1)
      {
        outlined init with take of GroupActivitiesManager.PrepareResult(v32 + v33, v14, type metadata accessor for GroupActivitiesManager.Activity);
        v40 = *(v36 + 56);
        v35 = v62;
        if (v40)
        {
          v41 = *(v14 + 7);
          if (v41)
          {
            v42 = *(v41 + 16);
            v43 = *(v40 + 16);
            v44 = v42;
            v45 = [v43 identifiers];
            v46 = v32;
            v47 = [v44 identifiers];
            v48 = [v45 intersectsSet:v47];

            outlined destroy of GroupActivitiesManager.PrepareResult(v14, type metadata accessor for GroupActivitiesManager.Activity);
            outlined destroy of TaskPriority?(v5, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
            outlined destroy of TaskPriority?(v7, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
            outlined destroy of GroupActivitiesManager.PrepareResult(v66, type metadata accessor for GroupActivitiesManager.Activity);
            outlined destroy of TaskPriority?(v46, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
            if (v48)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        outlined destroy of GroupActivitiesManager.PrepareResult(v14, type metadata accessor for GroupActivitiesManager.Activity);
        outlined destroy of TaskPriority?(v5, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
        outlined destroy of TaskPriority?(v7, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
        outlined destroy of GroupActivitiesManager.PrepareResult(v66, type metadata accessor for GroupActivitiesManager.Activity);
        v39 = v32;
        v37 = &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd;
        v38 = &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR;
LABEL_26:
        outlined destroy of TaskPriority?(v39, v37, v38);
LABEL_27:
        if (*(v69 + v64))
        {
          outlined init with copy of GroupActivitiesManager.PrepareResult(v35, v63, type metadata accessor for GroupActivitiesManager.Activity);

          GroupSession.activity.setter();
        }

        if (one-time initialization token for groupActivities != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static Logger.groupActivities);
        v50 = v61;
        outlined init with copy of GroupActivitiesManager.PrepareResult(v35, v61, type metadata accessor for GroupActivitiesManager.Activity);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v70[0] = v54;
          *v53 = 136446210;
          outlined init with copy of GroupActivitiesManager.PrepareResult(v50, v63, type metadata accessor for GroupActivitiesManager.Activity);
          v55 = String.init<A>(describing:)();
          v57 = v56;
          outlined destroy of GroupActivitiesManager.PrepareResult(v50, type metadata accessor for GroupActivitiesManager.Activity);
          v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, v70);

          *(v53 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v51, v52, "Updating session activity=%{public}s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v54);
        }

        else
        {

          outlined destroy of GroupActivitiesManager.PrepareResult(v50, type metadata accessor for GroupActivitiesManager.Activity);
        }

        v28 = v35;
        goto LABEL_9;
      }

      outlined destroy of TaskPriority?(v5, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
      outlined destroy of TaskPriority?(v7, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
      outlined destroy of GroupActivitiesManager.PrepareResult(v36, type metadata accessor for GroupActivitiesManager.Activity);
      v35 = v62;
    }

    v37 = &_s9MusicCore22GroupActivitiesManagerC8ActivityVSg_AFtMd;
    v38 = &_s9MusicCore22GroupActivitiesManagerC8ActivityVSg_AFtMR;
    v39 = v32;
    goto LABEL_26;
  }
}

void (*GroupActivitiesManager.activity.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return GroupActivitiesManager.activity.modify;
}

void GroupActivitiesManager.activity.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    GroupActivitiesManager.activity.didset();
  }
}

void GroupActivitiesManager.session.didset()
{
  v1 = v0;
  v100 = type metadata accessor for NSNotificationCenter.Publisher();
  v109 = *(v100 - 8);
  __chkstk_darwin();
  v116 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  v118 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v93 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy9MusicCore0dE7ManagerC8ActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy9MusicCore0dE7ManagerC8ActivityV_G_GMR);
  v110 = *(v111 - 8);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15GroupActivities0G7SessionC5StateOy9MusicCore0gH7ManagerC8ActivityV_G_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15GroupActivities0G7SessionC5StateOy9MusicCore0gH7ManagerC8ActivityV_G_GSo17OS_dispatch_queueCGMR);
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v112 = &v93 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v95 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGMR);
  v103 = *(v9 - 8);
  __chkstk_darwin();
  v99 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGSiGMd, &_s7Combine10PublishersO3MapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGSiGMR);
  v106 = *(v11 - 8);
  __chkstk_darwin();
  v105 = &v93 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  __chkstk_darwin();
  v115 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMR);
  v126 = *(v14 - 8);
  __chkstk_darwin();
  v125 = &v93 - v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGMR);
  v96 = *(v120 - 1);
  __chkstk_darwin();
  v94 = &v93 - v16;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGSo17OS_dispatch_queueCGMR);
  v98 = *(v122 - 8);
  __chkstk_darwin();
  v97 = &v93 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
  __chkstk_darwin();
  v19 = &v93 - v18;
  if (one-time initialization token for groupActivities == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.groupActivities);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v119 = v3;
    v117 = v5;
    v107 = v11;
    v104 = v9;
    v127 = v14;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v131[0] = v25;
      *v24 = 136446210;
      v129[0] = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGSgMd, &_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGSgMR);
      v26 = String.init<A>(reflecting:)();
      v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v27, v131);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "📲 Receiving a new session=%{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    v128 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
    if (v128)
    {
      break;
    }

    v75 = type metadata accessor for GroupActivitiesManager.Activity(0);
    (*(*(v75 - 8) + 56))(v19, 1, 1, v75);
    v76 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v19, v1 + v76, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
    swift_endAccess();
    GroupActivitiesManager.activity.didset();
    outlined destroy of TaskPriority?(v19, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
    v77 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
    swift_beginAccess();
    v3 = *(v1 + v77);
    if ((v3 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      Set.Iterator.init(_cocoa:)();
      v19 = v131[0];
      v5 = v131[1];
      v78 = v131[2];
      v9 = v131[3];
      v11 = v131[4];
    }

    else
    {
      v79 = -1 << *(v3 + 32);
      v5 = (v3 + 56);
      v78 = ~v79;
      v80 = -v79;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      else
      {
        v81 = -1;
      }

      v11 = v81 & *(v3 + 56);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v19 = v3;
    }

    v128 = v78;
    for (i = (v78 + 64) >> 6; v19 < 0; v11 = v85)
    {
      v87 = __CocoaSet.Iterator.next()();
      if (!v87)
      {
        goto LABEL_27;
      }

      v129[4] = v87;
      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      v14 = v9;
      v85 = v11;
      if (!v130)
      {
        goto LABEL_27;
      }

LABEL_25:
      AnyCancellable.cancel()();

      v9 = v14;
    }

    v83 = v9;
    v84 = v11;
    v14 = v9;
    if (v11)
    {
LABEL_21:
      v85 = (v84 - 1) & v84;
      v86 = *(*(v19 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v84)))));

      if (v86)
      {
        goto LABEL_25;
      }

LABEL_27:
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v19);

      *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v88 = v130;
      swift_getKeyPath();
      swift_getKeyPath();
      v130 = 0;

      static Published.subscript.setter();
      GroupActivitiesManager.participantsCount.didset(v88);
      v89 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      *(v1 + v89) = 0;
      v90 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
      v91 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
      v92 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
      *v90 = xmmword_1004F2EC0;
      *(v90 + 16) = 0;
      outlined consume of GroupActivitiesManager.EligibilityContext?(v91, v92);
      return;
    }

    while (1)
    {
      v14 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v14 >= i)
      {
        goto LABEL_27;
      }

      v84 = *&v5[8 * v14];
      ++v83;
      if (v84)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  GroupSession.activity.getter();
  v29 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v30 = *(v29 - 8);
  (*(v30 + 56))(v19, 0, 1, v29);
  v31 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v19, v1 + v31, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
  swift_endAccess();
  GroupActivitiesManager.activity.didset();
  outlined destroy of TaskPriority?(v19, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);
  v32 = GroupActivitiesManager.activity.modify(v129);
  v34 = v33;
  if (!(*(v30 + 48))(v33, 1, v29))
  {
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v1 + 16, v131);
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v131, v34, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd, &_s9MusicCore26GroupActivitiesCoordinator_pSgMR);
  }

  v32(v129, 0);
  v35 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v36 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v37 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  *v35 = xmmword_1004F2EC0;
  *(v35 + 16) = 0;
  outlined consume of GroupActivitiesManager.EligibilityContext?(v36, v37);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMd, &_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMR);
  v38 = v125;
  Published.projectedValue.getter();
  swift_endAccess();
  v121 = &protocol conformance descriptor for Published<A>.Publisher;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<ApplicationCapabilities>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  lazy protocol witness table accessor for type ApplicationCapabilities and conformance ApplicationCapabilities();
  v39 = v94;
  v40 = v127;
  Publisher<>.removeDuplicates()();
  (*(v126 + 8))(v38, v40);
  v127 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v41 = static OS_dispatch_queue.main.getter();
  v131[0] = v41;
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(v42 - 8);
  v123 = *(v43 + 56);
  v125 = (v43 + 56);
  v44 = v115;
  v124 = v42;
  v123(v115, 1, 1, v42);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<ApplicationCapabilities>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGMR, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v45 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v46 = v97;
  v47 = v120;
  v126 = v45;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v96 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  v120 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Published<ApplicationCapabilities>.Publisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v48 = v122;
  Publisher<>.sink(receiveValue:)();

  (*(v98 + 8))(v46, v48);
  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v50 = v95;
  GroupSession.$activeParticipants.getter();
  v51 = static OS_dispatch_queue.main.getter();
  v131[0] = v51;
  v123(v44, 1, 1, v42);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR, v121);
  v52 = v99;
  v53 = v102;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v101 + 8))(v50, v53);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<Set<Participant>>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v54 = v105;
  v55 = v104;
  Publisher.map<A>(_:)();
  (*(v103 + 8))(v52, v55);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.ReceiveOn<Published<Set<Participant>>.Publisher, OS_dispatch_queue>, Int> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGSiGMd, &_s7Combine10PublishersO3MapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGSiGMR, &protocol conformance descriptor for Publishers.Map<A, B>);
  v56 = v107;
  Publisher<>.sink(receiveValue:)();

  (*(v106 + 8))(v54, v56);
  v122 = v49;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v57 = v128;
  v58 = v108;
  GroupSession.$state.getter();
  v59 = static OS_dispatch_queue.main.getter();
  v131[0] = v59;
  v60 = v123;
  v123(v44, 1, 1, v124);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<GroupSession<GroupActivitiesManager.Activity>.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy9MusicCore0dE7ManagerC8ActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy9MusicCore0dE7ManagerC8ActivityV_G_GMR, v121);
  v61 = v112;
  v62 = v111;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v110 + 8))(v58, v62);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v57;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<GroupSession<GroupActivitiesManager.Activity>.State>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15GroupActivities0G7SessionC5StateOy9MusicCore0gH7ManagerC8ActivityV_G_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15GroupActivities0G7SessionC5StateOy9MusicCore0gH7ManagerC8ActivityV_G_GSo17OS_dispatch_queueCGMR, v120);

  v65 = v114;
  Publisher<>.sink(receiveValue:)();

  (*(v113 + 8))(v61, v65);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v121 = objc_opt_self();
  v66 = [v121 defaultCenter];
  v67 = v116;
  NSNotificationCenter.publisher(for:object:)();

  v68 = static OS_dispatch_queue.main.getter();
  v131[0] = v68;
  v60(v44, 1, 1, v124);
  v114 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v69 = v117;
  v70 = v100;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v113 = *(v109 + 8);
  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  v120 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR, v120);
  v71 = v119;
  Publisher<>.sink(receiveValue:)();

  v118 = *(v118 + 8);
  (v118)(v69, v71);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v72 = [v121 defaultCenter];
  v73 = String._bridgeToObjectiveC()();
  NSNotificationCenter.publisher(for:object:)();

  v74 = static OS_dispatch_queue.main.getter();
  v131[0] = v74;
  v123(v44, 1, 1, v124);
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  (v118)(v69, v71);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

double closure #2 in GroupActivitiesManager.session.didset(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = a1[5];
    v14 = a1[4];
    v15 = v5;
    v6 = a1[7];
    v16 = a1[6];
    v17 = v6;
    v7 = a1[1];
    v10 = *a1;
    v11 = v7;
    v8 = a1[3];
    v12 = a1[2];
    v13 = v8;
    v9 = &v10;
    CFRange.init(_:)(*(&v3 - 1));
    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    v18[7] = v17;
    v18[0] = v10;
    v18[1] = v11;
    v18[2] = v12;
    v18[3] = v13;
    GroupActivitiesManager.prepare(_:)(v18);
  }

  return result;
}

void GroupActivitiesManager.prepare(_:)(unsigned __int8 *a1)
{
  v106 = *a1;
  v2 = a1[1];
  v104 = a1[2];
  LODWORD(v105) = v2;
  v3 = *(a1 + 2);
  v103 = *(a1 + 1);
  v101 = v3;
  v99 = a1[24];
  v100 = *(a1 + 4);
  v4 = *(a1 + 3);
  v108 = *(a1 + 2);
  v98 = v4;
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = a1[96];
  v8 = *(a1 + 13);
  v9 = a1[112];
  v10 = *(a1 + 15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v102 = &v98 - v11;
  v12 = *(a1 + 5);
  v129[4] = *(a1 + 4);
  v129[5] = v12;
  v13 = *(a1 + 7);
  v129[6] = *(a1 + 6);
  v129[7] = v13;
  v14 = *(a1 + 1);
  v129[0] = *a1;
  v129[1] = v14;
  v15 = *(a1 + 3);
  v129[2] = *(a1 + 2);
  v129[3] = v15;
  if (_s9MusicCore23ApplicationCapabilitiesVSgWOg(v129) == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = v114;
    v17 = v115;
    v18 = v116;
    v19 = v117;
    v20 = v118;
    v21 = v119;
    v23 = v121;
    v22 = v122;
    v24 = v120;
    v25 = v123;
    v6 = v124;
    v7 = v125;
    v8 = v126;
    v9 = v127;
    v10 = v128;
  }

  else
  {
    v16 = v106;
    v24 = v108;
    v18 = v104;
    v17 = v105;
    v19 = v103;
    v20 = v101;
    v21 = v99;
    v22 = v100;
    v25 = v5;
    v23 = v98;
  }

  v108 = v24;
  v26 = v16;
  LODWORD(v101) = v16 & 1;
  v114 = v16 & 1;
  v115 = v17 & 1;
  v116 = v18 & 1;
  v117 = v19;
  v118 = v20;
  v106 = v21 & 1;
  v119 = v21 & 1;
  v120 = v24;
  v121 = v23;
  v122 = v22;
  v123 = v25;
  v124 = v6;
  v125 = v7;
  v126 = v8;
  v127 = v9;
  v128 = v10;
  v27 = 256;
  if (v21)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  outlined init with copy of ApplicationCapabilities(&v114, &v110);
  outlined init with copy of TaskPriority?(a1, &v110, &_s9MusicCore23ApplicationCapabilitiesVSgMd, &_s9MusicCore23ApplicationCapabilitiesVSgMR);
  v29 = v108;
  v30 = specialized Set.contains(_:)(0, v108);
  LODWORD(v29) = specialized Set.contains(_:)(2u, v29);
  v31 = v6;
  outlined destroy of ApplicationCapabilities(&v114);
  v32 = v30;
  v33 = v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v34 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v35 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  v36 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 16);
  v104 = v29;
  if ((v29 & 1) == 0)
  {
    v27 = 0;
  }

  v37 = v27 & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  v38 = v28 & 0xFFFE | v26 & 1;
  v103 = v32;
  if (v35 == 1)
  {
    v39 = v31;
    outlined consume of GroupActivitiesManager.EligibilityContext?(v34, 1);
    outlined consume of GroupActivitiesManager.EligibilityContext?(v37, v6);
    goto LABEL_22;
  }

  if ((v32 & 1) != (v34 & 1) || ((v104 ^ ((v34 & 0x100) == 0)) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v35)
  {
    if (!v6)
    {
      if ((v101 ^ v36))
      {
        goto LABEL_22;
      }

      v42 = v36 & 0x100;
      goto LABEL_56;
    }

LABEL_21:
    v43 = v31;
    goto LABEL_22;
  }

  if (!v6 || (LODWORD(v108) = v36, v105 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICMusicSubscriptionStatus, ICMusicSubscriptionStatus_ptr), v40 = v31, outlined copy of GroupActivitiesManager.EligibilityContext?(v34, v35), v41 = static NSObject.== infix(_:_:)(), v40, outlined consume of GroupActivitiesManager.EligibilityContext?(v34, v35), (v41 & 1) == 0) || ((v101 ^ v108) & 1) != 0)
  {
LABEL_22:
    v44 = *v33;
    v45 = *(v33 + 8);
    *v33 = v37;
    *(v33 + 8) = v6;
    *(v33 + 16) = v38;
    outlined consume of GroupActivitiesManager.EligibilityContext?(v44, v45);
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v105 = v6;
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.groupActivities);
    v47 = v31;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    *&v108 = v47;

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v109 = v51;
      *v50 = 136446210;
      LOBYTE(v110) = v103 & 1;
      HIBYTE(v110) = v104 & 1;
      v111 = v105;
      v112 = v101;
      v52 = v106;
      v113 = v106;
      v53 = v108;
      v54 = String.init<A>(reflecting:)();
      v56 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v54, v55, &v109);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "🛂 Checking eligibility with context=%{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);

      if ((v52 & 1) == 0)
      {
LABEL_26:
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "🛂 User did not accept GDPR", v59, 2u);
        }

        v60 = type metadata accessor for TaskPriority();
        v61 = v102;
        (*(*(v60 - 8) + 56))(v102, 1, 1, v60);
        type metadata accessor for MainActor();
        v62 = static MainActor.shared.getter();
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        *(v63 + 24) = &protocol witness table for MainActor;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v61, &async function pointer to partial apply for closure #1 in GroupActivitiesManager.prepare(_:), v63);
        goto LABEL_52;
      }
    }

    else
    {

      v52 = v106;
      if ((v106 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v64 = v105;
    if (!v105 || ([v108 capabilities] & 1) == 0)
    {
      if (v103)
      {
        if (v104)
        {
          if (v101)
          {
            if (v64)
            {
              v65 = v108;
              if (([v65 capabilities] & 1) == 0)
              {
                v66 = Logger.logObject.getter();
                v67 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  *v68 = 0;
                  _os_log_impl(&_mh_execute_header, v66, v67, "🛂 User is not a subscriber -> up sell", v68, 2u);
                }

                v69 = type metadata accessor for TaskPriority();
                v70 = v102;
                (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
                v71 = swift_allocObject();
                v71[2] = 0;
                v71[3] = 0;
                v71[4] = v107;

                _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v70, &async function pointer to partial apply for closure #4 in GroupActivitiesManager.prepare(_:), v71);
                outlined destroy of ApplicationCapabilities(&v114);

                goto LABEL_53;
              }

              v64 = v105;
            }

            v91 = v108;
            v88 = Logger.logObject.getter();
            v92 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v88, v92))
            {
              outlined destroy of ApplicationCapabilities(&v114);

              goto LABEL_67;
            }

            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v109 = v94;
            *v93 = 136446210;
            v110 = 257;
            v111 = v64;
            v112 = v101;
            v113 = v52;
            v31 = v91;
            v95 = String.init<A>(reflecting:)();
            v97 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v95, v96, &v109);

            *(v93 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v88, v92, "🛂 Unknown prepare case with=%{public}s", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v94);

            goto LABEL_64;
          }

          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "🛂 User is not signed in -> request authentication", v85, 2u);
          }

          v86 = type metadata accessor for TaskPriority();
          v77 = v102;
          (*(*(v86 - 8) + 56))(v102, 1, 1, v86);
          v78 = swift_allocObject();
          v78[2] = 0;
          v78[3] = 0;
          v78[4] = v107;

          v79 = &async function pointer to partial apply for closure #3 in GroupActivitiesManager.prepare(_:);
LABEL_51:
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v77, v79, v78);
LABEL_52:
          outlined destroy of ApplicationCapabilities(&v114);

LABEL_53:

          return;
        }

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "🛂 Apple Music content disabled", v82, 2u);
        }

        v75 = 1;
      }

      else
      {
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "🛂 Music services restricted", v74, 2u);
        }

        v75 = 0;
      }

      GroupActivitiesManager.presentRestrictionAlert(for:)(v75);
      outlined destroy of ApplicationCapabilities(&v114);

      return;
    }

    v76 = type metadata accessor for TaskPriority();
    v77 = v102;
    (*(*(v76 - 8) + 56))(v102, 1, 1, v76);
    v78 = swift_allocObject();
    v78[2] = 0;
    v78[3] = 0;
    v78[4] = v107;

    v79 = &async function pointer to partial apply for closure #2 in GroupActivitiesManager.prepare(_:);
    goto LABEL_51;
  }

  v42 = v108 & 0x100;
LABEL_56:
  if ((v106 ^ (v42 >> 8)))
  {
    goto LABEL_22;
  }

  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static Logger.groupActivities);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v88, v89))
  {
    goto LABEL_65;
  }

  v90 = swift_slowAlloc();
  *v90 = 0;
  _os_log_impl(&_mh_execute_header, v88, v89, "Eligibility context didn't change.", v90, 2u);
LABEL_64:

LABEL_65:
  outlined destroy of ApplicationCapabilities(&v114);

LABEL_67:
}

double closure #4 in GroupActivitiesManager.session.didset(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    GroupActivitiesManager.participantsCount.didset(v3);
  }

  return result;
}

uint64_t closure #5 in GroupActivitiesManager.session.didset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin();
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin();
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v63 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v55 - v12;
  __chkstk_darwin();
  v15 = &v55 - v14;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.groupActivities);
  v17 = *(v10 + 16);
  v66 = a1;
  v18 = a1;
  v19 = v17;
  v17(v15, v18, v9);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v64 = v10;
  v62 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v26 = v19;
    v27 = v25;
    *&v75[0] = v25;
    *v24 = 136446210;
    v26(v13, v15, v9);
    v28 = String.init<A>(reflecting:)();
    v29 = v10;
    v31 = v30;
    (*(v29 + 8))(v15, v9);
    v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v31, v75);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "📥 Session update with state=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v34 = v66;
  if (result)
  {
    v35 = result;
    v36 = v63;
    v62(v63, v66, v9);
    v37 = v64;
    v38 = (*(v64 + 88))(v36, v9);
    if (v38 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v37 + 96))(v36, v9);
      GroupActivitiesManager.invalidate(_:)(*v36);
    }

    else if (v38 == enum case for GroupSession.State.waiting<A>(_:))
    {
      _s9MusicCore23ApplicationCapabilitiesVSgWOi0_(&v67);
      v75[4] = v71;
      v75[5] = v72;
      v75[6] = v73;
      v75[7] = v74;
      v75[0] = v67;
      v75[1] = v68;
      v75[2] = v69;
      v75[3] = v70;
      GroupActivitiesManager.prepare(_:)(v75);
    }

    else
    {
      if (v38 != enum case for GroupSession.State.joined<A>(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v39 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState;
      v40 = v61;
      if (*(v35 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState))
      {
        v41 = one-time initialization token for sharePlay;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v42, static OSSignposter.sharePlay);
        v43 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v44 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          v45 = v56;
          checkForErrorAndConsumeState(state:)();

          v47 = v57;
          v46 = v58;
          if ((*(v57 + 88))(v45, v58) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v48 = "[Error] Interval already ended";
          }

          else
          {
            (*(v47 + 8))(v45, v46);
            v48 = "";
          }

          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v50, "JoinSession", v48, v49, 2u);

          v34 = v66;
        }

        (*(v59 + 8))(v40, v60);
        *(v35 + v39) = 0;
      }
    }

    GroupActivitiesManager.updateIsSharePlaySessionActive()();
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v35 + 16, &v67);
    v51 = *(&v68 + 1);
    v52 = v69;
    __swift_project_boxed_opaque_existential_0Tm(&v67, *(&v68 + 1));
    v53 = v65;
    v54 = GroupSession.isLocallyInitiated.getter();
    (*(v52 + 40))(v53, v34, v54 & 1, v51, v52);

    return __swift_destroy_boxed_opaque_existential_0Tm(&v67);
  }

  return result;
}

double GroupActivitiesManager.invalidate(_:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v4 = &v16 - v3;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.groupActivities);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Session invalidated for reason=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v4, &async function pointer to partial apply for closure #1 in GroupActivitiesManager.invalidate(_:), v14);

  return result;
}

uint64_t closure #6 in GroupActivitiesManager.session.didset(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v3 = v15 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Notification.userInfo.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v15[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15[2] = v10;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v12 & 1) == 0))
  {

    outlined destroy of AnyHashable(v16);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v9 + 56) + 32 * v11, &v17);
  outlined destroy of AnyHashable(v16);

  if (!*(&v18 + 1))
  {
LABEL_9:
    outlined destroy of TaskPriority?(&v17, &_sypSgMd_0, &_sypSgMR_0);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v5 + 56))(v3, v13 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    goto LABEL_12;
  }

LABEL_10:
  Date.init()();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_12:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    GroupActivitiesManager.endMeasuringInitiationTime(firstAudioFrameDate:)(v7);
  }

  return (*(v5 + 8))(v7, v4);
}

void GroupActivitiesManager.endMeasuringInitiationTime(firstAudioFrameDate:)(void *a1)
{
  v2 = v1;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = type metadata accessor for Date();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin();
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v39 - v10;
  v12 = type metadata accessor for Signpost(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v16, v11, &_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
  }

  else
  {
    outlined init with take of GroupActivitiesManager.PrepareResult(v11, v15, type metadata accessor for Signpost);
    Signpost.end(dso:)(&_mh_execute_header);
    outlined destroy of GroupActivitiesManager.PrepareResult(v15, type metadata accessor for Signpost);
    (*(v13 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v9, v2 + v16, &_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);
    swift_endAccess();
  }

  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v17, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = v42;
  v18 = v43;
  if ((*(v42 + 48))(v5, 1, v43) != 1)
  {
    (*(v19 + 32))(v41, v5, v18);
    Date.timeIntervalSince(_:)();
    v25 = v24;
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.groupActivities);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, "endMeasuringInitiationTime: %f", v29, 0xCu);
    }

    if (v25 <= 10.0)
    {
      goto LABEL_19;
    }

    v30 = objc_opt_self();
    v31 = GroupActivitiesManager.autoBugCaptureDomain.getter();
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();
    if (*&v25 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v44 = v25;
        v40 = v34;
        v35 = v31;
        dispatch thunk of CustomStringConvertible.description.getter();
        v36 = String._bridgeToObjectiveC()();

        v37 = v40;
        [v30 snapshotWithDomain:v35 type:v32 subType:v33 context:v40 triggerThresholdValues:v36 events:0 completion:0];

LABEL_19:
        (*(v19 + 8))(v41, v18);
        v38 = v39;
        (*(v19 + 56))(v39, 1, 1, v18);
        swift_beginAccess();
        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v38, v2 + v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        swift_endAccess();
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  outlined destroy of TaskPriority?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.groupActivities);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Attempting to endMeasuringInitiationTime but there was no begin time.", v23, 2u);
  }
}

double closure #7 in GroupActivitiesManager.session.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    GroupActivitiesManager.updateIsSharePlaySessionActive()();
  }

  return result;
}

uint64_t GroupActivitiesManager.__allocating_init(coordinator:)(void *a1)
{
  v2 = swift_allocObject();
  GroupActivitiesManager.init(coordinator:)(a1);
  return v2;
}

uint64_t GroupActivitiesManager.init(coordinator:)(void *a1)
{
  v2 = v1;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v36 = &v32 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMd, &_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMR);
  v4 = *(v33 - 8);
  __chkstk_darwin();
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v34 = xmmword_1004F2EC0;
  *(v1 + 56) = xmmword_1004F2EC0;
  *(v1 + 96) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  *&v37 = 0;
  Published.init(initialValue:)();
  (*(v12 + 32))(v2 + v15, v14, v11);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  LOBYTE(v37) = 0;
  Published.init(initialValue:)();
  (*(v8 + 32))(v2 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR);
  Published.init(initialValue:)();
  (*(v4 + 32))(v2 + v17, v6, v33);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount) = 0;
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionStateObserver;
  type metadata accessor for GroupStateObserver();
  *(v2 + v18) = GroupStateObserver.__allocating_init()();
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress) = 0;
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  v20 = type metadata accessor for GroupActivitiesManager.Activity(0);
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = 0;
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  v22 = type metadata accessor for Signpost(0);
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain) = 0;
  v23 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v2 + v23, 1, 1, v24);
  v25 = v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  *v25 = v34;
  *(v25 + 16) = 0;
  v26 = v35;
  outlined init with copy of ActionPerforming(v35, v2 + 16);
  type metadata accessor for GroupActivitiesManager.State(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  ObservationRegistrar.init()();
  *(v2 + 88) = v27;
  v28 = type metadata accessor for TaskPriority();
  v29 = v36;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v29, &async function pointer to partial apply for closure #1 in GroupActivitiesManager.init(coordinator:), v30);

  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v2;
}

uint64_t closure #1 in GroupActivitiesManager.init(coordinator:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return GroupActivitiesManager.startObserver()();
}

uint64_t GroupActivitiesManager.startObserver()()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsVy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC8SessionsVy9MusicCore0aB7ManagerC8ActivityV_GMR);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMR);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(GroupActivitiesManager.startObserver(), v5, v4);
}

{
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚦 Initiating group session observer", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  type metadata accessor for GroupActivitiesManager.Activity(0);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  static GroupActivity.sessions()();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v0[17] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
  v0[18] = v8;
  v0[19] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v0[20] = static MainActor.shared.getter();
  v9 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMR, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = GroupActivitiesManager.startObserver();
  v11 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v9);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = GroupActivitiesManager.startObserver();
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = GroupActivitiesManager.startObserver();
  }

  return _swift_task_switch(v7, v4, v6);
}

{

  v0[23] = v0[2];
  v1 = v0[14];
  v2 = v0[15];

  return _swift_task_switch(GroupActivitiesManager.startObserver(), v1, v2);
}

{
  v16 = v0;
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[5];
    if (*(v2 + v0[17]) == 1)
    {

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136446210;
        v0[4] = v1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMd, &_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMR);
        v7 = String.init<A>(reflecting:)();
        v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v15);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v3, v4, "leaveCommand in progress, setting pendingSession=%{public}s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v6);
      }

      *(v0[5] + v0[19]) = v0[23];
    }

    else
    {
      *(v2 + v0[18]) = v1;
      swift_retain_n();

      GroupActivitiesManager.session.didset();
    }

    v0[20] = static MainActor.shared.getter();
    v12 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy9MusicCore0aB7ManagerC8ActivityV__GMR, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = GroupActivitiesManager.startObserver();
    v14 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v14, v12);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v10 = v0[1];

    return v10();
  }
}

{
  *(v0 + 24) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id GroupActivitiesManager.autoBugCaptureDomain.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupActivitiesManager.EligibilityContext(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return specialized static GroupActivitiesManager.EligibilityContext.__derived_struct_equals(_:_:)(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t closure #1 in GroupActivitiesManager.prepare(_:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in GroupActivitiesManager.prepare(_:), v4, v3);
}

uint64_t closure #1 in GroupActivitiesManager.prepare(_:)()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    URL.init(string:)();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 24), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = *(v0 + 32);
      (*(v6 + 32))(v5, *(v0 + 24), v7);
      URL._bridgeToObjectiveC()(v8);
      v10 = v9;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n_0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v1 openSensitiveURL:v10 withOptions:isa];

      (*(v6 + 8))(v5, v7);
    }
  }

  **(v0 + 16) = v1 == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #2 in GroupActivitiesManager.prepare(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return GroupActivitiesManager.join()();
}

uint64_t GroupActivitiesManager.join()()
{
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v1[27] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMR);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGMR);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v1[40] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMR);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = type metadata accessor for MainActor();
  v1[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[47] = v7;
  v1[48] = v6;

  return _swift_task_switch(GroupActivitiesManager.join(), v7, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = GroupActivitiesManager.join();
  }

  else
  {
    outlined destroy of TaskPriority?(v2 + 64, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);

    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = GroupActivitiesManager.join();
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v73 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 392);
  v3 = *(v0 + 200);

  $defer #2 () in GroupActivitiesManager.join()(v1);

  v4 = *(v3 + v2);
  if (!v4)
  {
    v45 = 0;
LABEL_14:
    v48 = *(v0 + 464);
    v49 = *(v0 + 472);
    v50 = *(v0 + 456);
    v51 = *(v0 + 200);
    v52 = *(v0 + 208);
    lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
    v53 = swift_allocError();
    *v54 = v45;
    *(v54 + 8) = 1;

    GroupActivitiesManager.handleError(_:intent:)(v53, 0);

    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v52, 1, 1, v55);

    v56 = static MainActor.shared.getter();
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = &protocol witness table for MainActor;
    v57[4] = v51;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v52, &async function pointer to partial apply for closure #3 in GroupActivitiesManager.join(), v57);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    LOBYTE(v52) = *(v0 + 580);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 0;

    static Published.subscript.setter();
    v58 = v52;
    goto LABEL_18;
  }

  v5 = *(v0 + 432);
  v67 = *(v0 + 408);
  v6 = *(v0 + 568);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 328);

  GroupSession.state.getter();
  v67(v8, v6, v9);
  v10 = static GroupSession.State.== infix(_:_:)();
  v5(v8, v9);
  v5(v7, v9);
  if ((v10 & 1) == 0)
  {
    v46 = *(v0 + 392);
    v47 = *(v0 + 200);

    v45 = *(v47 + v46);
    goto LABEL_14;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v72 = v14;
    *v13 = 136446210;
    *(v0 + 192) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMd, &_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity> and conformance GroupSession<A>, &_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMd, &_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGMR, &protocol conformance descriptor for GroupSession<A>);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v72);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "🤝 Joining shared session=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  static OSSignpostID.exclusive.getter();
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "JoinSession", "", v20, 2u);
  }

  v22 = *(v0 + 520);
  v23 = *(v0 + 488);
  v70 = *(v0 + 392);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 272);
  v27 = *(v0 + 200);

  v23(v24, v25, v26);
  swift_allocObject();
  v28 = OSSignpostIntervalState.init(id:isOpen:)();
  v22(v25, v26);
  *(v27 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = v28;

  if (*(v27 + v70))
  {

    GroupSession.join()();
  }

  v29 = *(v0 + 200);
  v30 = v29[5];
  v31 = v29[6];
  v32 = __swift_project_boxed_opaque_existential_0Tm(v29 + 2, v30);
  v33 = *(v30 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v30);
  v35 = (*(v31 + 48))(v30, v31);
  (*(v33 + 8))(v34, v30);
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v35[v36])
  {

LABEL_16:
    v59 = *(v0 + 464);
    v60 = *(v0 + 472);
    v61 = *(v0 + 456);

    v44 = 0;
    goto LABEL_17;
  }

  v68 = *(v0 + 472);
  v69 = *(v0 + 464);
  v71 = *(v0 + 456);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v65 = *(v0 + 248);
  v66 = *(v0 + 256);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);
  v41 = *(v0 + 216);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd, &_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v42 = static OS_dispatch_queue.main.getter();
  *(v0 + 184) = v42;
  v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v41, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v39 + 8))(v38, v40);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MPCPlayerResponse?>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = Publisher<>.sink(receiveValue:)();

  (*(v66 + 8))(v37, v65);
LABEL_17:
  *(*(v0 + 200) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = v44;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = *(v0 + 582);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 583) = 0;

  static Published.subscript.setter();
  v58 = v62;
LABEL_18:
  GroupActivitiesManager.isLoading.didset(v58);

  v63 = *(v0 + 8);

  return v63();
}

{
  v1 = *(v0 + 560);
  v2 = *(v0 + 512);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);

  outlined destroy of TaskPriority?(v0 + 64, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);

  $defer #2 () in GroupActivitiesManager.join()(v2);

  GroupActivitiesManager.handleError(_:intent:)(v1, 0);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v7, &async function pointer to partial apply for closure #2 in GroupActivitiesManager.join(), v10);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v1) = *(v0 + 578);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 579) = 0;

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v1);

  v11 = *(v0 + 8);

  return v11();
}

id GroupActivitiesManager.join()()
{
  v70 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  *(v0 + 392) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v3 = *(v1 + v2);
  *(v0 + 400) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);

  GroupSession.state.getter();
  *(v0 + 568) = enum case for GroupSession.State.waiting<A>(_:);
  v8 = *(v7 + 104);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);
  *(v0 + 424) = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v9 = static GroupSession.State.== infix(_:_:)();
  v10 = *(v7 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v10(v4, v6);
  if (v9)
  {
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    *(v0 + 448) = __swift_project_value_buffer(v11, static Logger.groupActivities);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to join", v14, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = *(v0 + 572);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 573) = 1;

    static Published.subscript.setter();
    GroupActivitiesManager.isLoading.didset(v15);
    if (*(v1 + v2))
    {
      v16 = *(v0 + 320);

      GroupSession.activity.getter();

      v17 = *(v16 + 48);
      if (v17)
      {
        v18 = *(v0 + 320);
        v19 = *(v17 + 16);
        *(v0 + 456) = v19;
        v20 = v19;
        outlined destroy of GroupActivitiesManager.PrepareResult(v18, type metadata accessor for GroupActivitiesManager.Activity);
        v21 = objc_allocWithZone(ICLiveLinkIdentity);
        v22 = swift_allocObject();
        *(v22 + 16) = partial apply for closure #1 in GroupActivitiesManager.join();
        *(v22 + 24) = v3;
        *(v0 + 48) = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
        *(v0 + 56) = v22;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
        *(v0 + 40) = &block_descriptor_191;
        v23 = _Block_copy((v0 + 16));

        v24 = [v21 initWithBlock:v23];
        *(v0 + 464) = v24;
        _Block_release(v23);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_42:
          swift_once();
LABEL_36:
          v49 = type metadata accessor for OSSignposter();
          *(v0 + 480) = __swift_project_value_buffer(v49, static OSSignposter.sharePlay);
          static OSSignpostID.exclusive.getter();
          v50 = OSSignposter.logHandle.getter();
          v51 = static os_signpost_type_t.begin.getter();
          if (OS_os_log.signpostsEnabled.getter())
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v53, "AddIntent", "", v52, 2u);
          }

          v54 = *(v0 + 296);
          v55 = *(v0 + 304);
          v56 = *(v0 + 272);
          v57 = *(v0 + 280);
          v58 = *(v0 + 200);

          v59 = *(v57 + 16);
          *(v0 + 488) = v59;
          *(v0 + 496) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v59(v54, v55, v56);
          *(v0 + 504) = type metadata accessor for OSSignpostIntervalState();
          swift_allocObject();
          *(v0 + 512) = OSSignpostIntervalState.init(id:isOpen:)();
          v60 = *(v57 + 8);
          *(v0 + 520) = v60;
          *(v0 + 528) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60(v55, v56);
          swift_beginAccess();
          v61 = v58[5];
          v62 = v58[6];
          __swift_project_boxed_opaque_existential_0Tm(v58 + 2, v61);
          v63 = *(v61 - 8);
          v64 = swift_task_alloc();
          *(v0 + 536) = v64;
          (*(v63 + 16))();
          v65 = (*(v62 + 48))(v61, v62);
          *(v0 + 544) = v65;
          (*(v63 + 8))(v64, v61);
          *(v0 + 176) = v58;

          v66 = String.init<A>(reflecting:)();
          *(v0 + 88) = &type metadata for Player.CommandIssuerIdentity;
          *(v0 + 96) = &protocol witness table for Player.CommandIssuerIdentity;
          *(v0 + 64) = v66;
          *(v0 + 72) = v67;
          v68 = swift_task_alloc();
          *(v0 + 552) = v68;
          *v68 = v0;
          v68[1] = GroupActivitiesManager.join();

          return static SharedListening.addIntent(_:playbackController:issuer:)(isEscapingClosureAtFileLocation, v65, v0 + 64);
        }

        v26 = [objc_opt_self() sharedSessionIntentWithProperties:v20 identity:v24];
        *(v0 + 472) = v26;
        if (v26)
        {
          isEscapingClosureAtFileLocation = v26;
          if (GroupSession.isLocallyInitiated.getter() & 1) != 0 && (GroupSession.isFirstJoin.getter())
          {
            v27 = 20;
          }

          else
          {
            v27 = 10;
          }

          [isEscapingClosureAtFileLocation setActionAfterQueueLoad:v27];

          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v69 = v39;
            *v38 = 67240706;
            *(v38 + 4) = GroupSession.isLocallyInitiated.getter() & 1;
            *(v38 + 8) = 1026;
            *(v38 + 10) = GroupSession.isFirstJoin.getter() & 1;

            *(v38 + 14) = 2082;
            result = MPNSStringFromQueueLoadAction();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v40 = result;
            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v41, v43, &v69);

            *(v38 + 16) = v44;
            _os_log_impl(&_mh_execute_header, v36, v37, "Will join session isLocallyInitiated=%{BOOL,public}d\n/ isFirstJoin=%{BOOL,public}d.\n-> actionAfterQueueLoad=%{public}s", v38, 0x18u);
            __swift_destroy_boxed_opaque_existential_0Tm(v39);
          }

          else
          {
          }

          if (one-time initialization token for sharePlay == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to retrieve shared playback intent", v47, 2u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v48 = *(v0 + 576);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 577) = 0;

        static Published.subscript.setter();
        v33 = v48;
        goto LABEL_23;
      }

      v28 = *(v0 + 320);

      outlined destroy of GroupActivitiesManager.PrepareResult(v28, type metadata accessor for GroupActivitiesManager.Activity);
    }

    else
    {
    }

    if (one-time initialization token for sharedListening != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, static Logger.sharedListening);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Session properties missing in activity", v31, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = *(v0 + 574);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 575) = 0;

    static Published.subscript.setter();
    v33 = v32;
LABEL_23:
    GroupActivitiesManager.isLoading.didset(v33);
    goto LABEL_24;
  }

LABEL_24:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t GroupActivitiesManager.presentRestrictionAlert(for:)(int a1)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004F2400;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v7 + 16))(v9, v11, v6);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v13 = static NSBundle.module;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  (*(v7 + 8))(v11, v6);

  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v3 + 8))(v5, v35);
  *(v12 + 32) = v17;
  *(v12 + 40) = v19;
  *(v12 + 48) = v14;
  *(v12 + 56) = v16;
  *(v12 + 64) = 0;
  *(v12 + 72) = &async function pointer to partial apply for closure #1 in GroupActivitiesManager.presentRestrictionAlert(for:);
  *(v12 + 80) = v2;
  v20 = v36;
  GroupActivitiesManager.RestrictionKind.action.getter(v36 & 1, &v40);
  v21 = v41;
  if (v41)
  {
    v22 = v40;
    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v12);
    }

    *(v12 + 16) = v24 + 1;
    v25 = v12 + 56 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    v26 = v43;
    *(v25 + 48) = v42;
    *(v25 + 64) = v26;
    *(v25 + 80) = v44;
  }

  v27 = GroupActivitiesManager.RestrictionKind.title.getter(v20 & 1);
  v29 = v28;
  v30 = GroupActivitiesManager.RestrictionKind.message.getter(v20 & 1);
  LOBYTE(v37[0]) = 1;
  v45[0] = v27;
  v45[1] = v29;
  v45[2] = v30;
  v45[3] = v31;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = v12;
  v50 = 0;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v2 + 16, v37);
  v32 = v38;
  v33 = v39;
  __swift_project_boxed_opaque_existential_0Tm(v37, v38);
  (*(v33 + 32))(v45, v32, v33);
  outlined destroy of Alert(v45);
  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t closure #3 in GroupActivitiesManager.prepare(_:)()
{
  v1 = v0[26];
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v1 + 16, (v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 18, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = closure #3 in GroupActivitiesManager.prepare(_:);

  return v6(v2, v3);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "🛂 User did authenticate=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 232);

  if (v6 == 1)
  {
    v7 = [objc_opt_self() defaultIdentityStore];
    *(v0 + 224) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = closure #3 in GroupActivitiesManager.prepare(_:);
    v8 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 104) = &block_descriptor_208;
    *(v0 + 112) = v8;
    [v7 synchronizeWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (*(*(v0 + 208) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      GroupSession.leave()();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

{

  return _swift_task_switch(closure #3 in GroupActivitiesManager.prepare(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in GroupActivitiesManager.prepare(_:)(char a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(closure #3 in GroupActivitiesManager.prepare(_:), 0, 0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable () -> () with result type ()(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t closure #4 in GroupActivitiesManager.prepare(_:)()
{
  v1 = v0[10];
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = closure #4 in GroupActivitiesManager.prepare(_:);

  return v6(v2, v3);
}

{
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v1 != 2 && (*(v0 + 96) & 1) == 0)
  {
    if (*(*(v0 + 80) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      GroupSession.leave()();
    }

    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.groupActivities);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "🛂 User did not complete the subscription flow", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #4 in GroupActivitiesManager.prepare(_:)(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(closure #4 in GroupActivitiesManager.prepare(_:), 0, 0);
}

void closure #1 in GroupActivitiesManager.join()(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupSession.localParticipant.getter();
  Participant.id.getter();
  (*(v7 + 8))(v9, v6);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13._countAndFlagsBits = 0x616C506572616853;
  v13._object = 0xEC0000003D444979;
  if (String.hasPrefix(_:)(v13))
  {
  }

  else
  {
    strcpy(v26, "SharePlayID=");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    v14._countAndFlagsBits = v10;
    v14._object = v12;
    String.append(_:)(v14);
  }

  v15 = String._bridgeToObjectiveC()();

  [a1 setExternalIdentifier:v15];

  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.groupActivities);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136446210;
    v21._countAndFlagsBits = 0x616C506572616853;
    v21._object = 0xEC0000003D444979;
    if (!String.hasPrefix(_:)(v21))
    {
      strcpy(v26, "SharePlayID=");
      BYTE5(v26[1]) = 0;
      HIWORD(v26[1]) = -5120;
      v22._countAndFlagsBits = v10;
      v22._object = v12;
      String.append(_:)(v22);

      v10 = v26[0];
      v12 = v26[1];
    }

    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "externalID identity=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
  }
}

uint64_t $defer #2 () in GroupActivitiesManager.join()(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static OSSignposter.sharePlay);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "AddIntent", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #2 in GroupActivitiesManager.join()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #2 in GroupActivitiesManager.join();

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in PlaybackController.engine(_:didEndSharedListeningSessionWithError:), v1, v0);
}

uint64_t closure #3 in GroupActivitiesManager.join()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #3 in GroupActivitiesManager.join();

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in GroupActivitiesManager.join(), v1, v0);
}

void closure #4 in GroupActivitiesManager.join()(id *a1, uint64_t a2)
{
  if (!*a1)
  {
    return;
  }

  v15 = *a1;
  if (![v15 isSharedListeningSession])
  {
    goto LABEL_6;
  }

  v2 = [v15 tracklist];
  v14 = [v2 playingItem];

  if (!v14)
  {
    goto LABEL_6;
  }

  if ([v14 isPlaceholder])
  {

LABEL_6:
    v3 = v15;
LABEL_7:

    return;
  }

  v4 = [v14 metadataObject];
  if (!v4)
  {
LABEL_17:

    v3 = v14;
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 innermostModelObject];

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = GroupActivitiesManager.activity.modify(v16);
    v11 = v10;
    v12 = type metadata accessor for GroupActivitiesManager.Activity(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      type metadata accessor for CodableModelObjectIdentity();
      v13 = swift_allocObject();
      *(v13 + 16) = v8;
      *(v11 + 56) = v13;
      v6 = v6;
    }

    v9(v16, 0);
  }

  else
  {
  }
}

uint64_t closure #1 in GroupActivitiesManager.invalidate(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) != 0;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = closure #2 in static Actions.Collaborate.action(context:);

  return GroupActivitiesManager.leave(performLeaveCommand:)(v1);
}

uint64_t GroupActivitiesManager.RestrictionKind.title.getter(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v7 = static NSBundle.module;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t GroupActivitiesManager.RestrictionKind.message.getter(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v7 = static NSBundle.module;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

void GroupActivitiesManager.RestrictionKind.action.getter(int a1@<W0>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v3 = type metadata accessor for UUID();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin();
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v24)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v6 + 16))(v8, v10, v5);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v17 = static NSBundle.module;
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    v14 = v18;
    (*(v6 + 8))(v10, v5);
    v19 = v21;
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v12 = v20;
    (*(v22 + 8))(v19, v23);
    v16 = &async function pointer to closure #1 in GroupActivitiesManager.RestrictionKind.action.getter;
    v15 = 2;
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = 0;
}

uint64_t closure #1 in GroupActivitiesManager.RestrictionKind.action.getter()
{
  return _swift_task_switch(closure #1 in GroupActivitiesManager.RestrictionKind.action.getter, 0, 0);
}

{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openMusicSettings()();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in GroupActivitiesManager.presentRestrictionAlert(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

char *GroupActivitiesManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  outlined consume of SharedListening.Event.Alert?(*(v0 + 7), *(v0 + 8), *(v0 + 9), *(v0 + 10));

  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMd, &_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMR);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  outlined destroy of TaskPriority?(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity], &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMR);

  outlined destroy of TaskPriority?(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame], &_s14MusicUtilities8SignpostVSgMd, &_s14MusicUtilities8SignpostVSgMR);

  outlined destroy of TaskPriority?(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined consume of GroupActivitiesManager.EligibilityContext?(*&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext], *&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8]);
  return v0;
}

uint64_t GroupActivitiesManager.__deallocating_deinit()
{
  GroupActivitiesManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for groupActivities()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.groupActivities);
  __swift_project_value_buffer(v0, static Logger.groupActivities);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.groupActivities.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.groupActivities);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableListeningProperties.CodingKey()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableListeningProperties.CodingKey(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableListeningProperties.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableListeningProperties.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CodableListeningProperties.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMd, &_ss22KeyedDecodingContainerVy9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - v6;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CodableListeningProperties();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    v12[1] = KeyedDecodingContainer.decode(_:forKey:)();
    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();

    v11 = [objc_opt_self() propertiesWithSessionIdentifier:v9 sessionKey:v10];

    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

void CodableListeningProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMd, &_ss22KeyedEncodingContainerVy9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 16);
  v10 = [v9 sessionIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {

    v11 = [v9 sessionKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableModelObjectIdentity.CodingKey()
{
  if (*v0)
  {
    return 0x616C436C65646F6DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableModelObjectIdentity.CodingKey(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616C436C65646F6DLL && a2 == 0xEE00656D614E7373)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableModelObjectIdentity.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableModelObjectIdentity.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CodableModelObjectIdentity.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMd, &_ss22KeyedDecodingContainerVy9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v34 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = aBlock;
    v9 = v29;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPIdentifierSet, MPIdentifierSet_ptr);
    v11 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v11)
    {
      v27 = v11;
      LOBYTE(aBlock) = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v26 = String._bridgeToObjectiveC()();

      v14 = v26;
      v25 = NSClassFromString(v26);

      if (v25)
      {
        swift_getObjCClassMetadata();
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelObject, MPModelObject_ptr);
        v15 = swift_dynamicCastMetatype();
        if (v15)
        {
          if (one-time initialization token for sharedListeningSupportedModelObjects != -1)
          {
            v23 = v15;
            swift_once();
            v15 = v23;
          }

          v16 = *(static SharedListening.sharedListeningSupportedModelObjects + 2);
          v17 = (static SharedListening.sharedListeningSupportedModelObjects + 32);
          while (v16)
          {
            v18 = *v17++;
            --v16;
            if (v18 == v15)
            {
              v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v32 = CFRange.init(_:);
              v33 = 0;
              aBlock = _NSConcreteStackBlock;
              v29 = 1107296256;
              v30 = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
              v31 = &block_descriptor_128;
              v26 = _Block_copy(&aBlock);
              v20 = v19;
              v21 = v27;
              v25 = [v20 initWithIdentifiers:v27 block:v26];
              outlined consume of Data._Representation(v10, v9);

              _Block_release(v26);
              (*(v6 + 8))(v8, v5);

              result = swift_isEscapingClosureAtFileLocation();
              if ((result & 1) == 0)
              {
                *(v3 + 16) = v25;
                goto LABEL_6;
              }

              __break(1u);
              return result;
            }
          }
        }
      }

      lazy protocol witness table accessor for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
      outlined consume of Data._Representation(v10, v9);
    }

    else
    {
      lazy protocol witness table accessor for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v10, v9);
    }

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for CodableModelObjectIdentity();
  swift_deallocPartialClassInstance();
LABEL_6:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t CodableModelObjectIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMd, &_ss22KeyedEncodingContainerVy9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLC9CodingKeyOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = objc_opt_self();
  v10 = [*(v3 + 16) identifiers];
  v21[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v21];

  v12 = v21[0];
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    v20[7] = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = NSStringFromClass(ObjCClassFromMetadata);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v21[0]) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
    }

    return outlined consume of Data._Representation(v13, v15);
  }

  else
  {
    v16 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableListeningProperties@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t outlined init with take of GroupActivitiesManager.PrepareResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of GroupActivitiesManager.PrepareResult(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002698DC()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t outlined destroy of GroupActivitiesManager.PrepareResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double outlined consume of SharedListening.Event.Alert?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100269D20()
{

  outlined consume of SharedListening.Event(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void outlined consume of SharedListening.Event(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    if (a7 != 1)
    {
      return;
    }

LABEL_12:

    return;
  }

  if (a7 == 2)
  {

    goto LABEL_12;
  }

  if (a7 != 3)
  {
    if (a7 == 4)
    {

      outlined consume of SharedListening.Event.Alert?(a1, a2, a3, a4);
    }

    return;
  }

LABEL_13:
}

double outlined copy of SharedListening.Event.Alert?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t specialized static GroupActivitiesManager.EligibilityContext.__derived_struct_equals(_:_:)(__int16 a1, void *a2, int a3, __int16 a4, void *a5, int a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if (v8 & 0x100) != 0 || (v8)
  {
    return result;
  }

  if (!a2)
  {
    result = 0;
    if (a5 || ((a3 ^ a6) & 1) != 0)
    {
      return result;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a3;
  v10 = a6;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICMusicSubscriptionStatus, ICMusicSubscriptionStatus_ptr);
  v13 = a5;
  v14 = a2;
  v15 = static NSObject.== infix(_:_:)();

  result = 0;
  if (v15)
  {
    LOWORD(a6) = v10;
    LOWORD(a3) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

id specialized static GroupActivitiesManager.Activity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = [v5 identifiers];
  v8 = [v6 identifiers];
  v9 = [v7 intersectsSet:v8];

  return v9;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13MPModelObjectC14MusicUtilitiesE16LoggingComponentOGMd, &_ss11_SetStorageCySo13MPModelObjectC14MusicUtilitiesE16LoggingComponentOGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = Hasher._finalize()();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey()
{
  result = lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey;
  if (!lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey;
  if (!lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey;
  if (!lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey;
  if (!lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CodableListeningProperties? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CodableListeningProperties? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMd, &_s9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMR);
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type CodableListeningProperties and conformance CodableListeningProperties, type metadata accessor for CodableListeningProperties, &protocol conformance descriptor for CodableListeningProperties);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableModelObjectIdentity? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMd, &_s9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMR);
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type CodableModelObjectIdentity and conformance CodableModelObjectIdentity, type metadata accessor for CodableModelObjectIdentity, &protocol conformance descriptor for CodableModelObjectIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error()
{
  result = lazy protocol witness table cache variable for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error;
  if (!lazy protocol witness table cache variable for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error);
  }

  return result;
}

uint64_t sub_10026A520()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {

    v5 = *(v4 + 28);
    v6 = type metadata accessor for URL();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t outlined init with take of GroupActivitiesManager.Activity.Metadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(a1, v6, v1 + v5, v7);
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.init(coordinator:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in GroupActivitiesManager.init(coordinator:)();
}

void outlined consume of GroupActivitiesManager.EligibilityContext?(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

void type metadata completion function for GroupActivitiesManager(uint64_t a1)
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Int>, &type metadata for Int, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Bool>, &type metadata for Bool, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<SharedListening.Reaction?>(319, &lazy cache variable for type metadata for Published<SharedListening.Reaction?>, &_s9MusicCore15SharedListeningO8ReactionVSgMd, &_s9MusicCore15SharedListeningO8ReactionVSgMR, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for GroupActivitiesManager.Activity?, type metadata accessor for GroupActivitiesManager.Activity);
        if (v4 <= 0x3F)
        {
          type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for Signpost?, type metadata accessor for Signpost);
          if (v5 <= 0x3F)
          {
            type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for Date?, &type metadata accessor for Date);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for GroupActivitiesManager.Activity?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10026ADC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10026AEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for GroupActivitiesManager.Activity(uint64_t a1)
{
  type metadata accessor for Published<SharedListening.Reaction?>(319, &lazy cache variable for type metadata for GroupActivitiesCoordinator?, &_s9MusicCore26GroupActivitiesCoordinator_pMd, &_s9MusicCore26GroupActivitiesCoordinator_pMR, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntent?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for CodableListeningProperties?, type metadata accessor for CodableListeningProperties);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for CodableModelObjectIdentity?, type metadata accessor for CodableModelObjectIdentity);
        if (v4 <= 0x3F)
        {
          type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for GroupActivitiesManager.Activity.Metadata?, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<SharedListening.Reaction?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for MPCPlaybackIntent?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MPCPlaybackIntent?)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for MPCPlaybackIntent, MPCPlaybackIntent_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MPCPlaybackIntent?);
    }
  }
}

uint64_t sub_10026B17C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10026B258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for GroupActivitiesManager.Activity.Metadata(uint64_t a1)
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for CGImageRef?, type metadata accessor for CGImageRef);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GroupActivitiesManager.Activity?(319, &lazy cache variable for type metadata for URL?, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for GroupActivitiesManager.State(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupActivitiesManager.EligibilityContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupActivitiesManager.EligibilityContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10026B5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026B634(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata completion function for GroupActivitiesManager.PrepareResult(uint64_t a1)
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey()
{
  result = lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableListeningProperties.CodingKey and conformance CodableListeningProperties.CodingKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey()
{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.CodingKey and conformance CodableModelObjectIdentity.CodingKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError()
{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError;
  if (!lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableModelObjectIdentity.InitializerError and conformance CodableModelObjectIdentity.InitializerError);
  }

  return result;
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

void outlined consume of SharedListening.ErrorHandling.Error(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {

    return;
  }

  if (a2 == 3)
  {
    goto LABEL_7;
  }
}

uint64_t sub_10026BA7C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v17 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {

    v16 = v6;
    v9 = *(v8 + 28);
    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    v15 = v9;
    v12 = v7 + v9;
    v6 = v16;
    if (!(*(v11 + 48))(v12, 1, v10))
    {
      (*(v11 + 8))(v7 + v15, v10);
    }
  }

  v13 = (((v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  (*(v4 + 8))(v0 + v13, v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_10026BE94()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

double partial apply for closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(a1, v1 + v4, v7, v8);
}

uint64_t sub_10026C1D8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd, &_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMR) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

double outlined copy of SharedListening.Reaction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

double outlined consume of SharedListening.Reaction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ApplicationCapabilities and conformance ApplicationCapabilities()
{
  result = lazy protocol witness table cache variable for type ApplicationCapabilities and conformance ApplicationCapabilities;
  if (!lazy protocol witness table cache variable for type ApplicationCapabilities and conformance ApplicationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationCapabilities and conformance ApplicationCapabilities);
  }

  return result;
}

uint64_t sub_10026C6A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10026C6F0()
{

  return swift_deallocObject();
}

double _s9MusicCore23ApplicationCapabilitiesVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t _s9MusicCore23ApplicationCapabilitiesVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10026C778()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.prepare(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in GroupActivitiesManager.prepare(_:)(a1);
}

uint64_t partial apply for closure #3 in GroupActivitiesManager.prepare(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in GroupActivitiesManager.prepare(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #4 in GroupActivitiesManager.prepare(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #4 in GroupActivitiesManager.prepare(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in GroupActivitiesManager.prepare(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in GroupActivitiesManager.prepare(_:)();
}

id outlined copy of GroupActivitiesManager.EligibilityContext?(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t partial apply for closure #2 in GroupActivitiesManager.join()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in GroupActivitiesManager.join()();
}

uint64_t partial apply for closure #3 in GroupActivitiesManager.join()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in GroupActivitiesManager.join()();
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.presentRestrictionAlert(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in GroupActivitiesManager.presentRestrictionAlert(for:)();
}

uint64_t partial apply for closure #1 in GroupActivitiesManager.invalidate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in GroupActivitiesManager.invalidate(_:)(a1, v4, v5, v6);
}

uint64_t sub_10026CD70()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

double partial apply for closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(void *a1)
{
  v3 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(a1, v4, v5);
}

uint64_t sub_10026CF9C()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v2));
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(a1, v6, v7, v8, v9, v1 + v5);
}

void MPCPlayerCommandDialog.alert(context:completion:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v85 = a4;
  v90 = a2;
  v91 = a3;
  v89 = a1;
  v80 = a6;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 1);
  __chkstk_darwin();
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v80 - v11;
  v84 = type metadata accessor for UUID();
  v13 = *(v84 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v83 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v6;
  v16 = [v6 actions];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlayerCommandDialogAction, MPCPlayerCommandDialogAction_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
    v18 = swift_allocObject();
    *(v18 + 1) = xmmword_1004F2400;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v8 + 16))(v10, v12, v7);
    if (one-time initialization token for module == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  v7 = [v82 actions];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_42:

    v18 = _swiftEmptyArrayStorage;
LABEL_43:
    v74 = [v82 localizedTitle];
    if (v74)
    {
      v75 = v74;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v76;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = [v82 localizedMessage];
    if (!v71)
    {
      goto LABEL_39;
    }

LABEL_47:
    v77 = v71;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v78;

    goto LABEL_48;
  }

  v8 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (v8 >= 1)
  {
    v20 = 0;
    v92 = v19 & 0xC000000000000001;
    v93 = MPCPlayerCommandDialogActionTitlePlayOnlyForMe;
    v18 = _swiftEmptyArrayStorage;
    v81 = (v13 + 8);
    v88 = v19;
    v87 = v8;
    while (1)
    {
      if (v92)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 localizedTitle];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          v95 = v20;
          v30 = [v22 localizedTitle];
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v33 = [v22 type];
          if (v33 == 2)
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }

          if (v33 == 1)
          {
            v35 = 0;
          }

          else
          {
            v35 = v34;
          }

          v36 = swift_allocObject();
          v37 = v85;
          v36[2] = v22;
          v36[3] = v37;
          v38 = v86;
          v36[4] = v86;
          v39 = v22;
          outlined copy of (@escaping @callee_guaranteed () -> ())?(v37, v38);
          v40 = v83;
          UUID.init()();
          v97 = UUID.uuidString.getter();
          v42 = v41;
          (*v81)(v40, v84);

          v43 = v32;

          v44 = v36;

          v96 = &async function pointer to partial apply for closure #2 in MPCPlayerCommandDialog.alert(context:completion:);
          v98 = v35;
          v94 = v35;
          goto LABEL_28;
        }
      }

      specialized static SharedListening.ErrorHandling.playLocallyAction(with:)(v89, v90, v91, &v101);
      v42 = v102;
      if (v102)
      {
        v95 = v20;
        v45 = v106;
        v46 = v107;
        v94 = v105;
        v47 = v104;
        v98 = v105;
        v99 = v103;
        v97 = v101;

        v43 = v47;

        v96 = v45;
        v44 = v46;
        outlined copy of (@escaping @callee_guaranteed () -> ())?(v45, v46);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v49 = v18[2];
        v48 = v18[3];
        v50 = v22;
        if (v49 >= v48 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v18);
        }

        v51 = v97;
        v52 = v99;
        v53 = v96;
        outlined consume of Alert.Action?(v97, v42, v99, v43, v98, v96, v44);

        v18[2] = v49 + 1;
        v54 = &v18[7 * v49];
        v54[4] = v51;
        v54[5] = v42;
        v54[6] = v52;
        v54[7] = v43;
        *(v54 + 64) = v94;
        v54[9] = v53;
        v54[10] = v44;
        v19 = v88;
        v8 = v87;
        v20 = v95;
        goto LABEL_9;
      }

LABEL_9:
      if (v8 == ++v20)
      {

        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_35:
  v55 = static NSBundle.module;
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v58 = v57;
  (*(v8 + 8))(v12, v7);
  v59 = swift_allocObject();
  v60 = v85;
  v61 = v86;
  *(v59 + 16) = v85;
  *(v59 + 24) = v61;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v60, v61);
  v62 = v83;
  UUID.init()();
  v63 = UUID.uuidString.getter();
  v65 = v64;
  (*(v13 + 8))(v62, v84);
  v18[4] = v63;
  v18[5] = v65;
  v18[6] = v56;
  v18[7] = v58;
  *(v18 + 64) = 2;
  v18[9] = &async function pointer to partial apply for closure #1 in MPCPlayerCommandDialog.alert(context:completion:);
  v18[10] = v59;
  v66 = [v82 localizedTitle];
  if (v66)
  {
    v67 = v66;
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = [v82 localizedMessage];
  if (v71)
  {
    goto LABEL_47;
  }

LABEL_39:
  v72 = 0;
  v73 = 0;
LABEL_48:
  v100 = 1;
  v79 = v80;
  *v80 = v68;
  v79[1] = v70;
  v79[2] = v72;
  v79[3] = v73;
  *(v79 + 32) = 0;
  v79[5] = 0;
  *(v79 + 48) = 1;
  v79[7] = v18;
  v79[8] = 0;
}

BOOL static SharedListening.isMusicItemTypeSupported(_:)(uint64_t a1)
{
  if (one-time initialization token for sharedListeningSupportedMusicItems != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = (static SharedListening.sharedListeningSupportedMusicItems + 32);
  v2 = *(static SharedListening.sharedListeningSupportedMusicItems + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 2;
  }

  while (v3 != a1);
  return v2 != 0;
}

uint64_t Logger.sharedListening.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.sharedListening);
}

uint64_t *SharedListening.Event.properties.unsafeMutableAddressor()
{
  if (one-time initialization token for properties != -1)
  {
    swift_once();
  }

  return &static SharedListening.Event.properties;
}

double SharedListening.Event.init(_:)@<D0>(uint64_t a1@<X8>, NSObject *a2@<X0>)
{
  specialized SharedListening.Event.init(_:)(a2, v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t static SharedListening.buildSharedSession(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = MPCPlayerResponse.perform(_:issuance:options:);

  return specialized static SharedListening.buildSharedSession(with:)(a1);
}

uint64_t static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized static SharedListening.buildSharedSession(with:on:)(a1, a2, a3, a4);
}

uint64_t SharedListening.Event.Content.title.getter(void *a1, char a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v21[-v9];
  if (a2)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 title];
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_6:
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v14;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v12 = [v16 name];
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v22 = 0xD000000000000020;
        v23 = 0x80000001004CE790;
        swift_getObjectType();
        v20._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v20);

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v12 = [v19 name];
      if (v12)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v12 = [a1 title];
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v10, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v10, v4);
  return v18;
}

Swift::Void __swiftcall SharedListening.ErrorHandling.Error.log()()
{
  if (v1 <= 2u)
  {
    if (v1 == 1)
    {
      v16 = v0;
      if (one-time initialization token for groupActivities != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.groupActivities);

      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      outlined consume of SharedListening.ErrorHandling.Error(v16, 1u);
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136446210;
        v45 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGSgMd, &_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGSgMR);
        v21 = String.init<A>(describing:)();
        v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v22, &v43);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, oslog, v18, "Cannot joined invalid session=%{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);

        return;
      }
    }

    else
    {
      if (v1 != 2)
      {
        return;
      }

      v2 = [v0 error];
      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.sharedListening);
      v4 = v2;
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v45 = v7;
        *v6 = 136446210;
        v43 = v2;
        LOBYTE(v44) = 0;
        v8 = v4;
        v9 = String.init<A>(describing:)();
        v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v45);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "Creation error %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v7);

        return;
      }
    }

    goto LABEL_42;
  }

  if (v1 != 3)
  {
    if (v1 != 4)
    {
      return;
    }

    if (v0 == 2)
    {
      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.sharedListening);
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Building session failed because the queue is empty";
    }

    else
    {
      if (v0 == 3)
      {
        if (one-time initialization token for sharedListening != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.sharedListening);
        oslog = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(oslog, v35))
        {
          goto LABEL_42;
        }

        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 1) = FigOutputMonitorIsScreenProbablyBeingRecorded() != 0;
        v15 = "Presenting not supported content alert (isScreenSharing=%{BOOL}d)";
        v37 = v35;
        v38 = oslog;
        v39 = v36;
        v40 = 8;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v38, v37, v15, v39, v40);

LABEL_42:

        return;
      }

      if (v0 != 4)
      {
        return;
      }

      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.sharedListening);
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Cannot add intent for the current route.";
    }

    v37 = v13;
    v38 = oslog;
    v39 = v14;
    v40 = 2;
    goto LABEL_41;
  }

  if (v0)
  {
    swift_getErrorValue();
    v0 = Error.localizedDescription.getter();
  }

  else
  {
    v24 = 0;
  }

  v43 = v0;
  v44 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.groupActivities);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136446210;
    v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v27, &v43);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not add intent to the player: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
  }

  else
  {
  }
}

void SharedListening.ErrorHandling.Error.alert(with:)(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v166 = a4;
  v165 = a3;
  v164 = a2;
  v163 = a1;
  v171 = a6;
  v7 = type metadata accessor for URL();
  v161 = *(v7 - 8);
  v8 = *(v161 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = (v153 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v12 = v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v153 - v13;
  v168 = type metadata accessor for UUID();
  v15 = *(v168 - 8);
  __chkstk_darwin();
  v167 = v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v169 = v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  v170 = *(v18 - 8);
  __chkstk_darwin();
  v20 = v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin().n128_u64[0];
  if (a5 == 2)
  {
    v155 = v12;
    v153[1] = v8;
    v154 = v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v156 = v14;
    v159 = v10;
    v160 = v7;
    v24 = v153 - v21;
    v63 = v166;
    v64 = [v166 dialog];
    if (v64)
    {
      v65 = v64;
      MPCPlayerCommandDialog.alert(context:completion:)(v163, v164, v165, 0, 0, &v172);
      v66 = v172;
      v40 = v173;
      v67 = *(&v174 + 1);
      v36 = v174;
      v44 = *(&v175 + 1);
      v68 = v175;
      v69 = v176;
      v43 = v177;
      v45 = v178;

      v42 = v66;
      v48 = v68 & 0xFFFFFFFFFFFFFF00;
      v46 = v69 & 0xFFFFFFFFFFFFFF00;
      v47 = v68;
      v49 = v69;
      v41 = v67;
LABEL_26:
      v23 = v171;
      goto LABEL_27;
    }

    v70 = [v63 error];
    v23 = v171;
    if (v70)
    {
      v172 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode(0);
      if (swift_dynamicCast())
      {
        v71 = v179;
        v172 = v179;
        lazy protocol witness table accessor for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerEnqueueErrorCode and conformance related decl 'e' for MPCPlayerEnqueueErrorCode, type metadata accessor for related decl 'e' for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerEnqueueErrorCode);
        _BridgedStoredNSError.code.getter();

        if (v179 == 3)
        {
          goto LABEL_19;
        }
      }
    }

    v162 = v15;
    String.LocalizationValue.init(stringLiteral:)();
    v90 = v170;
    v91 = v18;
    v92 = *(v170 + 16);
    v92(v20, v24, v91);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v93 = static NSBundle.module;
    static Locale.current.getter();
    v94 = v93;
    v158 = String.init(localized:table:bundle:locale:comment:)();
    v157 = v95;
    v170 = *(v90 + 8);
    (v170)(v24, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1004F2400;
    String.LocalizationValue.init(stringLiteral:)();
    v92(v20, v24, v91);
    static Locale.current.getter();
    v96 = String.init(localized:table:bundle:locale:comment:)();
    v98 = v97;
    (v170)(v24, v91);
    v99 = v167;
    UUID.init()();
    v100 = UUID.uuidString.getter();
    v102 = v101;
    v103 = *(v162 + 8);
    v162 += 8;
    v103(v99, v168);
    *(v43 + 32) = v100;
    *(v43 + 40) = v102;
    *(v43 + 48) = v96;
    *(v43 + 56) = v98;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    v172 = 0;
    v173 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v172 = 0xD00000000000001CLL;
    v173 = 0x80000001004CE8E0;
    *&v179 = [v63 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v104._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v104);

    v106 = v172;
    v105 = v173;
    v107 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_n(_swiftEmptyArrayStorage);
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    v23 = v171;
    v108 = v160;
    v109 = v159;
    if (static DeviceCapabilities.isInternalInstall == 1)
    {
      v110 = v106;
      v111 = v156;
      static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(v110, v105, 0xD000000000000032, 0x80000001004C8F70, _swiftEmptyArrayStorage, v107, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v156, 1u);

      v112 = v155;
      outlined init with copy of TaskPriority?(v111, v155, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v113 = v161;
      if ((*(v161 + 48))(v112, 1, v108) == 1)
      {
        outlined destroy of TaskPriority?(v111, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v114 = v112;
      }

      else
      {
        v170 = v103;
        v136 = *(v113 + 32);
        v136(v109, v112, v108);
        v137 = v109;
        v138 = [objc_opt_self() sharedApplication];
        URL._bridgeToObjectiveC()(v139);
        v141 = v140;
        v142 = [v138 canOpenURL:v140];

        if (v142)
        {
          v143 = v154;
          (*(v113 + 16))(v154, v137, v108);
          v144 = (*(v113 + 80) + 16) & ~*(v113 + 80);
          v145 = swift_allocObject();
          v136(v145 + v144, v143, v108);
          v146 = v167;
          UUID.init()();
          v147 = UUID.uuidString.getter();
          v149 = v148;
          (v170)(v146, v168);
          (*(v113 + 8))(v137, v108);
          outlined destroy of TaskPriority?(v156, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v151 = *(v43 + 16);
          v150 = *(v43 + 24);
          if (v151 >= v150 >> 1)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), v151 + 1, 1, v43);
          }

          v36 = v158;
          *(v43 + 16) = v151 + 1;
          v152 = v43 + 56 * v151;
          *(v152 + 32) = v147;
          *(v152 + 40) = v149;
          strcpy((v152 + 48), "File a Radar");
          *(v152 + 61) = 0;
          *(v152 + 62) = -5120;
          *(v152 + 64) = 2;
          *(v152 + 72) = &async function pointer to partial apply for closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:);
          *(v152 + 80) = v145;
          goto LABEL_52;
        }

        (*(v113 + 8))(v137, v108);
        v114 = v156;
      }

      outlined destroy of TaskPriority?(v114, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }

    v36 = v158;
LABEL_52:
    v42 = 0;
    v40 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 1;
    v41 = v157;
    goto LABEL_27;
  }

  if (a5 == 3)
  {
    v50 = v167;
    v162 = v15;
    v51 = v153 - v21;
    String.LocalizationValue.init(stringLiteral:)();
    v52 = v170;
    v163 = *(v170 + 16);
    (v163)(v20, v51, v18);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v53 = static NSBundle.module;
    static Locale.current.getter();
    v166 = v53;
    v165 = String.init(localized:table:bundle:locale:comment:)();
    v164 = v54;
    v55 = *(v52 + 8);
    v55(v51, v18);
    UUID.init()();
    v170 = UUID.uuidString.getter();
    v161 = v56;
    (*(v162 + 8))(v50, v168);
    String.LocalizationValue.init(stringLiteral:)();
    v57 = v163;
    (v163)(v20, v51, v18);
    static Locale.current.getter();
    v58 = v166;
    v59 = String.init(localized:table:bundle:locale:comment:)();
    v166 = v60;
    v55(v51, v18);
    String.LocalizationValue.init(stringLiteral:)();
    v57(v20, v51, v18);
    v42 = v59;
    static Locale.current.getter();
    v36 = String.init(localized:table:bundle:locale:comment:)();
    v41 = v61;
    v62 = v18;
    v40 = v166;
    v55(v51, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
    v43 = swift_allocObject();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v43 + 32) = v170;
    *(v43 + 40) = v161;
    *(v43 + 16) = xmmword_1004F2400;
    *(v43 + 48) = v165;
    *(v43 + 56) = v164;
    *(v43 + 64) = 2;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    v49 = 1;
    goto LABEL_26;
  }

  v23 = v171;
  if (a5 != 4)
  {
    goto LABEL_10;
  }

  v24 = v153 - v21;
  if (v166 == 2)
  {
    v162 = v15;
    v76 = v153 - v21;
    String.LocalizationValue.init(stringLiteral:)();
    v77 = v170;
    v78 = *(v170 + 16);
    v78(v20, v24, v18);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v79 = static NSBundle.module;
    static Locale.current.getter();
    v80 = v79;
    v161 = String.init(localized:table:bundle:locale:comment:)();
    v166 = v81;
    v170 = *(v77 + 8);
    (v170)(v76, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1004F2400;
    String.LocalizationValue.init(stringLiteral:)();
    v78(v20, v76, v18);
    static Locale.current.getter();
    v82 = String.init(localized:table:bundle:locale:comment:)();
    v84 = v83;
    v85 = v18;
    v40 = v166;
    (v170)(v76, v85);
    v86 = v167;
    UUID.init()();
    v87 = UUID.uuidString.getter();
    v89 = v88;
    (*(v162 + 8))(v86, v168);
    v41 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(v43 + 32) = v87;
    *(v43 + 40) = v89;
    v42 = v161;
    *(v43 + 48) = v82;
    *(v43 + 56) = v84;
    v36 = 0;
    *(v43 + 64) = 0;
    v49 = 1;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    goto LABEL_26;
  }

  if (v166 != 3)
  {
    if (v166 == 4)
    {
      v162 = v15;
      String.LocalizationValue.init(stringLiteral:)();
      v25 = v170;
      v26 = *(v170 + 16);
      v26(v20, v24, v18);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v27 = static NSBundle.module;
      v28 = static NSBundle.module;
      v160 = v27;
      v29 = v28;
      static Locale.current.getter();
      v166 = v29;
      v165 = String.init(localized:table:bundle:locale:comment:)();
      v164 = v30;
      v159 = *(v25 + 8);
      (v159)(v24, v18);
      v31 = v167;
      UUID.init()();
      v170 = UUID.uuidString.getter();
      v163 = v32;
      (*(v162 + 8))(v31, v168);
      String.LocalizationValue.init(stringLiteral:)();
      v26(v20, v24, v18);
      static Locale.current.getter();
      v33 = v166;
      v161 = String.init(localized:table:bundle:locale:comment:)();
      v166 = v34;
      v35 = v159;
      (v159)(v24, v18);
      String.LocalizationValue.init(stringLiteral:)();
      v26(v20, v24, v18);
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v37;
      v39 = v18;
      v40 = v166;
      (v35)(v24, v39);
      v41 = v38;
      v42 = v161;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
      v43 = swift_allocObject();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      *(v43 + 32) = v170;
      *(v43 + 40) = v163;
      *(v43 + 16) = xmmword_1004F2400;
      *(v43 + 48) = v165;
      *(v43 + 56) = v164;
      *(v43 + 64) = 2;
      *(v43 + 72) = 0;
      *(v43 + 80) = 0;
      v49 = 1;
      goto LABEL_27;
    }

LABEL_10:
    v42 = 0;
    v40 = 0;
    v36 = 0;
    v41 = 0;
    v44 = 0;
    v43 = 0;
    v45 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_27;
  }

LABEL_19:
  v162 = v15;
  IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
  v73 = (v170 + 16);
  v153[0] = v18;
  if (IsScreenProbablyBeingRecorded)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v74 = *v73;
    (*v73)(v20, v24, v18);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v171 = static NSBundle.module;
    static Locale.current.getter();
    v158 = String.init(localized:table:bundle:locale:comment:)();
    v157 = v75;
    v166 = *(v170 + 8);
    v166(v24, v18);
    v161 = 0;
    v40 = 0;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v115 = v20;
    v116 = *v73;
    (*v73)(v115, v24, v18);
    v160 = v73;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v117 = static NSBundle.module;
    static Locale.current.getter();
    v171 = v117;
    v158 = String.init(localized:table:bundle:locale:comment:)();
    v157 = v118;
    v119 = *(v170 + 8);
    v119(v24, v18);
    String.LocalizationValue.init(stringLiteral:)();
    v116(v115, v24, v18);
    static Locale.current.getter();
    v159 = v116;
    v20 = v115;
    v161 = String.init(localized:table:bundle:locale:comment:)();
    v121 = v120;
    v122 = v18;
    v40 = v121;
    v166 = v119;
    v119(v24, v122);
    v74 = v159;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  String.LocalizationValue.init(stringLiteral:)();
  v123 = v24;
  v74(v20, v24, v153[0]);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v124 = v171;
  static Locale.current.getter();
  v125 = String.init(localized:table:bundle:locale:comment:)();
  v127 = v126;
  v128 = v162;
  v166(v123, v153[0]);
  v129 = v167;
  UUID.init()();
  v130 = UUID.uuidString.getter();
  v132 = v131;
  (*(v128 + 8))(v129, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1004F2400;
  *(v43 + 32) = v130;
  *(v43 + 40) = v132;
  *(v43 + 48) = v125;
  *(v43 + 56) = v127;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0;

  specialized static SharedListening.ErrorHandling.playLocallyAction(with:)(v163, v164, v165, &v172);
  v133 = v173;
  if (v173)
  {
    v134 = v172;
    v179 = v174;
    v180 = v175;
    v181 = v176;
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v43);

    *(v43 + 16) = 2;
    *(v43 + 88) = v134;
    *(v43 + 96) = v133;
    v135 = v180;
    *(v43 + 104) = v179;
    *(v43 + 120) = v135;
    *(v43 + 136) = v181;
  }

  else
  {
  }

  v36 = v158;
  v41 = v157;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  v42 = v161;
LABEL_27:
  *v23 = v42;
  v23[1] = v40;
  v23[2] = v36;
  v23[3] = v41;
  v23[4] = v48 | v47;
  v23[5] = v44;
  v23[6] = v46 | v49;
  v23[7] = v43;
  v23[8] = v45;
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  v3[86] = type metadata accessor for MainActor();
  v3[87] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[88] = v5;
  v3[89] = v4;

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v5, v4);
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)()
{
  v22 = v0;
  v1 = one-time initialization token for sharedListening;
  v2 = *(v0 + 664);
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    swift_once();
    v3 = *(v0 + 664);
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 720) = __swift_project_value_buffer(v4, static Logger.sharedListening);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v0 + 592) = v8;
    *(v0 + 600) = 1;
    v11 = v8;
    v12 = String.init<A>(describing:)();
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding the intent to the player with command%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  if (*(v0 + 672))
  {
    v15 = *(v0 + 664);
    *(v0 + 552) = &type metadata for Player.ReplaceCommand;
    *(v0 + 560) = &protocol witness table for Player.ReplaceCommand;
    *(v0 + 528) = v15;
    *(v0 + 536) = 1;
    v16 = v15;
    *(v0 + 728) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 736) = v18;
    *(v0 + 744) = v17;

    return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v18, v17);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMR);
  v1 = swift_allocObject();
  v0[94] = v1;
  *(v1 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming((v0 + 66), v1 + 32);
  v0[95] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = static SharedListening.addIntent(_:playbackController:issuer:);
  v3 = v0[85];

  return PlaybackController.perform(_:options:intent:issuer:)(v1, 0x10000, 1, 0, 0, v3);
}

{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{
  v1 = v0[97];

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 66);
    v3 = v0[89];
    v2 = v0[88];
    v6 = static SharedListening.addIntent(_:playbackController:issuer:);
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[97] + 32);
  }

  v0[99] = v5;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 66);
  v3 = v0[89];
  v2 = v0[88];
  v6 = static SharedListening.addIntent(_:playbackController:issuer:);
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 66);
  v0[76] = v0[98];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v1 = v0[77];
  v0[100] = v1;
  v0[78] = v1;
  lazy protocol witness table accessor for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);
  _BridgedStoredNSError.code.getter();
  if (v0[79] != 1001)
  {

LABEL_9:
    v11 = v0[83];

    swift_willThrow();

    goto LABEL_10;
  }

  v2 = v1;
  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 msv_errorByUnwrappingDomain:MPCErrorDomain];
  v0[101] = v4;

  if (v4)
  {
    swift_getErrorValue();
    if (dispatch thunk of Error._code.getter() == 58)
    {
      v5 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
      v6 = objc_allocWithZone(MPAVRoutingController);
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 initWithDataSource:v5 name:v7];
      v0[102] = v8;

      v0[2] = v0;
      v0[7] = v0 + 81;
      v0[3] = static SharedListening.addIntent(_:playbackController:issuer:);
      v9 = swift_continuation_init();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
      v0[103] = v10;
      v0[41] = v10;
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
      v0[37] = &block_descriptor_42;
      v0[38] = v9;
      [v8 getActiveRouteWithTimeout:v0 + 34 completion:2.0];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v13 = v0[83];

  swift_willThrow();

LABEL_10:
  v12 = v0[1];

  return v12();
}

{
  v1 = [*(v0 + 792) error];
  if (!v1)
  {
    v1 = [*(v0 + 792) dialog];
    if (!v1)
    {
      v17 = *(v0 + 792);
      v18 = *(v0 + 664);

      v16 = *(v0 + 8);
      goto LABEL_13;
    }
  }

  v2 = *(v0 + 792);

  lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
  v3 = swift_allocError();
  *v4 = v2;
  *(v4 + 8) = 2;
  swift_willThrow();

  *(v0 + 608) = v3;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 616);
    *(v0 + 800) = v5;
    *(v0 + 624) = v5;
    lazy protocol witness table accessor for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 632) == 1001)
    {

      v6 = v5;
      v7 = _convertErrorToNSError(_:)();

      v8 = [v7 msv_errorByUnwrappingDomain:MPCErrorDomain];
      *(v0 + 808) = v8;

      if (v8)
      {
        swift_getErrorValue();
        if (dispatch thunk of Error._code.getter() == 58)
        {
          v9 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
          v10 = objc_allocWithZone(MPAVRoutingController);
          v11 = String._bridgeToObjectiveC()();
          v12 = [v10 initWithDataSource:v9 name:v11];
          *(v0 + 816) = v12;

          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 648;
          *(v0 + 24) = static SharedListening.addIntent(_:playbackController:issuer:);
          v13 = swift_continuation_init();
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
          *(v0 + 824) = v14;
          *(v0 + 328) = v14;
          *(v0 + 272) = _NSConcreteStackBlock;
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
          *(v0 + 296) = &block_descriptor_42;
          *(v0 + 304) = v13;
          [v12 getActiveRouteWithTimeout:v0 + 272 completion:2.0];

          return _swift_continuation_await(v0 + 16);
        }
      }

      v19 = *(v0 + 664);

      swift_willThrow();

      goto LABEL_12;
    }
  }

  v15 = *(v0 + 664);

  swift_willThrow();

LABEL_12:
  v16 = *(v0 + 8);
LABEL_13:

  return v16();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{
  v1 = v0[81];
  v0[104] = v1;
  v2 = objc_opt_self();
  v0[105] = v2;
  v3 = v1;
  v4 = [v2 systemRoute];
  v5 = v4;
  if (!v1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_10:

LABEL_11:
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SharedListening requires system route, switching…", v14, 2u);
    }

    v0[10] = v0;
    v0[11] = static SharedListening.addIntent(_:playbackController:issuer:);
    v15 = swift_continuation_init();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[106] = v16;
    v0[49] = v16;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[45] = &block_descriptor_14;
    v0[46] = v15;
    [v2 setActiveRoute:0 completion:v0 + 42];

    return _swift_continuation_await(v0 + 10);
  }

  if (!v4)
  {
    v5 = v3;
    goto LABEL_10;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPAVRoute, MPAVRoute_ptr);
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[83];

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 856) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  else
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 848);
  v2 = *(v0 + 816);
  v3 = [*(v0 + 840) systemRoute];
  *(v0 + 864) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = static SharedListening.addIntent(_:playbackController:issuer:);
  v4 = swift_continuation_init();
  *(v0 + 456) = v1;
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  *(v0 + 424) = &block_descriptor_17_0;
  *(v0 + 432) = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144);
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 872) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  else
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 656;
  *(v0 + 216) = static SharedListening.addIntent(_:playbackController:issuer:);
  v3 = swift_continuation_init();
  *(v0 + 520) = v1;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
  *(v0 + 488) = &block_descriptor_20;
  *(v0 + 496) = v3;
  [v2 getActiveRouteWithTimeout:v0 + 464 completion:2.0];

  return _swift_continuation_await(v0 + 208);
}

{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(static SharedListening.addIntent(_:playbackController:issuer:), v2, v1);
}

{

  v1 = *(v0 + 656);
  *(v0 + 880) = v1;
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "active route=%@", v5, 0xCu);
    outlined destroy of TaskPriority?(v6, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);
  }

  v8 = *(v0 + 840);

  v9 = [v8 systemRoute];
  v10 = v9;
  if (!v1)
  {
    v11 = v9;
    if (!v9)
    {
LABEL_12:
      v20 = swift_task_alloc();
      *(v0 + 888) = v20;
      *v20 = v0;
      v20[1] = static SharedListening.addIntent(_:playbackController:issuer:);
      v21 = *(v0 + 680);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);

      return static SharedListening.addIntent(_:playbackController:issuer:)(v23, v22, v21);
    }

    goto LABEL_8;
  }

  v11 = v2;
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPAVRoute, MPAVRoute_ptr);
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 664);

  lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
  swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 4;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  else
  {
    v5 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[83];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[108];
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[83];

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = static SharedListening.addIntent(_:playbackController:issuer:);
  }

  return _swift_task_switch(v7, v4, v6);
}

BOOL static SharedListening.isModelObjectTypeSupported(_:)(uint64_t a1)
{
  if (one-time initialization token for sharedListeningSupportedModelObjects != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *(static SharedListening.sharedListeningSupportedModelObjects + 2);
  v2 = (static SharedListening.sharedListeningSupportedModelObjects + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;
  }

  while (v5 != a1);
  return v3 != 0;
}

void __swiftcall SharedListening.Reaction.init(id:emoji:senderID:)(MusicCore::SharedListening::Reaction *__return_ptr retstr, Swift::String_optional id, Swift::String emoji, Swift::String_optional senderID)
{
  object = senderID.value._object;
  countAndFlagsBits = senderID.value._countAndFlagsBits;
  v6 = emoji._object;
  v7 = emoji._countAndFlagsBits;
  v8 = id.value._object;
  v9 = id.value._countAndFlagsBits;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    UUID.init()();
    v9 = UUID.uuidString.getter();
    v8 = v15;
    (*(v12 + 8))(v14, v11);
  }

  retstr->id._countAndFlagsBits = v9;
  retstr->id._object = v8;
  retstr->emoji._countAndFlagsBits = v7;
  retstr->emoji._object = v6;
  retstr->senderID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->senderID.value._object = object;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SharedListening.Reaction.CodingKeys()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x44497265646E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SharedListening.Reaction.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SharedListening.Reaction.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharedListening.Reaction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharedListening.Reaction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedListening.Reaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore15SharedListeningO8ReactionV10CodingKeys33_962CB2D05357BEA070941EB4D8F61D5ELLOGMd, &_ss22KeyedEncodingContainerVy9MusicCore15SharedListeningO8ReactionV10CodingKeys33_962CB2D05357BEA070941EB4D8F61D5ELLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type SharedListening.Reaction.CodingKeys and conformance SharedListening.Reaction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

void SharedListening.Reaction.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 40))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int SharedListening.Reaction.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

double SharedListening.Reaction.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized SharedListening.Reaction.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharedListening.Reaction()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SharedListening.Reaction(uint64_t a1)
{
  v2 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharedListening.Reaction(uint64_t a1)
{
  v2 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SharedListening.Reaction(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static SharedListening.Reaction.__derived_struct_equals(_:_:)(v7, v8) & 1;
}

void one-time initialization function for properties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F2400;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 propertySetWithProperties:isa];

  *(inited + 48) = v6;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004F2400;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v5 propertySetWithProperties:v10];

  *(inited + 72) = v11;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004F2400;
  *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 40) = v14;
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v5 propertySetWithProperties:v15];

  *(inited + 96) = v16;
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004F2400;
  *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v18 + 40) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1004F2400;
  *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004F2400;
  *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 40) = v23;
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v5 propertySetWithProperties:v24];

  *(v20 + 48) = v25;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(v20);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v20 + 32, &_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v28 = Dictionary._bridgeToObjectiveC()().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  *(inited + 120) = v29;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MPPropertySet);
  v31 = Array._bridgeToObjectiveC()().super.isa;
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  static SharedListening.Event.properties = v33;
}

id static SharedListening.Event.properties.getter()
{
  if (one-time initialization token for properties != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t one-time initialization function for sharedListeningSupportedModelObjects()
{
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo13MPModelObjectCm_Ttg5();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2F00;
  *(v0 + 32) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelAlbum, MPModelAlbum_ptr);
  *(v0 + 40) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelSong, MPModelSong_ptr);
  *(v0 + 48) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelPlaylist, MPModelPlaylist_ptr);
  *(v0 + 56) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelRadioStation, MPModelRadioStation_ptr);
  result = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelArtist, MPModelArtist_ptr);
  *(v0 + 64) = result;
  static SharedListening.sharedListeningSupportedModelObjects = v0;
  return result;
}

void *one-time initialization function for sharedListeningSupportedMusicItems()
{
  result = closure #1 in variable initialization expression of static SharedListening.sharedListeningSupportedMusicItems();
  static SharedListening.sharedListeningSupportedMusicItems = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static SharedListening.sharedListeningSupportedMusicItems()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit0D4Item_pXpGMd, &_ss23_ContiguousArrayStorageCy8MusicKit0D4Item_pXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F3070;
  *(v0 + 32) = type metadata accessor for Album();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = type metadata accessor for Song();
  *(v0 + 56) = &protocol witness table for Song;
  *(v0 + 64) = type metadata accessor for MusicVideo();
  *(v0 + 72) = &protocol witness table for MusicVideo;
  *(v0 + 80) = type metadata accessor for Playlist();
  *(v0 + 88) = &protocol witness table for Playlist;
  *(v0 + 96) = type metadata accessor for Station();
  *(v0 + 104) = &protocol witness table for Station;
  *(v0 + 112) = type metadata accessor for Artist();
  *(v0 + 120) = &protocol witness table for Artist;
  return v0;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPCPlaybackIntent?, @unowned MPCPlayerCommandStatus) -> () with result type (MPCPlaybackIntent?, MPCPlayerCommandStatus)(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), 0, 0);
}

uint64_t closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    *(v0 + 88) = v1;
    *(v0 + 96) = 3;
    v2 = &protocol witness table for Player.ReplaceCommand;
    v3 = &type metadata for Player.ReplaceCommand;
    v22 = v1;
  }

  else
  {
    v22 = 0;
    *(v0 + 88) = 0;
    v2 = &protocol witness table for Player.PlaybackCommand;
    v3 = &type metadata for Player.PlaybackCommand;
  }

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  outlined init with copy of ActionPerforming(v0 + 88, v0 + 128);
  *(v0 + 168) = *v8;
  *(v0 + 184) = v8[1];
  v10 = *(v8 + 6);
  v21 = *(v8 + 5);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v1;
  *(v11 + 40) = v6;
  *(v11 + 48) = v5;
  *(v11 + 56) = v1 == 0;
  outlined init with take of CatalogIDProviding((v0 + 128), v11 + 64);
  v12 = *v8;
  v13 = v8[1];
  v14 = v8[2];
  *(v11 + 152) = *(v8 + 6);
  *(v11 + 136) = v14;
  *(v11 + 120) = v13;
  *(v11 + 104) = v12;
  *(v11 + 160) = *v7;
  v15 = *(v7 + 64);
  v17 = *(v7 + 32);
  v16 = *(v7 + 48);
  *(v11 + 176) = *(v7 + 16);
  *(v11 + 192) = v17;
  *(v11 + 208) = v16;
  *(v11 + 224) = v15;

  v18 = v22;

  outlined init with copy of String(v0 + 168, v0 + 200);
  outlined init with copy of String(v0 + 184, v0 + 216);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v21, v10);
  outlined init with copy of TaskPriority?(v7, v0 + 16, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), v11);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a5;
  return _swift_task_switch(closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), 0, 0);
}

uint64_t closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)()
{
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:);
    v2 = *(v0 + 192);

    return GroupActivitiesManager.leave(performLeaveCommand:)(v2);
  }

  else if (*(v0 + 136))
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[5];
    v11 = v4[6];

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v10, v11);
    outlined init with copy of TaskPriority?(v5, v0 + 16, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
    v12 = specialized Alert.ActionCommandIssuingContext.init(action:in:)(v6, v7, v8, v9, v10, v11, v5);
    *(v0 + 112) = &type metadata for Alert.ActionCommandIssuingContext;
    *(v0 + 120) = &protocol witness table for Alert.ActionCommandIssuingContext;
    *(v0 + 88) = v12;
    *(v0 + 96) = v13;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:);
    v15 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v15, 0, 0, 0, v0 + 88);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

{

  return _swift_task_switch(closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), 0, 0);
}

{
  if (v0[17])
  {
    v1 = v0[19];
    v2 = v0[20];
    v3 = *v1;
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = v1[6];

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v7, v8);
    outlined init with copy of TaskPriority?(v2, (v0 + 2), &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
    v9 = specialized Alert.ActionCommandIssuingContext.init(action:in:)(v3, v4, v5, v6, v7, v8, v2);
    v0[14] = &type metadata for Alert.ActionCommandIssuingContext;
    v0[15] = &protocol witness table for Alert.ActionCommandIssuingContext;
    v0[11] = v9;
    v0[12] = v10;
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:);
    v12 = v0[18];

    return Player.perform(_:options:issuer:)(v12, 0, 0, 0, (v0 + 11));
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

{
  outlined destroy of TaskPriority?(v0 + 88, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:)(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(closure #1 in closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:), 0, 0);
  }

  else
  {

    outlined destroy of TaskPriority?(v4 + 88, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t one-time initialization function for sharedListening()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sharedListening);
  __swift_project_value_buffer(v0, static Logger.sharedListening);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.sharedListening.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sharedListening != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.sharedListening);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(closure #1 in MPCPlayerCommandDialog.alert(context:completion:), 0, 0);
}

uint64_t closure #1 in MPCPlayerCommandDialog.alert(context:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v1();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #2 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(closure #2 in MPCPlayerCommandDialog.alert(context:completion:), 0, 0);
}

uint64_t closure #2 in MPCPlayerCommandDialog.alert(context:completion:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = objc_opt_self();
  v5 = [v3 commandRequest];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v0[6] = partial apply for closure #1 in closure #2 in MPCPlayerCommandDialog.alert(context:completion:);
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v0[5] = &block_descriptor_99;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v2, v1);

  [v4 performRequest:v5 completion:v7];
  _Block_release(v7);

  v9 = v0[1];

  return v9();
}

uint64_t partial apply for closure #2 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in MPCPlayerCommandDialog.alert(context:completion:)(a1, a2, v6, v7, v8);
}

void closure #1 in closure #2 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, id a2, void (*a3)(uint64_t))
{
  if ([a2 type] == 1)
  {
    if (a3)
    {
      v5 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      (a3)();
    }
  }

  else if (a3)
  {
    a3(a1);
  }
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo13MPModelObjectCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13MPModelObjectCmMd, &_sSo13MPModelObjectCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCySo13MPModelObjectCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCySo13MPModelObjectCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void outlined consume of Alert.Action?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a6, a7);
  }
}

uint64_t specialized static SharedListening.Reaction.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7 && (a1[4] == a2[4] && v6 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

void specialized static SharedListening.ErrorHandling.playLocallyAction(with:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v32 - v14;
  if (FigOutputMonitorIsScreenProbablyBeingRecorded())
  {
    if (one-time initialization token for sharedListening != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.sharedListening);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Play locally action is NOT available because of screen sharing", v19, 2u);
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v33 = v6;
    v34 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v11 + 16))(v13, v15, v10);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v27 = static NSBundle.module;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    v23 = v28;
    (*(v11 + 8))(v15, v10);
    v26 = swift_allocObject();
    v29 = v36;
    v26[2] = a1;
    v26[3] = v29;
    v26[4] = v35;

    v30 = a1;

    UUID.init()();
    v20 = UUID.uuidString.getter();
    v21 = v31;
    (*(v34 + 8))(v9, v33);
    v25 = &async function pointer to partial apply for closure #1 in static SharedListening.ErrorHandling.playLocallyAction(with:);
    v24 = 2;
  }

  *a4 = v20;
  a4[1] = v21;
  a4[2] = v22;
  a4[3] = v23;
  a4[4] = v24;
  a4[5] = v25;
  a4[6] = v26;
}

uint64_t sub_1002746F8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in MPCPlayerCommandDialog.alert(context:completion:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in MPCPlayerCommandDialog.alert(context:completion:)(a1, a2, v7, v6);
}

void specialized SharedListening.Event.init(_:)(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v28 = [v2 sessionEvent];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 kind];

        if (v30 == 4)
        {

          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          v12 = 2;
          goto LABEL_83;
        }

        if (v30 == 1)
        {

          v12 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          goto LABEL_83;
        }
      }

      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.sharedListening);
      v20 = v2;
      v2 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v39 = [v20 sessionEvent];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 kind];
        }

        else
        {
          v41 = 0;
        }

        v80 = v41;
        v81 = v40 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo34MPCSharedListeningSessionEventKindVSgMd, &_sSo34MPCSharedListeningSessionEventKindVSgMR);
        v59 = String.init<A>(describing:)();
        v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v82);

        *(v22 + 4) = v61;
        v27 = "Unknown session event kind: %{public}s";
        goto LABEL_59;
      }

LABEL_46:

LABEL_47:
LABEL_60:
      v12 = 0;
      goto LABEL_61;
    }

    if (v4 == 2)
    {
      v5 = [v2 playbackEvent];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7 > 2)
        {
          if (v7 == 3)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 1;
            goto LABEL_83;
          }

          if (v7 == 4)
          {
            v42 = [v2 playbackEvent];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 item];

              if (v44)
              {
                v45 = [v44 innermostModelObject];

                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();
                v44 = v46;
                if (v46)
                {
                  v47 = [v46 title];
                  if (v47)
                  {
                    v48 = v47;
                    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v8 = v49;

                    v9 = 0;
                    v10 = 0;
                    v11 = 2;
                    goto LABEL_83;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
              v44 = 0;
            }

            v12 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 2;
            v8 = 0xE000000000000000;
            goto LABEL_83;
          }
        }

        else
        {
          if (v7 == 1)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 4;
            goto LABEL_83;
          }

          if (v7 == 2)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 3;
LABEL_83:
            *a2 = v12;
            *(a2 + 8) = v8;
            *(a2 + 16) = v9;
            *(a2 + 24) = v10;
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 48) = v11;
            return;
          }
        }
      }

      if (one-time initialization token for sharedListening != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.sharedListening);
      v20 = v2;
      v2 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v51 = [v20 playbackEvent];
        v52 = v51;
        if (v51)
        {
          v53 = [v51 kind];
        }

        else
        {
          v53 = 0;
        }

        v80 = v53;
        v81 = v52 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35MPCSharedListeningPlaybackEventKindVSgMd, &_sSo35MPCSharedListeningPlaybackEventKindVSgMR);
        v62 = String.init<A>(describing:)();
        v64 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v62, v63, &v82);

        *(v22 + 4) = v64;
        v27 = "Unknown playback event kind: %{public}s";
        goto LABEL_59;
      }

      goto LABEL_46;
    }

LABEL_13:
    if (one-time initialization token for sharedListening != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.sharedListening);
    v20 = v2;
    v2 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = v23;
      *v22 = 136446210;
      v82 = [v20 type];
      type metadata accessor for MPCSharedListeningEventType(0);
      v24 = String.init<A>(describing:)();
      v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v25, &v80);

      *(v22 + 4) = v26;
      v27 = "Unknown event type: %{public}s";
LABEL_59:
      _os_log_impl(&_mh_execute_header, v2, v21, v27, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);

      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      v13 = [v2 reactionEvent];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 reactionIdentifier];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v16;

        v17 = [v14 reaction];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v18;

        v11 = 1;
        goto LABEL_83;
      }

      goto LABEL_47;
    }

    goto LABEL_13;
  }

  v31 = [v2 queueEvent];
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = v31;
  v33 = [v31 kind];

  if (v33 != 1)
  {
    if (v33 != 7)
    {
      if (v33 == 6)
      {
        v34 = [v2 queueEvent];
        if (v34)
        {
          v35 = v34;
          v12 = [v34 playedNowContent];

          if (v12)
          {
            v36 = [v12 startItem];
            v37 = [v36 innermostModelObject];

            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12)
            {
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 3;
              goto LABEL_83;
            }
          }

          else
          {
          }

LABEL_61:
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = -1;
          goto LABEL_83;
        }

        goto LABEL_47;
      }

      goto LABEL_81;
    }

LABEL_77:
    v71 = [v2 queueEvent];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 contentUpdatedMessage];

      if (v73)
      {
        v74 = [v73 localizedTitle];
        if (v74)
        {
          v75 = v74;
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = v76;
        }

        else
        {
          v12 = 0;
          v8 = 0;
        }

        v77 = [v73 localizedMessage];
        if (v77)
        {
          v78 = v77;
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v79;
        }

        else
        {

          v9 = 0;
          v10 = 0;
        }

        v11 = 4;
        goto LABEL_83;
      }
    }

LABEL_81:

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4;
    goto LABEL_82;
  }

  v54 = [v2 queueEvent];
  if (!v54)
  {
    goto LABEL_77;
  }

  v55 = v54;
  v56 = [v54 addedContent];

  if (!v56)
  {
    goto LABEL_77;
  }

  v57 = [v56 container];
  if (v57)
  {
    v58 = v57;
    v12 = [v57 innermostModelObject];

    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_82:
    v8 = 1;
    goto LABEL_83;
  }

  v65 = [v56 items];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelGenericObject, MPModelGenericObject_ptr);
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_66;
    }

LABEL_76:

    goto LABEL_77;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_69;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v66 + 32);
LABEL_69:
    v68 = v67;

    v69 = [v68 innermostModelObject];

    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v12 = v70;

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  __break(1u);
}