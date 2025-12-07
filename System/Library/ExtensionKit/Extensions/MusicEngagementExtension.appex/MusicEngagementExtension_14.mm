uint64_t specialized Action.execute(checkSupportedStatus:)(char a1)
{
  *(v2 + 1848) = v1;
  *(v2 + 1987) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *(v2 + 1856) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v2 + 1864) = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  *(v2 + 1872) = v3;
  *(v2 + 1880) = *(v3 - 8);
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();

  return _swift_task_switch(specialized Action.execute(checkSupportedStatus:), 0, 0);
}

uint64_t specialized closure #1 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, static Logger.action);
  (*(v13 + 16))(v15, v16, v12);
  outlined init with copy of TaskPriority?(a2, v11, a3, a4);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v12;
    v31 = v21;
    v22 = v21;
    *v20 = 136446210;
    v23 = v11[*(v9 + 36)];
    outlined destroy of TaskPriority?(v11, a3, a4);
    v24 = ActionType.rawValue.getter(v23);
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, v29, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return (*(v13 + 8))(v15, v30);
  }

  else
  {
    outlined destroy of TaskPriority?(v11, a3, a4);

    return (*(v13 + 8))(v15, v12);
  }
}

{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, static Logger.action);
  (*(v10 + 16))(v12, v13, v9);
  outlined init with copy of TaskPriority?(a2, v28, a3, a4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(a2 + 48));
    v27 = a5;
    v20 = v19;
    v21 = a4;
    v23 = v22;
    outlined destroy of TaskPriority?(a2, v26, v21);
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v23, v28);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, v27, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, a3, a4);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1264) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1272) = v6;
  *(v4 + 1280) = *(v6 - 8);
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = a4[4];
  *(v4 + 232) = a4[5];
  v9 = a4[7];
  *(v4 + 248) = a4[6];
  *(v4 + 264) = v9;
  v10 = *a4;
  *(v4 + 168) = a4[1];
  v11 = a4[3];
  *(v4 + 184) = a4[2];
  *(v4 + 200) = v11;
  *(v4 + 216) = v8;
  *(v4 + 1304) = v7;
  *(v4 + 280) = *(a4 + 16);
  *(v4 + 152) = v10;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)()
{
  v43 = v0;
  v1 = (v0 + 152);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1304);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1272);
  v5 = __swift_project_value_buffer(v4, static Logger.action);
  *(v0 + 1312) = v5;
  v6 = *(v3 + 16);
  *(v0 + 1320) = v6;
  *(v0 + 1328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v7;
  *(v0 + 144) = *(v0 + 280);
  v8 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v8;
  v9 = *(v0 + 232);
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v9;
  v10 = *(v0 + 168);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v10;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 288, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1280);
  v16 = *(v0 + 1272);
  if (v13)
  {
    v40 = *(v0 + 1304);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(v0 + 88));
    v21 = v20;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, &v42);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: finishing…", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);

    (*(v15 + 8))(v40, v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);

    (*(v15 + 8))(v14, v16);
  }

  v23 = *(v0 + 1264);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v24 = [objc_opt_self() mainRunLoop];
  v25 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v26 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1240) = v26;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v27 = ConnectablePublisher.autoconnect()();

  *(v0 + 1248) = v27;
  v28 = *(v0 + 264);
  *(v0 + 520) = *(v0 + 248);
  *(v0 + 536) = v28;
  *(v0 + 552) = *(v0 + 280);
  v29 = *(v0 + 200);
  *(v0 + 456) = *(v0 + 184);
  *(v0 + 472) = v29;
  v30 = *(v0 + 232);
  *(v0 + 488) = *(v0 + 216);
  *(v0 + 504) = v30;
  v31 = *(v0 + 168);
  *(v0 + 424) = *v1;
  *(v0 + 440) = v31;
  v32 = *(v0 + 544);
  v33 = swift_allocObject();
  v34 = *(v0 + 264);
  *(v33 + 112) = *(v0 + 248);
  *(v33 + 128) = v34;
  *(v33 + 144) = *(v0 + 280);
  v35 = *(v0 + 200);
  *(v33 + 48) = *(v0 + 184);
  *(v33 + 64) = v35;
  v36 = *(v0 + 232);
  *(v33 + 80) = *(v0 + 216);
  *(v33 + 96) = v36;
  v37 = *(v0 + 168);
  *(v33 + 16) = *v1;
  *(v33 + 32) = v37;
  outlined init with copy of TaskPriority?(v0 + 424, v0 + 560, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1336) = Publisher<>.sink(receiveValue:)();

  v41 = (v32 + *v32);
  v38 = swift_task_alloc();
  *(v0 + 1344) = v38;
  *v38 = v0;
  v38[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v41(v1);
}

{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v26 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1272);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 1064) = *(v0 + 248);
  *(v0 + 1080) = v6;
  *(v0 + 1096) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 1000) = *(v0 + 184);
  *(v0 + 1016) = v8;
  *(v0 + 1032) = *(v0 + 216);
  *(v0 + 1048) = v5;
  *(v0 + 968) = *(v0 + 152);
  *(v0 + 984) = v7;
  outlined init with copy of TaskPriority?(v0 + 968, v0 + 1104, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1280);
  v14 = *(v0 + 1272);
  if (v11)
  {
    v24 = *(v0 + 1272);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 1040));
    v23 = v12;
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 968, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    (*(v13 + 8))(v23, v24);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 968, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);

    (*(v13 + 8))(v12, v14);
  }

  v21 = *(v0 + 8);

  return v21();
}

{
  v29 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1272);

  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 792) = *(v0 + 248);
  *(v0 + 808) = v6;
  *(v0 + 824) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 728) = *(v0 + 184);
  *(v0 + 744) = v8;
  *(v0 + 760) = *(v0 + 216);
  *(v0 + 776) = v5;
  *(v0 + 696) = *(v0 + 152);
  *(v0 + 712) = v7;
  outlined init with copy of TaskPriority?(v0 + 696, v0 + 832, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1352);
    v12 = *(v0 + 1280);
    v26 = *(v0 + 1272);
    v27 = *(v0 + 1288);
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 696, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1256) = v11;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1280);
    v23 = *(v0 + 1272);

    outlined destroy of TaskPriority?(v0 + 696, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v37 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, static Logger.action);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  outlined init with copy of TaskPriority?(v5, v4, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    outlined destroy of TaskPriority?(v14, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    v18 = ActionType.rawValue.getter(v15);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v0[2] = v28;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = ConnectablePublisher.autoconnect()();

  v0[3] = v29;
  outlined init with copy of TaskPriority?(v25, v21, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  outlined init with take of URL?(v21, v31 + v30, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);
  v33 = v0[5];

  return v35(v33);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    v17 = ActionType.rawValue.getter(v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[11], &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    outlined destroy of TaskPriority?(v0[10], &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

{
  v37 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, static Logger.action);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  outlined init with copy of TaskPriority?(v5, v4, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    outlined destroy of TaskPriority?(v14, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    v18 = ActionType.rawValue.getter(v15);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v0[2] = v28;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = ConnectablePublisher.autoconnect()();

  v0[3] = v29;
  outlined init with copy of TaskPriority?(v25, v21, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  outlined init with take of URL?(v21, v31 + v30, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);
  v33 = v0[5];

  return v35(v33);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    v17 = ActionType.rawValue.getter(v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[11], &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    outlined destroy of TaskPriority?(v0[10], &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v38 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 952) = v4;
  v5 = *(v2 + 16);
  *(v0 + 960) = v5;
  *(v0 + 968) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v6;
  v7 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v7;
  v8 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 208, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 48));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 880) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 888) = v25;
  v26 = *(v0 + 160);
  *(v0 + 336) = *(v0 + 144);
  *(v0 + 352) = v26;
  v27 = *(v0 + 192);
  *(v0 + 368) = *(v0 + 176);
  *(v0 + 384) = v27;
  v28 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v28;
  v29 = *(v0 + 384);
  v30 = swift_allocObject();
  v31 = *(v0 + 160);
  v30[3] = *(v0 + 144);
  v30[4] = v31;
  v32 = *(v0 + 192);
  v30[5] = *(v0 + 176);
  v30[6] = v32;
  v33 = *(v0 + 128);
  v30[1] = *(v0 + 112);
  v30[2] = v33;
  outlined init with copy of TaskPriority?(v0 + 304, v0 + 400, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 976) = Publisher<>.sink(receiveValue:)();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v36(v0 + 112);
}

{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 720) = *(v0 + 144);
  *(v0 + 736) = v5;
  v6 = *(v0 + 192);
  *(v0 + 752) = *(v0 + 176);
  *(v0 + 768) = v6;
  v7 = *(v0 + 128);
  *(v0 + 688) = *(v0 + 112);
  *(v0 + 704) = v7;
  outlined init with copy of TaskPriority?(v0 + 688, v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 936);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  if (v10)
  {
    v22 = *(v0 + 936);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 720));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 912);

  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 528) = *(v0 + 144);
  *(v0 + 544) = v5;
  v6 = *(v0 + 192);
  *(v0 + 560) = *(v0 + 176);
  *(v0 + 576) = v6;
  v7 = *(v0 + 128);
  *(v0 + 496) = *(v0 + 112);
  *(v0 + 512) = v7;
  outlined init with copy of TaskPriority?(v0 + 496, v0 + 592, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 992);
    v26 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 496, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 928);
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);

    outlined destroy of TaskPriority?(v0 + 496, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v39 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  outlined init with copy of TaskPriority?(v0 + 16, v0 + 240, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v21, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1024) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  outlined init with copy of TaskPriority?(v0 + 352, v0 + 464, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = Publisher<>.sink(receiveValue:)();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);

  return v37(v0 + 128);
}

{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  outlined init with copy of TaskPriority?(v0 + 800, v0 + 912, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    outlined destroy of TaskPriority?(v0 + 800, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  outlined init with copy of TaskPriority?(v0 + 576, v0 + 688, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    outlined destroy of TaskPriority?(v0 + 576, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

{
  v32 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = __swift_project_value_buffer(v3, static Logger.action);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  outlined init with copy of TaskPriority?(v4, v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1080);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    v15 = *(v0 + 208);
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v16 = ActionType.rawValue.getter(v15);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v20, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v0 + 1040) = v24;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = ConnectablePublisher.autoconnect()();

  *(v0 + 1048) = v25;
  outlined init with copy of TaskPriority?(v21, v0 + 272, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  v26 = swift_allocObject();
  outlined init with take of URL?(v0 + 272, v26 + 16, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1152) = Publisher<>.sink(receiveValue:)();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  outlined init with copy of TaskPriority?(v5, v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1080);
  if (v8)
  {
    v21 = *(v0 + 1144);
    v12 = swift_slowAlloc();
    v20 = v10;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = *(v0 + 976);
    outlined destroy of TaskPriority?(v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v15 = ActionType.rawValue.getter(v14);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish success", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);

    v21(v20, v11);
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 784, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  outlined init with copy of TaskPriority?(v5, v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1168);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1144);
    v9 = *(v0 + 1080);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    outlined destroy of TaskPriority?(v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v12 = ActionType.rawValue.getter(v11);
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1144);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1080);
    outlined destroy of TaskPriority?(v0 + 528, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

{
  v37 = v0;
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, static Logger.action);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  outlined init with copy of TaskPriority?(v5, v4, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    outlined destroy of TaskPriority?(v14, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v18 = ActionType.rawValue.getter(v15);
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[13], &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSTimer, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of TaskPriority?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v0[2] = v28;
  type metadata accessor for NSTimer.TimerPublisher();
  lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = ConnectablePublisher.autoconnect()();

  v0[3] = v29;
  outlined init with copy of TaskPriority?(v25, v21, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  outlined init with take of URL?(v21, v31 + v30, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = Publisher<>.sink(receiveValue:)();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = specialized closure #2 in Action.execute(checkSupportedStatus:);
  v33 = v0[5];

  return v35(v33);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  else
  {
    v2 = specialized closure #2 in Action.execute(checkSupportedStatus:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    outlined destroy of TaskPriority?(v13, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v17 = ActionType.rawValue.getter(v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    outlined destroy of TaskPriority?(v0[11], &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  outlined init with copy of TaskPriority?(v6, v5, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
    v15 = ActionType.rawValue.getter(v13);
    v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    outlined destroy of TaskPriority?(v0[10], &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  v8 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v8;
  *(v4 + 144) = *(a4 + 128);
  v9 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v9;
  v10 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v10;
  v11 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v11;
  v12 = swift_task_alloc();
  *(v4 + 152) = v12;
  *v12 = v4;
  v12[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, a4);
}

{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, a4);
}

{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, a4);
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 904) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 912) = v6;
  *(v4 + 920) = *(v6 - 8);
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  *(v4 + 944) = swift_task_alloc();
  v7 = a4[3];
  *(v4 + 144) = a4[2];
  *(v4 + 160) = v7;
  v8 = a4[5];
  *(v4 + 176) = a4[4];
  *(v4 + 192) = v8;
  v9 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v4 + 1048) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v9;
  v10 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = specialized closure #1 in closure #3 in static ActionBuilder.buildExpression<A, B>(_:);

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, (v4 + 16));
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  *(v5 + 1072) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(specialized closure #2 in Action.execute(checkSupportedStatus:), 0, 0);
}

uint64_t specialized closure #1 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, static Logger.action);
  (*(v6 + 16))(v8, v9, v5);
  outlined init with copy of TaskPriority?(a2, v21, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 72));
    v17 = v16;
    outlined destroy of TaskPriority?(a2, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v20, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5QueueO7ContextVytGMR);
  }

  return (*(v6 + 8))(v8, v5);
}

{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, static Logger.action);
  (*(v6 + 16))(v8, v9, v5);
  outlined init with copy of TaskPriority?(a2, v22, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 32));
    v17 = v16;
    outlined destroy of TaskPriority?(a2, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    outlined destroy of TaskPriority?(a2, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8RateSongO7ContextVytGMR);
  }

  return (*(v6 + 8))(v8, v5);
}

{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for action != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, static Logger.action);
  (*(v6 + 16))(v8, v9, v5);
  outlined init with copy of TaskPriority?(a2, v23, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    outlined destroy of TaskPriority?(v23, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
    v16 = ActionType.rawValue.getter(v15);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    outlined destroy of TaskPriority?(v23, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t specialized NoticePresenting.present(_:internalOnly:)(uint64_t a1, char a2)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _s9MusicCore6NoticeV7VariantOWOhTm_1(v5, type metadata accessor for Notice);
  }

  v7 = Strong;
  UIViewController.noticePresenting.getter(v12);

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_0Tm(v12, v13);
    (*(v9 + 8))(v5, a2 & 1, v8, v9);
    _s9MusicCore6NoticeV7VariantOWOhTm_1(v5, type metadata accessor for Notice);
    return __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    _s9MusicCore6NoticeV7VariantOWOhTm_1(v5, type metadata accessor for Notice);
    return outlined destroy of TaskPriority?(v12, &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  }
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR) - 8);
  __chkstk_darwin();
  v7 = v21 - v6;
  if (!(a2 >> 14))
  {
    v9 = a1;
    v10 = 0xE000000000000000;
    if (v9 == 5)
    {
      v11 = 0;
LABEL_31:
      v23 = 0x6164644120959EE2;
      v24 = 0xAB00000000656C62;
      v20 = v10;
      String.append(_:)(*&v11);

      return v23;
    }

    v14 = 0xD000000000000016;
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v23 = 0xD00000000000001BLL;
    v24 = 0x80000001004CB610;
    if (v9 <= 1)
    {
      if (v9)
      {
        v15 = "Cloud Library Initial Import";
        v14 = 0xD00000000000001FLL;
        goto LABEL_30;
      }

      v18 = "Cloud Library Required";
    }

    else
    {
      if (v9 == 2)
      {
        v15 = "Unadded Tracks Present";
        v14 = 0xD00000000000001CLL;
        goto LABEL_30;
      }

      if (v9 == 3)
      {
        v15 = "hat requires an iCloud account.";
        v14 = 0xD000000000000015;
LABEL_30:
        v22._countAndFlagsBits = v14;
        v22._object = (v15 | 0x8000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v19._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v19);

        v11 = v23;
        v10 = v24;
        goto LABEL_31;
      }

      v18 = "Unadded Tracks Present";
    }

    v15 = (v18 - 32);
    goto LABEL_30;
  }

  if (a2 >> 14 == 1)
  {
    if ((a2 & 0x100) != 0)
    {
      v8 = 9;
      return v8 | 0x1000000000000014;
    }

    if (a2)
    {
      v8 = 10;
      return v8 | 0x1000000000000014;
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    v16 = v5;
    _StringGuts.grow(_:)(24);

    v23 = 0x1000000000000014;
    v24 = 0x80000001004CB590;
    v21[1] = a1;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.Percent.init(locale:)();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    BinaryFloatingPoint.formatted<A>(_:)();
    (*(v4 + 8))(v7, v16);
    String.append(_:)(v22);

    v17._countAndFlagsBits = 8233;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    return v23;
  }

  if (!(a1 | a2 ^ 0x8000))
  {
    return 1701736270;
  }

  if (a2 == 0x8000 && a1 == 1)
  {
    return 0x1000000000000013;
  }

  else
  {
    return 0x1000000000000014;
  }
}

unint64_t MusicLibrary.ActionableState.AddOverride.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001CLL;
  v3 = 0xD000000000000015;
  if (a1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1496) = v8;
  *(v9 + 1488) = v24;
  *(v9 + 1480) = a8;
  *(v9 + 1472) = a7;
  *(v9 + 1464) = a6;
  *(v9 + 1456) = a5;
  *(v9 + 1448) = a4;
  *(v9 + 1440) = a3;
  *(v9 + 1402) = a2;
  *(v9 + 1432) = a1;
  v10 = *a4;
  *(v9 + 1504) = *a4;
  v11 = type metadata accessor for Playlist.Variant();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMR);
  *(v9 + 1544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  *(v9 + 1576) = swift_task_alloc();
  v12 = type metadata accessor for Playlist();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  *(v9 + 1648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  *(v9 + 1720) = type metadata accessor for MetricsEvent.Click(0);
  *(v9 + 1728) = swift_task_alloc();
  *(v9 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v9 + 1808) = swift_task_alloc();
  v15 = type metadata accessor for String.LocalizationValue();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = type metadata accessor for MusicLibrary.DownloadStatus();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = type metadata accessor for MusicLibrary.AddStatus();
  *(v9 + 1920) = v18;
  *(v9 + 1928) = *(v18 - 8);
  *(v9 + 1936) = swift_task_alloc();
  *(v9 + 1944) = swift_task_alloc();
  v19 = *(v10 + class metadata base offset for MusicLibrary.ItemState);
  *(v9 + 1952) = v19;
  *(v9 + 1960) = *(v19 - 8);
  *(v9 + 1968) = swift_task_alloc();
  *(v9 + 1976) = swift_task_alloc();
  *(v9 + 1984) = swift_task_alloc();
  *(v9 + 1992) = swift_task_alloc();
  *(v9 + 2000) = swift_task_alloc();
  *(v9 + 2008) = type metadata accessor for MainActor();
  *(v9 + 2016) = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v21, v20);
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)()
{
  v555 = v0;
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1440);
  v520 = type metadata accessor for Logger();
  *(v0 + 2040) = __swift_project_value_buffer(v520, static Logger.libraryActionableState);
  v5 = *(v2 + 16);
  *(v0 + 2048) = v5;
  *(v0 + 2056) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v5)(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2000);
  v526 = v5;
  if (v8)
  {
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = swift_slowAlloc();
    v516 = v0;
    v14 = swift_slowAlloc();
    v554[0] = v14;
    *v13 = 136446210;
    (v5)(v10, v9, v12);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v9, v12);
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v17, v554);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "╭ Performing action for item: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v0 = v516;
  }

  else
  {
    v19 = *(v0 + 1960);
    v20 = *(v0 + 1952);

    (*(v19 + 8))(v9, v20);
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1402);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v554[0] = v26;
    *v25 = 136446210;
    v27 = MusicLibrary.ActionableState.description.getter(v23, v24);
    v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v28, v554);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "| Actionable state: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v554[0] = v36;
    *v35 = 136446210;
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v33 + 8))(v32, v34);
    v40 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v37, v39, v554);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "| Add status: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1896);
    v45 = *(v0 + 1888);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v554[0] = v47;
    *v46 = 136446210;
    dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v44 + 8))(v43, v45);
    v51 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v48, v50, v554);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "| Download status: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v554[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = MusicLibrary.name.getter();
    v57 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v56, v554);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = MusicLibrary.id.getter();
    v60 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v58, v59, v554);

    *(v54 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "| Library: %{public}s (%{public}s)", v54, 0x16u);
    swift_arrayDestroy();
  }

  v61 = *(v0 + 1402);
  if (v61 >> 14)
  {
    if (v61 >> 14 == 1)
    {
      if ((v61 & 0x100) == 0)
      {
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "|—● Cancelling download", v64, 2u);
        }

        v65 = swift_task_alloc();
        *(v0 + 2184) = v65;
        *v65 = v0;
        v65[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
        v66 = *(v0 + 1952);
        v67 = *(v0 + 1488);
        v68 = *(v0 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v68, v66, v67);
      }

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "|—● Download is paused: Checking for reasons…", v115, 2u);
      }

      v116 = *(v0 + 1904);
      v117 = *(v0 + 1896);
      v118 = *(v0 + 1888);

      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      v119 = (*(v117 + 88))(v116, v118);
      v120 = *(v0 + 1904);
      v121 = *(v0 + 1896);
      v122 = *(v0 + 1888);
      if (v119 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        v123 = *(v0 + 1640);
        v124 = *(v0 + 1616);
        v125 = *(v0 + 1608);
        (*(v121 + 96))(*(v0 + 1904), v122);
        (*(v124 + 32))(v123, v120, v125);
        MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter((v0 + 1120));
        v126 = *(v0 + 1176);
        v127 = *(v0 + 1640);
        v128 = *(v0 + 1616);
        v129 = *(v0 + 1608);
        if (v126)
        {
          v130 = *(v0 + 1632);
          v131 = *(v0 + 1184);
          v132 = *(v0 + 1136);
          *(v0 + 1048) = *(v0 + 1120);
          *(v0 + 1064) = v132;
          *(v0 + 1080) = *(v0 + 1152);
          *(v0 + 1096) = *(v0 + 1168);
          *(v0 + 1104) = v126;
          *(v0 + 1112) = v131;
          (*(v128 + 16))(v130, v127, v129);
          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.default.getter();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 1632);
          v137 = *(v0 + 1616);
          v138 = *(v0 + 1608);
          if (v135)
          {
            v533 = swift_slowAlloc();
            v540 = swift_slowAlloc();
            v554[0] = v540;
            *v533 = 136446210;
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v528 = v134;
            v139 = dispatch thunk of CustomStringConvertible.description.getter();
            v141 = v140;
            v521 = v133;
            v142 = *(v137 + 8);
            v142(v136, v138);
            v143 = v142;
            v144 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v139, v141, v554);

            *(v533 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v521, v528, "|—| Showing alert for reason: %{public}s", v533, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v540);
          }

          else
          {

            v450 = *(v137 + 8);
            v450(v136, v138);
            v143 = v450;
          }

          v451 = *(v0 + 1640);
          v452 = *(v0 + 1608);
          v453 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 1048), 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v453, *(v0 + 1080), 1, 0, 0);

          outlined destroy of TaskPriority?(v0 + 1120, &_s9MusicCore5AlertVSgMd, &_s9MusicCore5AlertVSgMR);
          v143(v451, v452);
        }

        else
        {
          (*(v128 + 16))(*(v0 + 1624), v127, v129);
          v403 = Logger.logObject.getter();
          v404 = static os_log_type_t.error.getter();
          v405 = os_log_type_enabled(v403, v404);
          v406 = *(v0 + 1640);
          v407 = *(v0 + 1624);
          v408 = *(v0 + 1616);
          v409 = *(v0 + 1608);
          if (v405)
          {
            v549 = *(v0 + 1640);
            v410 = swift_slowAlloc();
            v537 = swift_slowAlloc();
            v554[0] = v537;
            *v410 = 136446210;
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus.DownloadPauseReasons and conformance MusicLibrary.DownloadStatus.DownloadPauseReasons, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v411 = dispatch thunk of CustomStringConvertible.description.getter();
            v413 = v412;
            v414 = *(v408 + 8);
            v414(v407, v409);
            v415 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v411, v413, v554);

            *(v410 + 4) = v415;
            _os_log_impl(&_mh_execute_header, v403, v404, "|—| Unhandled alert for reason: %{public}s", v410, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v537);

            v414(v549, v409);
          }

          else
          {

            v462 = *(v408 + 8);
            v462(v407, v409);
            v462(v406, v409);
          }
        }
      }

      else
      {
        v241 = *(v121 + 8);
        v241(*(v0 + 1904), v122);

        v242 = Logger.logObject.getter();
        v243 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v242, v243))
        {
          v244 = *(v0 + 1912);
          v245 = *(v0 + 1888);
          v246 = swift_slowAlloc();
          v544 = swift_slowAlloc();
          v554[0] = v544;
          *v246 = 136446210;
          dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
          lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
          v247 = dispatch thunk of CustomStringConvertible.description.getter();
          v249 = v248;
          v241(v244, v245);
          v250 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v247, v249, v554);

          *(v246 + 4) = v250;
          _os_log_impl(&_mh_execute_header, v242, v243, "|—| No reasons found, download status does not match UI state %{public}s", v246, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v544);
        }
      }

      goto LABEL_145;
    }

    v96 = *(v0 + 1432);
    if (v96 | v61 ^ 0x8000)
    {
      if (*(v0 + 1402) == 0x8000 && v96 == 1)
      {
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "|—● Triggering download", v100, 2u);
        }

        v101 = *(v0 + 1992);
        v102 = *(v0 + 1952);
        v103 = *(v0 + 1648);
        v104 = *(v0 + 1504);
        v105 = *(v0 + 1496);
        v538 = *(v0 + 1488);
        v106 = *(v0 + 1480);
        v107 = *(v0 + 1456);
        v108 = *(v0 + 1440);

        (v526)(v101, v108, v102);
        outlined init with copy of PresentationSource(v107, v0 + 688);
        outlined init with copy of Actions.MetricsReportingContext(v106, v103);
        v109 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v109 - 8) + 56))(v103, 0, 1, v109);
        v110 = *(v104 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v101, v105, v0 + 688, v103, v102, v538, v110, &v551);
        *(v0 + 2144) = *(&v551 + 1);
        *(v0 + 2152) = *(&v552 + 1);
        *(v0 + 2160) = *(&v553 + 1);
        v111 = v552;
        *(v0 + 384) = v551;
        *(v0 + 400) = v111;
        *(v0 + 416) = v553;
        *(v0 + 432) = 1;
        *(v0 + 440) = closure #1 in static Actions.AddToLibrary.action(context:);
        *(v0 + 448) = 0;
        *(v0 + 456) = 0x4014000000000000;
        *(v0 + 464) = &async function pointer to closure #2 in static Actions.Download.action(context:);
        v539 = specialized Action.execute(checkSupportedStatus:);
        *(v0 + 472) = 0;
        *(v0 + 480) = &async function pointer to closure #3 in static Actions.Download.action(context:);
        *(v0 + 488) = 0;

        v112 = swift_task_alloc();
        *(v0 + 2168) = v112;
        *v112 = v0;
        v112[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
        goto LABEL_36;
      }

      v217 = Logger.logObject.getter();
      v218 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v217, v218))
      {
        v220 = swift_slowAlloc();
        *v220 = 0;
        _os_log_impl(&_mh_execute_header, v217, v218, "|—● Is Downloaded: Prompting for delete/remove alert", v220, 2u);
      }

      v221 = *(v0 + 1984);
      v222 = *(v0 + 1952);
      v223 = *(v0 + 1592);
      v224 = *(v0 + 1440);

      (v526)(v221, v224, v222);
      v225 = swift_dynamicCast();
      v226 = *(v223 + 56);
      if ((v225 & 1) == 0)
      {
        v361 = *(v0 + 1576);
        v226(v361, 1, 1, *(v0 + 1584));
        outlined destroy of TaskPriority?(v361, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
        v240 = v526;
LABEL_134:
        v439 = *(v0 + 1992);
        v440 = *(v0 + 1952);
        v441 = *(v0 + 1648);
        v442 = *(v0 + 1504);
        v443 = *(v0 + 1488);
        v444 = *(v0 + 1480);
        v445 = *(v0 + 1456);
        (v240)(v439, *(v0 + 1440), v440);
        outlined init with copy of PresentationSource(v445, v0 + 496);
        outlined init with copy of Actions.MetricsReportingContext(v444, v441);
        v446 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v446 - 8) + 56))(v441, 0, 1, v446);
        type metadata accessor for MusicLibrary();
        v447 = static MusicLibrary.shared.getter();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v439, v447, v0 + 496, v441, v440, v443, *(v442 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 16));
        v448 = swift_allocObject();
        *(v448 + 16) = &async function pointer to specialized thunk for @escaping @callee_guaranteed @Sendable @async (@in_guaranteed Action<Actions.DeleteOrRemoveDownload.Context, Actions.DeleteOrRemoveDownload.Choice>, @in_guaranteed CheckedContinuation<Actions.DeleteOrRemoveDownload.Choice, Error>) -> ();
        *(v448 + 24) = 0;
        *(v0 + 208) = 51;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0x403E000000000000;
        *(v0 + 216) = closure #1 in static Actions.DeleteOrRemoveDownload.action(context:);
        *(v0 + 240) = &async function pointer to partial apply for specialized closure #1 in Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:);
        *(v0 + 248) = v448;
        *(v0 + 256) = &async function pointer to closure #3 in static Actions.DeleteOrRemoveDownload.action(context:);
        *(v0 + 264) = 0;
        v449 = swift_task_alloc();
        *(v0 + 2216) = v449;
        *v449 = v0;
        v449[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);

        return specialized Action.execute(checkSupportedStatus:)(0);
      }

      v227 = *(v0 + 1600);
      v228 = *(v0 + 1592);
      v229 = *(v0 + 1584);
      v230 = *(v0 + 1576);
      v524 = *(v0 + 1568);
      v231 = *(v0 + 1560);
      v232 = *(v0 + 1544);
      v543 = *(v0 + 1536);
      v233 = *(v0 + 1520);
      v234 = *(v0 + 1512);
      v226(v230, 0, 1, v229);
      (*(v228 + 32))(v227, v230, v229);
      v235 = v232;
      Playlist.variant.getter();
      (*(v233 + 104))(v231, enum case for Playlist.Variant.favoriteSongs(_:), v234);
      (*(v233 + 56))(v231, 0, 1, v234);
      v236 = *(v543 + 12);
      outlined init with copy of TaskPriority?(v524, v232, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
      outlined init with copy of TaskPriority?(v231, v232 + v236, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
      v237 = *(v233 + 48);
      if (v237(v235, 1, v234) == 1)
      {
        v238 = *(v0 + 1568);
        v239 = *(v0 + 1512);
        outlined destroy of TaskPriority?(*(v0 + 1560), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
        outlined destroy of TaskPriority?(v238, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
        if (v237(v235 + v236, 1, v239) == 1)
        {
          outlined destroy of TaskPriority?(*(v0 + 1544), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
          v240 = v526;
LABEL_152:
          v468 = *(v0 + 1992);
          v469 = *(v0 + 1952);
          v470 = *(v0 + 1648);
          v471 = *(v0 + 1504);
          v472 = *(v0 + 1488);
          v473 = *(v0 + 1480);
          v474 = *(v0 + 1456);
          (v240)(v468, *(v0 + 1440), v469);
          outlined init with copy of PresentationSource(v474, v0 + 592);
          outlined init with copy of Actions.MetricsReportingContext(v473, v470);
          v475 = type metadata accessor for Actions.MetricsReportingContext(0);
          (*(*(v475 - 8) + 56))(v470, 0, 1, v475);
          type metadata accessor for MusicLibrary();
          v476 = static MusicLibrary.shared.getter();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v468, v476, 1, v0 + 592, v470, v469, v472, *(v471 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 272));
          *(v0 + 320) = 48;
          *(v0 + 328) = closure #1 in static Actions.AddToLibrary.action(context:);
          *(v0 + 336) = 0;
          *(v0 + 344) = 0x4014000000000000;
          *(v0 + 352) = &async function pointer to closure #2 in static Actions.RemoveDownload.action(context:);
          v539 = specialized Action.execute(checkSupportedStatus:);
          *(v0 + 360) = 0;
          *(v0 + 368) = &async function pointer to closure #3 in static Actions.RemoveDownload.action(context:);
          *(v0 + 376) = 0;
          v477 = swift_task_alloc();
          *(v0 + 2200) = v477;
          *v477 = v0;
          v477[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
LABEL_36:

          return v539();
        }
      }

      else
      {
        v432 = *(v0 + 1512);
        outlined init with copy of TaskPriority?(*(v0 + 1544), *(v0 + 1552), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
        v433 = v237(v235 + v236, 1, v432);
        v434 = *(v0 + 1568);
        v435 = *(v0 + 1560);
        v436 = *(v0 + 1552);
        if (v433 != 1)
        {
          v550 = *(v0 + 1544);
          v463 = *(v0 + 1528);
          v464 = *(v0 + 1520);
          v465 = *(v0 + 1512);
          (*(v464 + 32))(v463, v235 + v236, v465);
          lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
          v466 = dispatch thunk of static Equatable.== infix(_:_:)();
          v467 = *(v464 + 8);
          v467(v463, v465);
          outlined destroy of TaskPriority?(v435, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
          outlined destroy of TaskPriority?(v434, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
          v467(v436, v465);
          outlined destroy of TaskPriority?(v550, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
          v240 = v526;
          if (v466)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v437 = *(v0 + 1520);
        v438 = *(v0 + 1512);
        outlined destroy of TaskPriority?(*(v0 + 1560), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
        outlined destroy of TaskPriority?(v434, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
        (*(v437 + 8))(v436, v438);
      }

      outlined destroy of TaskPriority?(*(v0 + 1544), &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMR);
      v240 = v526;
LABEL_133:
      (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
      goto LABEL_134;
    }

    v180 = Logger.logObject.getter();
    v181 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&_mh_execute_header, v180, v181, "|—● Nothing to Perform: Actionable State is unknown", v182, 2u);
    }

    lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v183 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v69 = *(v0 + 1936);
  v70 = *(v0 + 1928);
  v71 = *(v0 + 1920);
  dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
  if ((*(v70 + 88))(v69, v71) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1856);
    v75 = *(v0 + 1848);
    (*(*(v0 + 1928) + 96))(v72, *(v0 + 1920));
    (*(v74 + 32))(v73, v72, v75);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "|—● Unaddable", v78, 2u);
    }

    v79 = *(v0 + 1880);
    v80 = *(v0 + 1872);
    v81 = *(v0 + 1856);
    v82 = *(v0 + 1848);

    v83 = *(v81 + 16);
    v83(v80, v79, v82);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1872);
    v88 = *(v0 + 1856);
    v89 = *(v0 + 1848);
    if (v86)
    {
      v532 = v83;
      v90 = swift_slowAlloc();
      v527 = swift_slowAlloc();
      v554[0] = v527;
      *v90 = 136446210;
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v517 = v85;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v94 = *(v88 + 8);
      (v94)(v87, v89);
      v95 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v91, v93, v554);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v84, v517, "|—| Reason: %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v527);

      v83 = v532;
    }

    else
    {

      v94 = *(v88 + 8);
      (v94)(v87, v89);
    }

    v545 = v94;
    *(v0 + 2064) = v94;
    v251 = *(v0 + 1864);
    v252 = *(v0 + 1856);
    v253 = *(v0 + 1848);
    v83(v251, *(v0 + 1880), v253);
    v254 = (*(v252 + 88))(v251, v253);
    if (v254 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v255 = Logger.logObject.getter();
      v256 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        *v257 = 0;
        _os_log_impl(&_mh_execute_header, v255, v256, "|—| Presenting Explicit Restriction alert", v257, 2u);
      }

      v258 = *(v0 + 1456);

      specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 1192);
      v259 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 1192), 0, 1);
      v260 = v259;
      v261 = *(v0 + 1224);
      v262 = *(v258 + 80);
      if (v262)
      {
        v263 = *(v258 + 88);
        v264 = one-time initialization token for logger;

        if (v264 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v520, static PresentationSource.logger);
        v265 = Logger.logObject.getter();
        v266 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v265, v266))
        {
          v267 = swift_slowAlloc();
          *v267 = 0;
          _os_log_impl(&_mh_execute_header, v265, v266, "Deferring presentation…", v267, 2u);
        }

        v534 = *(v0 + 1880);
        v268 = *(v0 + 1848);
        v269 = *(v0 + 1456);

        v270 = objc_allocWithZone(MSVBlockGuard);
        *(v0 + 1344) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
        *(v0 + 1352) = 0;
        *(v0 + 1312) = _NSConcreteStackBlock;
        *(v0 + 1320) = 1107296256;
        *(v0 + 1328) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
        *(v0 + 1336) = &block_descriptor_16;
        v271 = _Block_copy((v0 + 1312));
        v272 = [v270 initWithTimeout:v271 interruptionHandler:10.0];
        _Block_release(v271);

        outlined init with copy of PresentationSource(v269, v0 + 880);
        v273 = swift_allocObject();
        *(v273 + 16) = v272;
        outlined init with take of PresentationSource(v0 + 880, v273 + 24);
        *(v273 + 120) = v260;
        *(v273 + 128) = v261;
        *(v273 + 129) = 1;
        *(v273 + 136) = 0;
        *(v273 + 144) = 0;
        v274 = v272;
        v275 = v260;
        v262(v269, v275, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v273);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v262, v263);

        outlined destroy of Alert(v0 + 1192);
        v276 = v534;
        v277 = v268;
        goto LABEL_144;
      }

      v416 = *(v0 + 1880);
      v417 = *(v0 + 1848);
      PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v259, *(v0 + 1224), 1, 0, 0);

      outlined destroy of Alert(v0 + 1192);
      v276 = v416;
LABEL_143:
      v277 = v417;
LABEL_144:
      (v545)(v276, v277);
LABEL_145:
      v458 = Logger.logObject.getter();
      v459 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v458, v459))
      {
        v460 = swift_slowAlloc();
        *v460 = 0;
        _os_log_impl(&_mh_execute_header, v458, v459, "╰ ✅ Succeeded", v460, 2u);
      }

      v461 = *(v0 + 8);

      return v461();
    }

    if (v254 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v254 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v362 = Logger.logObject.getter();
        v363 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v362, v363))
        {
          v364 = swift_slowAlloc();
          *v364 = 0;
          _os_log_impl(&_mh_execute_header, v362, v363, "|—| Presenting library import in progress alert", v364, 2u);
        }

        v365 = *(v0 + 1840);
        v366 = *(v0 + 1832);
        v367 = *(v0 + 1824);
        v368 = *(v0 + 1816);

        String.LocalizationValue.init(stringLiteral:)();
        v511 = *(v367 + 16);
        v511(v366, v365, v368);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v369 = *(v0 + 1840);
        v370 = *(v0 + 1832);
        v371 = *(v0 + 1824);
        v372 = *(v0 + 1816);
        v507 = *(v0 + 1800);
        v515 = *(v0 + 1792);
        v519 = *(v0 + 1784);
        v547 = *(v0 + 1456);
        v373 = static NSBundle.module;
        static Locale.current.getter();
        v374 = v373;
        v375 = String.init(localized:table:bundle:locale:comment:)();
        v531 = v376;
        v535 = v375;
        v377 = *(v371 + 8);
        v377(v369, v372);
        String.LocalizationValue.init(stringLiteral:)();
        v511(v370, v369, v372);
        static Locale.current.getter();
        v378 = String.init(localized:table:bundle:locale:comment:)();
        v498 = v379;
        v503 = v378;
        v377(v369, v372);
        String.LocalizationValue.init(stringLiteral:)();
        v511(v370, v369, v372);
        static Locale.current.getter();
        v380 = String.init(localized:table:bundle:locale:comment:)();
        v382 = v381;
        v377(v369, v372);
        UUID.init()();
        v383 = UUID.uuidString.getter();
        v385 = v384;
        (*(v515 + 8))(v507, v519);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
        v386 = swift_allocObject();
        *(v386 + 16) = xmmword_1004F2400;
        *(v386 + 32) = v383;
        *(v386 + 40) = v385;
        *(v386 + 48) = v380;
        *(v386 + 56) = v382;
        *(v386 + 64) = 2;
        *(v386 + 72) = 0;
        *(v386 + 80) = 0;
        LOBYTE(v554[0]) = 1;
        *(v0 + 976) = v535;
        *(v0 + 984) = v531;
        *(v0 + 992) = v503;
        *(v0 + 1000) = v498;
        *(v0 + 1008) = 0;
        *(v0 + 1016) = 0;
        *(v0 + 1024) = 1;
        *(v0 + 1032) = v386;
        *(v0 + 1040) = 0;

        v387 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 976), 0, 1);
        v388 = v387;
        v389 = *(v547 + 10);
        if (v389)
        {
          v390 = *(v547 + 11);
          v391 = one-time initialization token for logger;

          if (v391 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v520, static PresentationSource.logger);
          v392 = Logger.logObject.getter();
          v393 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v392, v393))
          {
            v394 = swift_slowAlloc();
            *v394 = 0;
            _os_log_impl(&_mh_execute_header, v392, v393, "Deferring presentation…", v394, 2u);
          }

          v395 = *(v0 + 1856);
          v536 = *(v0 + 1848);
          v548 = *(v0 + 1880);
          v396 = *(v0 + 1456);

          v397 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 1296) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
          *(v0 + 1304) = 0;
          *(v0 + 1264) = _NSConcreteStackBlock;
          *(v0 + 1272) = 1107296256;
          *(v0 + 1280) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
          *(v0 + 1288) = &block_descriptor_23;
          v398 = _Block_copy((v0 + 1264));
          v399 = [v397 initWithTimeout:v398 interruptionHandler:10.0];
          _Block_release(v398);

          outlined init with copy of PresentationSource(v396, v0 + 784);
          v400 = swift_allocObject();
          *(v400 + 16) = v399;
          outlined init with take of PresentationSource(v0 + 784, v400 + 24);
          *(v400 + 120) = v388;
          *(v400 + 128) = 257;
          *(v400 + 136) = 0;
          *(v400 + 144) = 0;
          v401 = v399;
          v402 = v388;
          v389(v396, v402, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v400);
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v389, v390);

          outlined destroy of Alert(v0 + 976);

          (*(v395 + 8))(v548, v536);
        }

        else
        {
          v484 = *(v0 + 1880);
          v485 = *(v0 + 1856);
          v486 = *(v0 + 1848);
          PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v387, 1, 1, 0, 0);

          outlined destroy of Alert(v0 + 976);

          (*(v485 + 8))(v484, v486);
        }

        goto LABEL_145;
      }

      if (v254 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v478 = Logger.logObject.getter();
        v479 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v478, v479))
        {
          v480 = swift_slowAlloc();
          *v480 = 0;
          _os_log_impl(&_mh_execute_header, v478, v479, "|—| Unaddable reason is not supported by the UI", v480, 2u);
        }

        v481 = *(v0 + 1880);
        v482 = *(v0 + 1864);
        v483 = *(v0 + 1848);

        lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
        v183 = swift_allocError();
        swift_willThrow();
        (v545)(v481, v483);
        (v545)(v482, v483);
LABEL_54:
        *(v0 + 2232) = v183;
        *(v0 + 1408) = v183;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v184 = swift_dynamicCast();
        v185 = *(v0 + 2048);
        v186 = *(v0 + 1952);
        v187 = *(v0 + 1440);
        if (v184)
        {
          v188 = *(v0 + 1976);

          v185(v188, v187, v186);

          v189 = Logger.logObject.getter();
          v190 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v189, v190))
          {
            v513 = *(v0 + 2048);
            v505 = *(v0 + 1992);
            v509 = *(v0 + 1976);
            v523 = *(v0 + 1960);
            v191 = *(v0 + 1944);
            v192 = *(v0 + 1928);
            v193 = *(v0 + 1920);
            v194 = *(v0 + 1912);
            v195 = *(v0 + 1896);
            v496 = *(v0 + 1888);
            v501 = *(v0 + 1952);
            v542 = v190;
            v196 = *(v0 + 1432);
            v197 = *(v0 + 1402);
            v529 = v189;
            v198 = swift_slowAlloc();
            v554[0] = swift_slowAlloc();
            *v198 = 136447234;
            v199 = MusicLibrary.ActionableState.description.getter(v196, v197);
            v201 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v199, v200, v554);

            *(v198 + 4) = v201;
            *(v198 + 12) = 2082;
            dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v202 = dispatch thunk of CustomStringConvertible.description.getter();
            v204 = v203;
            (*(v192 + 8))(v191, v193);
            v205 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v202, v204, v554);

            *(v198 + 14) = v205;
            *(v198 + 22) = 2082;
            dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v206 = dispatch thunk of CustomStringConvertible.description.getter();
            v208 = v207;
            (*(v195 + 8))(v194, v496);
            v209 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v206, v208, v554);

            *(v198 + 24) = v209;
            *(v198 + 32) = 2082;
            v513(v505, v509, v501);
            v210 = String.init<A>(describing:)();
            v212 = v211;
            (*(v523 + 8))(v509, v501);
            v213 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v210, v212, v554);

            *(v198 + 34) = v213;
            *(v198 + 42) = 2082;
            v214 = String.init<A>(describing:)();
            v216 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v214, v215, v554);

            *(v198 + 44) = v216;
            _os_log_impl(&_mh_execute_header, v529, v542, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v198, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v418 = *(v0 + 1976);
            v419 = *(v0 + 1960);
            v420 = *(v0 + 1952);

            (*(v419 + 8))(v418, v420);
          }

          *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
          v421 = swift_allocError();
          *(v0 + 2248) = v421;
          v422 = swift_task_alloc();
          *(v0 + 2256) = v422;
          *v422 = v0;
          v422[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
          v423 = *(v0 + 1456);
          v424 = *(v0 + 1448);
          v425 = *(v0 + 1432);
          v426 = *(v0 + 1402);
          v427 = v421;
        }

        else
        {
          v334 = *(v0 + 1968);

          v185(v334, v187, v186);

          swift_errorRetain();
          v335 = Logger.logObject.getter();
          v336 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v335, v336))
          {
            v514 = *(v0 + 2048);
            v506 = *(v0 + 1992);
            v510 = *(v0 + 1968);
            v525 = *(v0 + 1960);
            v337 = *(v0 + 1944);
            v338 = *(v0 + 1928);
            v339 = *(v0 + 1920);
            v497 = *(v0 + 1896);
            v502 = *(v0 + 1952);
            v492 = *(v0 + 1912);
            v494 = *(v0 + 1888);
            v546 = v336;
            v340 = *(v0 + 1432);
            v341 = *(v0 + 1402);
            v530 = v335;
            v342 = swift_slowAlloc();
            v554[0] = swift_slowAlloc();
            *v342 = 136447234;
            v343 = MusicLibrary.ActionableState.description.getter(v340, v341);
            v345 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v343, v344, v554);

            *(v342 + 4) = v345;
            *(v342 + 12) = 2082;
            dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v346 = dispatch thunk of CustomStringConvertible.description.getter();
            v348 = v347;
            (*(v338 + 8))(v337, v339);
            v349 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v346, v348, v554);

            *(v342 + 14) = v349;
            *(v342 + 22) = 2082;
            dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
            lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v350 = dispatch thunk of CustomStringConvertible.description.getter();
            v352 = v351;
            (*(v497 + 8))(v492, v494);
            v353 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v350, v352, v554);

            *(v342 + 24) = v353;
            *(v342 + 32) = 2082;
            v514(v506, v510, v502);
            v354 = String.init<A>(describing:)();
            v356 = v355;
            (*(v525 + 8))(v510, v502);
            v357 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v354, v356, v554);

            *(v342 + 34) = v357;
            *(v342 + 42) = 2082;
            *(v0 + 1416) = v183;
            swift_errorRetain();
            v358 = String.init<A>(describing:)();
            v360 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v358, v359, v554);

            *(v342 + 44) = v360;
            _os_log_impl(&_mh_execute_header, v530, v546, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v342, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v428 = *(v0 + 1968);
            v429 = *(v0 + 1960);
            v430 = *(v0 + 1952);

            (*(v429 + 8))(v428, v430);
          }

          v431 = swift_task_alloc();
          *(v0 + 2264) = v431;
          *v431 = v0;
          v431[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
          v423 = *(v0 + 1456);
          v424 = *(v0 + 1448);
          v425 = *(v0 + 1432);
          v426 = *(v0 + 1402);
          v427 = v183;
        }

        return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v427, v425, v426, v424, v423);
      }

      v454 = Logger.logObject.getter();
      v455 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v454, v455))
      {
        v456 = swift_slowAlloc();
        *v456 = 0;
        _os_log_impl(&_mh_execute_header, v454, v455, "|—| Presenting upsell", v456, 2u);
      }

      v457 = *(v0 + 1880);
      v417 = *(v0 + 1848);

      *(v0 + 1392) = 0;
      *(v0 + 1360) = 0u;
      *(v0 + 1376) = 0u;
      *(v0 + 1400) = -1;
      specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 1360);
      outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 1360);
      v276 = v457;
      goto LABEL_143;
    }

    v285 = Logger.logObject.getter();
    v286 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      *v287 = 0;
      _os_log_impl(&_mh_execute_header, v285, v286, "|—| Presenting Cloud Library Requirement alert", v287, 2u);
    }

    *(v0 + 2072) = static MainActor.shared.getter();
    v289 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 2080) = v289;
    *(v0 + 2088) = v288;

    return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v289, v288);
  }

  else
  {
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v145, v146, "|—● Adding to library", v147, 2u);
    }

    v148 = *(v0 + 1464);

    if (v148)
    {
      v149 = *(v0 + 1472);
      ObjectType = swift_getObjectType();
      (*(v149 + 8))(0, ObjectType, v149);
    }

    v151 = *(v0 + 1952);
    v152 = *(v0 + 1776);
    v153 = *(v0 + 1760);
    v154 = *(v0 + 1728);
    v155 = *(v0 + 1720);
    v495 = *(v0 + 1752);
    v499 = *(v0 + 1712);
    v504 = *(v0 + 1704);
    v156 = *(v0 + 1488);
    v157 = *(v0 + 1480);
    swift_storeEnumTagMultiPayload();
    specialized NoticePresenting.present(_:internalOnly:)(v152, 0);
    _s9MusicCore6NoticeV7VariantOWOhTm_1(v152, type metadata accessor for Notice.Variant);
    v158 = *(v156 + 8);
    v159 = MusicItem.metricsTargetIdentifier.getter(v151, v158);
    v490 = v160;
    v491 = v159;
    v161 = type metadata accessor for URL();
    v488 = *(*(v161 - 8) + 56);
    v489 = v161;
    v488(v153, 1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_1004F2EF0;
    *(v162 + 32) = MusicItem.metricsContentType.getter(v151, v158);
    *(v162 + 40) = v163;
    *(v162 + 48) = 0;
    *(v162 + 56) = 0;
    *(v162 + 64) = 0;
    *(v162 + 72) = 1;
    v512 = specialized MetricsEvent.Click.ActionDetails.init(_:)(v162);
    v522 = v164;
    v541 = v165;
    v518 = v166;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    outlined init with copy of TaskPriority?(v153, v495, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v167 = type metadata accessor for Actions.MetricsReportingContext(0);
    v168 = *(v157 + v167[7]);
    v170 = *v157;
    v169 = v157[1];
    outlined init with copy of TaskPriority?(v157 + v167[5], v499, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v508 = v167;
    v493 = *(v157 + v167[8]);
    *(v154 + v155[19]) = 0;
    v171 = (v154 + v155[20]);
    *v171 = 0;
    v171[1] = 0;
    *v154 = v491;
    *(v154 + 8) = v490;
    *(v154 + 16) = 773;
    outlined init with take of URL?(v495, v154 + v155[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *(v154 + v155[8]) = v168;
    v172 = (v154 + v155[9]);
    *v172 = v170;
    v172[1] = v169;
    v173 = v154 + v155[10];
    *v173 = v512;
    *(v173 + 8) = v522;
    *(v173 + 16) = v541;
    *(v173 + 24) = v518;
    outlined init with copy of TaskPriority?(v499, v504, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v174 = type metadata accessor for MetricsEvent.Page(0);
    v500 = *(*(v174 - 1) + 48);
    v175 = v500(v504, 1, v174);
    v176 = *(v0 + 1704);
    if (v175 == 1)
    {

      outlined copy of MetricsEvent.Click.ActionContext?(v170, v169);

      v177 = v512;
      outlined copy of MetricsEvent.Click.ActionDetails(v512, v522, v541, v518, SBYTE1(v518));
      outlined destroy of TaskPriority?(v176, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
      v178 = 0;
      v179 = 0;
    }

    else
    {
      v178 = *v176;
      v179 = v176[1];

      outlined copy of MetricsEvent.Click.ActionContext?(v170, v169);

      v177 = v512;
      outlined copy of MetricsEvent.Click.ActionDetails(v512, v522, v541, v518, SBYTE1(v518));

      _s9MusicCore6NoticeV7VariantOWOhTm_1(v176, type metadata accessor for MetricsEvent.Page);
    }

    v278 = *(v0 + 1712);
    v279 = *(v0 + 1696);
    v280 = (*(v0 + 1728) + *(*(v0 + 1720) + 48));
    *v280 = v178;
    v280[1] = v179;
    outlined init with copy of TaskPriority?(v278, v279, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v281 = v500(v279, 1, v174);
    v282 = *(v0 + 1696);
    if (v281 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1696), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
      v283 = 0;
      v284 = 0;
    }

    else
    {
      v283 = *(v282 + 16);
      v284 = *(v282 + 24);

      _s9MusicCore6NoticeV7VariantOWOhTm_1(v282, type metadata accessor for MetricsEvent.Page);
    }

    v290 = *(v0 + 1712);
    v291 = *(v0 + 1688);
    v292 = (*(v0 + 1728) + *(*(v0 + 1720) + 52));
    *v292 = v283;
    v292[1] = v284;
    outlined init with copy of TaskPriority?(v290, v291, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v293 = v500(v291, 1, v174);
    v294 = *(v0 + 1744);
    v295 = *(v0 + 1688);
    if (v293 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1688), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
      (v488)(v294, 1, 1, v489);
    }

    else
    {
      outlined init with copy of TaskPriority?(v295 + v174[6], *(v0 + 1744), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      _s9MusicCore6NoticeV7VariantOWOhTm_1(v295, type metadata accessor for MetricsEvent.Page);
    }

    v296 = *(v0 + 1712);
    v297 = *(v0 + 1680);
    outlined init with take of URL?(*(v0 + 1744), *(v0 + 1728) + *(*(v0 + 1720) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of TaskPriority?(v296, v297, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v298 = v500(v297, 1, v174);
    v299 = *(v0 + 1680);
    if (v298 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1680), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
      v300 = 0;
    }

    else
    {
      v300 = *(v299 + v174[7]);

      _s9MusicCore6NoticeV7VariantOWOhTm_1(v299, type metadata accessor for MetricsEvent.Page);
    }

    v301 = *(v0 + 1712);
    v302 = *(v0 + 1672);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 60)) = v300;
    outlined init with copy of TaskPriority?(v301, v302, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v303 = v500(v302, 1, v174);
    v304 = *(v0 + 1672);
    if (v303 == 1)
    {
      outlined destroy of TaskPriority?(v304, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
      v305 = 1;
    }

    else
    {
      v305 = *(v304 + v174[9]);
      _s9MusicCore6NoticeV7VariantOWOhTm_1(v304, type metadata accessor for MetricsEvent.Page);
    }

    v306 = *(v0 + 1712);
    v307 = *(v0 + 1664);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 64)) = v305;
    outlined init with copy of TaskPriority?(v306, v307, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v308 = v500(v307, 1, v174);
    v309 = *(v0 + 1664);
    if (v308 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1664), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
      v310 = 0;
      v311 = 0;
    }

    else
    {
      v312 = (v309 + v174[8]);
      v310 = *v312;
      v311 = v312[1];

      _s9MusicCore6NoticeV7VariantOWOhTm_1(v309, type metadata accessor for MetricsEvent.Page);
    }

    v313 = *(v0 + 1712);
    v314 = *(v0 + 1656);
    v315 = (*(v0 + 1728) + *(*(v0 + 1720) + 72));
    *v315 = v310;
    v315[1] = v311;
    outlined init with take of URL?(v313, v314, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v316 = v500(v314, 1, v174);
    v317 = *(v0 + 1656);
    if (v316 == 1)
    {
      outlined destroy of TaskPriority?(v317, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
      v318 = 2;
    }

    else
    {
      v318 = *(v317 + v174[11]);
      _s9MusicCore6NoticeV7VariantOWOhTm_1(v317, type metadata accessor for MetricsEvent.Page);
    }

    v319 = *(v0 + 1736);
    v320 = *(v0 + 1728);
    v321 = *(v0 + 1720);
    *(v320 + *(v321 + 68)) = v318;
    *(v320 + *(v321 + 44)) = v493;
    outlined init with take of MetricsEvent.Click(v320, v319);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v322 = *(v0 + 1952);
    v323 = *(v0 + 1760);
    v324 = *(v0 + 1736);
    v325 = *(v0 + 1480);
    v326 = *(v0 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v324, *(v325 + v508[6]), *(v325 + v508[6] + 8), *(v325 + v508[9]), *(v325 + v508[9] + 8), *(v325 + v508[9] + 16));
    outlined consume of MetricsEvent.Click.ActionDetails(v177, v522, v541, v518, SBYTE1(v518));
    _s9MusicCore6NoticeV7VariantOWOhTm_1(v324, type metadata accessor for MetricsEvent.Click);
    outlined destroy of TaskPriority?(v323, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    getContiguousArrayStorageType<A>(for:)(v322, v322);
    swift_allocObject();
    v327 = static Array._adoptStorage(_:count:)();
    *(v0 + 2120) = v327;
    (v526)(v328, v326, v322);
    v329 = type metadata accessor for Array();
    *(v0 + 1424) = v327;
    v330 = swift_task_alloc();
    *(v0 + 2128) = v330;
    WitnessTable = swift_getWitnessTable();
    *v330 = v0;
    v330[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v332 = *(v0 + 1952);
    v333 = *(v0 + 1488);

    return MusicLibrary.add<A, B>(_:)(v0 + 1424, v329, v332, WitnessTable, v333);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v3, v2);
}

{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v2, v1);
}

{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  v2[272] = v0;

  outlined destroy of TaskPriority?((v2 + 48), &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *v1;
  v2[276] = v0;

  outlined destroy of TaskPriority?((v2 + 34), &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

{
  v2 = *v1;
  v2[278] = v0;

  outlined destroy of TaskPriority?((v2 + 2), &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMd, &_s9MusicCore6ActionVyAA7ActionsO22DeleteOrRemoveDownloadO7ContextVAG6ChoiceOGMR);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {
    v5 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v3, v2);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_allocError();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v3, v2);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = String.init<A>(describing:)();
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
      lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = String.init<A>(describing:)();
      v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v71, v69, v70, v68, v67);
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1)
{
  v2 = v1[182];
  v3 = static MainActor.shared.getter();
  v1[262] = v3;
  v4 = swift_task_alloc();
  v1[263] = v4;
  *(v4 + 16) = 1;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[264] = v5;
  *v5 = v1;
  v5[1] = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 1401, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v4, &type metadata for Bool);
}

{
  v3 = *v2;
  *(*v2 + 2136) = v1;

  if (v1)
  {
    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  else
  {

    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:);
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.libraryActionableState);
}

uint64_t presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = type metadata accessor for UUID();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 376) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:), v10, v9);
}

uint64_t presentTTRIfNeeded #1 <A>(for:) in MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  _StringGuts.grow(_:)(91);
  v5._countAndFlagsBits = 0xD000000000000032;
  v5._object = 0x80000001004CB7E0;
  String.append(_:)(v5);
  *(v0 + 232) = v3;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._object = 0x80000001004CB820;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v8._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x53206D6574490A0ALL;
  v9._object = 0xEE00203A65746174;
  String.append(_:)(v9);
  *(v0 + 240) = v1;
  type metadata accessor for MusicLibrary.ItemState();

  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 10;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_n(_swiftEmptyArrayStorage);
  if (one-time initialization token for isInternalInstall != -1)
  {
    v63 = v12;
    swift_once();
    v12 = v63;
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0xD00000000000001DLL, 0x80000001004CB7C0, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v12, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v13, 1u);

    outlined init with copy of TaskPriority?(v13, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v15 + 48))(v14, 1, v16) == 1)
    {
      v17 = *(v0 + 360);
      outlined destroy of TaskPriority?(*(v0 + 368), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of TaskPriority?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v20 = *(*(v0 + 328) + 32);
      v20(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v21 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      v25 = [v21 canOpenURL:v23];

      v26 = *(v0 + 368);
      v27 = *(v0 + 352);
      if (v25)
      {
        v71 = *(v0 + 368);
        v28 = *(v0 + 344);
        v74 = (v0 + 112);
        v30 = *(v0 + 320);
        v29 = *(v0 + 328);
        v31 = *(v0 + 304);
        v32 = *(v0 + 312);
        v70 = *(v0 + 296);
        (*(v29 + 16))(v28, v27, v30);
        v68 = v20;
        v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
        v73 = swift_allocObject();
        v68(v73 + v33, v28, v30);
        UUID.init()();
        v67 = UUID.uuidString.getter();
        v35 = v34;
        v69 = *(v31 + 8);
        v69(v32, v70);
        (*(v29 + 8))(v27, v30);
        outlined destroy of TaskPriority?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if (one-time initialization token for libraryActionableState != -1)
        {
          swift_once();
        }

        v72 = v35;
        v64 = type metadata accessor for Logger();
        __swift_project_value_buffer(v64, static Logger.libraryActionableState);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "|—● Presenting Tap-To-Radar alert", v38, 2u);
        }

        v39 = *(v0 + 312);
        v40 = *(v0 + 296);
        v66 = *(v0 + 280);
        v41 = *(v0 + 256);

        *(v0 + 248) = v41;
        swift_errorRetain();
        v75 = String.init<A>(describing:)();
        v65 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1004F2EF0;
        *(v43 + 32) = v67;
        *(v43 + 40) = v72;
        strcpy((v43 + 48), "File a Radar");
        *(v43 + 61) = 0;
        *(v43 + 62) = -5120;
        *(v43 + 64) = 2;
        *(v43 + 72) = &async function pointer to partial apply for closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:);
        *(v43 + 80) = v73;

        UUID.init()();
        v44 = UUID.uuidString.getter();
        v46 = v45;
        v69(v39, v40);
        *(v43 + 88) = v44;
        *(v43 + 96) = v46;
        *(v43 + 104) = 19279;
        *(v43 + 112) = 0xE200000000000000;
        *(v43 + 120) = 2;
        *(v43 + 128) = 0;
        *(v43 + 136) = 0;
        *(v0 + 112) = xmmword_1004F2FE0;
        *(v0 + 128) = v75;
        *(v0 + 136) = v65;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v43;
        *(v0 + 176) = 0;
        v47 = specialized static UIAlertController.alertController(with:overrideStyle:)(v74, 0, 1);
        v48 = v47;
        v49 = *(v66 + 80);
        if (v49)
        {
          v50 = *(v0 + 144);
          v51 = *(v66 + 88);
          v52 = one-time initialization token for logger;

          if (v52 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v64, static PresentationSource.logger);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "Deferring presentation…", v55, 2u);
          }

          v56 = *(v0 + 280);

          v57 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
          *(v0 + 208) = &block_descriptor_114_0;
          v58 = _Block_copy((v0 + 184));
          v59 = [v57 initWithTimeout:v58 interruptionHandler:10.0];
          _Block_release(v58);

          outlined init with copy of PresentationSource(v56, v0 + 16);
          v60 = swift_allocObject();
          *(v60 + 16) = v59;
          outlined init with take of PresentationSource(v0 + 16, v60 + 24);
          *(v60 + 120) = v48;
          *(v60 + 128) = v50;
          *(v60 + 129) = 1;
          *(v60 + 136) = 0;
          *(v60 + 144) = 0;
          v61 = v59;
          v62 = v48;
          v49(v56, v62, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v60);
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v49, v51);

          outlined destroy of Alert(v74);
        }

        else
        {
          PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v47, *(v0 + 144), 1, 0, 0);

          outlined destroy of Alert(v74);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        outlined destroy of TaskPriority?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

char *MusicLibrary.ActionableStateController.__allocating_init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = specialized MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = specialized MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t closure #1 in MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
  __chkstk_darwin();
  v3 = &v9 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  __chkstk_darwin();
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = type metadata accessor for MusicLibrary.AddStatus();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = type metadata accessor for MusicLibrary.DownloadStatus();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v5, v3);

    outlined destroy of TaskPriority?(v3, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
    return outlined destroy of TaskPriority?(v5, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.didset(uint64_t a1)
{
  v74 = a1;
  v2 = *v1;
  v85 = type metadata accessor for Album();
  v76 = *(v85 - 8);
  __chkstk_darwin();
  v84 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
  __chkstk_darwin();
  v80 = &v66 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  __chkstk_darwin();
  v79 = &v66 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMR);
  __chkstk_darwin();
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v66 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR);
  v77 = *(v88 - 8);
  __chkstk_darwin();
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v66 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  __chkstk_darwin();
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v66 - v11;
  v12 = type metadata accessor for Playlist();
  __chkstk_darwin();
  v71 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v66 - v14;
  v15 = *(v2 + 80);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v18;
  __chkstk_darwin();
  v20 = &v66 - v19;
  __chkstk_darwin();
  v22 = &v66 - v21;
  v23 = v2;
  v25 = v24;
  v26 = *(v23 + 128);
  swift_beginAccess();
  v27 = *(v16 + 16);
  v27(v22, &v1[v26], v15);
  dispatch thunk of MusicLibrary.ItemState.item.setter();
  v87 = v1;
  v82 = v26;
  v28 = &v1[v26];
  v29 = v86;
  v90 = v27;
  v91 = v16 + 16;
  v27(v20, v28, v15);
  v89 = v15;
  v30 = swift_dynamicCast();
  v31 = *(v25 + 56);
  if ((v30 & 1) == 0)
  {
    v31(v29, 1, 1, v12);
    v35 = &_s8MusicKit8PlaylistVSgMd;
    v36 = &_s8MusicKit8PlaylistVSgMR;
    goto LABEL_5;
  }

  v31(v29, 0, 1, v12);
  v32 = *(v25 + 32);
  v33 = v81;
  v32(v81, v29, v12);
  v29 = v78;
  Playlist.entries.getter();
  v34 = v77;
  v86 = *(v77 + 48);
  if ((v86)(v29, 1, v88) == 1)
  {
    (*(v25 + 8))(v33, v12);
    v35 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd;
    v36 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMR;
LABEL_5:
    v37 = v29;
LABEL_6:
    outlined destroy of TaskPriority?(v37, v35, v36);
    v38 = v85;
    v39 = v87;
    goto LABEL_7;
  }

  v67 = v32;
  v68 = v25;
  v46 = *(v34 + 32);
  v47 = v75;
  v78 = (v34 + 32);
  v66 = v46;
  v46(v75, v29, v88);
  v90(v72, v74, v89);
  v48 = v73;
  v49 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v34 + 8))(v47, v88);
    (*(v68 + 8))(v81, v12);
    v31(v48, 1, 1, v12);
    v35 = &_s8MusicKit8PlaylistVSgMd;
    v36 = &_s8MusicKit8PlaylistVSgMR;
    v37 = v48;
    goto LABEL_6;
  }

  v50 = v34;
  v31(v48, 0, 1, v12);
  v51 = v71;
  v67(v71, v48, v12);
  v52 = v70;
  Playlist.entries.getter();
  v53 = v88;
  if ((v86)(v52, 1, v88) == 1)
  {
    v54 = *(v68 + 8);
    v54(v51, v49);
    (*(v50 + 8))(v75, v53);
    v54(v81, v49);
    v35 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd;
    v36 = &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMR;
    v37 = v52;
    goto LABEL_6;
  }

  v55 = v49;
  v56 = v69;
  v66(v69, v52, v53);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v57 = dispatch thunk of Collection.distance(from:to:)();
  v39 = v87;
  if (!v57 && (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), dispatch thunk of Collection.distance(from:to:)() > 0) || (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), dispatch thunk of Collection.distance(from:to:)() >= 1) && (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), !dispatch thunk of Collection.distance(from:to:)()))
  {
    v60 = type metadata accessor for MusicLibrary.AddStatus();
    v61 = v79;
    (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
    v62 = type metadata accessor for MusicLibrary.DownloadStatus();
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v61, v63);
    outlined destroy of TaskPriority?(v63, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
    outlined destroy of TaskPriority?(v61, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
    v64 = *(v34 + 8);
    v64(v56, v53);
    v65 = *(v68 + 8);
    v65(v51, v55);
    v64(v75, v53);
    return (v65)(v81, v55);
  }

  v58 = *(v34 + 8);
  v58(v56, v53);
  v59 = *(v68 + 8);
  v59(v51, v55);
  v58(v75, v53);
  v59(v81, v55);
  v38 = v85;
LABEL_7:
  v90(v83, &v39[v82], v89);
  v40 = v84;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v76 + 8))(v40, v38);
    v42 = type metadata accessor for MusicLibrary.AddStatus();
    v43 = v79;
    (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
    v44 = type metadata accessor for MusicLibrary.DownloadStatus();
    v45 = v80;
    (*(*(v44 - 8) + 56))(v80, 1, 1, v44);
    MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v43, v45);
    outlined destroy of TaskPriority?(v45, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
    return outlined destroy of TaskPriority?(v43, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicLibrary.ActionableStateController.item.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  specialized MusicLibrary.ActionableStateController.item.setter(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*MusicLibrary.ActionableStateController.item.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 128);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return MusicLibrary.ActionableStateController.item.modify;
}

void MusicLibrary.ActionableStateController.item.modify(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    specialized MusicLibrary.ActionableStateController.item.setter(v4, v7);
    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
  }

  else
  {
    specialized MusicLibrary.ActionableStateController.item.setter(*(v2 + 56), a2);
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t MusicLibrary.ActionableStateController.currentState.didset(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v42 - v8;
  v11 = v2 + *(v10 + 152);
  result = swift_beginAccess();
  v13 = *v11;
  v14 = *(v11 + 8);
  if (!(v14 >> 14))
  {
    if (v4 < 0x4000u)
    {
      if (*v11 == 5)
      {
        if (a1 == 5)
        {
          return result;
        }
      }

      else if (a1 != 5 && v13 == a1)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (v14 >> 14 != 1)
  {
    if (v13 | v14 ^ 0x8000)
    {
      if (*(v11 + 8) == 0x8000 && v13 == 1)
      {
        if ((v4 & 0xC000) != 0x8000 || a1 != 1)
        {
          goto LABEL_37;
        }
      }

      else if ((v4 & 0xC000) != 0x8000 || a1 != 2)
      {
        goto LABEL_37;
      }
    }

    else if ((v4 & 0xC000) != 0x8000 || *&a1 != 0.0)
    {
      goto LABEL_37;
    }

    if (v4 == 0x8000)
    {
      return result;
    }

    goto LABEL_37;
  }

  if ((v4 & 0xC000) == 0x4000)
  {
    if (v14)
    {
      if ((v4 & 1) != 0 && (((v4 ^ v14) >> 8) & 1) == 0)
      {
        return result;
      }
    }

    else if ((v4 & 1) == 0 && *v11 == *&a1 && (((v4 ^ v14) >> 8) & 1) == 0)
    {
      return result;
    }
  }

LABEL_37:
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.libraryActionableState);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v44 = v4;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = v7;
    v46[0] = v23;
    *v22 = 136446722;
    v24 = MusicLibrary.ActionableState.description.getter(a1, v4);
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v24, v25, v46);
    v42 = a1;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v29, v46);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2082;
    v31 = *(*v3 + 128);
    swift_beginAccess();
    (*(v43 + 16))(v9, v3 + v31, v45);
    v32 = String.init<A>(describing:)();
    v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v33, v46);

    *(v22 + 24) = v34;
    v35 = v19;
    v36 = v42;
    _os_log_impl(&_mh_execute_header, v18, v35, "State updated from: %{public}s to: %{public}s for item: %{public}s)", v22, 0x20u);
    swift_arrayDestroy();
    v7 = v43;

    v6 = v45;
  }

  else
  {

    v36 = a1;
  }

  v37 = (v3 + *(*v3 + 144));
  swift_beginAccess();
  v38 = *v37;
  v39 = *(*v3 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v39, v6);
  v40 = *v11;
  v41 = *(v11 + 8);

  v38(v9, v36, v44, v40, v41);

  return (*(v7 + 8))(v9, v6);
}

uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t MusicLibrary.ActionableStateController.currentState.setter(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  return MusicLibrary.ActionableStateController.currentState.didset(v6, v7);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v5 = *(v4 + 80);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:), v7, v6);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = &v4[*(*v4 + 152)];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(*v4 + 128);
  v8 = *(v5 + 4);
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v7], v3);
  v9 = *&v4[*(*v4 + 136)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:);
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:);
  }

  else
  {
    v8 = MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v8, v7, v6);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

id MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v228 = a2;
  v223 = a1;
  v4 = *v2;
  v5 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v214 = *(v5 - 8);
  __chkstk_darwin();
  v209 = &v193[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v213 = &v193[-v7];
  __chkstk_darwin();
  v212 = &v193[-v8];
  __chkstk_darwin();
  v211 = &v193[-v9];
  __chkstk_darwin();
  v217 = &v193[-v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMR);
  __chkstk_darwin();
  v205 = &v193[-v11];
  v210 = type metadata accessor for Playlist();
  v201 = *(v210 - 1);
  __chkstk_darwin();
  v200 = &v193[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v202 = &v193[-v13];
  v207 = type metadata accessor for Album();
  v204 = *(v207 - 8);
  __chkstk_darwin();
  v203 = &v193[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v206 = &v193[-v15];
  v16 = *(v4 + 80);
  v17 = type metadata accessor for MusicLibrary.AddStatus();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v208 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v222 = &v193[-v18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
  __chkstk_darwin();
  v20 = &v193[-v19];
  v21 = type metadata accessor for MusicLibrary.DownloadStatus();
  v227 = *(v21 - 8);
  __chkstk_darwin();
  v198 = &v193[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v219 = &v193[-v23];
  __chkstk_darwin();
  v229 = &v193[-v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  __chkstk_darwin();
  v26 = &v193[-v25];
  v230 = *(v17 - 8);
  __chkstk_darwin();
  v199 = &v193[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v29 = &v193[-v28];
  __chkstk_darwin();
  v232 = &v193[-v30];
  v224 = *(v16 - 8);
  __chkstk_darwin();
  v215 = &v193[-v31];
  v32 = v3 + *(v4 + 152);
  swift_beginAccess();
  v195 = *v32;
  v194 = *(v32 + 8);
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v33, static Logger.libraryActionableState);

  v231 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v225 = v21;
  v226 = v17;
  v216 = v5;
  v221 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v235 = v39;
    *v38 = 136446210;
    v40 = *(*v3 + 128);
    swift_beginAccess();
    (*(v224 + 16))(v215, v3 + v40, v16);
    v41 = String.init<A>(describing:)();
    v43 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v41, v42, &v235);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "╭ Updating state for item: %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    v17 = v226;

    v21 = v225;
  }

  outlined init with copy of TaskPriority?(v223, v26, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  v44 = v230;
  v45 = *(v230 + 48);
  v46 = v45(v26, 1, v17);
  v47 = v227;
  if (v46 == 1)
  {
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
    if (v45(v26, 1, v17) != 1)
    {
      outlined destroy of TaskPriority?(v26, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
    }
  }

  else
  {
    (*(v44 + 32))(v232, v26, v17);
  }

  outlined init with copy of TaskPriority?(v228, v20, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
  v48 = *(v47 + 48);
  v49 = v48(v20, 1, v21);
  v228 = v3;
  if (v49 == 1)
  {
    dispatch thunk of MusicLibrary.ItemState.downloadStatus.getter();
    if (v48(v20, 1, v21) != 1)
    {
      outlined destroy of TaskPriority?(v20, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
    }
  }

  else
  {
    (*(v47 + 32))(v229, v20, v21);
  }

  v50 = v230;
  v218 = *(v230 + 16);
  v218(v29, v232, v17);
  v51 = Logger.logObject.getter();
  v52 = v17;
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v235 = v55;
    *v54 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    v223 = *(v50 + 8);
    v223(v29, v52);
    v59 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v56, v58, &v235);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v51, v53, "| Add Status: %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    v21 = v225;

    v47 = v227;
  }

  else
  {

    v223 = *(v50 + 8);
    v223(v29, v52);
  }

  v60 = *(v47 + 16);
  v61 = v219;
  v197 = v47 + 16;
  v196 = v60;
  v60(v219, v229, v21);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v47;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v235 = v66;
    *v65 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    v219 = *(v64 + 8);
    (v219)(v61, v21);
    v70 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v67, v69, &v235);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "| Download Status: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
  }

  else
  {

    v219 = *(v47 + 8);
    (v219)(v61, v21);
  }

  v71 = v221;
  v72 = v224;
  v73 = v228;
  v74 = *(*v228 + 128);
  swift_beginAccess();
  v75 = *(TupleTypeMetadata2 + 48);
  v76 = *(v72 + 16);
  v77 = v222;
  v76(v222, v73 + v74, v71);
  v78 = v226;
  v218(&v77[v75], v232, v226);
  v79 = v230;
  v80 = (*(v230 + 88))(&v77[v75], v78);
  if (v80 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v223(&v77[v75], v78);
    v81 = 0;
    v82 = 5;
    goto LABEL_73;
  }

  if (v80 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v80 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v234 = v224;
        *v132 = 136446466;
        v133 = v199;
        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();
        lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
        v134 = v226;
        v135 = dispatch thunk of CustomStringConvertible.description.getter();
        v137 = v136;
        v223(v133, v134);
        v138 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v135, v137, &v234);

        *(v132 + 4) = v138;
        *(v132 + 12) = 2082;
        v76(v215, v228 + v74, v221);
        v139 = String.init<A>(describing:)();
        v141 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v139, v140, &v234);

        *(v132 + 14) = v141;
        _os_log_impl(&_mh_execute_header, v130, v131, "| Unhandled add status (%{public}s) for item: %{public}s", v132, 0x16u);
        swift_arrayDestroy();

        v77 = v222;
      }

      v82 = 0;
      v81 = 0x8000;
      v72 = v208;
      v71 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v101 = v206;
    v102 = v207;
    v103 = swift_dynamicCast();
    v104 = v227;
    v105 = v228;
    v106 = v210;
    if (v103)
    {
      v107 = v204;
      v108 = v101;
      v109 = v203;
      (*(v204 + 32))(v203, v108, v102);
      if (Album.childrenAddStatus(_:)(*(v105 + 16)) == 1)
      {
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&_mh_execute_header, v110, v111, "| Album is already added but has at least 1 addable track", v112, 2u);
        }

        (*(v204 + 8))(v203, v102);
        v81 = 0;
        v82 = 4;
        goto LABEL_73;
      }

      (*(v107 + 8))(v109, v102);
    }

    v145 = v202;
    if (swift_dynamicCast())
    {
      v146 = v201;
      v147 = v200;
      (*(v201 + 32))(v200, v145, v106);
      v148 = v205;
      Playlist.entries.getter();
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR);
      v150 = v148;
      v151 = v149;
      v152 = *(v149 - 8);
      if ((*(v152 + 48))(v150, 1, v149) == 1)
      {
        (*(v146 + 8))(v147, v106);
        outlined destroy of TaskPriority?(v205, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGSgMR);
      }

      else
      {
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR, &protocol conformance descriptor for MusicItemCollection<A>);
        v153 = v205;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v155 = v233;
        v154 = v234;
        (*(v152 + 8))(v153, v151);
        if (v154 == v155)
        {
          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.default.getter();
          v158 = os_log_type_enabled(v156, v157);
          v159 = v201;
          v160 = v200;
          if (v158)
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&_mh_execute_header, v156, v157, "| Playlist is already added but does not have any tracks", v161, 2u);
          }

          (*(v159 + 8))(v160, v210);
          goto LABEL_72;
        }

        (*(v201 + 8))(v200, v210);
      }

      v104 = v227;
    }

    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&_mh_execute_header, v162, v163, "|—● Item is added", v164, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v166 = result;
    v167 = [result canShowCloudDownloadButtons];

    if (v167)
    {
      v168 = v198;
      v169 = v225;
      v196(v198, v229, v225);
      v170 = (*(v104 + 88))(v168, v169);
      if (v170 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v104 + 96))(v168, v169);
        v82 = *v168;
        v81 = 0x4000;
        goto LABEL_73;
      }

      if (v170 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v104 + 96))(v168, v169);
        if (((v194 & 0xC000) != 0x4000) | v194 & 1)
        {
          v82 = 0;
        }

        else
        {
          v82 = v195;
        }

        v81 = ((v194 & 0xC000) != 0x4000) | v194 & 1 | 0x4100;
        v181 = type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons();
        (*(*(v181 - 8) + 8))(v168, v181);
        goto LABEL_73;
      }

      if (v170 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v170 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v81 = 0x8000;
          v82 = 1;
        }

        else if (v170 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v82 = 0;
          v81 = 16385;
        }

        else if (v170 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v81 = 0x8000;
          v82 = 2;
        }

        else
        {
          v182 = v71;
          v183 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v184 = v170;
          v185 = Logger.logObject.getter();
          v186 = static os_log_type_t.default.getter();
          v187 = os_log_type_enabled(v185, v186);
          if (v184 == v183)
          {
            if (v187)
            {
              v188 = swift_slowAlloc();
              *v188 = 0;
            }

            v189 = Logger.logObject.getter();
            v190 = static os_log_type_t.default.getter();
            v71 = v182;
            if (os_log_type_enabled(v189, v190))
            {
              v191 = swift_slowAlloc();
              *v191 = 0;
              _os_log_impl(&_mh_execute_header, v189, v190, "|—| 🌚 though we're not sure this is the right thing to do", v191, 2u);
            }

            v81 = 0x8000;
            v82 = 1;
            v72 = v224;
          }

          else
          {
            v71 = v182;
            if (v187)
            {
              v192 = swift_slowAlloc();
              *v192 = 0;
              _os_log_impl(&_mh_execute_header, v185, v186, "|—| Unhandled case", v192, 2u);
            }

            (v219)(v198, v225);
            v82 = 0;
            v81 = 0x8000;
            v72 = v224;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 0;
        _os_log_impl(&_mh_execute_header, v171, v172, "|—| MPCloudController -canShowCloudDownloadButton: NO", v173, 2u);
      }
    }

LABEL_72:
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_73;
  }

  v83 = v214;
  (*(v79 + 96))(&v77[v75], v78);
  v84 = v83[4];
  v85 = &v77[v75];
  v86 = v217;
  v87 = v216;
  TupleTypeMetadata2 = (v83 + 4);
  v218 = v84;
  v84(v217, v85, v216);
  v88 = v83[2];
  v89 = v211;
  v88(v211, v86, v87);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v89;
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v234 = v94;
    *v93 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v96;
    v98 = v92;
    v99 = v83[1];
    v99(v98, v216);
    v100 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v95, v97, &v234);

    *(v93 + 4) = v100;
    v87 = v216;
    _os_log_impl(&_mh_execute_header, v90, v91, "|—● Item is unaddable: %{public}s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
  }

  else
  {

    v99 = v83[1];
    v99(v89, v87);
  }

  v113 = v212;
  v88(v212, v217, v87);
  v114 = v83[11];
  v115 = v114(v113, v87);
  v116 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v117 = v213;
  if (v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "|—| Reason is not actionable by the user", v120, 2u);
    }

    v121 = v216;
    v99(v217, v216);
    v99(v113, v121);
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v215) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v212) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v211) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v88(v213, v217, v87);
  v122 = v117;
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v234 = v210;
    *v125 = 136315138;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus.UnaddableReason and conformance MusicLibrary.AddStatus.UnaddableReason, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    v99(v122, v216);
    v129 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v126, v128, &v234);

    *(v125 + 4) = v129;
    v87 = v216;
    __swift_destroy_boxed_opaque_existential_0Tm(v210);
  }

  else
  {

    v99(v122, v87);
  }

  v142 = v209;
  v218(v209, v217, v87);
  v143 = v114(v142, v87);
  if (v143 == v116)
  {
    v81 = 0;
    v82 = 1;
LABEL_46:
    v77 = v222;
    v71 = v221;
    v72 = v224;
    goto LABEL_73;
  }

  v144 = v99;
  v77 = v222;
  v71 = v221;
  v72 = v224;
  if (v143 == v215)
  {
    v82 = 0;
    v81 = 0;
  }

  else if (v143 == v212)
  {
    v81 = 0;
    v82 = 2;
  }

  else if (v143 == v211)
  {
    v81 = 0;
    v82 = 3;
  }

  else
  {
    v144(v142, v87);
    v81 = 0;
    v82 = 5;
  }

LABEL_73:
  (*(v72 + 8))(v77, v71);
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v234 = v177;
    *v176 = 136446210;
    v178 = MusicLibrary.ActionableState.description.getter(v82, v81);
    v180 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v178, v179, &v234);

    *(v176 + 4) = v180;
    _os_log_impl(&_mh_execute_header, v174, v175, "╰ Item state resolved to %{public}s", v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v177);
  }

  MusicLibrary.ActionableStateController.currentState.setter(v82, v81);
  (v219)(v229, v225);
  return (v223)(v232, v226);
}