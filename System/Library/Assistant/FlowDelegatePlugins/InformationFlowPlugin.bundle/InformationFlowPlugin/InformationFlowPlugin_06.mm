uint64_t closure #1 in ErrorFlowFactory.makeErrorFlow(message:)()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = closure #1 in ErrorFlowFactory.makeErrorFlow(message:);
  }

  else
  {
    v2 = closure #1 in ErrorFlowFactory.makeErrorFlow(message:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v7[3] = v6;
  v7[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t ErrorFlowFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t ErrorFlowFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_A81F0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in ErrorFlowFactory.makeErrorFlow(message:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in ErrorFlowFactory.makeErrorFlow(message:)(a1, v1);
}

uint64_t FlowTrampolining.makeResponse(forErrorMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v15 = a3;
  v16 = a4;
  v17 = v4;
  v18 = a1;
  v19 = a2;
  Date.init()();
  type metadata accessor for ExecuteResponse();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  return (*(v10 + 8))(v12, v9);
}

uint64_t FlowTrampolining.makeResponse(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v16 = a1;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0CSgMd, _s11SiriKitFlow03AnyC0CSgMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v7 + 8))(v9, v6);
  if (v17)
  {

    static ExecuteResponse.complete(next:)();
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.information);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Unable to locate flow for direct invocation parse/experience. Returning error flow.", v14, 2u);
    }

    return FlowTrampolining.makeResponse(forErrorMessage:)(0xD000000000000038, 0x80000000000BE060, a2, a3);
  }
}

uint64_t closure #1 in FlowTrampolining.makeResponse(forErrorMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v12, a4, a5);
  v9 = (*(a5 + 16))(a4, a5);
  type metadata accessor for ErrorFlowFactory();
  v10 = swift_allocObject();
  outlined init with take of OutputPublisherAsync(v12, v10 + 16);
  *(v10 + 56) = v9;
  ErrorFlowFactory.makeErrorFlow(message:)(a2, a3);
  static ExecuteResponse.complete(next:)();
}

uint64_t closure #1 in FlowTrampolining.makeResponse(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = static FlowLocator.findFlow(forInvocation:)();
  *a1 = result;
  return result;
}

uint64_t _s21InformationFlowPlugin0B12TrampoliningPAAE12makeResponse3for07SiriKitB007ExecuteF0VAF5ParseO16DirectInvocationV_tFAF03AnyB0CSgyXEfU_TA_0@<X0>(uint64_t *a1@<X8>)
{
  result = static FlowLocator.findFlow(forInvocation:)();
  *a1 = result;
  return result;
}

uint64_t static Logger.begin(_:)()
{
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v4 = static Logger.informationLog;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.end(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v29[-v15];
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, v7, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  outlined init with copy of Logger?(v16, v14);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {
    outlined destroy of Logger?(v14);
  }

  else
  {
    v33 = a1;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = a3;
      v22 = v21;
      v31 = swift_slowAlloc();
      v35 = v31;
      *v22 = 136315650;
      v23 = StaticString.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v35);
      v30 = v20;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      v27 = v33;
      *(v22 + 14) = v34;
      *(v22 + 22) = 2080;
      *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, a2, &v35);
      _os_log_impl(&dword_0, v19, v30, "FatalError at %s:%lu - %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    (*(v18 + 8))(v14, v17);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for informationLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.informationLog = result;
  return result;
}

uint64_t one-time initialization function for information()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.information);
  __swift_project_value_buffer(v0, static Logger.information);
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v1 = static Logger.informationLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for videoSnippet()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.videoSnippet);
  __swift_project_value_buffer(v0, static Logger.videoSnippet);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.generateSignpostID()()
{
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v0 = static Logger.informationLog;

  return OSSignpostID.init(log:)();
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Logger.event(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t one-time initialization function for information(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return OSSignposter.init(logger:)();
}

uint64_t Logger.information.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static Logger.information.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for OSSignpostID();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(OSSignposter.withIntervalSignpost<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpost<A>(_:id:around:)()
{
  v1 = OSSignposter.logHandle.getter();
  v2 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if (result)
  {
    v4 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_0, v1, v2, v6, v4, "", v5, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v7 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 104) = OSSignpostIntervalState.init(id:isOpen:)();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  v9 = *(v0 + 24);

  return v10(v9);
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  }

  else
  {
    v2 = OSSignposter.withIntervalSignpost<A>(_:id:around:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t OSSignposter.beginIntervalTelemetryEnabled(_:id:)(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v15, a1, "enableTelemetry=YES", v14, 2u);

LABEL_10:

      (*(v8 + 16))(v10, a4, v7);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      return OSSignpostIntervalState.init(id:isOpen:)();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v17;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(const char *result, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = result;
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (result >> 32)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) == 0xD800)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (result >> 16 > 0x10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = &v11;
LABEL_8:
  v10 = swift_slowAlloc();
  *v10 = 0;
  closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(v10, 2u, v5, a4, v9, "enableTelemetry=YES", a5);
  if (!v6)
  {
  }
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return _swift_task_switch(OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:), 0, 0);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  *(v2 + 72) = OSSignposter.beginIntervalTelemetryEnabled(_:id:)(*(v2 + 24), a2, *(v2 + 96), *(v2 + 40));
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  v5 = *(v2 + 16);

  return v7(v5);
}

uint64_t OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:)()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  }

  else
  {
    v2 = OSSignposter.withIntervalSignpostTelemetryEnabled<A>(_:id:around:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(*(v0 + 64), *(v0 + 24), *(v0 + 32), *(v0 + 96), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t $defer #1 <A>() in OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = type metadata accessor for OSSignpostError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v7 + 88))(v9, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v14, v21, v19, v16, v17, v18, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t (*a7)(void))
{
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = static os_signpost_type_t.end.getter();
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v14, v15, a5, a6, v16, a2);
  }
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

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t RFSimpleYesNoPromptFlowStrategy.__allocating_init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v14 = swift_allocObject();
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  __chkstk_darwin(v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = specialized RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(a1, v19, a3, a4, a5, a6, v23, v24, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v21;
}

uint64_t closure #1 in default argument 2 of RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return (*(v0 + 8))();
}

uint64_t RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  __chkstk_darwin(v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = specialized RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(a1, v19, a3, a4, a5, a6, v23, v24, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v21;
}

uint64_t RFSimpleYesNoPromptFlowStrategy.populate(manifest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = type metadata accessor for NLContextUpdate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v40 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v41 = &v40 - v13;
  v14 = type metadata accessor for DialogPhase();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  v21 = type metadata accessor for OutputGenerationManifest();
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  OutputGenerationManifest.dialogPhase.getter();
  static DialogPhase.clarification.getter();
  lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type DialogPhase and conformance DialogPhase, &type metadata accessor for DialogPhase, &protocol conformance descriptor for DialogPhase);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v15 + 8);
  v22(v18, v14);
  v22(v20, v14);
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.information);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "A non clarification dialog phase was inputed into a RFSimpleYesNoPromptFlowStrategy. This could cause unwanted behavior in the UI layer.", v26, 2u);
    }
  }

  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.nlContextUpdate.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of NLContextUpdate?(v8);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.information);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "OutputGenerationManifest does not include an NL context update. Will send a standard Reader domain prompt offer.", v30, 2u);
    }

    v31 = v40;
    NLContextUpdate.init()();
    v32 = v42;
    RFSimpleYesNoPromptFlowStrategy.attachNLV3ReaderPrompt(to:)(v31, v42);
    (*(v10 + 8))(v31, v9);
    (*(v10 + 56))(v32, 0, 1, v9);
    return OutputGenerationManifest.nlContextUpdate.setter();
  }

  else
  {
    v34 = v41;
    (*(v10 + 32))(v41, v8, v9);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.information);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Attaching NL Context to existing context update provided by domain.", v38, 2u);
    }

    v39 = v42;
    RFSimpleYesNoPromptFlowStrategy.attachNLV3ReaderPrompt(to:)(v34, v42);
    (*(v10 + 56))(v39, 0, 1, v9);
    OutputGenerationManifest.nlContextUpdate.setter();
    return (*(v10 + 8))(v34, v9);
  }
}

void RFSimpleYesNoPromptFlowStrategy.attachNLV3ReaderPrompt(to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, oslog, v6, "#RF Built Reader Prompt hints.", v7, 2u);
  }
}

uint64_t RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for Date();
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for PerformanceUtil.Ticket();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse(), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  }

  else
  {
    v4 = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[3];
  (*(v4 + 16))(v2, v5 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest, v3);
  RFSimpleYesNoPromptFlowStrategy.populate(manifest:)(v2, v1);
  v6 = *(v4 + 8);
  v0[12] = v6;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v9 = (*(v5 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer) + **(v5 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer));
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();

  return v9();
}

{
  v1 = v0[3];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v2 = (v1 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator);
  v3 = *(v1 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator + 24);
  v4 = *(v1 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v8, v6, v7, v3, v4);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  }

  else
  {
    v2 = RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t RFSimpleYesNoPromptFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Parse.DirectInvocation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Parse();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v52 - v12;
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  Input.parse.getter();
  v16 = (*(v7 + 88))(v15, v6);
  if (v16 == enum case for Parse.directInvocation(_:))
  {
    v55 = a1;
    (*(v7 + 16))(v10, v15, v6);
    v17 = *(v7 + 96);
    v53 = v6;
    v17(v10, v6);
    v18 = *(v3 + 16);
    v54 = v2;
    v18(v5, v10, v2);
    v19 = Parse.DirectInvocation.identifier.getter();
    v21 = v20;
    v22 = static SiriKitDirectInvocationPayloads.cancel.getter();
    v23 = [v22 identifier];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v19 == v24 && v21 == v26)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        v29 = *(v3 + 8);
        v29(v5, v54);
        v30 = Parse.DirectInvocation.identifier.getter();
        v32 = v31;
        v33 = static SiriKitDirectInvocationPayloads.confirm.getter();
        v34 = [v33 identifier];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        if (v30 == v35 && v32 == v37)
        {

          v6 = v53;
LABEL_20:
          v29(v10, v54);
          goto LABEL_21;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v53;
        if (v41)
        {
          goto LABEL_20;
        }

        v43 = Parse.DirectInvocation.identifier.getter();
        v45 = v44;
        v29(v10, v54);
        v46 = static SiriKitDirectInvocationPayloads.reject.getter();
        v47 = [v46 identifier];

        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        if (v43 == v48 && v45 == v50)
        {

          goto LABEL_21;
        }

        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v51)
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }

    static ActionForInput.cancel()();
    v38 = *(v3 + 8);
    v39 = v54;
    v38(v5, v54);
    v38(v10, v39);
    return (*(v7 + 8))(v15, v53);
  }

  if (v16 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v16 == enum case for Parse.pegasusResults(_:))
    {
      static ActionForInput.handle()();
      return (*(v7 + 8))(v15, v6);
    }

LABEL_28:
    static ActionForInput.ignore()();
    return (*(v7 + 8))(v15, v6);
  }

  (*(v7 + 16))(v13, v15, v6);
  (*(v7 + 96))(v13, v6);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
LABEL_21:
      (*(v7 + 8))(v15, v6);
      return static ActionForInput.handle()();
    }

    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v42)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  static ActionForInput.cancel()();
  swift_unknownObjectRelease();
  return (*(v7 + 8))(v15, v6);
}

uint64_t RFSimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Parse.PegasusResult();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Parse.DirectInvocation();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(RFSimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:), 0, 0);
}

uint64_t RFSimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[13];
  v4 = v1[14];
  Input.parse.getter();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 != enum case for Parse.directInvocation(_:))
  {
    if (v5 != enum case for Parse.NLv4IntentOnly(_:))
    {
      if (v5 == enum case for Parse.pegasusResults(_:))
      {
        v36 = v1[14];
        v35 = v1[15];
        v37 = v1[13];
        v39 = v1[6];
        v38 = v1[7];
        v40 = v1[5];
        v41 = v1[2];
        (*(v36 + 16))(v35, v1[18], v37);
        (*(v36 + 96))(v35, v37);
        (*(v39 + 32))(v38, v35, v40);
        RFSimpleYesNoPromptFlowStrategy.parsePegasusResponse(pegasusResult:)(v41);
        (*(v39 + 8))(v38, v40);
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v20 = v1[17];
    v21 = v1[13];
    v22 = v1[14];
    (*(v22 + 16))(v20, v1[18], v21);
    (*(v22 + 96))(v20, v21);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v23 = v1[12];
      v24 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      v23 = v1[12];
      v24 = &enum case for ConfirmationResponse.rejected(_:);
    }

    v55 = *v24;
    v56 = type metadata accessor for ConfirmationResponse();
    v57 = *(v56 - 8);
    (*(v57 + 104))(v23, v55, v56);
    (*(v57 + 56))(v23, 0, 1, v56);
    SimpleConfirmationResponseProvider.init(_:)();
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v6 = v1[16];
  v7 = v1[13];
  v8 = v1[14];
  v9 = v1[11];
  v10 = v1[8];
  v11 = v1[9];
  (*(v8 + 16))(v6, v1[18], v7);
  (*(v8 + 96))(v6, v7);
  (*(v11 + 16))(v9, v6, v10);
  v12 = Parse.DirectInvocation.identifier.getter();
  v14 = v13;
  v15 = static SiriKitDirectInvocationPayloads.confirm.getter();
  v16 = [v15 identifier];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v12 == v17 && v14 == v19)
  {

LABEL_9:
    v26 = v1[16];
    v28 = v1[11];
    v27 = v1[12];
    v29 = v1[8];
    v30 = v1[9];
    v31 = enum case for ConfirmationResponse.confirmed(_:);
    v32 = type metadata accessor for ConfirmationResponse();
    v33 = *(v32 - 8);
    (*(v33 + 104))(v27, v31, v32);
    (*(v33 + 56))(v27, 0, 1, v32);
    SimpleConfirmationResponseProvider.init(_:)();
    v34 = *(v30 + 8);
    v34(v28, v29);
    v34(v26, v29);
    goto LABEL_27;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_9;
  }

  v42 = v1[16];
  v43 = v1[10];
  v44 = v1[8];
  v45 = v1[9];
  v46 = *(v45 + 8);
  v46(v1[11], v44);
  (*(v45 + 32))(v43, v42, v44);
  v47 = Parse.DirectInvocation.identifier.getter();
  v49 = v48;
  v50 = static SiriKitDirectInvocationPayloads.reject.getter();
  v51 = [v50 identifier];

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  if (v47 == v52 && v49 == v54)
  {

LABEL_19:
    v59 = v1[12];
    v60 = v1[10];
    v61 = v1[8];
    v62 = enum case for ConfirmationResponse.rejected(_:);
    v63 = type metadata accessor for ConfirmationResponse();
    v64 = *(v63 - 8);
    (*(v64 + 104))(v59, v62, v63);
    (*(v64 + 56))(v59, 0, 1, v63);
    SimpleConfirmationResponseProvider.init(_:)();
    v46(v60, v61);
    goto LABEL_27;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    goto LABEL_19;
  }

  v46(v1[10], v1[8]);
LABEL_22:
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.information);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_0, v66, v67, "Unable to parse a confirmation response from the given parse", v68, 2u);
  }

  v69 = v1[12];

  v70 = type metadata accessor for ConfirmationResponse();
  (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
  SimpleConfirmationResponseProvider.init(_:)();
LABEL_27:
  (*(v1[14] + 8))(v1[18], v1[13]);

  v71 = v1[1];

  return v71();
}

uint64_t RFSimpleYesNoPromptFlowStrategy.parsePegasusResponse(pegasusResult:)@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  __chkstk_darwin(v1 - 8);
  v57 = &v51 - v2;
  v3 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v51 - v8;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v55 = *(v17 - 8);
  v56 = v17;
  __chkstk_darwin(v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v14 + 8))(v16, v13);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  (*(v10 + 8))(v12, v9);
  v20 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    v23 = v53;
    v24 = v7;
    if (v22 != 2)
    {
      outlined consume of Data._Representation(v20, v21);
      v26 = v54;
      goto LABEL_11;
    }

    v28 = *(v20 + 16);
    v27 = *(v20 + 24);
    outlined consume of Data._Representation(v20, v21);
  }

  else
  {
    v23 = v53;
    v24 = v7;
    if (!v22)
    {
      v25 = v21;
      outlined consume of Data._Representation(v20, v21);
      v26 = v54;
      if ((v25 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v30 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
      goto LABEL_12;
    }

    v29 = v20;
    outlined consume of Data._Representation(v20, v21);
    v28 = v29;
    v27 = v29 >> 32;
  }

  v26 = v54;
  if (v28 != v27)
  {
    goto LABEL_9;
  }

LABEL_11:
  v30 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogAct.getter();
LABEL_12:
  v32 = v30;
  v33 = v31;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  outlined copy of Data._Representation(v30, v31);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
  Message.init(serializedData:extensions:partial:options:)();
  (*(v52 + 32))(v26, v24, v23);
  if ((Siri_Nlu_External_UserDialogAct.hasAccepted.getter() & 1) == 0)
  {
    if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.information);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_33;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Received User Rejected From Pegasus";
    }

    else if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.information);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_33;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Received User Cancelled From Pegasus";
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.information);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_33;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Received other unsupported UDA From Pegasus";
    }

    _os_log_impl(&dword_0, v40, v41, v43, v42, 2u);

LABEL_33:

    v38 = &enum case for ConfirmationResponse.rejected(_:);
    goto LABEL_34;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.information);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "Received User Accepted UDA From Pegasus", v37, 2u);
  }

  v38 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_34:
  v46 = *v38;
  v47 = type metadata accessor for ConfirmationResponse();
  v48 = *(v47 - 8);
  v49 = v57;
  (*(v48 + 104))(v57, v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  SimpleConfirmationResponseProvider.init(_:)();
  outlined consume of Data._Representation(v32, v33);
  (*(v52 + 8))(v26, v23);
  return (*(v55 + 8))(v19, v56);
}

uint64_t RFSimpleYesNoPromptFlowStrategy.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest;
  v2 = type metadata accessor for OutputGenerationManifest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator));

  return v0;
}

uint64_t RFSimpleYesNoPromptFlowStrategy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest;
  v2 = type metadata accessor for OutputGenerationManifest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for YesNoPromptFlowStrategy.makePromptForYesNoResponse() in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return RFSimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return RFSimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy, type metadata accessor for RFSimpleYesNoPromptFlowStrategy, &protocol conformance descriptor for RFSimpleYesNoPromptFlowStrategy);
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return YesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)(a1, v4, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy, type metadata accessor for RFSimpleYesNoPromptFlowStrategy, &protocol conformance descriptor for RFSimpleYesNoPromptFlowStrategy);
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)(a1, v4, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy, type metadata accessor for RFSimpleYesNoPromptFlowStrategy, &protocol conformance descriptor for RFSimpleYesNoPromptFlowStrategy);
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)(a1, v4, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance RFSimpleYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t specialized RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = (a9 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator);
  v19[3] = a10;
  v19[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a2, a10);
  v21 = OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest;
  v22 = type metadata accessor for OutputGenerationManifest();
  (*(*(v22 - 8) + 32))(a9 + v21, a1, v22);
  v23 = (a9 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_rejectionOutputProducer);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a9 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_cancellationOutputProducer);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a9 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer);
  *v25 = a7;
  v25[1] = a8;
  return a9;
}

uint64_t type metadata accessor for RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for RFSimpleYesNoPromptFlowStrategy;
  if (!type metadata singleton initialization cache for RFSimpleYesNoPromptFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RFSimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for OutputGenerationManifest();
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

uint64_t lazy protocol witness table accessor for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of NLContextUpdate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExperienceSelector.selectPegasusExperience(pegasusResult:)@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.information);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "ExperienceSelector will select a PegasusExperience.", v12, 2u);
  }

  type metadata accessor for PerformanceUtil();
  v13 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v13);
  Date.init()();
  v29 = &v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
  v28 = partial apply for closure #1 in ExperienceSelector.selectPegasusExperience(pegasusResult:);
  LOBYTE(v27) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v6 + 8))(v8, v5);
  v14 = v35;
  if (v35)
  {
    Parse.PegasusResult.response.getter();
    v34 = specialized static PegasusComponentsParser.parsePegasusRenderOptions(response:)();
    (*(v32 + 8))(v4, v33);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMR);
    v16 = v15[24];
    *a1 = v14[3];
    *(a1 + 1) = v14[2];
    v32 = v14[5];
    *(a1 + 2) = v32;
    v33 = v14[7];
    *(a1 + 3) = v33;
    v17 = v14[6];
    v18 = *(v17 + 16);
    v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent();
    v20 = *(v19 - 8);
    if (v18)
    {
      (*(*(v19 - 8) + 16))(&a1[v16], v17 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)), v19);
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    (*(v20 + 56))(&a1[v16], v21, 1, v19);
    v22 = v15[32];
    v23 = v15[36];
    v24 = v15[40];
    *&a1[v15[28]] = v14[8];
    *&a1[v22] = v14[9];
    v25 = v14[10];

    *&a1[v23] = v25;
    *&a1[v24] = v34;
    type metadata accessor for PegasusExperience(0);
  }

  else
  {
    type metadata accessor for PegasusExperience(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ExperienceSelector.selectPommesExperience(pommesResponse:)@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, _s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for Parse.DirectInvocation();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch thunk of PommesResponse.experiences.getter();
  if (v13 >> 62)
  {
    v45 = v13;
    v46 = _CocoaArrayWrapper.endIndex.getter();
    v13 = v45;
    if (v46)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    v60 = a1;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
      v15 = v14;

      type metadata accessor for PhoneCallExperience();
      if (swift_dynamicCastClass())
      {
        v16 = v15;
        PhoneCallExperience.makeDirectInvocation()(v8);
        v17 = (*(v10 + 48))(v8, 1, v9);

        if (v17 != 1)
        {
          v28 = *(v10 + 32);
          v28(v12, v8, v9);
          if (one-time initialization token for information != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          __swift_project_value_buffer(v29, static Logger.information);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_0, v30, v31, "Found phone call experience. Continuing with phone call direct invocation.", v32, 2u);
          }

          v28(v60, v12, v9);
          type metadata accessor for PegasusExperience(0);
          return swift_storeEnumTagMultiPayload();
        }

        outlined destroy of Parse.DirectInvocation?(v8);
      }

      type metadata accessor for GenericExperience();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for PerformanceUtil();
        v18 = static PerformanceUtil.shared.getter();
        __chkstk_darwin(v18);
        Date.init()();
        v53 = &v51;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
        v52 = partial apply for closure #1 in ExperienceSelector.selectPommesExperience(pommesResponse:);
        LOBYTE(v51) = 2;
        dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

        (*(v3 + 8))(v5, v2);
        v19 = v61;
        if (v61)
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMR);
          v21 = v20[24];
          v22 = v60;
          v56 = v19[3];
          *v60 = v56;
          v57 = v19[2];
          *(v22 + 1) = v57;
          v58 = v19[5];
          *(v22 + 2) = v58;
          v59 = v19[7];
          *(v22 + 3) = v59;
          v23 = v19[6];
          v24 = *(v23 + 16);
          v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent();
          v26 = *(v25 - 8);
          if (v24)
          {
            (*(*(v25 - 8) + 16))(&v22[v21], v23 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)), v25);
            v27 = 0;
          }

          else
          {
            v27 = 1;
          }

          (*(v26 + 56))(&v22[v21], v27, 1, v25);
          v39 = v20[32];
          v40 = v20[36];
          v41 = v20[40];
          *&v22[v20[28]] = v19[8];
          *&v22[v39] = v19[9];
          *&v22[v40] = v19[10];
          v42 = v15;

          v43 = dispatch thunk of Experience.renderOptions.getter();

          *&v22[v41] = v43;
          type metadata accessor for PegasusExperience(0);
          return swift_storeEnumTagMultiPayload();
        }

        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Logger.information);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v34, v35))
        {
LABEL_27:

          type metadata accessor for PegasusExperience(0);
          return swift_storeEnumTagMultiPayload();
        }

        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "ExperienceSelector no valid pegasus experience.";
      }

      else
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Logger.information);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v34, v35))
        {
          goto LABEL_27;
        }

        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "ExperienceSelector top experience not generic.";
      }

      _os_log_impl(&dword_0, v34, v35, v37, v36, 2u);

      goto LABEL_27;
    }

    if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      v14 = *(v13 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (one-time initialization token for information != -1)
  {
LABEL_40:
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.information);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_0, v48, v49, "ExperienceSelector found no experiences.", v50, 2u);
  }

  type metadata accessor for PegasusExperience(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t PhoneCallExperience.makeDirectInvocation()@<X0>(uint64_t a1@<X8>)
{
  if (PhoneCallExperience.makeDirectInvocationPayload()())
  {
    Parse.DirectInvocation.init(identifier:userData:)();
    v2 = 0;
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.information);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Unable to make direct invocation payload", v6, 2u);
    }

    v2 = 1;
  }

  v7 = type metadata accessor for Parse.DirectInvocation();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v2, 1, v7);
}

uint64_t ExperienceSelector.selectPegasusComponents(pegasusResult:)()
{
  v24 = type metadata accessor for Date();
  v0 = *(v24 - 8);
  __chkstk_darwin(v24);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "ExperienceSelector will select PegasusComponents.", v6, 2u);
  }

  type metadata accessor for PerformanceUtil();
  v7 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v7);
  Date.init()();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
  v21 = &v19;
  v22 = v8;
  v20 = partial apply for closure #1 in ExperienceSelector.selectPegasusComponents(pegasusResult:);
  LOBYTE(v19) = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v9 = *(v0 + 8);
  v9(v2, v24);
  v10 = v25;
  if (v25)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "ExperienceSelector: found primary experience.";
LABEL_11:
      _os_log_impl(&dword_0, v11, v12, v14, v13, 2u);
LABEL_12:
    }
  }

  else
  {
    v15 = static PerformanceUtil.shared.getter();
    v23 = &v23;
    __chkstk_darwin(v15);
    Date.init()();
    v21 = &v19;
    v22 = v8;
    v20 = partial apply for closure #2 in ExperienceSelector.selectPegasusComponents(pegasusResult:);
    LOBYTE(v19) = 2;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    v9(v2, v24);
    v10 = v25;
    v11 = Logger.logObject.getter();
    if (!v10)
    {
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v17))
      {
        v10 = 0;
        goto LABEL_13;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v11, v17, "ExperienceSelector did not find a valid PegasusComponents.", v18, 2u);
      v10 = 0;
      goto LABEL_12;
    }

    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "ExperienceSelector: found legacy experience.";
      goto LABEL_11;
    }
  }

LABEL_13:

  return v10;
}

uint64_t partial apply for closure #1 in ExperienceSelector.selectPegasusExperience(pegasusResult:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 96))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PegasusExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for PegasusExperience;
  if (!type metadata singleton initialization cache for PegasusExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t PhoneCallExperience.makeDirectInvocationPayload()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v0 - 8);
  v61 = v59 - v1;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v60 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v59 - v7;
  __chkstk_darwin(v6);
  v10 = v59 - v9;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.information);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Creating INStartCallIntent", v15, 2u);
  }

  PhoneCallExperience.phoneCall.getter();
  v16 = Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.phoneNumber.getter();
  v18 = v17;
  v19 = *(v3 + 8);
  v20 = v2;
  v19(v10, v2);

  v21 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v21 = v16 & 0xFFFFFFFFFFFFLL;
  }

  v59[1] = v12;
  if (v21)
  {
    PhoneCallExperience.phoneCall.getter();
    Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.phoneNumber.getter();
    v19(v8, v2);
    v22 = objc_allocWithZone(INPersonHandle);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 initWithValue:v23 type:2];
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Phone number unknown", v27, 2u);
    }

    v28 = objc_allocWithZone(INPersonHandle);
    v23 = String._bridgeToObjectiveC()();
    v24 = [v28 initWithValue:v23 type:0];
    v20 = v2;
  }

  v29 = type metadata accessor for PersonNameComponents();
  v30 = *(v29 - 8);
  v31 = v61;
  (*(v30 + 56))(v61, 1, 1, v29);
  v62 = v24;
  v32 = v60;
  PhoneCallExperience.phoneCall.getter();
  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.getter();
  v19(v32, v20);
  isa = 0;
  if ((*(v30 + 48))(v31, 1, v29) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v30 + 8))(v31, v29);
  }

  v34 = objc_allocWithZone(INPerson);
  v35 = String._bridgeToObjectiveC()();

  v36 = v62;
  v37 = [v34 initWithPersonHandle:v62 nameComponents:isa displayName:v35 image:0 contactIdentifier:0 customIdentifier:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_B9BD0;
  *(v38 + 32) = v37;
  v39 = objc_allocWithZone(INStartCallIntent);
  type metadata accessor for INPerson();
  v40 = v37;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  v42 = [v39 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 preferredCallProvider:1 contacts:v41 ttyType:0 callCapability:1];

  v43 = v42;
  v44 = [v43 backingStore];
  v45 = [v44 data];

  if (v45)
  {
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B9FF0;
    *(inited + 32) = 0x6449707061;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x80000000000C1A70;
    *(inited + 72) = &type metadata for String;
    strcpy((inited + 80), "intentTypeName");
    *(inited + 95) = -18;
    v50 = [v43 typeName];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    *(inited + 96) = v51;
    *(inited + 104) = v53;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0x6144746E65746E69;
    *(inited + 168) = &type metadata for Data;
    *(inited + 136) = 0xEA00000000006174;
    *(inited + 144) = v46;
    *(inited + 152) = v48;
    outlined copy of Data._Representation(v46, v48);
    v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();

    outlined consume of Data._Representation(v46, v48);
  }

  else
  {

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "Unable to serialize INStartCallIntent", v57, 2u);
    }

    return 0;
  }

  return v54;
}

uint64_t partial apply for closure #1 in ExperienceSelector.selectPommesExperience(pommesResponse:)@<X0>(void *a2@<X8>)
{
  v3 = GenericExperience.components.getter();
  v4 = specialized static PegasusComponentsParser.collateComponents(components:)(v3);

  *a2 = v4;
  return result;
}

uint64_t outlined destroy of Parse.DirectInvocation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, _s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in ExperienceSelector.selectPegasusComponents(pegasusResult:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static PegasusComponentsParser.parsePrimaryComponents(pegasusResult:)();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #2 in ExperienceSelector.selectPegasusComponents(pegasusResult:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static PegasusComponentsParser.parseLegacyComponents(pegasusResult:)();
  *a1 = result;
  return result;
}

void type metadata completion function for PegasusExperience(uint64_t a1)
{
  type metadata accessor for ([Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent], [Apple_Parsec_Siri_V2alpha_RenderedDialogComponent], [Apple_Parsec_Siri_V2alpha_ButtonViewComponent], [Apple_Parsec_Siri_V2alpha_DelayedActionComponent], Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?, [Apple_Parsec_Siri_V2alpha_SayItComponent], [Apple_Parsec_Siri_V2alpha_DisambiguationListComponent], [Apple_Parsec_Siri_V2alpha_DomainObjectComponent], PommesRenderOptions?)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Responseframework_PatternModel();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Parse.DirectInvocation();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for ([Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent], [Apple_Parsec_Siri_V2alpha_RenderedDialogComponent], [Apple_Parsec_Siri_V2alpha_ButtonViewComponent], [Apple_Parsec_Siri_V2alpha_DelayedActionComponent], Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?, [Apple_Parsec_Siri_V2alpha_SayItComponent], [Apple_Parsec_Siri_V2alpha_DisambiguationListComponent], [Apple_Parsec_Siri_V2alpha_DomainObjectComponent], PommesRenderOptions?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ([Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent], [Apple_Parsec_Siri_V2alpha_RenderedDialogComponent], [Apple_Parsec_Siri_V2alpha_ButtonViewComponent], [Apple_Parsec_Siri_V2alpha_DelayedActionComponent], Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?, [Apple_Parsec_Siri_V2alpha_SayItComponent], [Apple_Parsec_Siri_V2alpha_DisambiguationListComponent], [Apple_Parsec_Siri_V2alpha_DomainObjectComponent], PommesRenderOptions?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVGMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMd, &_sSay10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI45Apple_Parsec_Siri_V2alpha_ButtonViewComponentVGMd, &_sSay10PegasusAPI45Apple_Parsec_Siri_V2alpha_ButtonViewComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVGMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI40Apple_Parsec_Siri_V2alpha_SayItComponentVGMd, &_sSay10PegasusAPI40Apple_Parsec_Siri_V2alpha_SayItComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI53Apple_Parsec_Siri_V2alpha_DisambiguationListComponentVGMd, &_sSay10PegasusAPI53Apple_Parsec_Siri_V2alpha_DisambiguationListComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentVGMd, &_sSay10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SiriInformationSearch19PommesRenderOptionsCSgMd, &_s21SiriInformationSearch19PommesRenderOptionsCSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for ([Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent], [Apple_Parsec_Siri_V2alpha_RenderedDialogComponent], [Apple_Parsec_Siri_V2alpha_ButtonViewComponent], [Apple_Parsec_Siri_V2alpha_DelayedActionComponent], Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?, [Apple_Parsec_Siri_V2alpha_SayItComponent], [Apple_Parsec_Siri_V2alpha_DisambiguationListComponent], [Apple_Parsec_Siri_V2alpha_DomainObjectComponent], PommesRenderOptions?));
    }
  }
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

uint64_t DetailedResultProvider.init(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:informationViewFactory:patternFlowProvider:patternExecutor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12)
{
  *(a9 + 232) = a1;
  *(a9 + 240) = a2;
  v25 = a3;
  specialized Dictionary._Variant.removeValue(forKey:)(0x64656C6961746564, 0xEC00000074786554, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v18 = swift_dynamicCast();
  v19 = v23;
  v20 = v24;
  if (!v18)
  {
    v20 = 0;
    v19 = 0;
  }

  *a9 = v25;
  *(a9 + 8) = v19;
  *(a9 + 16) = v20;
  strcpy((a9 + 24), "detailedText");
  *(a9 + 37) = 0;
  *(a9 + 38) = -5120;
  *(a9 + 224) = a4;
  *(a9 + 120) = a5;
  *(a9 + 128) = a6;
  outlined init with copy of OutputPublisherAsync(a7, a9 + 40);
  outlined init with copy of OutputPublisherAsync(a8, a9 + 80);
  static PatternFlowProvidingHelper.unwrap(_:with:)(a11, a7, (a9 + 136));
  outlined destroy of Any?(a11, &_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(a8);
  __swift_destroy_boxed_opaque_existential_0Tm(a7);
  *(a9 + 176) = a10;
  return outlined init with take of SiriSuggestionsBroker(a12, a9 + 184);
}

uint64_t DetailedResultProvider.patternId.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t DetailedResultProvider.patternId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t DetailedResultProvider.content.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t closure #1 in DetailedResultProvider.outputManifest.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PommesContext.Source();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  NLContextUpdate.init()();
  v14 = *(a2 + 120);
  v13 = *(a2 + 128);
  *v6 = v14;
  v6[1] = v13;
  (*(v4 + 104))(v6, enum case for PommesContext.Source.pegasusResponse(_:), v3);
  outlined copy of Data?(v14, v13);
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  v15 = type metadata accessor for PommesContext();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  NLContextUpdate.pommesContext.setter();
  v16 = type metadata accessor for NLContextUpdate();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t DetailedResultProvider.makeSingleWindowFlow()()
{
  v1[38] = v0;
  type metadata accessor for DialogPhase();
  v1[39] = swift_task_alloc();
  v2 = type metadata accessor for OutputGenerationManifest();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  v3 = type metadata accessor for WindowedPaginationParameters();
  v1[43] = v3;
  v1[44] = *(v3 - 8);
  v1[45] = swift_task_alloc();

  return _swift_task_switch(DetailedResultProvider.makeSingleWindowFlow(), 0, 0);
}

{
  v25 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.makeSingleWindowFlow", v4, 2u);
  }

  v5 = *(v0 + 304);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(*(v0 + 304) + 8);
    WindowedPaginationParameters.init(windowSize:_:)();
    v8 = swift_task_alloc();
    *(v0 + 368) = v8;
    *v8 = v0;
    v8[1] = DetailedResultProvider.makeSingleWindowFlow();
    v9 = *(v0 + 360);

    return DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(v7, v6, v9);
  }

  else
  {
    outlined init with copy of DetailedResultProvider(*(v0 + 304), v0 + 16);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      v15 = Dictionary.description.getter();
      v17 = v16;
      outlined destroy of DetailedResultProvider(v0 + 16);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_0, v11, v12, "DetailedResultFlowProvider.makeSingleWindow: No content to display from provided parameters %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    else
    {

      outlined destroy of DetailedResultProvider(v0 + 16);
    }

    v19 = *(v0 + 304);
    outlined init with copy of OutputPublisherAsync(v19 + 40, v0 + 264);
    v20 = *(v19 + 176);
    type metadata accessor for ErrorFlowFactory();
    v21 = swift_allocObject();
    outlined init with take of SiriSuggestionsBroker((v0 + 264), v21 + 16);
    *(v21 + 56) = v20;

    v22 = ErrorFlowFactory.makeErrorFlow(message:)(1701736302, 0xE400000000000000);

    v23 = *(v0 + 8);

    return v23(v22);
  }
}

{
  v1 = v0[48];
  v3 = v0[41];
  v2 = v0[42];
  v8 = v0[40];
  v4 = v0[38];
  __swift_project_boxed_opaque_existential_1((v4 + 136), *(v4 + 160));
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v4;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v5 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v3 + 8))(v2, v8);

  v6 = v0[1];

  return v6(v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DetailedResultProvider.makeSingleWindowFlow()(uint64_t a1)
{
  v4 = *v2;
  v4[47] = v1;

  v5 = v4[45];
  v6 = v4[44];
  v7 = v4[43];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = DetailedResultProvider.makeSingleWindowFlow();
  }

  else
  {
    v4[48] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = DetailedResultProvider.makeSingleWindowFlow();
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Date();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:), 0, 0);
}

void DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)()
{
  v29 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.executePatternForWindow", v4, 2u);
  }

  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);

  v8 = WindowedPaginationParameters.asCATParameters()();
  v9 = *v5;
  v10 = v5[3];
  v11 = v5[4];
  v26 = v9;
  v28 = &type metadata for String;
  *&v27 = v7;
  *(&v27 + 1) = v6;

  specialized Dictionary._Variant.updateValue(_:forKey:)(&v27, v10, v11, (v0 + 16));
  outlined destroy of Any?(v0 + 16, &_sypSgMd, &_sypSgMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27 = v8;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v26, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v27);

  v13 = v27;
  *(v0 + 112) = v27;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v27 = v17;
    *v16 = 136315138;
    v18 = Dictionary.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v27);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v14, v15, "DetailedResultFlowProvider.executePatternForWindow parameters: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  v21 = *(v0 + 80);
  type metadata accessor for PerformanceUtil();
  *(v0 + 120) = static PerformanceUtil.shared.getter();
  v22 = swift_task_alloc();
  *(v0 + 128) = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v13;
  Date.init()();
  v25 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v23 = swift_task_alloc();
  *(v0 + 136) = v23;
  v24 = type metadata accessor for PatternExecutionResult();
  *v23 = v0;
  v23[1] = DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:);
  v36 = v22;
  v37 = v24;
  v35 = &async function pointer to partial apply for closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:);
  v34 = 2;
  v33 = 60;
  v31 = 116;
  v32 = "executePatternForWindow(windowContent:paginationParameters:)";

  __asm { BR              X8 }
}

uint64_t DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);

  if (v0)
  {
    v3 = DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:);
  }

  else
  {

    v3 = DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DetailedResultProvider.makeWindowingFlowProvider()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(DetailedResultProvider.makeWindowingFlowProvider(), 0, 0);
}

uint64_t DetailedResultProvider.makeWindowingFlowProvider()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.makeWindowingFlowProvider", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  outlined init with copy of DetailedResultProvider(v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  v5 = type metadata accessor for ConfirmationResponse();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  type metadata accessor for DialogPhase();
  v4[40] = swift_task_alloc();
  type metadata accessor for OutputGenerationManifest();
  v4[41] = swift_task_alloc();
  v6 = type metadata accessor for WindowedPaginationParameters();
  v4[42] = v6;
  v7 = *(v6 - 8);
  v4[43] = v7;
  v4[44] = *(v7 + 64);
  v4[45] = swift_task_alloc();

  return _swift_task_switch(DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.makeWindowFlow", v4, 2u);
  }

  v5 = *(v0 + 360);
  v6 = *(v0 + 336);
  v7 = *(v0 + 344);
  v8 = *(v0 + 304);
  v27 = *(v0 + 312);
  v9 = *(v0 + 288);
  v26 = *(v0 + 296);
  v10 = *(v0 + 280);
  v25 = *(v0 + 272);
  v11 = *(v0 + 264);

  outlined init with copy of DetailedResultProvider(v9, v0 + 16);
  (*(v7 + 16))(v5, v11, v6);
  v12 = (*(v7 + 80) + 280) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v14 = *(v0 + 224);
  *(v13 + 208) = *(v0 + 208);
  *(v13 + 224) = v14;
  *(v13 + 240) = *(v0 + 240);
  v15 = *(v0 + 256);
  v16 = *(v0 + 160);
  *(v13 + 144) = *(v0 + 144);
  *(v13 + 160) = v16;
  v17 = *(v0 + 192);
  *(v13 + 176) = *(v0 + 176);
  *(v13 + 192) = v17;
  v18 = *(v0 + 96);
  *(v13 + 80) = *(v0 + 80);
  *(v13 + 96) = v18;
  v19 = *(v0 + 128);
  *(v13 + 112) = *(v0 + 112);
  *(v13 + 128) = v19;
  v20 = *(v0 + 32);
  *(v13 + 16) = *(v0 + 16);
  *(v13 + 32) = v20;
  v21 = *(v0 + 64);
  *(v13 + 48) = *(v0 + 48);
  *(v13 + 64) = v21;
  *(v13 + 256) = v15;
  *(v13 + 264) = v25;
  *(v13 + 272) = v10;
  (*(v7 + 32))(v13 + v12, v5, v6);

  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  ResponseFactory.init()();
  type metadata accessor for SimpleYesNoPromptFlowStrategy();
  swift_allocObject();
  SimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)();
  __swift_project_boxed_opaque_existential_1((v9 + 136), *(v9 + 160));
  (*(v8 + 104))(v27, enum case for ConfirmationResponse.confirmed(_:), v26);
  v22 = dispatch thunk of PatternFlowProviding.makeResponseFlowWithContinuationPrompt<A>(strategy:shouldContinueForResponse:)();

  (*(v8 + 8))(v27, v26);

  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t closure #1 in DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = PatternExecutor.execute(pattern:in:with:deviceState:);

  return DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(a2, a3, a4);
}

uint64_t DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for DialogPhase();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DetailedResultFlowProvider.makeFinalWindowFlow", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:);
  v6 = v0[4];
  v7 = v0[2];
  v8 = v0[3];

  return DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(v8, v6, v7);
}

{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v8 = v0[7];
  v4 = v0[5];
  __swift_project_boxed_opaque_existential_1((v4 + 136), *(v4 + 160));
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v4;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v5 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v3 + 8))(v2, v8);

  v6 = v0[1];

  return v6(v5);
}

uint64_t DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(uint64_t a1)
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
    *(v4 + 88) = a1;

    return _swift_task_switch(DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:), 0, 0);
  }
}

uint64_t closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:), 0, 0);
}

uint64_t closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)()
{
  v1 = v0[3];
  v2 = v1[26];
  v3 = v1[27];
  __swift_project_boxed_opaque_existential_1(v1 + 23, v2);
  v5 = v1[29];
  v4 = v1[30];
  v6 = v1[28];
  v10 = (*(v3 + 8) + **(v3 + 8));
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  v8 = v0[4];

  return v10(v5, v4, v6, v8, v1 + 10, v2, v3);
}

uint64_t protocol witness for DetailedResultFlowProvider.makeSingleWindowFlow() in conformance DetailedResultProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return DetailedResultProvider.makeSingleWindowFlow()();
}

uint64_t protocol witness for DetailedResultFlowProvider.makeWindowingFlowProvider() in conformance DetailedResultProvider(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return DetailedResultProvider.makeWindowingFlowProvider()(a1);
}

uint64_t protocol witness for ContinuationPromptFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:) in conformance DetailedResultProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return DetailedResultProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(a1, v4, v5);
}

uint64_t protocol witness for WindowingFlowProvider.makeWindowFlow(paginationParameters:windowContent:) in conformance DetailedResultProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)(a1, v4, v5);
}

uint64_t sub_B2148()
{
  v1 = type metadata accessor for WindowedPaginationParameters();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v5 = *(v0 + 144);
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 136), v5);
  }

  v6 = (v3 + 280) & ~v3;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 152));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 200));

  (*(v2 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  v2 = *(type metadata accessor for WindowedPaginationParameters() - 8);
  v3 = (*(v2 + 80) + 280) & ~*(v2 + 80);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);

  return closure #1 in DetailedResultProvider.makeWindowFlow(paginationParameters:windowContent:)(v0 + 16, v4, v5, v0 + v3);
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailedResultProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t storeEnumTagSinglePayload for DetailedResultProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 48 * v20);
      if (v33)
      {
        outlined init with take of Decodable & Encodable & Sendable(v24, v34);
      }

      else
      {
        outlined init with copy of Decodable & Encodable & Sendable(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Decodable & Encodable & Sendable(v34, (*(v7 + 56) + 48 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        outlined copy of Data._Representation(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        outlined init with copy of Decodable & Encodable & Sendable(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Decodable & Encodable & Sendable(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = outlined copy of Data._Representation(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    outlined init with take of Any(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return outlined destroy of Any?(v21, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #2 in DetailedResultProvider.executePatternForWindow(windowContent:paginationParameters:)(a1, v5, v4);
}

uint64_t outlined init with copy of Decodable & Encodable & Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static PatternFlowProvidingHelper.unwrap(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of PatternFlowProviding?(a1, &v9);
  if (v10)
  {
    outlined init with take of OutputPublisherAsync(&v9, v12);
    return outlined init with take of OutputPublisherAsync(v12, a3);
  }

  else
  {
    outlined destroy of PatternFlowProviding?(&v9);
    outlined init with copy of OutputPublisherAsync(a2, v12);
    v6 = type metadata accessor for ResponseFactory();
    swift_allocObject();
    v7 = ResponseFactory.init()();
    v10 = v6;
    v11 = &protocol witness table for ResponseFactory;
    *&v9 = v7;
    v8 = type metadata accessor for PatternFlowProvider();
    swift_allocObject();
    result = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
    a3[3] = v8;
    a3[4] = &protocol witness table for PatternFlowProvider;
    *a3 = result;
  }

  return result;
}

uint64_t outlined init with copy of PatternFlowProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Builder.subscript.setter()
{
  return Builder.subscript.setter();
}

{
  return Builder.subscript.setter();
}

Swift::String __swiftcall Message.textFormatString()()
{
  v0 = Message.textFormatString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall UtteranceNormalizer.normalize(_:preserveCase:)(Swift::String _, Swift::Bool preserveCase)
{
  v2 = UtteranceNormalizer.normalize(_:preserveCase:)(_._countAndFlagsBits, _._object, preserveCase);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()()
{
  v0 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}