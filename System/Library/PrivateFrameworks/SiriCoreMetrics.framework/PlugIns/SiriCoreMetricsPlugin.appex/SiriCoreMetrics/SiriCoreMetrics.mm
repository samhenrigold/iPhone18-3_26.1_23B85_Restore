uint64_t SiriCoreMetricsPlugin.perform(_:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for LighthouseRuntimeProcessorResult();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriCoreMetrics();
  v9 = swift_allocObject();
  v10 = SiriCoreMetrics.init(bookmarkLocation:conversationType:)();
  if (!v2)
  {
    v14[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18lighthouse_runtime26LighthouseRuntimeProcessorCy15SiriCoreMetricsADCGMd, &_s18lighthouse_runtime26LighthouseRuntimeProcessorCy15SiriCoreMetricsADCGMR);
    swift_allocObject();
    v11 = a1;
    v12 = LighthouseRuntimeProcessor.init(task:plugin:enforceDiagnosticCheck:)();
    if (v12)
    {
      *(v3 + OBJC_IVAR___SiriCoreMetricsPlugin_processor) = v12;

      LighthouseRuntimeProcessor.process()();
      v9 = LighthouseRuntimeProcessorResult.mlrTaskResult.getter();
    }

    else
    {
      (*(v6 + 104))(v8, enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:), v5);
      v9 = LighthouseRuntimeProcessorResult.mlrTaskResult.getter();
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall SiriCoreMetricsPlugin.stop()()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stop was called", v4, 2u);
  }

  if (*(v1 + OBJC_IVAR___SiriCoreMetricsPlugin_processor))
  {

    LighthouseRuntimeProcessor.stop()();
  }
}

id SiriCoreMetricsPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriCoreMetricsPlugin.init()()
{
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR___SiriCoreMetricsPlugin_processor] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriCoreMetricsPlugin(0);
  return objc_msgSendSuper2(&v2, "init");
}

id SiriCoreMetricsPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriCoreMetricsPlugin(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SiriCoreMetricsPlugin(uint64_t a1)
{
  result = type metadata singleton initialization cache for SiriCoreMetricsPlugin;
  if (!type metadata singleton initialization cache for SiriCoreMetricsPlugin)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SiriCoreMetricsPlugin(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
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