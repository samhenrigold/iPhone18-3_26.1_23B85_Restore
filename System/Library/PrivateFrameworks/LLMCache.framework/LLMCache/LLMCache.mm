unint64_t lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags()
{
  result = lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags;
  if (!lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags;
  if (!lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags);
  }

  return result;
}

uint64_t LLMCacheManagerFeatureFlags.isEnabled.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = static LLMCacheManagerFeatureFlags.forceEnabled;
  if (static LLMCacheManagerFeatureFlags.forceEnabled == 2)
  {
    v4[3] = &type metadata for LLMCacheManagerFeatureFlags;
    v4[4] = lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags();
    LOBYTE(v4[0]) = v1;
    v2 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  return v2 & 1;
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance LLMCacheManagerFeatureFlags()
{
  v1 = "FullPlanner";
  if (*v0 != 1)
  {
    v1 = "ResponseGeneration";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "FastPlanner";
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_255A21A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255A21AEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s8LLMCache13CacheDatabase_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_255A21BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_255A21CE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_255A21D3C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_255A21D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_255A21DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_255A21E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_255A21F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_255A21F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UserID();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255A220A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UserID();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_255A221CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255A22278(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255A2231C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static LLMCacheManagerFeatureFlags.forceEnabled;
  return result;
}

uint64_t sub_255A22368(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static LLMCacheManagerFeatureFlags.forceEnabled = v1;
  return result;
}

uint64_t CacheEntry.llmOutput.getter()
{
  v1 = *v0;

  return v1;
}

LLMCache::CacheEntry __swiftcall CacheEntry.init(llmOutput:isExactMatch:)(LLMCache::CacheEntry llmOutput, Swift::Bool isExactMatch)
{
  *v2 = llmOutput.llmOutput;
  *(v2 + 16) = isExactMatch;
  llmOutput.isExactMatch = isExactMatch;
  return llmOutput;
}

id default argument 0 of static Logger.makeSignpostID(log:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;

  return v1;
}

id default argument 1 of static Logger.withSignpost<A>(name:log:completion:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;

  return v1;
}

uint64_t getEnumTagSinglePayload for ListResponse(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ListResponse(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CacheEntry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CacheEntry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL Logger.Subsystem.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Subsystem.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Logger.Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Logger.Subsystem(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Subsystem@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Subsystem, *a1);

  *a2 = v3 != 0;
  return result;
}

LLMCache::Logger::Category_optional __swiftcall Logger.Category.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Category.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = LLMCache_Logger_Category_instrumentation;
  }

  else
  {
    v4.value = LLMCache_Logger_Category_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t Logger.Category.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656D757274736E49;
  }

  else
  {
    return 0x6E614D6568636143;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Logger.Category(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D757274736E49;
  }

  else
  {
    v3 = 0x6E614D6568636143;
  }

  if (v2)
  {
    v4 = 0xEC00000072656761;
  }

  else
  {
    v4 = 0xEF6E6F697461746ELL;
  }

  if (*a2)
  {
    v5 = 0x656D757274736E49;
  }

  else
  {
    v5 = 0x6E614D6568636143;
  }

  if (*a2)
  {
    v6 = 0xEF6E6F697461746ELL;
  }

  else
  {
    v6 = 0xEC00000072656761;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Logger.Category()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Logger.Category(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Logger.Category(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Logger.Category@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Logger.Category.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Logger.Category(uint64_t *a1@<X8>)
{
  v2 = 0x6E614D6568636143;
  if (*v1)
  {
    v2 = 0x656D757274736E49;
  }

  v3 = 0xEC00000072656761;
  if (*v1)
  {
    v3 = 0xEF6E6F697461746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t one-time initialization function for log()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.log = result;
  return result;
}

uint64_t *Logger.log.unsafeMutableAddressor()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  return &static Logger.log;
}

id static Logger.log.getter()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;

  return v1;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.logger);
  __swift_project_value_buffer(v0, static Logger.logger);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;
  return Logger.init(_:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t one-time initialization function for instrumentation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.instrumentation);
  __swift_project_value_buffer(v0, static Logger.instrumentation);
  type metadata accessor for OS_os_log();
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t Logger.logger.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logger.logger.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t static Logger.makeSignpostID(log:)(void *a1)
{
  v1 = a1;

  return OSSignpostID.init(log:)();
}

uint64_t static Logger.begin(_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.begin(_:_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static os_signpost_type_t.begin.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.event(_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t static Logger.end(_:_:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static os_signpost_type_t.end.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t static Logger.withSignpost<A>(name:log:completion:)(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void (*a5)(uint64_t))
{
  v17 = a3;
  v16[0] = a1;
  v16[1] = a2;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OS_os_log.signpostsEnabled.getter();
  if ((v11 & 1) == 0)
  {
    return (a5)(v11, v12);
  }

  v13 = a4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v14 = os_signpost(_:dso:log:name:signpostID:)();
  a5(v14);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v8 + 8))(v10, v7);
}

unint64_t lazy protocol witness table accessor for type Logger.Subsystem and conformance Logger.Subsystem()
{
  result = lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem;
  if (!lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Subsystem and conformance Logger.Subsystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Logger.Category and conformance Logger.Category()
{
  result = lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category;
  if (!lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Logger.Category and conformance Logger.Category);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Logger.Subsystem(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Logger.Subsystem(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Logger.Category(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Logger.Category(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t BiomeLogEmitter.emitInsertStarted(clientTraceId:namespace:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for UUID();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v61 - v12;
  v13 = type metadata accessor for Date();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v68 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for LLMCacheManagerTelemetry();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  v25 = *a2;
  UUID.init()();
  LOBYTE(v78[0]) = v25;
  (*(*v3 + 144))(a3, a1, v78);
  LOBYTE(v78[0]) = 3;
  v26 = *(*v3 + 152);
  v76 = v22;
  v26(a3, 0, v78);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v77 = v24;
  v65 = v17;
  v62 = a3;
  v66 = v19;
  v67 = v18;
  v64 = v80;
  v63 = __swift_project_boxed_opaque_existential_1(v78, v79);
  v27 = v75;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v28 = v73;
  v29 = v74;
  v30 = *(v73 + 48);
  v31 = v30(v27, 1, v74);
  v61 = v30;
  if (v31 == 1)
  {
    v32 = v65;
    static Date.now.getter();
    if (v30(v27, 1, v29) != 1)
    {
      outlined destroy of Date?(v27);
    }
  }

  else
  {
    v32 = v65;
    (*(v28 + 32))(v65, v27, v29);
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  v33 = *(v28 + 8);
  v33(v32, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  static StreamResource.source()();
  v34 = v29;
  v75 = v80;
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v35 = v69;
  v36 = v76;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v37 = v35;
  v38 = v35;
  v39 = v61;
  if (v61(v38, 1, v34) == 1)
  {
    v40 = v39;
    v41 = v68;
    static Date.now.getter();
    v42 = v40(v37, 1, v34);
    v43 = v70;
    if (v42 != 1)
    {
      outlined destroy of Date?(v37);
    }
  }

  else
  {
    v41 = v68;
    (*(v28 + 32))(v68, v37, v34);
    v43 = v70;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  v33(v41, v34);
  __swift_destroy_boxed_opaque_existential_0Tm(v78);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.instrumentation);
  v45 = v71;
  v46 = v72;
  (*(v71 + 16))(v43, v62, v72);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v67;
  v51 = v77;
  if (v49)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v78[0] = v53;
    *v52 = 136315138;
    v54 = UUID.uuidString.getter();
    v55 = v43;
    v57 = v56;
    (*(v45 + 8))(v55, v46);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v57, v78);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_255A20000, v47, v48, "Emitted invocation and insertStarted logging events, cmId: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x259C47EC0](v53, -1, -1);
    MEMORY[0x259C47EC0](v52, -1, -1);

    v59 = *(v66 + 8);
    v59(v76, v50);
  }

  else
  {

    (*(v45 + 8))(v43, v46);
    v59 = *(v66 + 8);
    v59(v36, v50);
  }

  return (v59)(v51, v50);
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

unint64_t lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry()
{
  result = lazy protocol witness table cache variable for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry;
  if (!lazy protocol witness table cache variable for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry)
  {
    type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry);
  }

  return result;
}

uint64_t BiomeLogEmitter.emitInsertEnded(cmId:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Date();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LLMCacheManagerTelemetry();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v42[0]) = 3;
  (*(*v1 + 152))(a1, 1, v42);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v35 = v5;
  v36 = v3;
  v15 = v39;
  v37 = v12;
  v34 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v16 = *(v40 + 48);
  v17 = v16(v8, 1, v9);
  v38 = v14;
  if (v17 == 1)
  {
    v18 = v40;
    static Date.now.getter();
    v19 = v16(v8, 1, v9);
    v20 = a1;
    if (v19 != 1)
    {
      outlined destroy of Date?(v8);
    }
  }

  else
  {
    v18 = v40;
    (*(v40 + 32))(v11, v8, v9);
    v20 = a1;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (*(v18 + 8))(v11, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.instrumentation);
  v22 = v15;
  v23 = v35;
  v24 = v36;
  (*(v15 + 16))(v35, v20, v36);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42[0] = v28;
    *v27 = 136315138;
    v29 = UUID.uuidString.getter();
    v31 = v30;
    (*(v22 + 8))(v23, v24);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v42);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_255A20000, v25, v26, "Emitted insertEnded logging events, cmId: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x259C47EC0](v28, -1, -1);
    MEMORY[0x259C47EC0](v27, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v23, v24);
  }

  return (*(v41 + 8))(v38, v37);
}

uint64_t BiomeLogEmitter.emitInsertFailed(cmId:error:)(uint64_t a1, _BYTE *a2)
{
  v5 = type metadata accessor for UUID();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Date();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LLMCacheManagerTelemetry();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v44[0]) = *a2;
  (*(*v2 + 152))(a1, 2, v44);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v37 = v7;
  v38 = v5;
  v17 = v41;
  v39 = v14;
  v36 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v18 = *(v42 + 48);
  v19 = v18(v10, 1, v11);
  v40 = v16;
  if (v19 == 1)
  {
    v20 = v42;
    static Date.now.getter();
    v21 = v18(v10, 1, v11);
    v22 = a1;
    if (v21 != 1)
    {
      outlined destroy of Date?(v10);
    }
  }

  else
  {
    v20 = v42;
    (*(v42 + 32))(v13, v10, v11);
    v22 = a1;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (*(v20 + 8))(v13, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.instrumentation);
  v24 = v17;
  v25 = v37;
  v26 = v38;
  (*(v17 + 16))(v37, v22, v38);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44[0] = v30;
    *v29 = 136315138;
    v31 = UUID.uuidString.getter();
    v33 = v32;
    (*(v24 + 8))(v25, v26);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v44);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_255A20000, v27, v28, "Emitted insertFailed logging events, cmId: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x259C47EC0](v30, -1, -1);
    MEMORY[0x259C47EC0](v29, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v25, v26);
  }

  return (*(v43 + 8))(v40, v39);
}

uint64_t BiomeLogEmitter.emitSearchStarted(clientTraceId:namespace:listRequest:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v74 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = (&v62 - v14);
  v15 = type metadata accessor for Date();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v21 = type metadata accessor for LLMCacheManagerTelemetry();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v62 - v26;
  LOBYTE(a2) = *a2;
  UUID.init()();
  LOBYTE(v79[0]) = a2;
  (*(*v4 + 144))(a4, a1, v79);
  LOBYTE(v79[0]) = 3;
  v28 = *(*v4 + 160);
  v77 = v25;
  v28(a4, 0, v76, MEMORY[0x277D84F90], v79);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v78 = v27;
  v64 = v18;
  v65 = a4;
  v68 = v22;
  v76 = v21;
  v67 = v81;
  v66 = __swift_project_boxed_opaque_existential_1(v79, v80);
  v29 = v75;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v30 = v72;
  v31 = v73;
  v32 = *(v72 + 48);
  v33 = v32(v29, 1, v73);
  v34 = v30;
  v63 = v32;
  if (v33 == 1)
  {
    static Date.now.getter();
    v35 = v32(v75, 1, v31);
    v36 = v74;
    if (v35 != 1)
    {
      outlined destroy of Date?(v75);
    }
  }

  else
  {
    (*(v30 + 32))(v20, v75, v31);
    v36 = v74;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  v37 = v20;
  v38 = *(v30 + 8);
  v38(v37, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v79);
  static StreamResource.source()();
  v75 = v38;
  v74 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v39 = v77;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v40 = v63;
  if (v63(v36, 1, v31) == 1)
  {
    v41 = v64;
    static Date.now.getter();
    v42 = v40(v36, 1, v31);
    v43 = v69;
    if (v42 != 1)
    {
      outlined destroy of Date?(v36);
    }
  }

  else
  {
    v41 = v64;
    (*(v34 + 32))(v64, v36, v31);
    v43 = v69;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (v75)(v41, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v79);
  v44 = v65;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.instrumentation);
  v47 = v70;
  v46 = v71;
  (*(v71 + 16))(v43, v44, v70);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v76;
  v52 = v78;
  if (v50)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v79[0] = v54;
    *v53 = 136315138;
    v55 = UUID.uuidString.getter();
    v56 = v43;
    v58 = v57;
    (*(v46 + 8))(v56, v47);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v58, v79);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_255A20000, v48, v49, "Emitted invocation and searchStarted logging events, cmId: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x259C47EC0](v54, -1, -1);
    MEMORY[0x259C47EC0](v53, -1, -1);

    v60 = *(v68 + 8);
    v60(v77, v51);
  }

  else
  {

    (*(v46 + 8))(v43, v47);
    v60 = *(v68 + 8);
    v60(v39, v51);
  }

  return (v60)(v52, v51);
}

uint64_t BiomeLogEmitter.emitSearchEnded(cmId:listRequest:listResponse:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - v11;
  v13 = type metadata accessor for Date();
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LLMCacheManagerTelemetry();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v45[0]) = 3;
  (*(*v3 + 160))(a1, 1, a2, a3, v45);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v39 = v9;
  v40 = v7;
  v38[1] = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v19 = v18;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v20 = v41;
  v21 = *(v41 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    static Date.now.getter();
    v22 = v21(v12, 1, v13);
    v23 = a1;
    if (v22 != 1)
    {
      outlined destroy of Date?(v12);
    }
  }

  else
  {
    (*(v20 + 32))(v15, v12, v13);
    v23 = a1;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (*(v20 + 8))(v15, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  v24 = v39;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.instrumentation);
  v26 = v42;
  v27 = v40;
  (*(v42 + 16))(v24, v23, v40);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v27;
    v32 = swift_slowAlloc();
    v45[0] = v32;
    *v30 = 136315138;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    (*(v26 + 8))(v24, v31);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v45);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_255A20000, v28, v29, "Emitted searchEnded logging events, cmId: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x259C47EC0](v32, -1, -1);
    MEMORY[0x259C47EC0](v30, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v24, v27);
  }

  return (*(v43 + 8))(v19, v44);
}

uint64_t BiomeLogEmitter.emitSearchFailed(cmId:listRequest:error:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = type metadata accessor for UUID();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - v11;
  v13 = type metadata accessor for Date();
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LLMCacheManagerTelemetry();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v45[0]) = *a3;
  (*(*v3 + 160))(a1, 2, a2, MEMORY[0x277D84F90], v45);
  type metadata accessor for Library.Streams.LLMCache.CacheManagerTelemetry();
  lazy protocol witness table accessor for type Library.Streams.LLMCache.CacheManagerTelemetry and conformance Library.Streams.LLMCache.CacheManagerTelemetry();
  static StreamResource.source()();
  v39 = v9;
  v40 = v7;
  v38[1] = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v19 = v18;
  LLMCacheManagerTelemetry.writeTimestamp.getter();
  v20 = v41;
  v21 = *(v41 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    static Date.now.getter();
    v22 = v21(v12, 1, v13);
    v23 = a1;
    if (v22 != 1)
    {
      outlined destroy of Date?(v12);
    }
  }

  else
  {
    (*(v20 + 32))(v15, v12, v13);
    v23 = a1;
  }

  dispatch thunk of Source.sendEvent(_:date:)();
  (*(v20 + 8))(v15, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  v24 = v39;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.instrumentation);
  v26 = v42;
  v27 = v40;
  (*(v42 + 16))(v24, v23, v40);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v27;
    v32 = swift_slowAlloc();
    v45[0] = v32;
    *v30 = 136315138;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    (*(v26 + 8))(v24, v31);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v45);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_255A20000, v28, v29, "Emitted searchFailed logging events, cmId: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x259C47EC0](v32, -1, -1);
    MEMORY[0x259C47EC0](v30, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v24, v27);
  }

  return (*(v43 + 8))(v19, v44);
}

uint64_t BiomeLogEmitter.buildInvocationTelemetry(cmId:clientTraceId:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v51 = a1;
  v55 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMd, &_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMd, &_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMd, &_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v45 - v12;
  v13 = type metadata accessor for CacheManagerTarget();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary29CacheManagerRequestInvocationV0dE9NamespaceOSgMd, &_s27IntelligencePlatformLibrary29CacheManagerRequestInvocationV0dE9NamespaceOSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for CacheManagerRequestInvocation();
  v19 = *(v18 - 8);
  v59 = v18;
  v60 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v45 - v23;
  v58 = type metadata accessor for CacheManagerTelemetryEventMetadata();
  v47 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a3;
  CacheManagerTelemetryEventMetadata.init()();
  UUID.init()();
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v29(v24, 0, 1, v27);
  CacheManagerRequestInvocation.clientTraceId.setter();
  v30 = *(v28 + 16);
  v30(v24, v51, v27);
  v29(v24, 0, 1, v27);
  CacheManagerTelemetryEventMetadata.cacheManagerId.setter();
  CacheManagerRequestInvocation.init()();
  v30(v24, v53, v27);
  v29(v24, 0, 1, v27);
  CacheManagerRequestInvocation.clientTraceId.setter();
  v31 = type metadata accessor for CacheManagerRequestInvocation.CacheManagerNamespace();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v17, **(&unk_279806EF8 + v46), v31);
  (*(v32 + 56))(v17, 0, 1, v31);
  CacheManagerRequestInvocation.namespace.setter();
  v33 = v48;
  (*(v60 + 16))(v48, v21, v59);
  v35 = v49;
  v34 = v50;
  (*(v49 + 104))(v33, *MEMORY[0x277D20568], v50);
  LLMCacheManagerTelemetry.init()();
  v36 = v47;
  v37 = v52;
  v38 = v58;
  (*(v47 + 16))(v52, v26, v58);
  (*(v36 + 56))(v37, 0, 1, v38);
  LLMCacheManagerTelemetry.eventMetadata.setter();
  v39 = v54;
  (*(v35 + 16))(v54, v33, v34);
  (*(v35 + 56))(v39, 0, 1, v34);
  LLMCacheManagerTelemetry.target.setter();
  v40 = v56;
  static Date.now.getter();
  v41 = type metadata accessor for Date();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  LLMCacheManagerTelemetry.writeTimestamp.setter();
  v42 = v57;
  static MonotonicTimestamp.nowForSuspendingClock()();
  v43 = type metadata accessor for MonotonicTimestamp();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  LLMCacheManagerTelemetry.monotonicTimestamp.setter();
  (*(v35 + 8))(v33, v34);
  (*(v60 + 8))(v21, v59);
  return (*(v36 + 8))(v26, v58);
}

uint64_t CacheNamespace.toBiomeCacheManagerNamespace()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CacheManagerRequestInvocation.CacheManagerNamespace();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279806EF8 + v3);

  return v5(a1, v6, v4);
}

uint64_t BiomeLogEmitter.buildInsertTelemetry(cmId:state:error:)@<X0>(char *a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a2;
  v100 = a4;
  v101 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMd, &_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v99 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMd, &_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMd, &_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = &v74 - v12;
  v13 = type metadata accessor for CacheManagerTarget();
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x28223BE20](v13);
  v95 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary17CacheManagerErrorVSgMd, &_s27IntelligencePlatformLibrary17CacheManagerErrorVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v74 - v16;
  v17 = type metadata accessor for CacheManagerInsert.Failed();
  v86 = *(v17 - 8);
  v87 = v17;
  MEMORY[0x28223BE20](v17);
  v84 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary17CacheManagerErrorV0F4TypeOSgMd, &_s27IntelligencePlatformLibrary17CacheManagerErrorV0F4TypeOSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v79 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v74 - v22;
  v23 = type metadata accessor for CacheManagerError();
  v82 = *(v23 - 8);
  v83 = v23;
  MEMORY[0x28223BE20](v23);
  v81 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CacheManagerInsert.Ended();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for CacheManagerInsert.Started();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for CacheManagerInsert();
  v92 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v74 - v32;
  v34 = type metadata accessor for CacheManagerTelemetryEventMetadata();
  v90 = *(v34 - 8);
  v91 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a3;
  CacheManagerTelemetryEventMetadata.init()();
  UUID.init()();
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v40(v33, 0, 1, v38);
  CacheManagerRequestInvocation.clientTraceId.setter();
  (*(v39 + 16))(v33, v101, v38);
  v40(v33, 0, 1, v38);
  v101 = v36;
  v41 = CacheManagerTelemetryEventMetadata.cacheManagerId.setter();
  if (!v89)
  {
    CacheManagerInsert.Ended.init()();
    CacheManagerInsert.Ended.exists.setter();
    v43 = v30;
    (*(v75 + 32))(v30, v28, v76);
    v44 = MEMORY[0x277D20538];
    goto LABEL_5;
  }

  if (v89 != 1)
  {
    v47 = v81;
    MEMORY[0x259C47250](v41);
    v48 = MEMORY[0x277D20508];
    v49 = v30;
    if ((v37 - 1) >= 2)
    {
      if (v37)
      {
        v51 = type metadata accessor for CacheManagerError.ErrorType();
        v55 = *(v51 - 8);
        (*(v55 + 56))(v79, 1, 1, v51);
        v56 = *v48;
        v54 = v80;
        (*(v55 + 104))(v80, v56, v51);
        goto LABEL_11;
      }

      v48 = MEMORY[0x277D20510];
    }

    v50 = *v48;
    v51 = type metadata accessor for CacheManagerError.ErrorType();
    v52 = *(v51 - 8);
    v53 = v79;
    (*(v52 + 104))(v79, v50, v51);
    (*(v52 + 56))(v53, 0, 1, v51);
    v54 = v80;
    (*(v52 + 32))(v80, v53, v51);
LABEL_11:
    type metadata accessor for CacheManagerError.ErrorType();
    (*(*(v51 - 8) + 56))(v54, 0, 1, v51);
    v57 = MEMORY[0x259C47240](v54);
    v58 = v84;
    MEMORY[0x259C472B0](v57);
    v60 = v82;
    v59 = v83;
    v61 = v85;
    (*(v82 + 16))(v85, v47, v83);
    (*(v60 + 56))(v61, 0, 1, v59);
    CacheManagerInsert.Failed.reason.setter();
    (*(v60 + 8))(v47, v59);
    (*(v86 + 32))(v49, v58, v87);
    v44 = MEMORY[0x277D20530];
    v46 = v97;
    v45 = v98;
    v43 = v49;
    goto LABEL_12;
  }

  CacheManagerInsert.Ended.init()();
  CacheManagerInsert.Ended.exists.setter();
  v42 = v26;
  v43 = v30;
  (*(v77 + 32))(v30, v42, v78);
  v44 = MEMORY[0x277D20528];
LABEL_5:
  v46 = v97;
  v45 = v98;
LABEL_12:
  v63 = v95;
  v62 = v96;
  v65 = v93;
  v64 = v94;
  v66 = v102;
  v88 = v43;
  v67 = v92;
  (*(v92 + 104))(v43, *v44, v102);
  (*(v67 + 16))(v63, v43, v66);
  (*(v62 + 104))(v63, *MEMORY[0x277D20570], v46);
  LLMCacheManagerTelemetry.init()();
  v68 = v90;
  v69 = v91;
  (*(v90 + 16))(v65, v101, v91);
  (*(v68 + 56))(v65, 0, 1, v69);
  LLMCacheManagerTelemetry.eventMetadata.setter();
  (*(v62 + 16))(v64, v63, v46);
  (*(v62 + 56))(v64, 0, 1, v46);
  LLMCacheManagerTelemetry.target.setter();
  static Date.now.getter();
  v70 = type metadata accessor for Date();
  (*(*(v70 - 8) + 56))(v45, 0, 1, v70);
  LLMCacheManagerTelemetry.writeTimestamp.setter();
  v71 = v99;
  static MonotonicTimestamp.nowForSuspendingClock()();
  v72 = type metadata accessor for MonotonicTimestamp();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  LLMCacheManagerTelemetry.monotonicTimestamp.setter();
  (*(v62 + 8))(v63, v46);
  (*(v67 + 8))(v88, v102);
  return (*(v68 + 8))(v101, v69);
}

uint64_t LLMCacheManagerError.toBiomeCacheManagerErrorType()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CacheManagerError.ErrorType();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) >= 2)
  {
    v6 = MEMORY[0x277D20510];
  }

  else
  {
    v6 = MEMORY[0x277D20508];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t BiomeLogEmitter.buildSearchTelemetry(cmId:state:listRequest:listResponse:error:)@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v107 = a4;
  v102 = a3;
  v119 = a2;
  v120 = a1;
  v118 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMd, &_s27IntelligencePlatformLibrary18MonotonicTimestampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMd, &_s27IntelligencePlatformLibrary18CacheManagerTargetOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v112 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMd, &_s27IntelligencePlatformLibrary34CacheManagerTelemetryEventMetadataVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v111 = &v90 - v14;
  v15 = type metadata accessor for CacheManagerTarget();
  v114 = *(v15 - 8);
  v115 = v15;
  MEMORY[0x28223BE20](v15);
  v113 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary17CacheManagerErrorVSgMd, &_s27IntelligencePlatformLibrary17CacheManagerErrorVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v104 = &v90 - v18;
  v19 = type metadata accessor for CacheManagerSearch.Failed();
  v105 = *(v19 - 8);
  v106 = v19;
  MEMORY[0x28223BE20](v19);
  v103 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary17CacheManagerErrorV0F4TypeOSgMd, &_s27IntelligencePlatformLibrary17CacheManagerErrorV0F4TypeOSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v97 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v98 = &v90 - v24;
  v101 = type metadata accessor for CacheManagerError();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for AnnotatedCacheEntry(0);
  v96 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary18CacheManagerSearchO0deF8StrategyOSgMd, &_s27IntelligencePlatformLibrary18CacheManagerSearchO0deF8StrategyOSgMR);
  MEMORY[0x28223BE20](v27 - 8);
  v95 = &v90 - v28;
  v93 = type metadata accessor for CacheManagerSearch.Ended();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for CacheManagerSearch.Started();
  v94 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CacheManagerSearch();
  v110 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v122 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v90 - v36;
  v38 = type metadata accessor for CacheManagerTelemetryEventMetadata();
  v108 = *(v38 - 8);
  v109 = v38;
  MEMORY[0x28223BE20](v38);
  v40 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a5;
  CacheManagerTelemetryEventMetadata.init()();
  UUID.init()();
  v42 = type metadata accessor for UUID();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v44(v37, 0, 1, v42);
  CacheManagerRequestInvocation.clientTraceId.setter();
  (*(v43 + 16))(v37, v120, v42);
  v44(v37, 0, 1, v42);
  v120 = v40;
  v45 = CacheManagerTelemetryEventMetadata.cacheManagerId.setter();
  if (!v119)
  {
    CacheManagerInsert.Ended.init()();
    CacheManagerInsert.Ended.exists.setter();
    v53 = v122;
    (*(v94 + 32))(v122, v33, v31);
    v57 = MEMORY[0x277D20560];
LABEL_16:
    v72 = v115;
    v71 = v116;
    v60 = v113;
    v61 = v114;
    v73 = v112;
LABEL_19:
    v81 = v110;
    v82 = v121;
    (*(v110 + 104))(v53, *v57, v121);
    (*(v81 + 16))(v60, v53, v82);
    (*(v61 + 104))(v60, *MEMORY[0x277D20578], v72);
    LLMCacheManagerTelemetry.init()();
    v84 = v108;
    v83 = v109;
    v85 = v111;
    (*(v108 + 16))(v111, v120, v109);
    (*(v84 + 56))(v85, 0, 1, v83);
    LLMCacheManagerTelemetry.eventMetadata.setter();
    (*(v61 + 16))(v73, v60, v72);
    (*(v61 + 56))(v73, 0, 1, v72);
    LLMCacheManagerTelemetry.target.setter();
    static Date.now.getter();
    v86 = type metadata accessor for Date();
    (*(*(v86 - 8) + 56))(v71, 0, 1, v86);
    LLMCacheManagerTelemetry.writeTimestamp.setter();
    v87 = v117;
    static MonotonicTimestamp.nowForSuspendingClock()();
    v88 = type metadata accessor for MonotonicTimestamp();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    LLMCacheManagerTelemetry.monotonicTimestamp.setter();
    (*(v61 + 8))(v60, v72);
    (*(v81 + 8))(v122, v121);
    return (*(v84 + 8))(v120, v83);
  }

  if (v119 != 1)
  {
    v58 = v99;
    MEMORY[0x259C47250](v45);
    v59 = MEMORY[0x277D20508];
    v60 = v113;
    v61 = v114;
    v62 = v112;
    v53 = v122;
    if ((v41 - 1) >= 2)
    {
      if (v41)
      {
        v64 = type metadata accessor for CacheManagerError.ErrorType();
        v74 = *(v64 - 8);
        (*(v74 + 56))(v97, 1, 1, v64);
        v75 = *v59;
        v69 = v98;
        (*(v74 + 104))(v98, v75, v64);
        goto LABEL_18;
      }

      v59 = MEMORY[0x277D20510];
    }

    v63 = *v59;
    v64 = type metadata accessor for CacheManagerError.ErrorType();
    v65 = *(v64 - 8);
    v66 = v60;
    v67 = v61;
    v68 = v97;
    (*(v65 + 104))(v97, v63, v64);
    (*(v65 + 56))(v68, 0, 1, v64);
    v69 = v98;
    v70 = v68;
    v61 = v67;
    v60 = v66;
    (*(v65 + 32))(v98, v70, v64);
LABEL_18:
    type metadata accessor for CacheManagerError.ErrorType();
    (*(*(v64 - 8) + 56))(v69, 0, 1, v64);
    v76 = MEMORY[0x259C47240](v69);
    v77 = v103;
    MEMORY[0x259C47390](v76);
    v78 = v100;
    v79 = v104;
    v80 = v101;
    (*(v100 + 16))(v104, v58, v101);
    (*(v78 + 56))(v79, 0, 1, v80);
    CacheManagerInsert.Failed.reason.setter();
    (*(v78 + 8))(v58, v80);
    (*(v105 + 32))(v53, v77, v106);
    v57 = MEMORY[0x277D20558];
    v72 = v115;
    v71 = v116;
    v73 = v62;
    goto LABEL_19;
  }

  v46 = v107;
  v123 = v107;

  specialized MutableCollection<>.sort(by:)(&v123);
  v47 = v123;
  CacheManagerSearch.Ended.init()();
  v48 = *(v102 + 16);
  v49 = type metadata accessor for CacheManagerSearch.CacheManagerSearchStrategy();
  v50 = *(v49 - 8);
  v51 = MEMORY[0x277D20540];
  if (!v48)
  {
    v51 = MEMORY[0x277D20548];
  }

  v52 = v95;
  (*(*(v49 - 8) + 104))(v95, *v51, v49);
  (*(v50 + 56))(v52, 0, 1, v49);
  MEMORY[0x259C47330](v52);
  v53 = v122;
  v54 = v96;
  if (*(v46 + 16) >> 31)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v123) = 0;
    CacheManagerSearch.Ended.resultCount.setter();
    v52 = *(v47 + 16);
    if (!v52)
    {
      CacheManagerSearch.Ended.highestMatchScore.setter();

      goto LABEL_15;
    }

    v55 = v47 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    CacheManagerSearch.Ended.highestMatchScore.setter();
    if (v52 <= *(v47 + 16))
    {
      v56 = v90;
      outlined init with copy of AnnotatedCacheEntry(v55 + *(v54 + 72) * (v52 - 1), v90);

      outlined destroy of AnnotatedCacheEntry(v56);
LABEL_15:
      CacheManagerSearch.Ended.lowestMatchScore.setter();
      (*(v92 + 32))(v53, v30, v93);
      v57 = MEMORY[0x277D20550];
      goto LABEL_16;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t SearchStrategy.toBiomeSearchStrategy()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for CacheManagerSearch.CacheManagerSearchStrategy();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D20540];
  if (!v3)
  {
    v6 = MEMORY[0x277D20548];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

Swift::Int BiomeLogEmitter.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BiomeLogEmitter.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BiomeLogEmitter.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](v2);
  return Hasher._finalize()();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AnnotatedCacheEntry(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

uint64_t outlined init with copy of AnnotatedCacheEntry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotatedCacheEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnnotatedCacheEntry(uint64_t a1)
{
  v2 = type metadata accessor for AnnotatedCacheEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type BiomeLogEmitter.State and conformance BiomeLogEmitter.State()
{
  result = lazy protocol witness table cache variable for type BiomeLogEmitter.State and conformance BiomeLogEmitter.State;
  if (!lazy protocol witness table cache variable for type BiomeLogEmitter.State and conformance BiomeLogEmitter.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BiomeLogEmitter.State and conformance BiomeLogEmitter.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeLogEmitter.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BiomeLogEmitter.State(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AnnotatedCacheEntry(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AnnotatedCacheEntry(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v31 - v17;
  v33 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v32 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v36 = v21;
    v37 = a3;
    v34 = v24;
    v35 = v23;
    v25 = v23;
    while (1)
    {
      outlined init with copy of AnnotatedCacheEntry(v24, v18);
      outlined init with copy of AnnotatedCacheEntry(v21, v14);
      v26 = *(v8 + 48);
      if (v18[v26 + 8])
      {
        v27 = 0.0;
      }

      else
      {
        v27 = *&v18[v26];
      }

      v28 = &v14[v26];
      if (v28[8])
      {
        v29 = 0.0;
      }

      else
      {
        v29 = *v28;
      }

      outlined destroy of AnnotatedCacheEntry(v14);
      result = outlined destroy of AnnotatedCacheEntry(v18);
      if (v29 >= v27)
      {
LABEL_4:
        a3 = v37 + 1;
        v21 = v36 + v32;
        v23 = v35 - 1;
        v24 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      outlined init with take of AnnotatedCacheEntry(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of AnnotatedCacheEntry(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v125 = a1;
  v8 = type metadata accessor for AnnotatedCacheEntry(0);
  v135 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v128 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v121 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v121 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v121 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v134 = &v121 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v133 = &v121 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v122 = &v121 - v24;
  result = MEMORY[0x28223BE20](v23);
  v121 = &v121 - v26;
  v137 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_116:
    a4 = *v125;
    if (!*v125)
    {
      goto LABEL_155;
    }

    a3 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_149:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    }

    v141 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v137)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v137 + *(v135 + 72) * v117, *v137 + *(v135 + 72) * *(result + 16 * (a3 - 1) + 32), *v137 + *(v135 + 72) * v119, a4);
        if (v5)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew()(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_143;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v141 = v118;
        specialized Array.remove(at:)(a3 - 1);
        result = v141;
        a3 = *(v141 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_153;
    }
  }

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v124 = a4;
  v140 = v8;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v129 = v29;
    if (v31 >= v27)
    {
      v50 = v31;
    }

    else
    {
      v138 = v27;
      v123 = v5;
      a3 = *v137;
      v32 = *(v135 + 72);
      v33 = *v137 + v32 * v31;
      v34 = v121;
      outlined init with copy of AnnotatedCacheEntry(v33, v121);
      v35 = a3 + v32 * v30;
      v126 = v30;
      v36 = v122;
      outlined init with copy of AnnotatedCacheEntry(v35, v122);
      v37 = v8;
      v38 = *(v8 + 48);
      v39 = *(v34 + v38 + 8) ? 0.0 : *(v34 + v38);
      v40 = v36 + v38;
      v41 = *(v40 + 8) ? 0.0 : *v40;
      outlined destroy of AnnotatedCacheEntry(v36);
      result = outlined destroy of AnnotatedCacheEntry(v34);
      v42 = v126 + 2;
      v136 = v32;
      v43 = a3 + v32 * (v126 + 2);
      while (v138 != v42)
      {
        a3 = v41 < v39;
        v44 = v133;
        outlined init with copy of AnnotatedCacheEntry(v43, v133);
        v45 = v134;
        outlined init with copy of AnnotatedCacheEntry(v33, v134);
        v46 = *(v37 + 48);
        if (*(v44 + v46 + 8))
        {
          v47 = 0.0;
        }

        else
        {
          v47 = *(v44 + v46);
        }

        v48 = v45 + v46;
        if (*(v48 + 8))
        {
          v49 = 0.0;
        }

        else
        {
          v49 = *v48;
        }

        outlined destroy of AnnotatedCacheEntry(v45);
        result = outlined destroy of AnnotatedCacheEntry(v44);
        ++v42;
        v43 += v136;
        v33 += v136;
        if (v41 < v39 == v49 >= v47)
        {
          v50 = v42 - 1;
          goto LABEL_23;
        }
      }

      v50 = v138;
LABEL_23:
      v8 = v37;
      v30 = v126;
      a4 = v124;
      if (v41 >= v39)
      {
        v5 = v123;
      }

      else
      {
        v5 = v123;
        if (v50 < v126)
        {
          goto LABEL_146;
        }

        if (v126 < v50)
        {
          v51 = v136 * (v50 - 1);
          v52 = v50;
          v53 = v50 * v136;
          v138 = v50;
          v54 = v126;
          v55 = v126 * v136;
          do
          {
            if (v54 != --v52)
            {
              a3 = *v137;
              if (!*v137)
              {
                goto LABEL_152;
              }

              outlined init with take of AnnotatedCacheEntry(a3 + v55, v128);
              if (v55 < v51 || a3 + v55 >= a3 + v53)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v51)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of AnnotatedCacheEntry(v128, a3 + v51);
            }

            ++v54;
            v51 -= v136;
            v53 -= v136;
            v55 += v136;
          }

          while (v54 < v52);
          v5 = v123;
          a4 = v124;
          v8 = v140;
          v30 = v126;
          v50 = v138;
        }
      }
    }

    v56 = v137[1];
    if (v50 < v56)
    {
      if (__OFSUB__(v50, v30))
      {
        goto LABEL_145;
      }

      if (v50 - v30 < a4)
      {
        if (__OFADD__(v30, a4))
        {
          goto LABEL_147;
        }

        if (v30 + a4 >= v56)
        {
          v57 = v137[1];
        }

        else
        {
          v57 = v30 + a4;
        }

        if (v57 < v30)
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (v50 != v57)
        {
          break;
        }
      }
    }

    v58 = v50;
    if (v50 < v30)
    {
      goto LABEL_144;
    }

LABEL_48:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v29 = v129;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v129 + 2) + 1, 1, v129);
      v29 = result;
    }

    a3 = *(v29 + 2);
    v59 = *(v29 + 3);
    v60 = a3 + 1;
    if (a3 >= v59 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), a3 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 2) = v60;
    v61 = &v29[16 * a3];
    *(v61 + 4) = v30;
    *(v61 + 5) = v58;
    a4 = *v125;
    if (!*v125)
    {
      goto LABEL_154;
    }

    v130 = v58;
    if (a3)
    {
      while (1)
      {
        v62 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v29 + 4);
          v64 = *(v29 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_67:
          if (v66)
          {
            goto LABEL_133;
          }

          v79 = &v29[16 * v60];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_136;
          }

          v85 = &v29[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_140;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v60 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v89 = &v29[16 * v60];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_81:
        if (v84)
        {
          goto LABEL_135;
        }

        v92 = &v29[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_138;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_88:
        a3 = v62 - 1;
        if (v62 - 1 >= v60)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v137)
        {
          goto LABEL_151;
        }

        v100 = v29;
        v101 = *&v29[16 * a3 + 32];
        v102 = *&v29[16 * v62 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v137 + *(v135 + 72) * v101, *v137 + *(v135 + 72) * *&v29[16 * v62 + 32], *v137 + *(v135 + 72) * v102, a4);
        if (v5)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_129;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v103 = v100;
        }

        else
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v100);
        }

        v8 = v140;
        if (a3 >= *(v103 + 2))
        {
          goto LABEL_130;
        }

        v104 = &v103[16 * a3];
        *(v104 + 4) = v101;
        *(v104 + 5) = v102;
        v141 = v103;
        result = specialized Array.remove(at:)(v62);
        v29 = v141;
        v60 = *(v141 + 16);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v29[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_131;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_132;
      }

      v74 = &v29[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_134;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_137;
      }

      if (v78 >= v70)
      {
        v96 = &v29[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_141;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v27 = v137[1];
    v28 = v130;
    a4 = v124;
    if (v130 >= v27)
    {
      goto LABEL_116;
    }
  }

  v123 = v5;
  a3 = *v137;
  v105 = *(v135 + 72);
  v106 = *v137 + v105 * (v50 - 1);
  v107 = v30;
  v108 = -v105;
  v126 = v107;
  v127 = v105;
  v109 = v107 - v50;
  a4 = a3 + v50 * v105;
  v130 = v57;
LABEL_100:
  v138 = v50;
  v131 = a4;
  v132 = v109;
  v136 = v106;
  v110 = v140;
  while (1)
  {
    outlined init with copy of AnnotatedCacheEntry(a4, v18);
    outlined init with copy of AnnotatedCacheEntry(v106, v15);
    v111 = *(v110 + 48);
    if (v18[v111 + 8])
    {
      v112 = 0.0;
    }

    else
    {
      v112 = *&v18[v111];
    }

    v113 = &v15[v111];
    if (v113[8])
    {
      v114 = 0.0;
    }

    else
    {
      v114 = *v113;
    }

    outlined destroy of AnnotatedCacheEntry(v15);
    result = outlined destroy of AnnotatedCacheEntry(v18);
    if (v114 >= v112)
    {
LABEL_99:
      v50 = v138 + 1;
      v106 = v136 + v127;
      v109 = v132 - 1;
      a4 = v131 + v127;
      v58 = v130;
      if (v138 + 1 != v130)
      {
        goto LABEL_100;
      }

      v5 = v123;
      v8 = v140;
      v30 = v126;
      if (v130 < v126)
      {
        goto LABEL_144;
      }

      goto LABEL_48;
    }

    if (!a3)
    {
      break;
    }

    v115 = v139;
    outlined init with take of AnnotatedCacheEntry(a4, v139);
    v110 = v140;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of AnnotatedCacheEntry(v115, v106);
    v106 += v108;
    a4 += v108;
    if (__CFADD__(v109++, 1))
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for AnnotatedCacheEntry(0);
  v8 = MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v45 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_74;
  }

  v21 = (a2 - a1) / v19;
  v54 = a4;
  v55 = a1;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v23;
    if (v23 >= 1)
    {
      v31 = -v19;
      v32 = a4 + v23;
      v48 = v31;
      v49 = a1;
      while (2)
      {
        while (1)
        {
          v46 = v30;
          v33 = a2;
          v34 = a2 + v31;
          while (1)
          {
            if (v33 <= v49)
            {
              v55 = v33;
              v53 = v46;
              goto LABEL_71;
            }

            v35 = a3;
            v47 = v30;
            v36 = v48;
            v37 = v32 + v48;
            v38 = v50;
            outlined init with copy of AnnotatedCacheEntry(v32 + v48, v50);
            a2 = v34;
            v39 = v34;
            v40 = v51;
            outlined init with copy of AnnotatedCacheEntry(v39, v51);
            v41 = *(v52 + 48);
            v42 = *(v38 + v41 + 8) ? 0.0 : *(v38 + v41);
            v43 = v40 + v41;
            v44 = *(v43 + 8) ? 0.0 : *v43;
            a3 = v35 + v36;
            outlined destroy of AnnotatedCacheEntry(v40);
            outlined destroy of AnnotatedCacheEntry(v38);
            if (v44 < v42)
            {
              break;
            }

            v30 = v37;
            if (v35 < v32 || a3 >= v32)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = a2;
            }

            else
            {
              v34 = a2;
              if (v35 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v32 = v37;
            if (v37 <= a4)
            {
              a2 = v33;
              goto LABEL_70;
            }
          }

          if (v35 < v33 || a3 >= v33)
          {
            break;
          }

          v30 = v47;
          v31 = v48;
          if (v35 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v32 <= a4)
          {
            goto LABEL_70;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v30 = v47;
        v31 = v48;
        if (v32 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v55 = a2;
    v53 = v30;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v53 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        outlined init with copy of AnnotatedCacheEntry(a2, v17);
        outlined init with copy of AnnotatedCacheEntry(a4, v14);
        v26 = *(v52 + 48);
        if (v17[v26 + 8])
        {
          v27 = 0.0;
        }

        else
        {
          v27 = *&v17[v26];
        }

        v28 = &v14[v26];
        if (v28[8])
        {
          v29 = 0.0;
        }

        else
        {
          v29 = *v28;
        }

        outlined destroy of AnnotatedCacheEntry(v14);
        outlined destroy of AnnotatedCacheEntry(v17);
        if (v29 >= v27)
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = a4 + v19;
          a4 += v19;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        a1 += v19;
        v55 = a1;
      }

      while (a4 < v24 && a2 < a3);
    }
  }

LABEL_71:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v55, &v54, &v53);
  return 1;
}

uint64_t outlined init with take of AnnotatedCacheEntry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotatedCacheEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id UniversalEmbeddingProvider.init()()
{
  v0 = [objc_opt_self() service];

  return v0;
}

Swift::Void __swiftcall UniversalEmbeddingProvider.warmup()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v6 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  [v7 setExtendedContextLength_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255A4C840;
  *(v8 + 32) = v7;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);
  v9 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = closure #1 in UniversalEmbeddingProvider.warmup();
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);
  v12 = [v1 prewarmTextRequests:isa completionHandler:v11];
  _Block_release(v11);

  if (v12 == -1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_255A20000, v14, v15, "Failed to request text embedding prewarming", v16, 2u);
      MEMORY[0x259C47EC0](v16, -1, -1);
    }
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v5, v2);
}

void closure #1 in UniversalEmbeddingProvider.warmup()(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.logger);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_255A20000, v5, v6, "Failed to prewarm text embedding, error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x259C47EC0](v8, -1, -1);
      MEMORY[0x259C47EC0](v7, -1, -1);

      return;
    }

    v15 = a1;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.logger);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255A20000, oslog, v13, "Finished prewarming text embedding", v14, 2u);
      MEMORY[0x259C47EC0](v14, -1, -1);
    }

    v15 = oslog;
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t UniversalEmbeddingProvider.dimension()(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for OSSignpostID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](UniversalEmbeddingProvider.dimension(), 0, 0);
}

uint64_t UniversalEmbeddingProvider.dimension()()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = static Logger.log;
  v0[7] = static Logger.log;
  v3 = v2;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v4 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  v0[8] = v4;
  [v4 setExtendedContextLength_];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = UniversalEmbeddingProvider.dimension();
  v7 = MEMORY[0x277D83B88];

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x6F69736E656D6964, 0xEB0000000029286ELL, partial apply for closure #1 in UniversalEmbeddingProvider.dimension(), v5, v7);
}

{

  return MEMORY[0x2822009F8](UniversalEmbeddingProvider.dimension(), 0, 0);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);

  v4 = *(v0 + 16);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5(v4);
}

void closure #1 in UniversalEmbeddingProvider.dimension()(uint64_t a1, void *a2, void *a3)
{
  v22 = a1;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySis5NeverOGMd, &_sScCySis5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v21 = xmmword_255A4C840;
  *(v9 + 16) = xmmword_255A4C840;
  *(v9 + 32) = a3;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);
  v10 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  *(v12 + 16) = v21;
  v13 = objc_allocWithZone(MEMORY[0x277D268A0]);
  v14 = MEMORY[0x259C47620](0x6F77206F6C6C6568, 0xEB00000000646C72);
  v15 = [v13 initWithText_];

  *(v12 + 32) = v15;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextInput, 0x277D268A0);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  (*(v5 + 16))(v8, v22, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v4);
  *(v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  aBlock[4] = partial apply for closure #1 in closure #1 in UniversalEmbeddingProvider.dimension();
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_15;
  v19 = _Block_copy(aBlock);
  v20 = v10;

  [v23 performRequests:isa textInputs:v16 completionHandler:v19];
  _Block_release(v19);
}

void closure #1 in closure #1 in UniversalEmbeddingProvider.dimension()(int a1, id a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v8 = a2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38 = v14;
      *v13 = 67109378;
      *(v13 + 4) = a1;
      *(v13 + 8) = 2080;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v38);

      *(v13 + 10) = v17;
      _os_log_impl(&dword_255A20000, v11, v12, "Failed to fetch dimension for request id %d, error: %s", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x259C47EC0](v14, -1, -1);
      MEMORY[0x259C47EC0](v13, -1, -1);
    }

    v38 = 512;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySis5NeverOGMd, &_sScCySis5NeverOGMR);
    CheckedContinuation.resume(returning:)();

    if (a1 == -1)
    {
      goto LABEL_35;
    }

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.logger);
  v20 = a4;
  v21 = Logger.logObject.getter();
  LOBYTE(v22) = static os_log_type_t.default.getter();
  v23 = &selRef_performRequests_textInputs_completionHandler_;
  if (!os_log_type_enabled(v21, v22))
  {

    v21 = v20;
    goto LABEL_17;
  }

  v4 = swift_slowAlloc();
  *v4 = 67109376;
  *(v4 + 1) = a1;
  *(v4 + 4) = 2048;
  i = [v20 embeddingResults];
  if (!i)
  {
    goto LABEL_15;
  }

  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x259C47870](v37))
  {

LABEL_15:
    *(v4 + 10) = i;

    _os_log_impl(&dword_255A20000, v21, v22, "Finished fetching dimension for request id %d and got back %ld results", v4, 0x12u);
    MEMORY[0x259C47EC0](v4, -1, -1);
LABEL_17:

    v25 = [v20 v23[1]];
    v23 = 0x281330000;
    if (!v25)
    {
      break;
    }

    v21 = v25;
    type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v32 = v20;
      }

      else
      {
        v32 = v20 & 0xFFFFFFFFFFFFFF8;
      }

      if (!MEMORY[0x259C47870](v32))
      {
LABEL_33:

        break;
      }
    }

    else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x259C47850](0, v20);
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v26 = *(v20 + 32);
    }

    v27 = v26;

    v20 = v27;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v5 = &selRef_performRequests_textInputs_completionHandler_;
    if (os_log_type_enabled(v28, v29))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      v4 = [v20 embedding];
      v30 = [v4 type];

      *(v22 + 4) = v30;
      _os_log_impl(&dword_255A20000, v28, v29, "Embedding is of type %lu for this hardware", v22, 0xCu);
      MEMORY[0x259C47EC0](v22, -1, -1);
    }

    else
    {

      v28 = v20;
    }

    v21 = [v20 embedding];
    v31 = [v21 count];

    if ((v31 & 0x8000000000000000) == 0)
    {
      v38 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySis5NeverOGMd, &_sScCySis5NeverOGMR);
      CheckedContinuation.resume(returning:)();

      if (a1 != -1)
      {
        return;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    if (v5 < 0)
    {
      v37 = v5;
    }

    else
    {
      v37 = v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v38 = 512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySis5NeverOGMd, &_sScCySis5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  if (a1 != -1)
  {
    return;
  }

LABEL_35:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.logger);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_255A20000, v34, v35, "Failed to request text embedding", v36, 2u);
    MEMORY[0x259C47EC0](v36, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed (@unowned Int32, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t UniversalEmbeddingProvider.embedding(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for OSSignpostID();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](UniversalEmbeddingProvider.embedding(input:), 0, 0);
}

uint64_t UniversalEmbeddingProvider.embedding(input:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = static Logger.log;
  v0[10] = static Logger.log;
  v5 = v4;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v6 = [objc_allocWithZone(MEMORY[0x277D26890]) init];
  v0[11] = v6;
  [v6 setExtendedContextLength_];
  v7 = swift_task_alloc();
  v0[12] = v7;
  v7[2] = v2;
  v7[3] = v6;
  v7[4] = v3;
  v7[5] = v1;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = UniversalEmbeddingProvider.embedding(input:);
  v9 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000011, 0x8000000255A4D6E0, partial apply for closure #1 in UniversalEmbeddingProvider.embedding(input:), v7, v9);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = UniversalEmbeddingProvider.embedding(input:);
  }

  else
  {

    v2 = UniversalEmbeddingProvider.embedding(input:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v1, v3);

  v6 = *(v0 + 8);

  return v6(v4, v5);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

void closure #1 in UniversalEmbeddingProvider.embedding(input:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v28 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  v25 = xmmword_255A4C840;
  *(v13 + 16) = xmmword_255A4C840;
  *(v13 + 32) = a3;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextRequest, 0x277D268A8);
  v14 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = swift_allocObject();
  *(v15 + 16) = v25;
  v16 = objc_allocWithZone(MEMORY[0x277D268A0]);
  v17 = MEMORY[0x259C47620](a4, a5);
  v18 = [v16 initWithText_];

  *(v15 + 32) = v18;
  type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextInput, 0x277D268A0);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  (*(v9 + 16))(v12, v27, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, v12, v8);
  *(v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = partial apply for closure #1 in closure #1 in UniversalEmbeddingProvider.embedding(input:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_9;
  v22 = _Block_copy(aBlock);
  v23 = v14;

  v24 = isa;
  [v28 performRequests:isa textInputs:v19 completionHandler:v22];
  _Block_release(v22);
}

void closure #1 in closure #1 in UniversalEmbeddingProvider.embedding(input:)(int a1, id a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.logger);
    v22 = a4;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = &selRef_performRequests_textInputs_completionHandler_;
    if (!os_log_type_enabled(v23, v24))
    {

      v23 = v22;
      goto LABEL_17;
    }

    v4 = swift_slowAlloc();
    *v4 = 67109376;
    *(v4 + 4) = a1;
    *(v4 + 8) = 2048;
    i = [v22 embeddingResults];
    if (!i)
    {
      goto LABEL_15;
    }

    type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_42;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x259C47870](v48))
    {

LABEL_15:
      *(v4 + 10) = i;

      _os_log_impl(&dword_255A20000, v23, v24, "Finished generating embedding for request id %d and got back %ld results", v4, 0x12u);
      MEMORY[0x259C47EC0](v4, -1, -1);
LABEL_17:

      v27 = [v22 v25[1]];
      v25 = 0x281330000;
      if (!v27)
      {
        goto LABEL_33;
      }

      v23 = v27;
      type metadata accessor for MADTextRequest(0, &lazy cache variable for type metadata for MADTextEmbeddingResult, 0x277D26898);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          v41 = v22;
        }

        else
        {
          v41 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        if (!MEMORY[0x259C47870](v41))
        {
LABEL_32:

LABEL_33:
          lazy protocol witness table accessor for type EmbeddingError and conformance EmbeddingError();
          v42 = swift_allocError();
          *v43 = 1;
          v49[0] = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
          CheckedContinuation.resume(throwing:)();
          if (a1 != -1)
          {
            return;
          }

          goto LABEL_34;
        }
      }

      else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v22 + 32);
        goto LABEL_23;
      }

      __break(1u);
LABEL_42:
      if (v5 < 0)
      {
        v48 = v5;
      }

      else
      {
        v48 = v5 & 0xFFFFFFFFFFFFFF8;
      }
    }

    v28 = MEMORY[0x259C47850](0, v22);
LABEL_23:
    v29 = v28;

    v30 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      v34 = [v30 embedding];
      v35 = [v34 type];

      *(v33 + 4) = v35;
      _os_log_impl(&dword_255A20000, v31, v32, "Embedding is of type %lu for this hardware", v33, 0xCu);
      MEMORY[0x259C47EC0](v33, -1, -1);
    }

    else
    {

      v31 = v30;
    }

    v36 = [v30 embedding];
    v37 = [v36 data];

    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v49[0] = v38;
    v49[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();

    if (a1 != -1)
    {
      return;
    }

    goto LABEL_34;
  }

  v8 = a2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.logger);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49[0] = v14;
    *v13 = 67109378;
    *(v13 + 4) = a1;
    *(v13 + 8) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v49);

    *(v13 + 10) = v17;
    _os_log_impl(&dword_255A20000, v11, v12, "Failed to generate embedding for request id %d, error: %s", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x259C47EC0](v14, -1, -1);
    MEMORY[0x259C47EC0](v13, -1, -1);
  }

  lazy protocol witness table accessor for type EmbeddingError and conformance EmbeddingError();
  v18 = swift_allocError();
  *v19 = 1;
  v49[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();

  if (a1 == -1)
  {
LABEL_34:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.logger);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_255A20000, v45, v46, "Failed to request text embedding", v47, 2u);
      MEMORY[0x259C47EC0](v47, -1, -1);
    }
  }
}

uint64_t protocol witness for EmbeddingProviding.dimension() in conformance UniversalEmbeddingProvider()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for EmbeddingProviding.dimension() in conformance UniversalEmbeddingProvider;

  return UniversalEmbeddingProvider.dimension()(v2);
}

uint64_t protocol witness for EmbeddingProviding.dimension() in conformance UniversalEmbeddingProvider(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for EmbeddingProviding.embedding(input:) in conformance UniversalEmbeddingProvider(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for EmbeddingProviding.embedding(input:) in conformance UniversalEmbeddingProvider;

  return UniversalEmbeddingProvider.embedding(input:)(a1, a2, v6);
}

{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

unint64_t lazy protocol witness table accessor for type EmbeddingError and conformance EmbeddingError()
{
  result = lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError;
  if (!lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError;
  if (!lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddingError and conformance EmbeddingError);
  }

  return result;
}

uint64_t type metadata accessor for MADTextRequest(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in UniversalEmbeddingProvider.embedding(input:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

uint64_t ListRequest.searchKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ListRequest.loggingTraceId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListRequest(0) + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ListRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for ListRequest;
  if (!type metadata singleton initialization cache for ListRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListRequest.init(searchKey:strategy:maxResult:loggingTraceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for ListRequest(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for UUID();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a5, v12);
  *(a6 + *(v10 + 28)) = a4;
  return result;
}

uint64_t ListRequest.init(searchKey:strategy:loggingTraceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = type metadata accessor for ListRequest(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(a5 + v9, a4, v10);
  *(a5 + *(v8 + 28)) = 1;
  return result;
}

uint64_t ListRequest.init(searchKey:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  v6 = type metadata accessor for ListRequest(0);
  result = UUID.init()();
  *(a4 + *(v6 + 28)) = 1;
  return result;
}

LLMCache::SearchStrategy_optional __swiftcall SearchStrategy.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchStrategy.init(rawValue:), v3);

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

uint64_t SearchStrategy.rawValue.getter()
{
  if (*v0)
  {
    return 0x74614D7463617865;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t lazy protocol witness table accessor for type SearchStrategy and conformance SearchStrategy()
{
  result = lazy protocol witness table cache variable for type SearchStrategy and conformance SearchStrategy;
  if (!lazy protocol witness table cache variable for type SearchStrategy and conformance SearchStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStrategy and conformance SearchStrategy);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SearchStrategy()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SearchStrategy(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchStrategy(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SearchStrategy@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchStrategy.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchStrategy(unint64_t *a1@<X8>)
{
  v2 = 0x8000000255A4D590;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x74614D7463617865;
    v2 = 0xEA00000000006863;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchStrategy(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74614D7463617865;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x8000000255A4D590;
  }

  else
  {
    v4 = 0xEA00000000006863;
  }

  if (*a2)
  {
    v5 = 0x74614D7463617865;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006863;
  }

  else
  {
    v6 = 0x8000000255A4D590;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t type metadata completion function for ListRequest(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of CacheDatabase.delete(entries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CacheDatabase.delete(entries:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of CacheDatabase.describe(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CacheDatabase.insert(entries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CacheDatabase.list(namespace:searchKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of CacheDatabase.list(namespace:searchKey:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CacheDatabase.list(namespace:searchKey:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CacheDatabase.listAll(namespace:nextToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of CacheDatabase.listAll(namespace:nextToken:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CacheDatabase.deleteAll(namespace:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CacheDatabase.warmup()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v7(a1, a2);
}

uint64_t LLMCacheManaging.pruneExpiredEntries()()
{
  return MEMORY[0x2822009F8](LLMCacheManaging.pruneExpiredEntries(), 0, 0);
}

{
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

{
  return MEMORY[0x2822009F8](LLMCacheManaging.pruneExpiredEntries(), 0, 0);
}

unint64_t lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError()
{
  result = lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError;
  if (!lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError;
  if (!lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LLMCacheManagerError and conformance LLMCacheManagerError);
  }

  return result;
}

uint64_t outlined init with copy of CacheDatabase(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LLMCacheManager.__allocating_init(namespace:databasePath:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 136) = a2;
  v4 = type metadata accessor for URL();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  *(v2 + 168) = v5;
  *(v2 + 176) = *(v5 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 240) = *a1;

  return MEMORY[0x2822009F8](LLMCacheManager.__allocating_init(namespace:databasePath:), 0, 0);
}

uint64_t LLMCacheManager.__allocating_init(namespace:databasePath:)()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;
  v0[24] = static Logger.log;
  v2 = v1;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v3 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v0[15] = 0;
  v7 = [v3 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v0 + 15];

  v8 = v0[15];
  if (v7)
  {
    (*(v0[19] + 16))(v0[20], v0[17], v0[18]);
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 service];
    v0[5] = &type metadata for UniversalEmbeddingProvider;
    v0[6] = &protocol witness table for UniversalEmbeddingProvider;
    v0[2] = v11;
    v0[25] = type metadata accessor for VectorDatabaseAccess();
    swift_allocObject();
    v12 = swift_task_alloc();
    v0[26] = v12;
    *v12 = v0;
    v12[1] = LLMCacheManager.__allocating_init(namespace:databasePath:);
    v13 = v0[20];

    return VectorDatabaseAccess.init(path:embeddingProvider:)(v13, (v0 + 2));
  }

  else
  {
    v15 = v8;
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.logger);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_255A20000, v19, v20, "Failed to initialize LLMCacheManager: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x259C47EC0](v22, -1, -1);
      MEMORY[0x259C47EC0](v21, -1, -1);
    }

    v26 = v0[23];
    v27 = v0[21];
    v28 = v0[22];
    v29 = v0[19];
    v31 = v0[17];
    v30 = v0[18];
    swift_willThrow();
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v29 + 8))(v31, v30);
    (*(v28 + 8))(v26, v27);

    v32 = v0[1];

    return v32();
  }
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v3 = *(v0 + 240);
  type metadata accessor for BiomeLogEmitter();
  v4 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v0 + 88) = &protocol witness table for VectorDatabaseAccess;
  *(v0 + 56) = v1;
  type metadata accessor for LLMCacheManager();
  v5 = swift_allocObject();
  *(v0 + 232) = v5;
  swift_defaultActor_initialize();
  *(v5 + 112) = v3;
  _s8LLMCache13CacheDatabase_pWOb_0((v0 + 56), v5 + 120);
  *(v5 + 160) = 0x416DA9C000000000;
  *(v5 + 168) = v4;

  return MEMORY[0x2822009F8](LLMCacheManager.__allocating_init(namespace:databasePath:), v5, 0);
}

{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "LLMCacheManager init completed", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v5 = v0[23];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[19];
  v10 = v0[17];
  v9 = v0[18];

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v8 + 8))(v10, v9);
  (*(v7 + 8))(v5, v6);

  v11 = v0[1];
  v12 = v0[29];

  return v11(v12);
}

{
  v20 = v0;
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.logger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_255A20000, v4, v5, "Failed to initialize LLMCacheManager: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x259C47EC0](v7, -1, -1);
    MEMORY[0x259C47EC0](v6, -1, -1);
  }

  v11 = v0[23];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[19];
  v16 = v0[17];
  v15 = v0[18];
  swift_willThrow();
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v14 + 8))(v16, v15);
  (*(v13 + 8))(v11, v12);

  v17 = v0[1];

  return v17();
}

uint64_t LLMCacheManager.__allocating_init(namespace:databasePath:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = LLMCacheManager.__allocating_init(namespace:databasePath:);
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = LLMCacheManager.__allocating_init(namespace:databasePath:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t LLMCacheManager.__allocating_init(namespace:databaseAccess:ttl:logEmitter:)(_BYTE *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = specialized LLMCacheManager.__allocating_init(namespace:databaseAccess:ttl:logEmitter:)(a1, v15, a3, a4 & 1, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v17;
}

uint64_t LLMCacheManager.init(namespace:databaseAccess:ttl:logEmitter:)(char *a1, __int128 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = *a1;
  swift_defaultActor_initialize();
  *(v5 + 112) = v10;
  _s8LLMCache13CacheDatabase_pWOb_0(a2, v5 + 120);
  v11 = *&a3;
  if (a4)
  {
    v11 = 15552000.0;
  }

  *(v5 + 160) = v11;
  *(v5 + 168) = a5;
  return v5;
}

uint64_t LLMCacheManager.list(with:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
  v3[19] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for AnnotatedCacheEntry(0);
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = type metadata accessor for ListRequest(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.list(with:), v2, 0);
}

uint64_t LLMCacheManager.list(with:)()
{
  v35 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 136);
  v5 = type metadata accessor for Logger();
  *(v0 + 320) = __swift_project_value_buffer(v5, static Logger.logger);
  outlined init with copy of ListRequest(v4, v3, type metadata accessor for ListRequest);
  outlined init with copy of ListRequest(v4, v2, type metadata accessor for ListRequest);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315394;
    v13 = *v10;
    v14 = v10[1];

    outlined destroy of ListRequest(v10, type metadata accessor for ListRequest);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    if (*(v9 + 16))
    {
      v16 = 0x74614D7463617865;
    }

    else
    {
      v16 = 0xD000000000000010;
    }

    if (*(v9 + 16))
    {
      v17 = 0xEA00000000006863;
    }

    else
    {
      v17 = 0x8000000255A4D590;
    }

    outlined destroy of ListRequest(v9, type metadata accessor for ListRequest);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v34);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_255A20000, v6, v7, "LLMCacheManager entering list with search key: %s, strategy: %s...", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C47EC0](v12, -1, -1);
    MEMORY[0x259C47EC0](v11, -1, -1);
  }

  else
  {

    outlined destroy of ListRequest(v9, type metadata accessor for ListRequest);
    outlined destroy of ListRequest(v10, type metadata accessor for ListRequest);
  }

  if (LLMCacheManager.isEnabled()())
  {
    v19 = *(v0 + 272);
    v20 = *(v0 + 136);
    v21 = *(v0 + 144);
    v22 = *(v21 + 168);
    *(v0 + 328) = v22;
    v23 = *(v19 + 24);
    v33 = *(v21 + 112);
    (*(*v22 + 112))(&v20[v23], &v33, v20);
    v24 = *(v21 + 144);
    v25 = *(v21 + 152);
    __swift_project_boxed_opaque_existential_1((v21 + 120), v24);
    *(v0 + 432) = *(v21 + 112);
    v26 = *v20;
    *(v0 + 336) = *v20;
    v27 = *(v20 + 1);
    *(v0 + 344) = v27;
    v32 = (*(v25 + 32) + **(v25 + 32));
    v28 = swift_task_alloc();
    *(v0 + 352) = v28;
    *v28 = v0;
    v28[1] = LLMCacheManager.list(with:);

    return v32(v0 + 432, v26, v27, v24, v25);
  }

  else
  {
    v30 = *(v0 + 312);
    **(v0 + 128) = MEMORY[0x277D84F90];
    $defer #1 () in LLMCacheManager.list(with:)(v30, "LLMCacheManager.list", 20, "LLMCacheManager leaving list...");
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    v31 = *(v0 + 8);

    return v31();
  }
}

{
  v1 = v0[45];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[25];
    v36 = v0[24];
    v31 = v0[17];
    v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v4 = v1 + v32;
    v34 = (v0[21] + 8);
    v5 = MEMORY[0x277D84F90];
    v33 = MEMORY[0x277D84F90];
    v35 = *(v3 + 72);
    while (1)
    {
      v38 = v2;
      v9 = v5;
      v10 = v0[22];
      v11 = v0[23];
      v12 = v0[20];
      outlined init with copy of ListRequest(v4, v0[30], type metadata accessor for AnnotatedCacheEntry);
      Date.addingTimeInterval(_:)();
      static Date.now.getter();
      v13 = static Date.< infix(_:_:)();
      v14 = *v34;
      (*v34)(v10, v12);
      v14(v11, v12);
      if ((v13 & 1) == 0)
      {
        break;
      }

      outlined init with copy of ListRequest(v0[30], v0[29], type metadata accessor for AnnotatedCacheEntry);
      v5 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
      }

      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
      }

      v6 = v0[29];
      outlined destroy of ListRequest(v0[30], type metadata accessor for AnnotatedCacheEntry);
      v5[2] = v16 + 1;
      v7 = v5 + v32;
LABEL_4:
      v8 = v35;
      outlined init with take of AnnotatedCacheEntry(v6, &v7[v16 * v35]);
LABEL_5:
      v4 += v8;
      v2 = v38 - 1;
      if (v38 == 1)
      {

        v24 = v33;
        goto LABEL_27;
      }
    }

    if (*(v31 + 16))
    {
      v17 = 0xEA00000000006863;
    }

    else
    {
      v17 = 0x8000000255A4D590;
    }

    v5 = v9;
    if (*(v31 + 16) == 1 && v17 == 0xEA00000000006863)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
LABEL_19:
        outlined init with copy of ListRequest(v0[30], v0[28], type metadata accessor for AnnotatedCacheEntry);
        v22 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
        }

        v16 = v22[2];
        v23 = v22[3];
        v33 = v22;
        if (v16 >= v23 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v16 + 1, 1, v22, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
        }

        v6 = v0[28];
        outlined destroy of ListRequest(v0[30], type metadata accessor for AnnotatedCacheEntry);
        v33[2] = v16 + 1;
        v7 = v33 + v32;
        goto LABEL_4;
      }
    }

    v19 = v0[43];
    v20 = *(v0[30] + *(v36 + 36));
    v0[11] = v0[42];
    v0[12] = v19;
    v21 = swift_task_alloc();
    *(v21 + 16) = v0 + 11;
    LOBYTE(v20) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v21, v20);

    if ((v20 & 1) == 0)
    {
      outlined destroy of ListRequest(v0[30], type metadata accessor for AnnotatedCacheEntry);
      v8 = v35;
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v5 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
LABEL_27:
  v0[47] = v5;
  v25 = v0[18];
  v0[48] = specialized static LLMCacheManager.sortAndFilterListResult(_:request:)(v24, v0[17]);

  v26 = v25[18];
  v27 = v25[19];
  __swift_project_boxed_opaque_existential_1(v25 + 15, v26);
  v28 = *(v27 + 8);

  v37 = (v28 + *v28);
  v29 = swift_task_alloc();
  v0[49] = v29;
  *v29 = v0;
  v29[1] = LLMCacheManager.list(with:);

  return (v37)(v5, v26, v27);
}

{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = LLMCacheManager.list(with:);
  }

  else
  {
    v4 = LLMCacheManager.list(with:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[48];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[50];
    v4 = v0[25];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v29 = (v0[21] + 8);
    v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v28 = (v4 + 56);
    v31 = MEMORY[0x277D84F90];
    v6 = *(v4 + 72);
    do
    {
      v9 = v0[23];
      v10 = v0[20];
      outlined init with copy of ListRequest(v5, v0[27], type metadata accessor for AnnotatedCacheEntry);
      v11 = AnnotatedCacheEntry.builder()();
      static Date.now.getter();
      v12 = (*(*v11 + 376))(v9);

      v13 = (*v29)(v9, v10);
      (*(*v12 + 440))(v13);
      v14 = v3;
      v15 = v0[27];
      if (v14)
      {
        v7 = v0[24];
        v8 = v0[19];

        outlined destroy of ListRequest(v15, type metadata accessor for AnnotatedCacheEntry);
        (*v28)(v8, 1, 1, v7);
        outlined destroy of AnnotatedCacheEntry?(v8, &_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
      }

      else
      {
        v16 = v0[26];
        v17 = v0[24];
        v18 = v0[19];
        outlined destroy of ListRequest(v0[27], type metadata accessor for AnnotatedCacheEntry);

        (*v28)(v18, 0, 1, v17);
        outlined init with take of AnnotatedCacheEntry(v18, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
        }

        v20 = v31[2];
        v19 = v31[3];
        if (v20 >= v19 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v31, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
        }

        v21 = v0[26];
        v31[2] = v20 + 1;
        outlined init with take of AnnotatedCacheEntry(v21, v31 + v27 + v20 * v6);
      }

      v3 = 0;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v0[51] = v31;
  v22 = v0[18];
  v23 = v22[18];
  v24 = v22[19];
  __swift_project_boxed_opaque_existential_1(v22 + 15, v23);
  v30 = (*(v24 + 24) + **(v24 + 24));
  v25 = swift_task_alloc();
  v0[52] = v25;
  *v25 = v0;
  v25[1] = LLMCacheManager.list(with:);

  return v30(v31, v23, v24);
}

{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = LLMCacheManager.list(with:);
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = LLMCacheManager.list(with:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 384);
  v11 = *(v0 + 312);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  (*(**(v0 + 328) + 120))(v2, v6, v1);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8LLMCache19AnnotatedCacheEntryVG_AF0fG0Vs5NeverOTg5(partial apply for closure #2 in LLMCacheManager.list(with:), v7, v1);

  (*(v3 + 8))(v2, v4);

  *v5 = v8;
  $defer #1 () in LLMCacheManager.list(with:)(v11, "LLMCacheManager.list", 20, "LLMCacheManager leaving list...");
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v9 = *(v0 + 8);

  return v9();
}

{
  v23 = v0;
  v1 = v0[46];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v22);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_255A20000, v3, v4, "Failed to list: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x259C47EC0](v6, -1, -1);
    MEMORY[0x259C47EC0](v5, -1, -1);
  }

  v10 = v0[46];
  v11 = v0[41];
  v12 = v0[38];
  v13 = v0[39];
  v14 = v0[37];
  v16 = v0[32];
  v15 = v0[33];
  v17 = v0[31];
  v18 = v0[17];
  LOBYTE(v22[0]) = 1;
  (*(*v11 + 128))(v15, v18, v22);
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v19 = 1;
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
  $defer #1 () in LLMCacheManager.list(with:)(v13, "LLMCacheManager.list", 20, "LLMCacheManager leaving list...");
  (*(v12 + 8))(v13, v14);

  v20 = v0[1];

  return v20();
}

{
  v39 = v0;
  v1 = v0[50];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[50];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v38);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_255A20000, v3, v4, "Failed to delete expired entries, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x259C47EC0](v7, -1, -1);
    MEMORY[0x259C47EC0](v6, -1, -1);
  }

  else
  {
    v11 = v0[50];
  }

  v12 = v0[48];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v0[25];
    v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v35 = (v0[21] + 8);
    v16 = (v14 + 56);
    v37 = MEMORY[0x277D84F90];
    v17 = *(v14 + 72);
    do
    {
      v18 = v0[23];
      v19 = v0[20];
      outlined init with copy of ListRequest(v15, v0[27], type metadata accessor for AnnotatedCacheEntry);
      v20 = AnnotatedCacheEntry.builder()();
      static Date.now.getter();
      v21 = (*(*v20 + 376))(v18);

      v22 = (*v35)(v18, v19);
      (*(*v21 + 440))(v22);
      v23 = v0[26];
      v24 = v0[24];
      v25 = v0[19];
      outlined destroy of ListRequest(v0[27], type metadata accessor for AnnotatedCacheEntry);

      (*v16)(v25, 0, 1, v24);
      outlined init with take of AnnotatedCacheEntry(v25, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
      }

      v27 = v37[2];
      v26 = v37[3];
      if (v27 >= v26 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v37, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
      }

      v28 = v0[26];
      v37[2] = v27 + 1;
      outlined init with take of AnnotatedCacheEntry(v28, v37 + v34 + v27 * v17);
      v15 += v17;
      --v13;
    }

    while (v13);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v0[51] = v37;
  v29 = v0[18];
  v30 = v29[18];
  v31 = v29[19];
  __swift_project_boxed_opaque_existential_1(v29 + 15, v30);
  v36 = (*(v31 + 24) + **(v31 + 24));
  v32 = swift_task_alloc();
  v0[52] = v32;
  *v32 = v0;
  v32[1] = LLMCacheManager.list(with:);

  return v36(v37, v30, v31);
}

{
  v24 = v0;
  v1 = *(v0 + 424);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 424);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_255A20000, v3, v4, "Failed to update last accessed time for entries, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x259C47EC0](v7, -1, -1);
    MEMORY[0x259C47EC0](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 424);
  }

  v12 = *(v0 + 384);
  v13 = *(v0 + 312);
  v15 = *(v0 + 256);
  v14 = *(v0 + 264);
  v16 = *(v0 + 248);
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  (*(**(v0 + 328) + 120))(v14, v17, v12);
  v19 = swift_task_alloc();
  *(v19 + 16) = v17;
  v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8LLMCache19AnnotatedCacheEntryVG_AF0fG0Vs5NeverOTg5(partial apply for closure #2 in LLMCacheManager.list(with:), v19, v12);

  (*(v15 + 8))(v14, v16);

  *v18 = v20;
  $defer #1 () in LLMCacheManager.list(with:)(v13, "LLMCacheManager.list", 20, "LLMCacheManager leaving list...");
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t LLMCacheManager.list(with:)(uint64_t a1)
{
  v3 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  v4 = v3[18];
  if (v1)
  {
    v5 = LLMCacheManager.list(with:);
  }

  else
  {
    v5 = LLMCacheManager.list(with:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t closure #2 in LLMCacheManager.list(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = type metadata accessor for AnnotatedCacheEntry(0);
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a1 + *(v7 + 36));
  v14[0] = v5;
  v14[1] = v6;
  v13[2] = v14;

  result = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v13, v11);
  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = result & 1;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8LLMCache19AnnotatedCacheEntryVG_AF0fG0Vs5NeverOTg5(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v20;
  v7 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v7 + 72);
  while (1)
  {
    a1(v18, v8);
    if (v3)
    {
      break;
    }

    v10 = v18[0];
    v9 = v18[1];
    v11 = v19;
    v20 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v5 = v20;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 24 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v9;
    *(v14 + 48) = v11;
    v8 += v16;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t LLMCacheManager.isEnabled()()
{
  if (*(v0 + 112))
  {
    if (*(v0 + 112) == 1)
    {
      swift_beginAccess();
      v1 = static LLMCacheManagerFeatureFlags.forceEnabled;
      if (static LLMCacheManagerFeatureFlags.forceEnabled == 2)
      {
        v5 = &type metadata for LLMCacheManagerFeatureFlags;
        v6 = lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags();
        v2 = 1;
LABEL_9:
        LOBYTE(v4[0]) = v2;
        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      v1 = static LLMCacheManagerFeatureFlags.forceEnabled;
      if (static LLMCacheManagerFeatureFlags.forceEnabled == 2)
      {
        v5 = &type metadata for LLMCacheManagerFeatureFlags;
        v6 = lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags();
        v2 = 2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v1 = static LLMCacheManagerFeatureFlags.forceEnabled;
    if (static LLMCacheManagerFeatureFlags.forceEnabled == 2)
    {
      v5 = &type metadata for LLMCacheManagerFeatureFlags;
      v6 = lazy protocol witness table accessor for type LLMCacheManagerFeatureFlags and conformance LLMCacheManagerFeatureFlags();
      LOBYTE(v4[0]) = 0;
LABEL_10:
      v1 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }
  }

  return v1 & 1;
}

uint64_t closure #1 in static LLMCacheManager.sortAndFilterListResult(_:request:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for AnnotatedCacheEntry(0);
  v7 = *(a1 + *(v6 + 36));
  v9 = *a3;
  v8 = a3[1];
  v28 = v9;
  v29 = v8;
  v27 = &v28;
  v10 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v26, v7);
  if (v10)
  {
    v28 = v9;
    v29 = v8;
    MEMORY[0x28223BE20](v10);
    v25 = &v28;
    v10 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v11);
    if ((v10 & 1) == 0)
    {
      v14 = 1;
      return v14 & 1;
    }
  }

  v28 = v9;
  v29 = v8;
  MEMORY[0x28223BE20](v10);
  v25 = &v28;
  v12 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v7);
  if ((v12 & 1) != 0 || (v28 = v9, v29 = v8, MEMORY[0x28223BE20](v12), v25 = &v28, (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v13) & 1) == 0))
  {
    v15 = *(v6 + 48);
    v16 = (a1 + v15);
    v17 = *(a1 + v15 + 8);
    v18 = a2 + v15;
    v19 = *(a2 + v15);
    v20 = *(v18 + 8);
    if (v17)
    {
      if ((v20 & 1) == 0)
      {
        v21 = v19;
        v22 = 0.0;
LABEL_12:
        v14 = v21 < v22;
        return v14 & 1;
      }
    }

    else
    {
      v22 = *v16;
      v21 = 0.0;
      if (v20)
      {
        goto LABEL_12;
      }

      v21 = v19;
      if (v22 != v19)
      {
        goto LABEL_12;
      }
    }

    v14 = static Date.> infix(_:_:)();
    return v14 & 1;
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for AnnotatedCacheEntry(0);
    return a2;
  }

  return result;
}

uint64_t LLMCacheManager.insert(searchKey:llmOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for InsertRequest(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.insert(searchKey:llmOutput:), v4, 0);
}

uint64_t LLMCacheManager.insert(searchKey:llmOutput:)(uint64_t a1)
{
  v2 = v1[8];
  v4 = v1[4];
  v3 = v1[5];
  v6 = v1[2];
  v5 = v1[3];
  UUID.init()();
  *v2 = v6;
  v2[1] = v5;
  v2[2] = v4;
  v2[3] = v3;

  v7 = swift_task_alloc();
  v1[9] = v7;
  *v7 = v1;
  v7[1] = LLMCacheManager.insert(searchKey:llmOutput:);
  v8 = v1[8];

  return LLMCacheManager.insert(with:)(v8);
}

uint64_t LLMCacheManager.insert(searchKey:llmOutput:)()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = LLMCacheManager.insert(searchKey:llmOutput:);
  }

  else
  {
    v4 = LLMCacheManager.insert(searchKey:llmOutput:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of ListRequest(*(v0 + 64), type metadata accessor for InsertRequest);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of ListRequest(*(v0 + 64), type metadata accessor for InsertRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LLMCacheManager.insert(with:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for UserID();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = type metadata accessor for InsertRequest(0);
  v2[36] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.insert(with:), v1, 0);
}

{
  v86 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "Found an existing cache entry, going to update it by appending new search key", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v5 = *(v1 + 392);
  v7 = *(v1 + 336);
  v6 = *(v1 + 344);
  v8 = *(v1 + 216);
  v9 = *(v1 + 192);
  v10 = *(v1 + 200);

  v11 = AnnotatedCacheEntry.builder()();
  static Date.now.getter();
  v12 = (*(*v11 + 384))(v8);

  (*(v10 + 8))(v8, v9);
  v13 = (*(*v12 + 400))(v7, v6);

  (*(*v13 + 440))(v14);
  if (!v5)
  {
    v58 = *(v1 + 240);
    v59 = *(v1 + 224);
    v60 = *(v1 + 152);

    v65 = v60[18];
    v66 = v60[19];
    __swift_project_boxed_opaque_existential_1(v60 + 15, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v68 = swift_allocObject();
    *(v1 + 400) = v68;
    *(v68 + 16) = xmmword_255A4CA70;
    outlined init with copy of ListRequest(v58, v68 + v61, type metadata accessor for AnnotatedCacheEntry);
    v84 = (*(v66 + 24) + **(v66 + 24));
    v69 = swift_task_alloc();
    *(v1 + 408) = v69;
    *v69 = v1;
    v70 = LLMCacheManager.insert(with:);
LABEL_15:
    v69[1] = v70;

    return v84(v68, v65, v66);
  }

  v15 = v5;
  outlined destroy of ListRequest(*(v1 + 248), type metadata accessor for AnnotatedCacheEntry);

  *(v1 + 120) = v5;
  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && *(v1 + 448) == 2)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_255A20000, v17, v18, "No existing cache entry found, going to insert a new entry", v19, 2u);
      MEMORY[0x259C47EC0](v19, -1, -1);
    }

    v20 = *(v1 + 368);
    v78 = *(v1 + 352);
    v79 = *(v1 + 360);
    v80 = *(v1 + 336);
    v81 = *(v1 + 344);
    v21 = *(v1 + 200);
    v23 = *(v1 + 184);
    v22 = *(v1 + 192);
    v24 = *(v1 + 168);
    v82 = *(v1 + 176);
    v76 = *(v1 + 208);
    v77 = v24;
    v25 = *(v1 + 152);
    v83 = *(v1 + 160);

    static Date.now.getter();
    *(v1 + 136) = v20;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v27;
    v73 = v26;
    v28 = *(v25 + 112);
    type metadata accessor for AnnotatedCacheEntryBuilder(0);
    v29 = swift_allocObject();
    v74 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
    v71 = *(v21 + 56);
    v71(v29 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, 1, 1, v22);
    v75 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime;
    v71(v29 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v22);
    v30 = (v29 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
    *v30 = 0;
    v30[1] = 0;
    v31 = v29 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
    *v31 = 0;
    *(v31 + 8) = 1;
    (*(v24 + 56))(v29 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, 1, 1, v83);
    v32 = v29 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
    *v32 = 0;
    *(v32 + 8) = 1;
    *(v29 + 16) = v73;
    *(v29 + 24) = v72;
    *(v29 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v28;
    *(v29 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
    v33 = *(v21 + 16);
    v33(v23, v76, v22);
    v71(v23, 0, 1, v22);
    swift_beginAccess();
    outlined assign with take of Date?(v23, v29 + v74);
    swift_endAccess();
    v33(v23, v76, v22);
    v71(v23, 0, 1, v22);
    swift_beginAccess();
    outlined assign with take of Date?(v23, v29 + v75);
    swift_endAccess();
    swift_beginAccess();
    *v30 = v78;
    v30[1] = v79;

    v34 = specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(v80, v81);

    v36.n128_u64[0] = *(v25 + 160);
    v37 = (*(*v34 + 416))(v35, v36);

    static UserID.defaultUserId.getter();
    v38 = (*(*v37 + 424))(v82);

    v39 = (*(v77 + 8))(v82, v83);
    (*(*v38 + 440))(v39);
    v63 = *(v1 + 224);
    v62 = *(v1 + 232);
    v64 = *(v1 + 152);

    v65 = v64[18];
    v66 = v64[19];
    __swift_project_boxed_opaque_existential_1(v64 + 15, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
    v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v68 = swift_allocObject();
    *(v1 + 424) = v68;
    *(v68 + 16) = xmmword_255A4CA70;
    outlined init with copy of ListRequest(v62, v68 + v67, type metadata accessor for AnnotatedCacheEntry);
    v84 = (*(v66 + 24) + **(v66 + 24));
    v69 = swift_task_alloc();
    *(v1 + 432) = v69;
    *v69 = v1;
    v70 = LLMCacheManager.insert(with:);
    goto LABEL_15;
  }

  v40 = v5;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v85[0] = v44;
    *v43 = 136315138;
    swift_getErrorValue();
    v45 = Error.localizedDescription.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v85);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_255A20000, v41, v42, "Failed to insert: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x259C47EC0](v44, -1, -1);
    MEMORY[0x259C47EC0](v43, -1, -1);
  }

  v48 = *(v1 + 328);
  v49 = *(v1 + 304);
  v50 = *(v1 + 312);
  v51 = *(v1 + 296);
  v53 = *(v1 + 264);
  v52 = *(v1 + 272);
  v54 = *(v1 + 256);
  LOBYTE(v85[0]) = 1;
  (*(*v48 + 104))(v52, v85);
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v55 = 1;
  swift_willThrow();

  (*(v53 + 8))(v52, v54);
  $defer #1 () in LLMCacheManager.list(with:)(v50, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
  (*(v49 + 8))(v50, v51);

  v56 = *(v1 + 8);

  return v56();
}

uint64_t LLMCacheManager.insert(with:)()
{
  v36 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v3 = v0[18];
  v4 = type metadata accessor for Logger();
  v0[40] = __swift_project_value_buffer(v4, static Logger.logger);
  outlined init with copy of ListRequest(v3, v2, type metadata accessor for InsertRequest);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[36];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315138;
    v11 = *v8;
    v12 = v8[1];

    outlined destroy of ListRequest(v8, type metadata accessor for InsertRequest);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v35);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_255A20000, v5, v6, "LLMCacheManager entering insert with search key %s...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x259C47EC0](v10, -1, -1);
    MEMORY[0x259C47EC0](v9, -1, -1);
  }

  else
  {

    outlined destroy of ListRequest(v8, type metadata accessor for InsertRequest);
  }

  if (LLMCacheManager.isEnabled()())
  {
    v14 = v0[35];
    v15 = v0[18];
    v16 = v0[19];
    v17 = *(v16 + 168);
    v0[41] = v17;
    v18 = *(v14 + 24);
    v34 = *(v16 + 112);
    (*(*v17 + 88))(v15 + v18, &v34);
    v19 = *v15;
    v0[42] = *v15;
    v20 = v15[1];
    v0[43] = v20;
    v21 = v15[2];
    v0[44] = v21;
    v22 = v15[3];
    v0[45] = v22;
    v23 = specialized static LLMCacheManager.generateEntryId(searchKey:llmOutput:)(v19, v20, v21, v22);
    v0[46] = v23;
    v24 = *(v16 + 144);
    v25 = *(v16 + 152);
    __swift_project_boxed_opaque_existential_1((v16 + 120), v24);
    v0[14] = v23;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v0[47] = v27;
    v33 = (*(v25 + 16) + **(v25 + 16));
    v29 = swift_task_alloc();
    v0[48] = v29;
    *v29 = v0;
    v29[1] = LLMCacheManager.insert(with:);
    v30 = v0[31];

    return v33(v30, v26, v28, v24, v25);
  }

  else
  {
    $defer #1 () in LLMCacheManager.list(with:)(v0[39], "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
    (*(v0[38] + 8))(v0[39], v0[37]);

    v32 = v0[1];

    return v32();
  }
}

{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = LLMCacheManager.insert(with:);
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = LLMCacheManager.insert(with:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 152);

  if (v0)
  {
    v4 = LLMCacheManager.insert(with:);
  }

  else
  {
    v4 = LLMCacheManager.insert(with:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 248);
  outlined destroy of ListRequest(*(v0 + 240), type metadata accessor for AnnotatedCacheEntry);
  outlined destroy of ListRequest(v1, type metadata accessor for AnnotatedCacheEntry);
  v2 = *(v0 + 312);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 256);
  (*(**(v0 + 328) + 96))(v3);
  (*(v4 + 8))(v3, v5);
  $defer #1 () in LLMCacheManager.list(with:)(v2, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v6 = *(v0 + 8);

  return v6();
}

{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 152);

  if (v0)
  {
    v4 = LLMCacheManager.insert(with:);
  }

  else
  {
    v4 = LLMCacheManager.insert(with:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  outlined destroy of ListRequest(*(v0 + 232), type metadata accessor for AnnotatedCacheEntry);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 312);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 256);
  (*(**(v0 + 328) + 96))(v5);
  (*(v6 + 8))(v5, v7);
  $defer #1 () in LLMCacheManager.list(with:)(v4, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v8 = *(v0 + 8);

  return v8();
}

{
  v69 = v0;

  v1 = *(v0 + 392);
  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 448) == 2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_255A20000, v4, v5, "No existing cache entry found, going to insert a new entry", v6, 2u);
      MEMORY[0x259C47EC0](v6, -1, -1);
    }

    v7 = *(v0 + 368);
    v61 = *(v0 + 352);
    v62 = *(v0 + 360);
    v63 = *(v0 + 336);
    v64 = *(v0 + 344);
    v8 = *(v0 + 200);
    v58 = *(v0 + 208);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 168);
    v65 = *(v0 + 176);
    v59 = v11;
    v12 = *(v0 + 152);
    v66 = *(v0 + 160);
    v60 = v12;

    static Date.now.getter();
    *(v0 + 136) = v7;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v14;
    v55 = v13;
    LOBYTE(v12) = *(v12 + 112);
    type metadata accessor for AnnotatedCacheEntryBuilder(0);
    v15 = swift_allocObject();
    v56 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
    v53 = *(v8 + 56);
    v53(v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, 1, 1, v9);
    v57 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime;
    v53(v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v9);
    v16 = (v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
    *v16 = 0;
    v16[1] = 0;
    v17 = v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
    *v17 = 0;
    *(v17 + 8) = 1;
    (*(v11 + 56))(v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, 1, 1, v66);
    v18 = v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v15 + 16) = v55;
    *(v15 + 24) = v54;
    *(v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v12;
    *(v15 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
    v19 = *(v8 + 16);
    v19(v10, v58, v9);
    v53(v10, 0, 1, v9);
    swift_beginAccess();
    outlined assign with take of Date?(v10, v15 + v56);
    swift_endAccess();
    v19(v10, v58, v9);
    v53(v10, 0, 1, v9);
    swift_beginAccess();
    outlined assign with take of Date?(v10, v15 + v57);
    swift_endAccess();
    swift_beginAccess();
    *v16 = v61;
    v16[1] = v62;

    v20 = specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(v63, v64);

    v22.n128_u64[0] = *(v60 + 160);
    v23 = (*(*v20 + 416))(v21, v22);

    static UserID.defaultUserId.getter();
    v24 = (*(*v23 + 424))(v65);

    v25 = (*(v59 + 8))(v65, v66);
    (*(*v24 + 440))(v25);
    v46 = *(v0 + 224);
    v45 = *(v0 + 232);
    v47 = *(v0 + 152);

    v48 = v47[18];
    v49 = v47[19];
    __swift_project_boxed_opaque_existential_1(v47 + 15, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
    v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v51 = swift_allocObject();
    *(v0 + 424) = v51;
    *(v51 + 16) = xmmword_255A4CA70;
    outlined init with copy of ListRequest(v45, v51 + v50, type metadata accessor for AnnotatedCacheEntry);
    v67 = (*(v49 + 24) + **(v49 + 24));
    v52 = swift_task_alloc();
    *(v0 + 432) = v52;
    *v52 = v0;
    v52[1] = LLMCacheManager.insert(with:);

    return v67(v51, v48, v49);
  }

  else
  {

    v26 = v1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68[0] = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v68);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_255A20000, v27, v28, "Failed to insert: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x259C47EC0](v31, -1, -1);
      MEMORY[0x259C47EC0](v30, -1, -1);
    }

    v35 = *(v0 + 328);
    v36 = *(v0 + 304);
    v37 = *(v0 + 312);
    v38 = *(v0 + 296);
    v40 = *(v0 + 264);
    v39 = *(v0 + 272);
    v41 = *(v0 + 256);
    LOBYTE(v68[0]) = 1;
    (*(*v35 + 104))(v39, v68);
    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();

    (*(v40 + 8))(v39, v41);
    $defer #1 () in LLMCacheManager.list(with:)(v37, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
    (*(v36 + 8))(v37, v38);

    v43 = *(v0 + 8);

    return v43();
  }
}

{
  v70 = v0;
  v1 = *(v0 + 248);
  outlined destroy of ListRequest(*(v0 + 240), type metadata accessor for AnnotatedCacheEntry);
  outlined destroy of ListRequest(v1, type metadata accessor for AnnotatedCacheEntry);
  v2 = *(v0 + 416);
  *(v0 + 120) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 448) == 2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_255A20000, v5, v6, "No existing cache entry found, going to insert a new entry", v7, 2u);
      MEMORY[0x259C47EC0](v7, -1, -1);
    }

    v8 = *(v0 + 368);
    v62 = *(v0 + 352);
    v63 = *(v0 + 360);
    v64 = *(v0 + 336);
    v65 = *(v0 + 344);
    v9 = *(v0 + 200);
    v59 = *(v0 + 208);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 168);
    v66 = *(v0 + 176);
    v60 = v12;
    v13 = *(v0 + 152);
    v67 = *(v0 + 160);
    v61 = v13;

    static Date.now.getter();
    *(v0 + 136) = v8;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v15;
    v56 = v14;
    LOBYTE(v13) = *(v13 + 112);
    type metadata accessor for AnnotatedCacheEntryBuilder(0);
    v16 = swift_allocObject();
    v57 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
    v54 = *(v9 + 56);
    v54(v16 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, 1, 1, v10);
    v58 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime;
    v54(v16 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v10);
    v17 = (v16 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
    *v17 = 0;
    v17[1] = 0;
    v18 = v16 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
    *v18 = 0;
    *(v18 + 8) = 1;
    (*(v12 + 56))(v16 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, 1, 1, v67);
    v19 = v16 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v16 + 16) = v56;
    *(v16 + 24) = v55;
    *(v16 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v13;
    *(v16 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
    v20 = *(v9 + 16);
    v20(v11, v59, v10);
    v54(v11, 0, 1, v10);
    swift_beginAccess();
    outlined assign with take of Date?(v11, v16 + v57);
    swift_endAccess();
    v20(v11, v59, v10);
    v54(v11, 0, 1, v10);
    swift_beginAccess();
    outlined assign with take of Date?(v11, v16 + v58);
    swift_endAccess();
    swift_beginAccess();
    *v17 = v62;
    v17[1] = v63;

    v21 = specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(v64, v65);

    v23.n128_u64[0] = *(v61 + 160);
    v24 = (*(*v21 + 416))(v22, v23);

    static UserID.defaultUserId.getter();
    v25 = (*(*v24 + 424))(v66);

    v26 = (*(v60 + 8))(v66, v67);
    (*(*v25 + 440))(v26);
    v47 = *(v0 + 224);
    v46 = *(v0 + 232);
    v48 = *(v0 + 152);

    v49 = v48[18];
    v50 = v48[19];
    __swift_project_boxed_opaque_existential_1(v48 + 15, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
    v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v52 = swift_allocObject();
    *(v0 + 424) = v52;
    *(v52 + 16) = xmmword_255A4CA70;
    outlined init with copy of ListRequest(v46, v52 + v51, type metadata accessor for AnnotatedCacheEntry);
    v68 = (*(v50 + 24) + **(v50 + 24));
    v53 = swift_task_alloc();
    *(v0 + 432) = v53;
    *v53 = v0;
    v53[1] = LLMCacheManager.insert(with:);

    return v68(v52, v49, v50);
  }

  else
  {

    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v69[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v69);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_255A20000, v28, v29, "Failed to insert: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x259C47EC0](v32, -1, -1);
      MEMORY[0x259C47EC0](v31, -1, -1);
    }

    v36 = *(v0 + 328);
    v37 = *(v0 + 304);
    v38 = *(v0 + 312);
    v39 = *(v0 + 296);
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    LOBYTE(v69[0]) = 1;
    (*(*v36 + 104))(v40, v69);
    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();

    (*(v41 + 8))(v40, v42);
    $defer #1 () in LLMCacheManager.list(with:)(v38, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
    (*(v37 + 8))(v38, v39);

    v44 = *(v0 + 8);

    return v44();
  }
}

{
  v24 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  outlined destroy of ListRequest(*(v0 + 232), type metadata accessor for AnnotatedCacheEntry);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 440);

  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_255A20000, v6, v7, "Failed to insert: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x259C47EC0](v9, -1, -1);
    MEMORY[0x259C47EC0](v8, -1, -1);
  }

  v13 = *(v0 + 328);
  v14 = *(v0 + 304);
  v15 = *(v0 + 312);
  v16 = *(v0 + 296);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 256);
  LOBYTE(v23[0]) = 1;
  (*(*v13 + 104))(v17, v23);
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();

  (*(v18 + 8))(v17, v19);
  $defer #1 () in LLMCacheManager.list(with:)(v15, "LLMCacheManager.insert", 22, "LLMCacheManager leaving insert...");
  (*(v14 + 8))(v15, v16);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    _s8LLMCache13CacheDatabase_pWOb_0(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of AnnotatedCacheEntry?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data._Representation?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t LLMCacheManager.deleteAll()()
{
  v1[6] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.deleteAll(), v0, 0);
}

{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 80) = __swift_project_value_buffer(v2, static Logger.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_255A20000, v3, v4, "LLMCacheManager entering deleteAll...", v5, 2u);
    MEMORY[0x259C47EC0](v5, -1, -1);
  }

  if (LLMCacheManager.isEnabled()())
  {
    v6 = *(v0 + 48);
    v7 = *(v6 + 144);
    v8 = *(v6 + 152);
    __swift_project_boxed_opaque_existential_1((v6 + 120), v7);
    *(v0 + 104) = *(v6 + 112);
    v12 = (*(v8 + 48) + **(v8 + 48));
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = LLMCacheManager.deleteAll();

    return v12(v0 + 104, v7, v8);
  }

  else
  {
    $defer #1 () in LLMCacheManager.list(with:)(*(v0 + 72), "LLMCacheManager.deleteAll", 25, "LLMCacheManager leaving deleteAll...");
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = LLMCacheManager.deleteAll();
  }

  else
  {
    v4 = LLMCacheManager.deleteAll();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  $defer #1 () in LLMCacheManager.list(with:)(v0[9], "LLMCacheManager.deleteAll", 25, "LLMCacheManager leaving deleteAll...");
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

{
  v18 = v0;
  v1 = v0[12];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_255A20000, v3, v4, "Failed to deleteAll: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x259C47EC0](v6, -1, -1);
    MEMORY[0x259C47EC0](v5, -1, -1);
  }

  v10 = v0[12];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();

  $defer #1 () in LLMCacheManager.list(with:)(v11, "LLMCacheManager.deleteAll", 25, "LLMCacheManager leaving deleteAll...");
  (*(v12 + 8))(v11, v13);

  v15 = v0[1];

  return v15();
}

uint64_t LLMCacheManager.warmup()()
{
  v1[6] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.warmup(), v0, 0);
}

{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v2, static Logger.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_255A20000, v3, v4, "LLMCacheManager entering warmup...", v5, 2u);
    MEMORY[0x259C47EC0](v5, -1, -1);
  }

  if (LLMCacheManager.isEnabled()())
  {
    v6 = v0[6];
    v7 = v6[18];
    v8 = v6[19];
    __swift_project_boxed_opaque_existential_1(v6 + 15, v7);
    v15 = (*(v8 + 56) + **(v8 + 56));
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = LLMCacheManager.warmup();

    return v15(v7, v8);
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    $defer #1 () in LLMCacheManager.list(with:)(v11, "LLMCacheManager.warmup", 22, "LLMCacheManager leaving warmup...");
    (*(v12 + 8))(v11, v13);

    v14 = v0[1];

    return v14();
  }
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = LLMCacheManager.warmup();
  }

  else
  {
    v4 = LLMCacheManager.warmup();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  $defer #1 () in LLMCacheManager.list(with:)(v1, "LLMCacheManager.warmup", 22, "LLMCacheManager leaving warmup...");
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v18 = v0;
  v1 = v0[12];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_255A20000, v3, v4, "Failed to warmup: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x259C47EC0](v6, -1, -1);
    MEMORY[0x259C47EC0](v5, -1, -1);
  }

  v10 = v0[12];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();

  $defer #1 () in LLMCacheManager.list(with:)(v11, "LLMCacheManager.warmup", 22, "LLMCacheManager leaving warmup...");
  (*(v12 + 8))(v11, v13);

  v15 = v0[1];

  return v15();
}

uint64_t LLMCacheManager.pruneExpiredEntries()()
{
  v1[7] = v0;
  v2 = type metadata accessor for Date();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for AnnotatedCacheEntry(0);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](LLMCacheManager.pruneExpiredEntries(), v0, 0);
}

{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 152) = __swift_project_value_buffer(v2, static Logger.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_255A20000, v3, v4, "LLMCacheManager entering pruneExpiredEntries", v5, 2u);
    MEMORY[0x259C47EC0](v5, -1, -1);
  }

  v6 = *(v0 + 56);

  *(v0 + 40) = MEMORY[0x277D84F90];
  v7 = *(v6 + 112);
  *(v0 + 217) = v7;
  *(v0 + 160) = 0;
  v8 = *(v0 + 56);
  v9 = v8[18];
  v10 = v8[19];
  __swift_project_boxed_opaque_existential_1(v8 + 15, v9);
  *(v0 + 216) = v7;
  v13 = (*(v10 + 40) + **(v10 + 40));
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = LLMCacheManager.pruneExpiredEntries();

  return v13(v0 + 216, 1000, 0, v9, v10);
}

{
  result = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(result + 16);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v3)
  {
    v33 = v2 + v3;
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    v34 = *(v0 + 176);
    while (v5 < *(result + 16))
    {
      v7 = *(v0 + 104);
      v9 = *(v0 + 80);
      v8 = *(v0 + 88);
      v11 = *(v0 + 64);
      v10 = *(v0 + 72);
      v35 = *(v7 + 72);
      v37 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      outlined init with copy of ListRequest(*(v0 + 176) + v37 + v35 * v5, *(v0 + 120), type metadata accessor for AnnotatedCacheEntry);
      Date.addingTimeInterval(_:)();
      static Date.now.getter();
      v12 = static Date.< infix(_:_:)();
      v13 = *(v10 + 8);
      v13(v9, v11);
      v13(v8, v11);
      v14 = *(v0 + 120);
      if (v12)
      {
        outlined init with take of AnnotatedCacheEntry(v14, *(v0 + 112));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 48) = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
          v6 = *(v0 + 48);
        }

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v6 = *(v0 + 48);
        }

        v18 = *(v0 + 112);
        *(v6 + 16) = v17 + 1;
        outlined init with take of AnnotatedCacheEntry(v18, v6 + v37 + v17 * v35);
      }

      else
      {
        outlined destroy of ListRequest(v14, type metadata accessor for AnnotatedCacheEntry);
      }

      ++v5;
      result = v34;
      if (v3 == v5)
      {
        v4 = v33;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_15:

  swift_beginAccess();
  specialized Array.append<A>(contentsOf:)(v6);
  swift_endAccess();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    *(v21 + 4) = v4;
    *(v21 + 12) = 2048;
    *(v21 + 14) = *(*(v0 + 40) + 16);
    _os_log_impl(&dword_255A20000, v19, v20, "Updated offset to %ld, collected %ld expired entries", v21, 0x16u);
    MEMORY[0x259C47EC0](v21, -1, -1);
  }

  if (v3)
  {
    *(v0 + 160) = v4;
    v22 = *(v0 + 217);
    v23 = *(v0 + 56);
    v24 = v23[18];
    v25 = v23[19];
    __swift_project_boxed_opaque_existential_1(v23 + 15, v24);
    *(v0 + 216) = v22;
    v38 = (*(v25 + 40) + **(v25 + 40));
    v26 = swift_task_alloc();
    *(v0 + 168) = v26;
    *v26 = v0;
    v26[1] = LLMCacheManager.pruneExpiredEntries();

    return v38(v0 + 216, 1000, v4, v24, v25);
  }

  else
  {
    v27 = *(v0 + 56);
    v28 = v27[18];
    v29 = v27[19];
    __swift_project_boxed_opaque_existential_1(v27 + 15, v28);
    v30 = *(v0 + 40);
    *(v0 + 192) = v30;
    v31 = *(v29 + 8);

    v36 = (v31 + *v31);
    v32 = swift_task_alloc();
    *(v0 + 200) = v32;
    *v32 = v0;
    v32[1] = LLMCacheManager.pruneExpiredEntries();

    return v36(v30, v28, v29);
  }
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = LLMCacheManager.pruneExpiredEntries();
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = LLMCacheManager.pruneExpiredEntries();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  $defer #1 () in LLMCacheManager.list(with:)(v1, "LLMCacheManager.pruneExpiredEntries", 35, "LLMCacheManager leaving pruneExpiredEntries...");
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  $defer #1 () in LLMCacheManager.list(with:)(v1, "LLMCacheManager.pruneExpiredEntries", 35, "LLMCacheManager leaving pruneExpiredEntries...");
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  swift_bridgeObjectRelease_n();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  $defer #1 () in LLMCacheManager.list(with:)(v1, "LLMCacheManager.pruneExpiredEntries", 35, "LLMCacheManager leaving pruneExpiredEntries...");
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t LLMCacheManager.pruneExpiredEntries()(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  v4 = v3[7];
  if (v1)
  {
    v5 = LLMCacheManager.pruneExpiredEntries();
  }

  else
  {
    v5 = LLMCacheManager.pruneExpiredEntries();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void $defer #1 () in LLMCacheManager.list(with:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.logger);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_255A20000, oslog, v6, a4, v7, 2u);
    MEMORY[0x259C47EC0](v7, -1, -1);
  }
}

uint64_t LLMCacheManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LLMCacheManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for LLMCacheManaging.list(with:) in conformance LLMCacheManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return LLMCacheManager.list(with:)(a1, a2);
}

uint64_t protocol witness for LLMCacheManaging.insert(with:) in conformance LLMCacheManager(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return LLMCacheManager.insert(with:)(a1);
}

uint64_t protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = type metadata accessor for InsertRequest(0);
  v6 = swift_task_alloc();
  v7 = *v4;
  v5[7] = v6;
  v5[8] = v7;

  return MEMORY[0x2822009F8](protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager, v7, 0);
}

uint64_t protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager(uint64_t a1)
{
  v2 = v1[7];
  v4 = v1[4];
  v3 = v1[5];
  v6 = v1[2];
  v5 = v1[3];
  UUID.init()();
  *v2 = v6;
  v2[1] = v5;
  v2[2] = v4;
  v2[3] = v3;

  v7 = swift_task_alloc();
  v1[9] = v7;
  *v7 = v1;
  v7[1] = protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager;
  v8 = v1[7];

  return LLMCacheManager.insert(with:)(v8);
}

uint64_t protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager;
  }

  else
  {
    v4 = protocol witness for LLMCacheManaging.insert(searchKey:llmOutput:) in conformance LLMCacheManager;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of ListRequest(*(v0 + 56), type metadata accessor for InsertRequest);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of ListRequest(*(v0 + 56), type metadata accessor for InsertRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for LLMCacheManaging.deleteAll() in conformance LLMCacheManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return LLMCacheManager.deleteAll()();
}

uint64_t protocol witness for LLMCacheManaging.warmup() in conformance LLMCacheManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return LLMCacheManager.warmup()();
}

uint64_t protocol witness for LLMCacheManaging.pruneExpiredEntries() in conformance LLMCacheManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return LLMCacheManager.pruneExpiredEntries()();
}

Swift::Int LLMCacheManagerError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](v1);
  return Hasher._finalize()();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR, type metadata accessor for AnnotatedCacheEntry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12VectorSearch5AssetVGMd, &_ss23_ContiguousArrayStorageCy12VectorSearch5AssetVGMR, MEMORY[0x277D782B0]);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for AnnotatedCacheEntry(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  *v2 = v5;
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
      v7 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for AnnotatedCacheEntry(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AnnotatedCacheEntry(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for AnnotatedCacheEntry(0);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      outlined init with copy of ListRequest(v22, v17, type metadata accessor for AnnotatedCacheEntry);
      outlined init with copy of ListRequest(v23, v13, type metadata accessor for AnnotatedCacheEntry);
      v24 = v37(v17, v13);
      outlined destroy of ListRequest(v13, type metadata accessor for AnnotatedCacheEntry);
      result = outlined destroy of ListRequest(v17, type metadata accessor for AnnotatedCacheEntry);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        outlined init with take of AnnotatedCacheEntry(v22, v35);
        swift_arrayInitWithTakeFrontToBack();
        result = outlined init with take of AnnotatedCacheEntry(v25, v23);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v136 = a5;
  v137 = a4;
  v124 = a1;
  v130 = type metadata accessor for AnnotatedCacheEntry(0);
  v135 = *(v130 - 8);
  v11 = MEMORY[0x28223BE20](v130);
  v127 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v129 = &v113 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v113 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v113 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  result = MEMORY[0x28223BE20](v23);
  if (a3[1] < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_101:
    v7 = a3;
    a3 = *v124;
    if (*v124)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_103;
    }

    goto LABEL_143;
  }

  v29 = a3[1];
  v120 = &v113 - v25;
  v121 = v28;
  v131 = v27;
  v128 = v26;
  v119 = a6;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v123 = v22;
  v125 = a3;
  v118 = v18;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    v126 = v29;
    if (v33 >= v29)
    {
      v43 = v33;
    }

    else
    {
      v34 = *a3;
      v7 = *(v135 + 72);
      v35 = v32;
      v36 = v34 + v7 * v33;
      v37 = v120;
      outlined init with copy of ListRequest(v36, v120, type metadata accessor for AnnotatedCacheEntry);
      v134 = v34;
      v38 = v34 + v7 * v35;
      v39 = v121;
      outlined init with copy of ListRequest(v38, v121, type metadata accessor for AnnotatedCacheEntry);
      LODWORD(v133) = v137(v37, v39);
      if (v8)
      {
        outlined destroy of ListRequest(v39, type metadata accessor for AnnotatedCacheEntry);
        v112 = v37;
        goto LABEL_113;
      }

      outlined destroy of ListRequest(v39, type metadata accessor for AnnotatedCacheEntry);
      result = outlined destroy of ListRequest(v37, type metadata accessor for AnnotatedCacheEntry);
      v117 = v126 - 1;
      v132 = v126 - 2;
      v40 = v134 + v7 * (v35 + 2);
      v122 = v35;
      v41 = v7;
      v134 = v7;
      while (v132 != v35)
      {
        outlined init with copy of ListRequest(v40, v22, type metadata accessor for AnnotatedCacheEntry);
        v7 = v131;
        outlined init with copy of ListRequest(v36, v131, type metadata accessor for AnnotatedCacheEntry);
        v42 = v137(v22, v7);
        outlined destroy of ListRequest(v7, type metadata accessor for AnnotatedCacheEntry);
        result = outlined destroy of ListRequest(v22, type metadata accessor for AnnotatedCacheEntry);
        ++v35;
        v41 = v134;
        v40 += v134;
        v36 += v134;
        if ((v133 ^ v42))
        {
          v43 = v35 + 1;
          goto LABEL_11;
        }
      }

      v35 = v117;
      v43 = v126;
LABEL_11:
      v32 = v122;
      if ((v133 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v43 < v122)
      {
        goto LABEL_137;
      }

      if (v122 <= v35)
      {
        v44 = v41 * (v43 - 1);
        v45 = v43;
        v46 = v43 * v41;
        v126 = v45;
        v7 = v122 * v41;
        do
        {
          if (v32 != --v45)
          {
            v133 = v8;
            v47 = *v125;
            if (!*v125)
            {
              goto LABEL_141;
            }

            outlined init with take of AnnotatedCacheEntry(v47 + v7, v127);
            if (v7 < v44 || v47 + v7 >= (v47 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v7 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = outlined init with take of AnnotatedCacheEntry(v127, v47 + v44);
            v8 = v133;
            v41 = v134;
          }

          ++v32;
          v44 -= v41;
          v46 -= v41;
          v7 += v41;
        }

        while (v32 < v45);
        a3 = v125;
        v43 = v126;
        v18 = v118;
        v32 = v122;
      }

      else
      {
LABEL_14:
        a3 = v125;
        v18 = v118;
      }
    }

    v48 = a3[1];
    if (v43 >= v48)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v32))
    {
      goto LABEL_133;
    }

    if (v43 - v32 >= v119)
    {
      goto LABEL_36;
    }

    if (__OFADD__(v32, v119))
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v126 = v43;
    if (v32 + v119 >= v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = v32 + v119;
    }

    if (v49 < v32)
    {
      goto LABEL_136;
    }

    if (v126 == v49)
    {
      v43 = v126;
LABEL_36:
      if (v43 < v32)
      {
        goto LABEL_132;
      }

      goto LABEL_37;
    }

    v97 = *a3;
    v98 = *(v135 + 72);
    v7 = *a3 + v98 * (v126 - 1);
    v133 = -v98;
    v134 = v97;
    v122 = v32;
    v99 = v32 - v126;
    v114 = v98;
    v100 = v97 + v126 * v98;
    v132 = v49;
    do
    {
      v115 = v100;
      v116 = v99;
      v117 = v7;
      do
      {
        outlined init with copy of ListRequest(v100, v18, type metadata accessor for AnnotatedCacheEntry);
        v101 = v18;
        v102 = v128;
        outlined init with copy of ListRequest(v7, v128, type metadata accessor for AnnotatedCacheEntry);
        v103 = v137(v101, v102);
        if (v8)
        {
          outlined destroy of ListRequest(v102, type metadata accessor for AnnotatedCacheEntry);
          v112 = v101;
LABEL_113:
          outlined destroy of ListRequest(v112, type metadata accessor for AnnotatedCacheEntry);
        }

        v104 = v103;
        outlined destroy of ListRequest(v102, type metadata accessor for AnnotatedCacheEntry);
        result = outlined destroy of ListRequest(v101, type metadata accessor for AnnotatedCacheEntry);
        v18 = v101;
        if ((v104 & 1) == 0)
        {
          break;
        }

        if (!v134)
        {
          goto LABEL_139;
        }

        v105 = v129;
        outlined init with take of AnnotatedCacheEntry(v100, v129);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of AnnotatedCacheEntry(v105, v7);
        v7 += v133;
        v100 += v133;
      }

      while (!__CFADD__(v99++, 1));
      v7 = v117 + v114;
      v99 = v116 - 1;
      v100 = v115 + v114;
      v43 = v132;
      ++v126;
    }

    while (v126 != v132);
    a3 = v125;
    v32 = v122;
    if (v132 < v122)
    {
      goto LABEL_132;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    v50 = v8;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v52 = *(v31 + 2);
    v51 = *(v31 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v53;
    v54 = &v31[16 * v52];
    *(v54 + 4) = v32;
    *(v54 + 5) = v43;
    v7 = *v124;
    if (!*v124)
    {
      goto LABEL_142;
    }

    v132 = v43;
    if (v52)
    {
      break;
    }

    v8 = v50;
LABEL_88:
    v29 = a3[1];
    v30 = v132;
    v22 = v123;
    if (v132 >= v29)
    {
      goto LABEL_101;
    }
  }

  v8 = v50;
  while (1)
  {
    v55 = v53 - 1;
    if (v53 >= 4)
    {
      v60 = &v31[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_119;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_120;
      }

      v67 = &v31[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_122;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_125;
      }

      if (v71 >= v63)
      {
        v89 = &v31[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_131;
        }

        if (v58 < v92)
        {
          v55 = v53 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v53 == 3)
    {
      v56 = *(v31 + 4);
      v57 = *(v31 + 5);
      v66 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      v59 = v66;
LABEL_57:
      if (v59)
      {
        goto LABEL_121;
      }

      v72 = &v31[16 * v53];
      v74 = *v72;
      v73 = *(v72 + 1);
      v75 = __OFSUB__(v73, v74);
      v76 = v73 - v74;
      v77 = v75;
      if (v75)
      {
        goto LABEL_124;
      }

      v78 = &v31[16 * v55 + 32];
      v80 = *v78;
      v79 = *(v78 + 1);
      v66 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v66)
      {
        goto LABEL_127;
      }

      if (__OFADD__(v76, v81))
      {
        goto LABEL_128;
      }

      if (v76 + v81 >= v58)
      {
        if (v58 < v81)
        {
          v55 = v53 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v82 = &v31[16 * v53];
    v84 = *v82;
    v83 = *(v82 + 1);
    v66 = __OFSUB__(v83, v84);
    v76 = v83 - v84;
    v77 = v66;
LABEL_71:
    if (v77)
    {
      goto LABEL_123;
    }

    v85 = &v31[16 * v55];
    v87 = *(v85 + 4);
    v86 = *(v85 + 5);
    v66 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v66)
    {
      goto LABEL_126;
    }

    if (v88 < v76)
    {
      goto LABEL_88;
    }

LABEL_78:
    v93 = v55 - 1;
    if (v55 - 1 >= v53)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_138;
    }

    v94 = *&v31[16 * v93 + 32];
    v95 = *&v31[16 * v55 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v135 + 72) * v94, *a3 + *(v135 + 72) * *&v31[16 * v55 + 32], *a3 + *(v135 + 72) * v95, v7, v137, v136);
    if (v8)
    {
    }

    if (v95 < v94)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    }

    if (v93 >= *(v31 + 2))
    {
      goto LABEL_118;
    }

    v96 = &v31[16 * v93];
    *(v96 + 4) = v94;
    *(v96 + 5) = v95;
    v138 = v31;
    result = specialized Array.remove(at:)(v55);
    v31 = v138;
    v53 = *(v138 + 2);
    if (v53 <= 1)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
  v31 = result;
LABEL_103:
  v138 = v31;
  v107 = *(v31 + 2);
  v108 = v136;
  if (v107 < 2)
  {
  }

  while (*v7)
  {
    v109 = *&v31[16 * v107];
    v110 = *&v31[16 * v107 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)(*v7 + *(v135 + 72) * v109, *v7 + *(v135 + 72) * *&v31[16 * v107 + 16], *v7 + *(v135 + 72) * v110, a3, v137, v108);
    if (v8)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
    }

    if (v107 - 2 >= *(v31 + 2))
    {
      goto LABEL_130;
    }

    v111 = &v31[16 * v107];
    *v111 = v109;
    *(v111 + 1) = v110;
    v138 = v31;
    result = specialized Array.remove(at:)(v107 - 1);
    v31 = v138;
    v107 = *(v138 + 2);
    if (v107 <= 1)
    {
    }
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

unint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for AnnotatedCacheEntry(0);
  v11 = MEMORY[0x28223BE20](v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v52 = *(v23 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < result || result + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = result;
          outlined init with copy of ListRequest(a2, v22, type metadata accessor for AnnotatedCacheEntry);
          outlined init with copy of ListRequest(a4, v19, type metadata accessor for AnnotatedCacheEntry);
          v30 = v55(v22, v19);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          outlined destroy of ListRequest(v19, type metadata accessor for AnnotatedCacheEntry);
          outlined destroy of ListRequest(v22, type metadata accessor for AnnotatedCacheEntry);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          result = v34 + v33;
          v59 = result;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        outlined destroy of ListRequest(v19, type metadata accessor for AnnotatedCacheEntry);
        outlined destroy of ListRequest(v22, type metadata accessor for AnnotatedCacheEntry);
      }

LABEL_64:
      specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v59, &v58, &v57);
      return 1;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v16;
          v48 = v13;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= result)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              outlined init with copy of ListRequest(v38 + v37, v16, type metadata accessor for AnnotatedCacheEntry);
              outlined init with copy of ListRequest(v50, v13, type metadata accessor for AnnotatedCacheEntry);
              v42 = v55(v16, v13);
              if (v7)
              {
                outlined destroy of ListRequest(v13, type metadata accessor for AnnotatedCacheEntry);
                outlined destroy of ListRequest(v16, type metadata accessor for AnnotatedCacheEntry);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              outlined destroy of ListRequest(v13, type metadata accessor for AnnotatedCacheEntry);
              outlined destroy of ListRequest(v16, type metadata accessor for AnnotatedCacheEntry);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              result = v51;
              v16 = v47;
              v13 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v51;
            v38 = v52;
            v16 = v47;
            v13 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}