id SwiftUIProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for SwiftUIProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for SwiftUIProvider;
  if (!type metadata singleton initialization cache for SwiftUIProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SwiftUIProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = type metadata accessor for TraceConfig();
  if (v7 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void specialized SwiftUIProvider.shouldStartTracing(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = type metadata accessor for TraceConfig();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TraceModality();
  v11 = *(v26 - 8);
  __chkstk_darwin();
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TraceConfig.Version();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR___SwiftUIProvider_config;
  swift_beginAccess();
  TraceConfig.version.getter();
  swift_endAccess();
  if ((*(v15 + 88))(v17, v14) != enum case for TraceConfig.Version.v1(_:))
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_5;
  }

  v19 = *(v6 + OBJC_IVAR___SwiftUIProvider_logger);
  if (v19)
  {
    swift_unknownObjectRetain();
    v20 = String._bridgeToObjectiveC()();
    [v19 warnWithMessage:v20];
    swift_unknownObjectRelease();

LABEL_5:
    type metadata accessor for SwiftUITrace();
    v21 = v26;
    (*(v11 + 104))(v13, enum case for TraceModality.ktrace(_:), v26);
    v23 = v27;
    v22 = v28;
    (*(v27 + 16))(v10, v7 + v18, v28);
    v24 = static SwiftUITrace.beginSwiftUITrace(modality:config:)();
    (*(v23 + 8))(v10, v22);
    (*(v11 + 8))(v13, v21);
    v25 = *(v7 + OBJC_IVAR___SwiftUIProvider_tracer);
    *(v7 + OBJC_IVAR___SwiftUIProvider_tracer) = v24;

    return;
  }

  __break(1u);
}

void specialized SwiftUIProvider.willFinish(catalog:file:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v4 = &v13 - v3;
  if (a1)
  {
    v5 = *&v1[OBJC_IVAR___SwiftUIProvider_tracer];
    if (v5)
    {
      v6 = v5;
      Tracer.endTracing()();
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      type metadata accessor for KtraceFile();
      swift_allocObject();
      v8 = v1;
      KtraceFile.init(file:owner:path:)();
      Tracer.appendChunks(to:)();

      v9 = *&v8[OBJC_IVAR___SwiftUIProvider_logger];
      if (v9)
      {
        swift_unknownObjectRetain();
        v10 = String._bridgeToObjectiveC()();

        [v9 warnWithMessage:v10];
        swift_unknownObjectRelease();

        type metadata accessor for SwiftUITrace();
        static SwiftUITrace.deinitialize()();

        return;
      }

      __break(1u);
      goto LABEL_12;
    }

    v11 = *&v1[OBJC_IVAR___SwiftUIProvider_logger];
    if (!v11)
    {
LABEL_13:
      __break(1u);
      return;
    }
  }

  else
  {
    v11 = *&v1[OBJC_IVAR___SwiftUIProvider_logger];
    if (!v11)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  swift_unknownObjectRetain();
  v14 = String._bridgeToObjectiveC()();
  [v11 warnWithMessage:v14];
  swift_unknownObjectRelease();
  v12 = v14;
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