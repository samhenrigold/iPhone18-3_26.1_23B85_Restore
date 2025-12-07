void JSON.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      MEMORY[0x1AC57CB80](4);

      specialized Array<A>.hash(into:)(a1, v3);
    }

    else if (v4 == 4)
    {
      MEMORY[0x1AC57CB80](5);

      specialized Dictionary<>.hash(into:)(a1, v3);
    }

    else
    {
      MEMORY[0x1AC57CB80](0);
    }
  }

  else if (*(v1 + 16))
  {
    if (v4 == 1)
    {
      MEMORY[0x1AC57CB80](2);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x1AC57CBC0](v5);
    }

    else
    {
      MEMORY[0x1AC57CB80](3);

      String.hash(into:)();
    }
  }

  else
  {
    MEMORY[0x1AC57CB80](1);
    Hasher._combine(_:)(v3 & 1);
  }
}

Swift::Int JSON.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JSON()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JSON(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v23 = v9;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = __clz(__rbit64(v6)) | (v10 << 6);
    v14 = *(*(a2 + 48) + 16 * v13 + 8);
    v15 = *(a2 + 56) + 24 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);

    outlined copy of JSON(v16, v17, v18);
    if (!v14)
    {
LABEL_26:

      return MEMORY[0x1AC57CB80](v23);
    }

    v19 = *(a1 + 48);
    v24[2] = *(a1 + 32);
    v24[3] = v19;
    v25 = *(a1 + 64);
    v20 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v20;
    String.hash(into:)();

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        MEMORY[0x1AC57CB80](4);
        specialized Array<A>.hash(into:)(v24, v16);
        outlined consume of JSON(v16, v17, 3);
LABEL_5:
        v11 = v23;
        goto LABEL_6;
      }

      v11 = v23;
      if (v18 == 4)
      {
        MEMORY[0x1AC57CB80](5);
        specialized Dictionary<>.hash(into:)(v24, v16);
        outlined consume of JSON(v16, v17, 4);
      }

      else
      {
        MEMORY[0x1AC57CB80](0);
      }
    }

    else
    {
      if (!v18)
      {
        MEMORY[0x1AC57CB80](1);
        Hasher._combine(_:)(v16 & 1);
        goto LABEL_5;
      }

      v11 = v23;
      if (v18 == 1)
      {
        MEMORY[0x1AC57CB80](2);
        if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        MEMORY[0x1AC57CBC0](v21);
      }

      else
      {
        MEMORY[0x1AC57CB80](3);
        String.hash(into:)();
        outlined consume of JSON(v16, v17, 2);
      }
    }

LABEL_6:
    v6 &= v6 - 1;
    result = Hasher._finalize()();
    v9 = result ^ v11;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      goto LABEL_26;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
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

      return MEMORY[0x1AC57CB80](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        String.hash(into:)();

        String.hash(into:)();

        result = Hasher._finalize()();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static JSON.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        outlined copy of JSON(*a2, *(a2 + 8), 3);
        outlined copy of JSON(v2, v3, 3);
        LOBYTE(v7) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4JSONO_Tt1g5(v2, v5);
        outlined consume of JSON(v2, v3, 3);
        outlined consume of JSON(v5, v6, 3);
        return v7 & 1;
      }
    }

    else
    {
      if (v4 != 4)
      {
        if (v7 != 5 || (v6 | v5) != 0)
        {
          goto LABEL_25;
        }

        outlined consume of JSON(*a1, v3, 5);
        v8 = 0;
        v9 = 0;
        v10 = 5;
LABEL_29:
        outlined consume of JSON(v8, v9, v10);
        LOBYTE(v7) = 1;
        return v7 & 1;
      }

      if (v7 == 4)
      {
        outlined copy of JSON(*a2, *(a2 + 8), 4);
        outlined copy of JSON(v2, v3, 4);
        LOBYTE(v7) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v2, v5);
        outlined consume of JSON(v2, v3, 4);
        outlined consume of JSON(v5, v6, 4);
        return v7 & 1;
      }
    }

LABEL_20:

    goto LABEL_25;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      outlined consume of JSON(*a1, v3, 0);
      outlined consume of JSON(v5, v6, 0);
      v7 = (v5 ^ v2) ^ 1;
      return v7 & 1;
    }

LABEL_25:
    outlined copy of JSON(v5, v6, v7);
    outlined consume of JSON(v2, v3, v4);
    outlined consume of JSON(v5, v6, v7);
LABEL_26:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      if (v2 != v5 || v3 != v6)
      {
        LOBYTE(v7) = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of JSON(v5, v6, 2);
        outlined copy of JSON(v2, v3, 2);
        outlined consume of JSON(v2, v3, 2);
        outlined consume of JSON(v5, v6, 2);
        return v7 & 1;
      }

      outlined copy of JSON(v2, v3, 2);
      outlined copy of JSON(v2, v3, 2);
      outlined consume of JSON(v2, v3, 2);
      v8 = v2;
      v9 = v3;
      v10 = 2;
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v7 != 1)
  {
    goto LABEL_25;
  }

  outlined consume of JSON(*a1, v3, 1);
  outlined consume of JSON(v5, v6, 1);
  if (*&v2 != *&v5)
  {
    goto LABEL_26;
  }

  return v7 & 1;
}

uint64_t getEnumTagSinglePayload for JSON(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for JSON(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for JSON(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t FoundationModelsExtensionInfo.__allocating_init(fileURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FoundationModelsExtensionInfo.init(fileURL:)(a1);
  return v2;
}

uint64_t FoundationModelsExtensionInfo.init(fileURL:)(uint64_t a1)
{
  v47 = *v1;
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = v42 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v42 - v16;
  v18 = URL.path(percentEncoded:)(0);
  MEMORY[0x1AC57B790](v18._countAndFlagsBits, v18._object);
  v45 = *(v4 + 16);
  v45(v11, v17, v3);
  FilePath.appending(_:)();
  v50 = 0;
  v51 = 16842752;
  v19 = v48;
  FilePath.withCString<A>(_:)();
  if (!v19)
  {
    v43 = v6;
    v44 = a1;
    v48 = *(v4 + 8);
    v48(v14, v3);
    *(v49 + 16) = v52;
    v45(v11, v17, v3);
    v22 = FilePath.appending(_:)();
    MEMORY[0x1EEE9AC00](v22);
    v42[-2] = 0;
    LODWORD(v42[-1]) = 16842752;
    FilePath.withCString<A>(_:)();
    v42[1] = 0;
    v25 = v48;
    v48(v46, v3);
    *(v49 + 20) = v52;
    v26 = v43;
    v27 = v45;
    v45(v43, v17, v3);
    FilePath.appending(_:)();
    v42[2] = FilePath.string.getter();
    v25(v11, v3);
    v46 = v17;
    v27(v26, v17, v3);
    FilePath.appending(_:)();
    FilePath.string.getter();
    v25(v11, v3);
    v28 = [objc_opt_self() defaultManager];
    v29 = MEMORY[0x1AC57BF60]();
    LODWORD(v25) = [v28 fileExistsAtPath_];

    LODWORD(v45) = v25;
    v23 = v49;
    if (v25)
    {
      v30 = v46;
      String.utf8CString.getter();

      v31 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
      v32 = v31;
      if ((v31 & 0x100000000) != 0)
      {

        v52 = v32;
        lazy protocol witness table accessor for type Errno and conformance Errno();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v38 = v32;
        v39 = type metadata accessor for URL();
        (*(*(v39 - 8) + 8))(v44, v39);
        v48(v30, v3);
      }

      else
      {

        *(v23 + 24) = v32;
        *(v23 + 28) = 0;
        String.utf8CString.getter();

        v33 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
        v34 = v33;
        v35 = v44;
        if ((v33 & 0x100000000) == 0)
        {
          v36 = type metadata accessor for URL();
          (*(*(v36 - 8) + 8))(v35, v36);
          v48(v30, v3);

LABEL_11:
          *(v23 + 32) = v34;
          *(v23 + 36) = v45 ^ 1;
          return v23;
        }

        v52 = v33;
        lazy protocol witness table accessor for type Errno and conformance Errno();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v40 = v34;
        v41 = type metadata accessor for URL();
        (*(*(v41 - 8) + 8))(v35, v41);
        v48(v30, v3);
      }

      goto LABEL_4;
    }

    v37 = type metadata accessor for URL();
    (*(*(v37 - 8) + 8))(v44, v37);
    v48(v46, v3);
    v34 = 0;
    *(v23 + 24) = 0;
    *(v23 + 28) = 1;
    goto LABEL_11;
  }

  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 8))(a1, v20);
  v21 = *(v4 + 8);
  v21(v14, v3);
  v21(v17, v3);
  v23 = v49;
LABEL_4:
  swift_deallocPartialClassInstance();
  return v23;
}

uint64_t FoundationModelsExtensionInfo.deinit()
{
  v1 = v0;
  v2 = FileDescriptor._close()();
  if ((v2 & 0x100000000) != 0 || (v2 = FileDescriptor._close()(), (v2 & 0x100000000) != 0) || (*(v0 + 28) & 1) == 0 && (v2 = FileDescriptor._close()(), (v2 & 0x100000000) != 0) || (*(v0 + 36) & 1) == 0 && (v2 = FileDescriptor._close()(), (v2 & 0x100000000) != 0))
  {
    v3 = v2;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    v4 = swift_allocError();
    *v5 = v3;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.assets);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1A8E85000, v8, v9, "[FoundationModelsExtensionInfo] Failed to close file descriptors: %@", v10, 0xCu);
      outlined destroy of NSObject?(v11);
      MEMORY[0x1AC57DBF0](v11, -1, -1);
      MEMORY[0x1AC57DBF0](v10, -1, -1);
    }

    else
    {
    }
  }

  return v1;
}

uint64_t FoundationModelsExtensionInfo.__deallocating_deinit()
{
  FoundationModelsExtensionInfo.deinit();

  return swift_deallocClassInstance();
}

uint64_t *FoundationModelsExtensionInfo.init(xpcObject:)(uint64_t a1)
{
  v2 = v1;
  v4 = XPCCodableObject.copyUnderlyingXPCObject()();
  v5 = xpc_dictionary_get_value(v4, "metadata");
  if (!v5)
  {
    v10 = type metadata accessor for XPCCodableObject();
    (*(*(v10 - 8) + 8))(a1, v10);
LABEL_7:
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 16) = xpc_fd_dup(v5);
  v6 = xpc_dictionary_get_value(v4, "adapterWeights");
  if (!v6)
  {
    v11 = type metadata accessor for XPCCodableObject();
    (*(*(v11 - 8) + 8))(a1, v11);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  *(v2 + 20) = xpc_fd_dup(v6);
  v7 = xpc_dictionary_get_value(v4, "draftMIL");
  v8 = v7;
  if (v7)
  {
    v9 = xpc_fd_dup(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  *(v2 + 24) = v9;
  *(v2 + 28) = v8 == 0;
  v12 = xpc_dictionary_get_value(v4, "draftWeights");
  if (v12)
  {
    v13 = xpc_fd_dup(v12);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v14 = type metadata accessor for XPCCodableObject();
    (*(*(v14 - 8) + 8))(a1, v14);
    *(v2 + 32) = v13;
    *(v2 + 36) = 0;
  }

  else
  {
    v15 = type metadata accessor for XPCCodableObject();
    (*(*(v15 - 8) + 8))(a1, v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v2 + 32) = 0;
    *(v2 + 36) = 1;
  }

  return v2;
}

uint64_t FoundationModelsExtensionInfo.toXPCObject()()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_fd(empty, "metadata", *(v0 + 16));
  xpc_dictionary_set_fd(empty, "adapterWeights", *(v0 + 20));
  if ((*(v0 + 28) & 1) == 0)
  {
    xpc_dictionary_set_fd(empty, "draftMIL", *(v0 + 24));
  }

  if ((*(v0 + 36) & 1) == 0)
  {
    xpc_dictionary_set_fd(empty, "draftWeights", *(v0 + 32));
  }

  return MEMORY[0x1EEE6D798](empty);
}

uint64_t closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)@<X0>(_DWORD *a6@<X8>)
{
  result = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  if ((result & 0x100000000) != 0)
  {
    v8 = result;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v9 = v8;
  }

  else
  {
    *a6 = result;
  }

  return result;
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

uint64_t protocol witness for Error._domain.getter in conformance GenerationError(uint64_t a1)
{
  v2 = _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, &protocol conformance descriptor for GenerationError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance GenerationError(uint64_t a1)
{
  v2 = _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, &protocol conformance descriptor for GenerationError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t GenerationError.errorDescription.getter()
{
  v1 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for Prompt.SpecialToken(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for GenerationError(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of GenerationError(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    v17 = *v12;
    v18 = v12[1];
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v35 = 0xD000000000000021;
    v36 = 0x80000001A8FD9C80;
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_Si13tokenPositionSi16promptStringSizetMd, &_s15TokenGeneration6PromptV07SpecialA0V_Si13tokenPositionSi16promptStringSizetMR);
        v27 = *(v12 + *(v26 + 48));
        v28 = *(v12 + *(v26 + 64));
        outlined init with take of Prompt.Attachment(v12, v9, type metadata accessor for Prompt.SpecialToken);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v29._countAndFlagsBits = 0xD000000000000016;
        v29._object = 0x80000001A8FD9DD0;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v9);
        v30._countAndFlagsBits = 0x6F697469736F7020;
        v30._object = 0xEA0000000000206ELL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
        v35 = v27;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v31._object = 0x80000001A8FD9DB0;
        v31._countAndFlagsBits = 0xD000000000000014;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
        v35 = v28;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v15 = 0;
        v16 = 0xE000000000000000;
      }

      else
      {
        outlined init with take of Prompt.Attachment(v12, v9, type metadata accessor for Prompt.SpecialToken);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v14._countAndFlagsBits = 0xD000000000000026;
        v14._object = 0x80000001A8FD9F20;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v9);
        v15 = 46;
        v16 = 0xE100000000000000;
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v15);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v23 = String.init(localized:table:bundle:locale:comment:)();
      v24 = type metadata accessor for Prompt.SpecialToken;
      v25 = v9;
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v19 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV10AttachmentV_Si16promptStringSizetMd, &_s15TokenGeneration6PromptV10AttachmentV_Si16promptStringSizetMR) + 48));
      outlined init with take of Prompt.Attachment(v12, v3, type metadata accessor for Prompt.Attachment);
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD9D90);
      v20 = Prompt.Attachment.description.getter();
      MEMORY[0x1AC57C120](v20);

      MEMORY[0x1AC57C120](0x6F697469736F7020, 0xEA0000000000206ELL);
      v34 = *&v3[*(v1 + 20)];
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v21);

      MEMORY[0x1AC57C120](0xD000000000000014, 0x80000001A8FD9DB0);
      v34 = v19;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v22);

      v23 = v35;
      v24 = type metadata accessor for Prompt.Attachment;
      v25 = v3;
LABEL_12:
      outlined destroy of Prompt.Attachment(v25, v24);
      return v23;
    }

    v17 = *v12;
    v18 = v12[1];
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1AC57C120](0xD00000000000003CLL, 0x80000001A8FD9CB0);
  }

  MEMORY[0x1AC57C120](v17, v18);

  return v35;
}

uint64_t type metadata accessor for GenerationError(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenerationError;
  if (!type metadata singleton initialization cache for GenerationError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of GenerationError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Prompt.Attachment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

TokenGenerationCore::GenerationError::Code_optional __swiftcall GenerationError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t GenerationError.code.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GenerationError(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GenerationError(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result == 6)
      {
        v8 = 2;
      }

      else
      {
        v8 = 5;
      }
    }

    else if (result == 4)
    {
      result = outlined destroy of Prompt.Attachment(v6, type metadata accessor for GenerationError);
      v8 = 7;
    }

    else
    {
      v8 = 1;
    }
  }

  else if (result > 1)
  {
    if (result == 2)
    {
      result = outlined destroy of Prompt.Attachment(v6, type metadata accessor for Prompt.Attachment);
      v8 = 4;
    }

    else
    {
      result = outlined destroy of Prompt.Attachment(v6, type metadata accessor for GenerationError);
      v8 = 6;
    }
  }

  else if (result)
  {
    result = outlined destroy of Prompt.Attachment(v6, type metadata accessor for Prompt.SpecialToken);
    v8 = 3;
  }

  else
  {
    result = outlined destroy of Prompt.Attachment(v6, type metadata accessor for GenerationError);
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t outlined destroy of Prompt.Attachment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GenerationError.Code and conformance GenerationError.Code()
{
  result = lazy protocol witness table cache variable for type GenerationError.Code and conformance GenerationError.Code;
  if (!lazy protocol witness table cache variable for type GenerationError.Code and conformance GenerationError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerationError.Code and conformance GenerationError.Code);
  }

  return result;
}

uint64_t base witness table accessor for Error in GenerationError()
{
  return _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, &protocol conformance descriptor for GenerationError);
}

{
  return _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, &protocol conformance descriptor for GenerationError);
}

void type metadata completion function for GenerationError(uint64_t a1)
{
  type metadata accessor for Prompt.SpecialToken(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (Prompt.SpecialToken, tokenPosition: Int, promptStringSize: Int)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (Prompt.Attachment, promptStringSize: Int)(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (errorMessage: String)();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (Prompt.SpecialToken, tokenPosition: Int, promptStringSize: Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Prompt.SpecialToken, tokenPosition: Int, promptStringSize: Int))
  {
    type metadata accessor for Prompt.SpecialToken(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Prompt.SpecialToken, tokenPosition: Int, promptStringSize: Int));
    }
  }
}

void type metadata accessor for (Prompt.Attachment, promptStringSize: Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Prompt.Attachment, promptStringSize: Int))
  {
    type metadata accessor for Prompt.Attachment(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Prompt.Attachment, promptStringSize: Int));
    }
  }
}

uint64_t type metadata accessor for (errorMessage: String)()
{
  result = lazy cache variable for type metadata for (errorMessage: String);
  if (!lazy cache variable for type metadata for (errorMessage: String))
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &lazy cache variable for type metadata for (errorMessage: String));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerationError.Code(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerationError.Code(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenerationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t GenerationError.descriptionWithoutUnderlying.getter()
{
  result = GenerationError.errorDescription.getter();
  if (!v1)
  {
    _StringGuts.grow(_:)(38);

    type metadata accessor for GenerationError(0);
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, &protocol conformance descriptor for GenerationError);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v2);

    return 0xD000000000000024;
  }

  return result;
}

uint64_t GenerationError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GenerationError(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GenerationError(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        outlined destroy of GenerationError(v6, type metadata accessor for GenerationError);
        v9 = MEMORY[0x1E698C2D8];
        goto LABEL_12;
      }

      v8 = type metadata accessor for Prompt.Attachment;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload)
    {
      v8 = type metadata accessor for Prompt.SpecialToken;
LABEL_11:
      outlined destroy of GenerationError(v6, v8);
      v9 = MEMORY[0x1E698C310];
      goto LABEL_12;
    }

LABEL_10:
    v8 = type metadata accessor for GenerationError;
    goto LABEL_11;
  }

  if ((EnumCaseMultiPayload - 5) >= 2)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v9 = MEMORY[0x1E698C318];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v9 = MEMORY[0x1E698C330];
LABEL_12:
  v10 = *v9;
  v11 = type metadata accessor for AppleIntelligenceErrorCategory();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t outlined destroy of GenerationError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GenerationError.rawCode.getter()
{
  v1 = type metadata accessor for GenerationError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GenerationError(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 2;
      }

      else
      {
        return 5;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      outlined destroy of GenerationError(v3, type metadata accessor for GenerationError);
      return 7;
    }

    else
    {
      return 1;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined destroy of GenerationError(v3, type metadata accessor for Prompt.Attachment);
      return 4;
    }

    else
    {
      outlined destroy of GenerationError(v3, type metadata accessor for GenerationError);
      return 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of GenerationError(v3, type metadata accessor for Prompt.SpecialToken);
    return 3;
  }

  else
  {
    outlined destroy of GenerationError(v3, type metadata accessor for GenerationError);
    return 0;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenerationError(uint64_t a1)
{
  v2 = _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, &protocol conformance descriptor for GenerationError);

  return MEMORY[0x1EEDED5B8](a1, v2);
}

void protocol witness for CustomNSError.errorCode.getter in conformance GenerationError()
{
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, &protocol conformance descriptor for GenerationError);

  JUMPOUT(0x1AC57B160);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerationOverrides(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for GenerationOverrides(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void GenerationOverrides.init()(void *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000014;
  *(v2 + 24) = 0x80000001A8FDA040;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v4 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    *a1 = v5;
    a1[1] = 0xD000000000000014;
    a1[2] = 0x80000001A8FDA040;
    a1[3] = partial apply for closure #1 in Overridable<A>.init(key:);
    a1[4] = v2;
    v6 = swift_allocObject();
    *(v6 + 16) = 0xD000000000000020;
    *(v6 + 24) = 0x80000001A8FDA060;
    v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v8 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      a1[5] = v9;
      a1[6] = 0xD000000000000020;
      a1[7] = 0x80000001A8FDA060;
      a1[8] = partial apply for closure #1 in Overridable<A>.init(key:);
      a1[9] = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t one-time initialization function for localeKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.localeKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.localeKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t GenerativeConfigurationProtocol<>.locale(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for localeKey != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for GenerativeConfigurationKey();
  v7 = __swift_project_value_buffer(v6, static GenerativeConfigurationKey.localeKey);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = lazy protocol witness table accessor for type Locale? and conformance <A> A?(&lazy protocol witness table cache variable for type Locale? and conformance <A> A?, &lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969790], MEMORY[0x1E69E7C88]);
  v10 = lazy protocol witness table accessor for type Locale? and conformance <A> A?(&lazy protocol witness table cache variable for type Locale? and conformance <A> A?, &lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969778], MEMORY[0x1E69E7C70]);

  return MEMORY[0x1EEE30630](v7, a1, a2, v8, a3, v9, v10);
}

uint64_t lazy protocol witness table accessor for type Locale? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    lazy protocol witness table accessor for type Locale and conformance Locale(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GenerativeConfigurationProtocol<>.locale.getter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for localeKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v2, static GenerativeConfigurationKey.localeKey);
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969790]);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969778]);

  return GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
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

uint64_t one-time initialization function for toolsInjectDefinitionsKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for schemaInjectDefinitionKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t RunnableConfigurationStorage.toolDefinitions.getter()
{
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
  RunnableConfigurationStorage.value<A>(for:type:)();
  return v2;
}

void *key path getter for RunnableConfigurationStorage.toolDefinitions : RunnableConfigurationStorage@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v2, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
  result = RunnableConfigurationStorage.value<A>(for:type:)();
  *a1 = v4;
  return result;
}

uint64_t key path setter for RunnableConfigurationStorage.toolDefinitions : RunnableConfigurationStorage(uint64_t *a1)
{
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v1, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
  return RunnableConfigurationStorage.set<A>(_:value:)();
}

uint64_t RunnableConfigurationStorage.toolDefinitions.setter(uint64_t a1)
{
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v1, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
  RunnableConfigurationStorage.set<A>(_:value:)();
}

uint64_t (*RunnableConfigurationStorage.toolDefinitions.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for GenerativeConfigurationKey();
  a1[3] = __swift_project_value_buffer(v3, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
  RunnableConfigurationStorage.value<A>(for:type:)();
  return RunnableConfigurationStorage.toolDefinitions.modify;
}

uint64_t RunnableConfigurationStorage.toolDefinitions.modify(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
    RunnableConfigurationStorage.set<A>(_:value:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
    RunnableConfigurationStorage.set<A>(_:value:)();
  }
}

void *RunnableConfigurationStorage.schemaDefinition.getter()
{
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v1, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  type metadata accessor for Prompt.ResponseFormat(0);

  return RunnableConfigurationStorage.value<A>(for:type:)();
}

void *key path getter for RunnableConfigurationStorage.schemaDefinition : RunnableConfigurationStorage()
{
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v1, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  type metadata accessor for Prompt.ResponseFormat(0);
  return RunnableConfigurationStorage.value<A>(for:type:)();
}

uint64_t key path setter for RunnableConfigurationStorage.schemaDefinition : RunnableConfigurationStorage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  outlined init with copy of Prompt.ResponseFormat?(a1, &v7 - v3);
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v5, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  RunnableConfigurationStorage.set<A>(_:value:)();
  return outlined destroy of Prompt.ResponseFormat?(v4);
}

uint64_t RunnableConfigurationStorage.schemaDefinition.setter(uint64_t a1)
{
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v2, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  RunnableConfigurationStorage.set<A>(_:value:)();

  return outlined destroy of Prompt.ResponseFormat?(a1);
}

uint64_t outlined destroy of Prompt.ResponseFormat?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*RunnableConfigurationStorage.schemaDefinition.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v5[1] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[3] = v8;
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for GenerativeConfigurationKey();
  v5[4] = __swift_project_value_buffer(v9, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  type metadata accessor for Prompt.ResponseFormat(0);
  RunnableConfigurationStorage.value<A>(for:type:)();
  return RunnableConfigurationStorage.schemaDefinition.modify;
}

void RunnableConfigurationStorage.schemaDefinition.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 16);
  if (a2)
  {
    outlined init with copy of Prompt.ResponseFormat?(*(*a1 + 24), v4);
    RunnableConfigurationStorage.set<A>(_:value:)();
    outlined destroy of Prompt.ResponseFormat?(v4);
  }

  else
  {
    RunnableConfigurationStorage.set<A>(_:value:)();
  }

  outlined destroy of Prompt.ResponseFormat?(v3);
  free(v3);
  free(v4);

  free(v2);
}

uint64_t outlined init with copy of Prompt.ResponseFormat?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for Signpost(uint64_t a1, int *a2)
{
  v4 = a2[5];
  v5 = type metadata accessor for OSSignposter();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a2[6];
  v7 = type metadata accessor for OSSignpostID();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
}

uint64_t initializeWithTake for Signpost(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[5];
  v7 = type metadata accessor for OSSignposter();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[6];
  v9 = type metadata accessor for OSSignpostID();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for Signpost(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[5];
  v7 = type metadata accessor for OSSignposter();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = a3[6];
  v9 = type metadata accessor for OSSignpostID();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = type metadata singleton initialization cache for Signpost;
  if (!type metadata singleton initialization cache for Signpost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Signpost(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OSSignpostID();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t Signpost.init(_:_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v10 = type metadata accessor for OSSignpostID();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v37 = a2;
  *a5 = a2;
  *(a5 + 8) = a3;
  v36 = a4;
  *(a5 + 16) = a4;
  v19 = *(v16 + 16);
  v39 = v20;
  v19(&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
  v21 = type metadata accessor for Signpost(0);
  OSSignposter.init(logger:)();
  v22 = *(v21 + 24);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v23 = *(v41 + 16);
  v23(v14, a5 + v22, v10);
  v24 = v40;
  v25 = OSSignposter.logHandle.getter();
  v35 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v32 = v23;
  v33 = v21;
  v34 = v16;
  v27 = v24;
  if ((v36 & 1) == 0)
  {
    v28 = v37;
    if (v37)
    {
LABEL_9:
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1A8E85000, v25, v35, v30, v28, "", v29, 2u);
      MEMORY[0x1AC57DBF0](v29, -1, -1);
      v24 = v27;
      v21 = v33;
      v16 = v34;
      v23 = v32;
LABEL_10:

      v23(v38, v14, v10);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v31 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v16 + 8))(v24, v39);
      result = (*(v41 + 8))(v14, v10);
      *(a5 + *(v21 + 28)) = v31;
      return result;
    }

    __break(1u);
  }

  if (v37 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v37 & 0xFFFFF800) != 0xD800)
  {
    if (v37 >> 16 <= 0x10)
    {
      v28 = &v42;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t one-time initialization function for stopSequenceMonitor()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.stopSequenceMonitor);
  __swift_project_value_buffer(v0, static Log.stopSequenceMonitor);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for tokenization(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

Swift::Void __swiftcall Signpost.end()()
{
  v1 = type metadata accessor for OSSignpostError();
  v17 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Signpost(0);
  v8 = *v0;
  v9 = *(v0 + 16);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
LABEL_13:

    (*(v5 + 8))(v7, v4);
    return;
  }

  if ((v9 & 1) == 0)
  {
    if (v8)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v11 = v17;
      if ((*(v17 + 88))(v3, v1) == *MEMORY[0x1E69E93E8])
      {
        v12 = "[Error] Interval already ended";
      }

      else
      {
        (*(v11 + 8))(v3, v1);
        v12 = "";
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1A8E85000, v10, v16, v14, v8, v12, v13, 2u);
      MEMORY[0x1AC57DBF0](v13, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v8 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v8 & 0xFFFFF800) != 0xD800)
  {
    if (v8 >> 16 <= 0x10)
    {
      v8 = &v18;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t ModelBundle.resourceURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ModelBundle(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModelBundle;
  if (!type metadata singleton initialization cache for ModelBundle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelBundle.init(preverifiedIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  *(a3 + *(type metadata accessor for ModelBundle(0) + 20)) = 0;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.bundle);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    _os_log_impl(&dword_1A8E85000, v10, v11, "ModelBundle: Creating with preverified identifier: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1AC57DBF0](v13, -1, -1);
    MEMORY[0x1AC57DBF0](v12, -1, -1);
  }

  URL.init(string:)();
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v8, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v15 + 32))(a3, v8, v14);
  }

  return result;
}

uint64_t ModelBundle.init(fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.bundle);
  v36 = *(v4 + 16);
  v36(v8, a1, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v33 = a1;
    v15 = v14;
    v39 = v14;
    *v13 = 136315138;
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = v8;
    v20 = *(v35 + 8);
    v20(v19, v3);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v39);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_1A8E85000, v10, v11, "ModelBundle: Creating with fileURL: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v22 = v15;
    a1 = v33;
    MEMORY[0x1AC57DBF0](v22, -1, -1);
    v23 = v13;
    v4 = v35;
    MEMORY[0x1AC57DBF0](v23, -1, -1);
  }

  else
  {

    v24 = v8;
    v20 = *(v4 + 8);
    v20(v24, v3);
  }

  if (URL.pathExtension.getter() == 0x6574706164616D66 && v25 == 0xE900000000000072)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      type metadata accessor for GenerationError(0);
      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
      swift_allocError();
      *v32 = 0xD00000000000002ALL;
      v32[1] = 0x80000001A8FDA1B0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v20)(a1, v3);
    }
  }

  v27 = v37;
  v36(v37, a1, v3);
  type metadata accessor for FoundationModelsExtensionInfo();
  swift_allocObject();
  v28 = v38;
  FoundationModelsExtensionInfo.init(fileURL:)(v27);
  if (!v28)
  {

    v29 = *(type metadata accessor for ModelBundle(0) + 20);
    v30 = v34;
    result = (*(v4 + 32))(v34, a1, v3);
    *(v30 + v29) = 1;
    return result;
  }

  return (v20)(a1, v3);
}

uint64_t ModelBundle.init(identifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = static InternalVariantArguments.arguments()();
  ModelBundle.init(identifier:internalArguments:)(a1, a2, v9, v8);
  v10 = type metadata accessor for ModelBundle(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10))
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v8, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    v12 = 1;
  }

  else
  {
    outlined init with take of ModelBundle(v8, a3);
    v12 = 0;
  }

  return (*(v11 + 56))(a3, v12, 1, v10);
}

uint64_t ModelBundle.init(identifier:internalArguments:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v146 = a3;
  v148 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19ResourceBundleQueryVSgMd, &_s12ModelCatalog19ResourceBundleQueryVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v138 = &v126 - v7;
  v8 = type metadata accessor for ResourceBundleQuery();
  v144 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v126 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v126 - v13;
  v139 = type metadata accessor for URLComponents();
  v145 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v136 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v126 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v131 = &v126 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v128 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v129 = &v126 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v137 = &v126 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v130 = &v126 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v126 - v33;
  v35 = type metadata accessor for ModelBundle(0);
  v141 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v38;
  v39 = *(v38 + 20);
  v133 = v37;
  v37[v39] = 0;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = __swift_project_value_buffer(v40, static Log.bundle);

  v140 = v41;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  v44 = os_log_type_enabled(v42, v43);
  v143 = a4;
  v134 = v8;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = v34;
    v47 = v20;
    v48 = v19;
    v49 = swift_slowAlloc();
    v149[0] = v49;
    *v45 = 136315138;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, a2, v149);
    _os_log_impl(&dword_1A8E85000, v42, v43, "ModelBundle: Creating with identifier: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v50 = v49;
    v19 = v48;
    v20 = v47;
    v34 = v46;
    MEMORY[0x1AC57DBF0](v50, -1, -1);
    MEMORY[0x1AC57DBF0](v45, -1, -1);
  }

  URL.init(string:)();
  v51 = (*(v20 + 48))(v18, 1, v19);
  v52 = v144;
  v53 = v145;
  v54 = v147;
  if (v51 == 1)
  {

    outlined destroy of [Regex2BNF.CharacterPredicate](v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v149[0] = v58;
      *v57 = 136315138;
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, a2, v149);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_1A8E85000, v55, v56, "ModelBundle: Identifier is not valid - could not convert to URL: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x1AC57DBF0](v58, -1, -1);
      MEMORY[0x1AC57DBF0](v57, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v127 = *(v20 + 32);
  v127(v34, v18, v19);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v60 = v139;
  if ((*(v53 + 48))(v14, 1, v139) == 1)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v14, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  }

  else
  {
    v61 = v136;
    (*(v53 + 32))(v136, v14, v60);
    v62 = URLComponents.queryItems.getter();
    if (v62)
    {
      v63 = *(v62 + 16);

      if (v63 && (static VariantHelpers.isResourceBundleQueryURIResolved(uri:)() & 1) != 0)
      {

        v64 = *(v20 + 16);
        v64(v133, v34, v19);
        v65 = v130;
        v64(v130, v34, v19);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v149[0] = v69;
          *v68 = 136315394;
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, a2, v149);

          *(v68 + 4) = v70;
          *(v68 + 12) = 2080;
          v71 = URL.absoluteString.getter();
          v146 = v34;
          v72 = v19;
          v74 = v73;
          v75 = *(v20 + 8);
          v75(v65, v72);
          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v74, v149);

          *(v68 + 14) = v76;
          _os_log_impl(&dword_1A8E85000, v66, v67, "ModelBundle: resolving %s to %s, already resolved.", v68, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v69, -1, -1);
          MEMORY[0x1AC57DBF0](v68, -1, -1);

          (*(v145 + 8))(v136, v139);
          v75(v146, v72);
        }

        else
        {

          v101 = *(v20 + 8);
          v101(v65, v19);
          (*(v145 + 8))(v136, v139);
          v101(v34, v19);
        }

        goto LABEL_33;
      }

      (*(v53 + 8))(v136, v139);
    }

    else
    {
      (*(v53 + 8))(v61, v60);
    }

    v54 = v147;
  }

  v139 = v20;
  v77 = *(v20 + 16);
  v145 = v19;
  v77(v137, v34, v19);
  v78 = v138;
  ResourceBundleQuery.init(uri:)();
  v82 = *(v52 + 48);
  v83 = v52;
  v84 = v134;
  v85 = v82(v78, 1, v134);
  if (v85 != 1)
  {
    (*(v83 + 32))(v54, v78, v84);
    ResourceBundleQuery.addArguments(_:shouldOverride:)();

    v99 = v129;
    v100 = v132;
    ResourceBundleQuery.toURI()();
    v146 = v34;
    v102 = v128;
    v103 = v145;
    v77(v128, v99, v145);

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();

    v106 = os_log_type_enabled(v104, v105);
    v107 = v144;
    if (v106)
    {
      v108 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v149[0] = v140;
      *v108 = 136315394;
      v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, a2, v149);

      *(v108 + 4) = v109;
      *(v108 + 12) = 2080;
      v110 = URL.absoluteString.getter();
      v111 = v102;
      v113 = v112;
      v114 = *(v139 + 8);
      v114(v111, v145);
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v113, v149);

      *(v108 + 14) = v115;
      _os_log_impl(&dword_1A8E85000, v104, v105, "ModelBundle: resolving %s to %s. Query parameters already provided.", v108, 0x16u);
      v116 = v140;
      swift_arrayDestroy();
      MEMORY[0x1AC57DBF0](v116, -1, -1);
      v117 = v108;
      v118 = v100;
      v119 = v145;
      MEMORY[0x1AC57DBF0](v117, -1, -1);

      v120 = *(v107 + 8);
      v121 = v134;
      v120(v118, v134);
      v120(v147, v121);
      v114(v146, v119);
    }

    else
    {

      v122 = *(v139 + 8);
      v122(v102, v103);
      v123 = *(v107 + 8);
      v124 = v134;
      v123(v100, v134);
      v123(v147, v124);
      v119 = v145;
      v122(v146, v145);
    }

    v127(v133, v129, v119);
LABEL_33:
    v125 = v143;
    outlined init with take of ModelBundle(v133, v143);
    v80 = v125;
    v79 = 0;
    return (*(v141 + 56))(v80, v79, 1, v142);
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v78, &_s12ModelCatalog19ResourceBundleQueryVSgMd, &_s12ModelCatalog19ResourceBundleQueryVSgMR);
  v86 = v131;
  v87 = v145;
  v77(v131, v34, v145);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v149[0] = v91;
    *v90 = 136315138;
    v92 = URL.absoluteString.getter();
    v93 = v86;
    v95 = v94;
    v96 = *(v139 + 8);
    v96(v93, v87);
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v95, v149);

    *(v90 + 4) = v97;
    _os_log_impl(&dword_1A8E85000, v88, v89, "ModelBundle: URL could not create a ResourceBundleQuery: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x1AC57DBF0](v91, -1, -1);
    MEMORY[0x1AC57DBF0](v90, -1, -1);

    v96(v34, v87);
  }

  else
  {

    v98 = *(v139 + 8);
    v98(v86, v87);
    v98(v34, v87);
  }

LABEL_21:
  v79 = 1;
  v80 = v143;
  return (*(v141 + 56))(v80, v79, 1, v142);
}

uint64_t ModelBundle.init(resourceBundleQuery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ResourceBundleQuery();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = static InternalVariantArguments.arguments()();
  (*(v5 + 16))(v7, a1, v4);
  ModelBundle.init(resourceBundleQuery:internalArguments:)(v7, v11, v10);
  (*(v5 + 8))(a1, v4);
  v12 = type metadata accessor for ModelBundle(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12))
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v10, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    v14 = 1;
  }

  else
  {
    outlined init with take of ModelBundle(v10, a2);
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v12);
}

uint64_t ModelBundle.init(resourceBundleQuery:internalArguments:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v78 = a1;
  v75 = a3;
  v3 = type metadata accessor for URL();
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v60 - v6;
  v7 = type metadata accessor for ResourceBundleQuery();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  v19 = type metadata accessor for ModelBundle(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v23;
  v24 = *(v23 + 20);
  v67 = v22;
  v22[v24] = 0;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v65 = v10;
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Log.bundle);
  v27 = *(v8 + 16);
  v27(v18, v78, v7);
  v71 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v77 = v8;
  v62 = v15;
  v63 = v27;
  v64 = v8 + 16;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v68 = v3;
    v32 = v31;
    v33 = swift_slowAlloc();
    v69 = v20;
    v61 = v33;
    v79[0] = v33;
    *v32 = 136315138;
    v27(v15, v18, v7);
    v34 = String.init<A>(reflecting:)();
    v35 = v7;
    v37 = v36;
    v38 = *(v8 + 8);
    v38(v18, v35);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v37, v79);
    v7 = v35;

    *(v32 + 4) = v39;
    _os_log_impl(&dword_1A8E85000, v28, v29, "ModelBundle: Creating with resource bundle query: %s", v32, 0xCu);
    v40 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    v20 = v69;
    MEMORY[0x1AC57DBF0](v40, -1, -1);
    v41 = v32;
    v3 = v68;
    MEMORY[0x1AC57DBF0](v41, -1, -1);
  }

  else
  {

    v38 = *(v8 + 8);
    v38(v18, v7);
  }

  ResourceBundleQuery.addArguments(_:shouldOverride:)();
  v42 = v76;

  ResourceBundleQuery.toURI()();
  v69 = v20;
  v44 = v65;
  v45 = v63;
  v63(v65, v78, v7);
  v46 = v66;
  (*(v70 + 16))(v66, v42, v3);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v79[0] = v72;
    *v49 = 136315394;
    LODWORD(v71) = v48;
    v45(v62, v44, v7);
    v50 = String.init<A>(reflecting:)();
    v52 = v51;
    v68 = v3;
    v38(v44, v7);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v79);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    v54 = URL.absoluteString.getter();
    v56 = v55;
    (*(v70 + 8))(v46, v68);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v79);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_1A8E85000, v47, v71, "ModelBundle: resolved resource bundle query: %s to %s", v49, 0x16u);
    v58 = v72;
    swift_arrayDestroy();
    MEMORY[0x1AC57DBF0](v58, -1, -1);
    MEMORY[0x1AC57DBF0](v49, -1, -1);

    v38(v78, v7);
    v38(v74, v7);
    v3 = v68;
  }

  else
  {

    v38(v78, v7);
    (*(v70 + 8))(v46, v3);
    v38(v44, v7);
    v38(v74, v7);
  }

  v59 = v67;
  (*(v70 + 32))(v67, v76, v3);
  outlined init with take of ModelBundle(v59, v75);
  return (*(v69 + 56))(v75, 0, 1, v73);
}

uint64_t static ModelBundle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static URL.== infix(_:_:)())
  {
    v4 = type metadata accessor for ModelBundle(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void ModelBundle.hash(into:)(uint64_t a1)
{
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for ModelBundle(0);
  Hasher._combine(_:)(*(v1 + *(v2 + 20)));
}

Swift::Int ModelBundle.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ModelBundle(0);
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelBundle(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ModelBundle(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelBundle(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ModelBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static URL.== infix(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t outlined init with take of ModelBundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for ModelBundle(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v6 & 1) != 0))
  {
    v7 = (*(a3 + 56) + 16 * result);
    v8 = v7[1];
    *a4 = *v7;
    a4[1] = v8;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t ModelConfiguration.init(modelbundleIdentifier:catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return ModelConfiguration.init(modelbundleIdentifier:catalogClient:)(a1, a2, static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:), &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR, a3);
}

{
  return ModelConfiguration.init(modelbundleIdentifier:catalogClient:)(a1, a2, static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:), &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR, a3);
}

void *static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v62 - v10;
  ResourceBundleIdentifier<>.serverConfiguration()();
  if (!v66)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](&v65, &_s12ModelCatalog30AssetBackedServerConfiguration_pSgMd, &_s12ModelCatalog30AssetBackedServerConfiguration_pSgMR);
    if (one-time initialization token for configuration != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.configuration);
    (*(v6 + 16))(v8, a1, v5);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v68[0] = v34;
      *v33 = 136446210;
      v35 = MEMORY[0x1AC57AE60](v5);
      v37 = v36;
      (*(v6 + 8))(v8, v5);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v68);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1A8E85000, v31, v32, "Could not find a corresponding server configuration for LLM bundle ID: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1AC57DBF0](v34, -1, -1);
      MEMORY[0x1AC57DBF0](v33, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return 0;
  }

  outlined init with take of PromptComponentValueConvertible(&v65, v68);
  if (one-time initialization token for configuration != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.configuration);
  (*(v6 + 16))(v11, a1, v5);
  outlined init with copy of GuidedGenerationTokenizer(v68, &v65);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v63 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v62[1] = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v62[0] = a2;
    v19 = v18;
    v71 = v18;
    *v17 = 136315394;
    v20 = MEMORY[0x1AC57AE60](v5);
    v21 = v5;
    v23 = v22;
    (*(v6 + 8))(v11, v21);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v71);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(&v65, v66);
    v25 = dispatch thunk of CatalogResource.id.getter();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0(&v65);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v71);

    *(v17 + 14) = v28;
    _os_log_impl(&dword_1A8E85000, v13, v14, "_LoadedModelConfiguration: Resolved model bundle identifier: %s to resource: %s", v17, 0x16u);
    swift_arrayDestroy();
    v29 = v19;
    a2 = v62[0];
    MEMORY[0x1AC57DBF0](v29, -1, -1);
    MEMORY[0x1AC57DBF0](v17, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_0(&v65);
  }

  v39 = v69;
  v40 = v70;
  v41 = __swift_project_boxed_opaque_existential_1(v68, v69);
  v66 = v39;
  v67 = *(v40 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v65);
  (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v41, v39);
  v43 = v64;
  specialized CatalogClient.metadataWithAssetInformation(from:catalogClient:)(&v65, a2);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  __swift_destroy_boxed_opaque_existential_0(&v65);
  v64 = v43;
  if (v43)
  {
    return __swift_destroy_boxed_opaque_existential_0(v68);
  }

  if (!v51)
  {
    __swift_destroy_boxed_opaque_existential_0(v68);
    return 0;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration();
  v53 = v64;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v64 = v53;
  if (v53)
  {
    outlined consume of Data._Representation(v45, v47);

    return __swift_destroy_boxed_opaque_existential_0(v68);
  }

  v54 = v65;
  v55 = MEMORY[0x1AC57AE60](v63);
  v57 = v56;
  outlined consume of Data._Representation(v45, v47);
  swift_beginAccess();
  v58 = v54[5];
  v59 = v54[6];
  v60 = v54[7];
  v61 = v54[8];
  v54[5] = v55;
  v54[6] = v57;
  v54[7] = v49;
  v54[8] = v51;
  outlined consume of (start: String, end: String)?(v58, v59, v60, v61);
  __swift_destroy_boxed_opaque_existential_0(v68);
  return v54;
}

{
  v4 = v2;
  static _LoadedModelConfiguration.assetBackedResource(for:catalogClient:)(a1, a2, v25);
  if (!v3)
  {
    outlined init with copy of (String, Any)(v25, &v22, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
    if (v23)
    {
      outlined init with take of PromptComponentValueConvertible(&v22, v24);
      specialized CatalogClient.metadataWithAssetInformation(from:catalogClient:)(v24, a2);
      if (v10)
      {
        v11 = v7;
        v12 = v8;
        v13 = v9;
        v14 = v10;
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v4 = v22;
        __swift_project_boxed_opaque_existential_1(v24, v24[3]);
        v15 = dispatch thunk of CatalogResource.id.getter();
        v17 = v16;
        outlined consume of Data._Representation(v11, v12);
        outlined destroy of [Regex2BNF.CharacterPredicate](v25, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
        swift_beginAccess();
        v18 = v4[5];
        v19 = v4[6];
        v20 = v4[7];
        v21 = v4[8];
        v4[5] = v15;
        v4[6] = v17;
        v4[7] = v13;
        v4[8] = v14;
        outlined consume of (start: String, end: String)?(v18, v19, v20, v21);
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      else
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v25, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
        __swift_destroy_boxed_opaque_existential_0(v24);
        return 0;
      }
    }

    else
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v25, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
      outlined destroy of [Regex2BNF.CharacterPredicate](&v22, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
      return 0;
    }
  }

  return v4;
}

uint64_t ModelConfiguration.init(modelbundleIdentifier:catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for _LoadedModelConfiguration();
  v13 = a3(a1, a2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  (*(*(v14 - 8) + 8))(a1, v14);

  if (!v6)
  {
    *a6 = v13;
  }

  return result;
}

TokenGenerationCore::ModelConfigurationPromptTemplate_optional __swiftcall ModelConfiguration.promptTemplate(for:)(Swift::String a1)
{
  if (*v2 && (v3 = *(*v2 + 16)) != 0 && *(v3 + 16))
  {
    v4 = v1;
    countAndFlagsBits = a1._countAndFlagsBits;
    object = a1._object;

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v8)
    {
      v9 = (*(v3 + 56) + 16 * v7);
      v10 = v9[1];
      *v4 = *v9;
      v4[1] = v10;
    }

    else
    {

      *v4 = 0;
      v4[1] = 0;
    }
  }

  else
  {
    *v1 = 0;
    v1[1] = 0;
  }

  result.value.rawTemplateString = a1;
  result.is_nil = v11;
  return result;
}

uint64_t ModelConfiguration.speculativeDecodingDraftTokenCount.getter()
{
  if (*v0)
  {
    return *(*v0 + 24);
  }

  else
  {
    return 0;
  }
}

unint64_t protocol witness for ModelConfigurationProtocol.promptTemplate(for:) in conformance ModelConfiguration@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*v3 && (v4 = *(*v3 + 16)) != 0)
  {
    v5 = result;

    specialized Dictionary.subscript.getter(v5, a2, v4, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t ModelConfigurationPromptTemplate.rawTemplateString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _LoadedModelConfiguration.AssetInformation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _LoadedModelConfiguration.AssetInformation.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void key path getter for _LoadedModelConfiguration.assetInformation : _LoadedModelConfiguration(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  outlined copy of _LoadedModelConfiguration.AssetInformation?(v4, v5, v6, v7);
}

void key path setter for _LoadedModelConfiguration.assetInformation : _LoadedModelConfiguration(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];
  v6[5] = v2;
  v6[6] = v3;
  v6[7] = v4;
  v6[8] = v5;
  outlined copy of _LoadedModelConfiguration.AssetInformation?(v2, v3, v4, v5);
  outlined consume of (start: String, end: String)?(v7, v8, v9, v10);
}

void _LoadedModelConfiguration.assetInformation.getter(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined copy of _LoadedModelConfiguration.AssetInformation?(v3, v4, v5, v6);
}

__n128 _LoadedModelConfiguration.assetInformation.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = a1[1];
  *(v1 + 5) = *a1;
  *(v1 + 7) = v7;
  outlined consume of (start: String, end: String)?(v3, v4, v5, v6);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _LoadedModelConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0x655474706D6F7270;
  }

  if (v2)
  {
    v4 = 0xEF736574616C706DLL;
  }

  else
  {
    v4 = 0x80000001A8FD83E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0x655474706D6F7270;
  }

  if (*a2)
  {
    v6 = 0x80000001A8FD83E0;
  }

  else
  {
    v6 = 0xEF736574616C706DLL;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _LoadedModelConfiguration.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _LoadedModelConfiguration.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _LoadedModelConfiguration.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _LoadedModelConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _LoadedModelConfiguration.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance _LoadedModelConfiguration.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000001A8FD83E0;
  v3 = 0x655474706D6F7270;
  if (*v1)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xEF736574616C706DLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _LoadedModelConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _LoadedModelConfiguration.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _LoadedModelConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _LoadedModelConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static _LoadedModelConfiguration.assetBackedResource(for:catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v67 - v10;
  v12 = type metadata accessor for AssetBackedLLMBundle();
  v74 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC57AE60](v5, v13);
  v16 = v83;
  dispatch thunk of CatalogClient.resourceBundle(for:)();
  v83 = v16;
  if (v16)
  {
  }

  v67[1] = a2;
  v18 = v72;
  v69 = a1;
  v68 = v5;

  outlined init with copy of (String, Any)(v82, v80, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v19 = v74;
  v20 = (v74 + 56);
  if (!v81)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v80, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    (*v20)(v11, 1, 1, v12);
    v23 = v73;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
  v21 = swift_dynamicCast();
  (*(v19 + 56))(v11, v21 ^ 1u, 1, v12);
  v22 = (*(v19 + 48))(v11, 1, v12);
  v23 = v73;
  if (v22 == 1)
  {
LABEL_10:
    outlined destroy of [Regex2BNF.CharacterPredicate](v11, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
    if (one-time initialization token for configuration != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.configuration);
    v32 = v70;
    v33 = v68;
    (*(v70 + 16))(v23, v69, v68);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v80[0] = v37;
      *v36 = 136446210;
      v38 = MEMORY[0x1AC57AE60](v33);
      v40 = v39;
      (*(v32 + 8))(v23, v33);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v80);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1A8E85000, v34, v35, "Could not find a corresponding model bundle LLM bundle ID: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1AC57DBF0](v37, -1, -1);
      MEMORY[0x1AC57DBF0](v36, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v23, v33);
    }

    goto LABEL_30;
  }

  (*(v19 + 32))(v15, v11, v12);
  AssetBackedLLMBundle.adapter.getter();
  v24 = v81;
  if (!v81)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v80, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMR);
    AssetBackedLLMBundle.baseModel.getter();
    v24 = v81;
  }

  __swift_project_boxed_opaque_existential_1(v80, v24);
  v25 = dispatch thunk of CatalogResource.id.getter();
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_0(v80);
  v28 = v18;
  v29 = v83;
  dispatch thunk of CatalogClient.resource(for:)();
  v83 = v29;
  v30 = v69;
  if (v29)
  {

    (*(v19 + 8))(v15, v12);
    return outlined destroy of [Regex2BNF.CharacterPredicate](v82, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  outlined init with copy of (String, Any)(v80, v75, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
  if (!v75[3])
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v75, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedResource_pMd, &_s12ModelCatalog19AssetBackedResource_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    goto LABEL_24;
  }

  if (!*(&v77 + 1))
  {
LABEL_24:
    outlined destroy of [Regex2BNF.CharacterPredicate](&v76, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
    if (one-time initialization token for configuration != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Log.configuration);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v25;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v79[0] = v64;
      *v63 = 136446210;
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v27, v79);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_1A8E85000, v60, v61, "Model catalog asset: %{public}s is not an asset backed resource", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x1AC57DBF0](v64, -1, -1);
      MEMORY[0x1AC57DBF0](v63, -1, -1);
    }

    else
    {
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v80, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
    (*(v19 + 8))(v15, v12);
LABEL_30:
    result = outlined destroy of [Regex2BNF.CharacterPredicate](v82, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v66 = v71;
    *(v71 + 32) = 0;
    *v66 = 0u;
    v66[1] = 0u;
    return result;
  }

  outlined init with take of PromptComponentValueConvertible(&v76, v79);
  if (one-time initialization token for configuration != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Log.configuration);
  v43 = v70;
  v44 = v18;
  v45 = v68;
  (*(v70 + 16))(v44, v30, v68);
  outlined init with copy of GuidedGenerationTokenizer(v79, &v76);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v75[0] = v73;
    *v48 = 136315394;
    v49 = MEMORY[0x1AC57AE60](v45);
    v50 = v28;
    v52 = v51;
    (*(v43 + 8))(v50, v45);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v52, v75);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
    v54 = dispatch thunk of CatalogResource.id.getter();
    v56 = v55;
    __swift_destroy_boxed_opaque_existential_0(&v76);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v75);

    *(v48 + 14) = v57;
    _os_log_impl(&dword_1A8E85000, v46, v47, "_LoadedModelConfiguration: Resolved model bundle identifier: %s to resource: %s", v48, 0x16u);
    v58 = v73;
    swift_arrayDestroy();
    MEMORY[0x1AC57DBF0](v58, -1, -1);
    MEMORY[0x1AC57DBF0](v48, -1, -1);

    outlined destroy of [Regex2BNF.CharacterPredicate](v80, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
    (*(v74 + 8))(v15, v12);
    outlined destroy of [Regex2BNF.CharacterPredicate](v82, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  else
  {

    (*(v43 + 8))(v28, v45);
    outlined destroy of [Regex2BNF.CharacterPredicate](v80, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
    (*(v74 + 8))(v15, v12);
    outlined destroy of [Regex2BNF.CharacterPredicate](v82, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(&v76);
  }

  return outlined init with take of PromptComponentValueConvertible(v79, v71);
}

uint64_t *_LoadedModelConfiguration.deinit()
{

  outlined consume of (start: String, end: String)?(v0[5], v0[6], v0[7], v0[8]);
  return v0;
}

uint64_t _LoadedModelConfiguration.__deallocating_deinit()
{

  outlined consume of (start: String, end: String)?(v0[5], v0[6], v0[7], v0[8]);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in CatalogClient.metadataWithAssetInformation(from:catalogClient:)@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v26 = a3;
  v34 = type metadata accessor for AssetVersion();
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v28 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1(v31);
  dispatch thunk of AssetBackedResource.fetchLockedAsset(with:)();
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_1(v31);
  }

  v24 = v7;
  v25 = v6;
  __swift_project_boxed_opaque_existential_1(v31, AssociatedTypeWitness);
  v10 = swift_getAssociatedTypeWitness();
  v23[1] = v23;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  dispatch thunk of CatalogAssetProtocol.contents.getter();
  swift_getAssociatedConformanceWitness();
  v14 = v29;
  dispatch thunk of AssetContents.metadataURL.getter();
  (*(v11 + 8))(v13, v10);
  v15 = v28;
  dispatch thunk of CatalogAssetProtocol.version.getter();
  v16 = AssetVersion.number.getter();
  v18 = v17;
  (*(v30 + 8))(v15, v34);
  v19 = Data.init(contentsOf:options:)();
  v21 = v20;
  (*(v24 + 8))(v14, v25);
  v22 = v26;
  *v26 = v19;
  v22[1] = v21;
  v22[2] = v16;
  v22[3] = v18;
  return __swift_destroy_boxed_opaque_existential_0(v31);
}

void specialized CatalogClient.metadataWithAssetInformation(from:catalogClient:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogErrors.AssetErrors();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CoherentAssetLock();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A8FC9400;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *(v7 + 32) = dispatch thunk of CatalogResource.id.getter();
  *(v7 + 40) = v8;
  v9 = static CoherentAssetLock.createUnlockedAssetLock(resources:client:)();
  if (v2)
  {

    v31 = v2;
    v12 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = swift_dynamicCast();
    v14 = v28;
    if (v13)
    {
      if ((*(v28 + 88))(v6, v4) == *MEMORY[0x1E69B2140])
      {

        (*(v14 + 96))(v6, v4);
        v16 = *v6;
        v15 = v6[1];
        if (one-time initialization token for configuration != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.configuration);
        outlined init with copy of GuidedGenerationTokenizer(a1, v30);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v29 = v21;
          *v20 = 136315394;
          __swift_project_boxed_opaque_existential_1(v30, v30[3]);
          v22 = dispatch thunk of CatalogResource.id.getter();
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_0(v30);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v29);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2080;
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v29);

          *(v20 + 14) = v26;
          _os_log_impl(&dword_1A8E85000, v18, v19, "ModelConfiguration: Unable to find asset (%s. Reason: %s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v21, -1, -1);
          MEMORY[0x1AC57DBF0](v20, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v30);
        }
      }

      else
      {
        (*(v14 + 8))(v6, v4);
      }
    }
  }

  else
  {
    v10 = v9;

    MEMORY[0x1EEE9AC00](v11);
    *(&v27 - 2) = a1;
    *(&v27 - 1) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV8metadata_SS7versiontSgMd, &_s10Foundation4DataV8metadata_SS7versiontSgMR);
    dispatch thunk of CoherentAssetLock.withLock<A>(closure:)();
  }
}

void outlined copy of _LoadedModelConfiguration.AssetInformation?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t storeEnumTagSinglePayload for ModelConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1AC57DBF0);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  if (qword_1A8FD0DD0[a1] == qword_1A8FD0DD0[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

{
  if (qword_1A8FD0D98[a1] == qword_1A8FD0D98[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0x65646F4338667475;
    }

    if (v3 == 2)
    {
      v4 = 0x80000001A8FD8270;
    }

    else
    {
      v4 = 0xEC00000074696E55;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEC00000074655372;
    }

    else
    {
      v4 = 0xE900000000000072;
    }

    v5 = 0x6574636172616863;
  }

  v6 = 0xD00000000000001BLL;
  v7 = 0x80000001A8FD8270;
  if (a2 != 2)
  {
    v6 = 0x65646F4338667475;
    v7 = 0xEC00000074696E55;
  }

  if (a2)
  {
    v2 = 0xEC00000074655372;
  }

  if (a2 <= 1u)
  {
    v8 = 0x6574636172616863;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6574636172616863;
    }

    else
    {
      v3 = 1684957547;
    }

    if (v2)
    {
      v4 = 0xE900000000000072;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0x6574636172616863;
      v5 = 1952797554;
    }

    else
    {
      if (a1 == 3)
      {
        v3 = 0xD00000000000001BLL;
        v4 = 0x80000001A8FD8270;
        goto LABEL_14;
      }

      v3 = 0x65646F4338667475;
      v5 = 1953066581;
    }

    v4 = v5 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6574636172616863;
    }

    else
    {
      v7 = 1684957547;
    }

    if (a2)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 2)
  {
    v8 = 0x6574636172616863;
    v9 = 1952797554;
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 0x80000001A8FD8270;
      if (v3 != 0xD00000000000001BLL)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v8 = 0x65646F4338667475;
    v9 = 1953066581;
  }

  v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v3 != v8)
  {
LABEL_32:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_30:
  if (v4 != v6)
  {
    goto LABEL_32;
  }

  v10 = 1;
LABEL_33:

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65747441666C6573;
    }

    else
    {
      v5 = 0x676E69727473;
    }

    if (v2)
    {
      v6 = 0xED00006E6F69746ELL;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v3 = 0x6E69646465626D65;
    v4 = 0xED00006874615067;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
      v4 = 0x80000001A8FD83A0;
    }

    if (a1 == 2)
    {
      v5 = 0x7461506567616D69;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE900000000000068;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x65747441666C6573;
    }

    else
    {
      v11 = 0x676E69727473;
    }

    if (a2)
    {
      v10 = 0xED00006E6F69746ELL;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6E69646465626D65;
    v8 = 0x80000001A8FD83A0;
    if (a2 == 3)
    {
      v8 = 0xED00006874615067;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v9 = 0x7461506567616D69;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000068;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Npy.header.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
}

uint64_t Npy.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t Npy.Header.DataType.description.getter()
{
  v1 = qword_1A8FD0D98[v0[1]];
  v3 = qword_1A8FD0DD0[*v0];

  MEMORY[0x1AC57C120](v1, 0xE200000000000000);

  return v3;
}

TokenGenerationCore::Npy::Header::DataType __swiftcall Npy.Header.DataType.init(endianness:dataType:)(TokenGenerationCore::Npy::Header::DataType::Endianness endianness, TokenGenerationCore::Npy::Header::DataType::DType dataType)
{
  v3 = *dataType;
  *v2 = *endianness;
  v2[1] = v3;
  result.endianness = endianness;
  return result;
}

TokenGenerationCore::Npy::Header::DataType::Endianness_optional __swiftcall Npy.Header.DataType.Endianness.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Npy.Header.DataType.Endianness.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Npy.Header.DataType.Endianness()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Npy.Header.DataType.Endianness(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Npy.Header.DataType.Endianness(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Npy.Header.DataType.DType.init<A>(type:)@<X0>(char *a2@<X8>)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = 0;
LABEL_15:
    *a2 = v4;
    return result;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = 1;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = 2;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = 3;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = 4;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = 5;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v4 = 6;
    goto LABEL_15;
  }

  lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
  swift_allocError();
  *v5 = 2;
  return swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError()
{
  result = lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError;
  if (!lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError;
  if (!lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError);
  }

  return result;
}

TokenGenerationCore::Npy::Header::DataType::DType_optional __swiftcall Npy.Header.DataType.DType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Npy.Header.DataType.DType.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Npy.Header.DataType.DType(uint64_t a1)
{
  String.hash(into:)();
}

uint64_t static Npy.Header.DataType.== infix(_:_:)(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (qword_1A8FD0DD0[*a1] == qword_1A8FD0DD0[*a2])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Npy.Header.DataType(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((specialized == infix<A>(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

TokenGenerationCore::Npy::Header __swiftcall Npy.Header.init(dType:isFortranOrder:shape:)(TokenGenerationCore::Npy::Header::DataType dType, Swift::Bool isFortranOrder, Swift::OpaquePointer shape)
{
  *v3 = **&dType.endianness;
  *(v3 + 2) = isFortranOrder;
  *(v3 + 8) = shape;
  result.dType = dType;
  LOBYTE(result.shape._rawValue) = isFortranOrder;
  return result;
}

uint64_t Npy.Header.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v115 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v117 = *(v6 - 8);
  v118 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v120 = &v106 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_Ss5shapetGMd, &_s17_StringProcessing5RegexVySs_Ss5shapetGMR);
  v119 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  *&v124 = &v106 - v12;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_Ss14isFortranOrdertGMd, &_s17_StringProcessing5RegexVySs_Ss14isFortranOrdertGMR);
  v123 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v106 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v106 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_Ss5descrtGMd, &_s17_StringProcessing5RegexVySs_Ss5descrtGMR);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v106 - v19;
  v21 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v21 - 8);
  static String.Encoding.ascii.getter();
  v22 = String.init(data:encoding:)();
  if (!v23)
  {
    lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    v26 = a1;
    v27 = a2;
    return outlined consume of Data._Representation(v26, v27);
  }

  v127 = a1;
  v24 = v23;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_Ss5descrtMd, &_sSs_Ss5descrtMR);
  Regex.init(_regexString:version:)();
  Regex.firstMatch(in:)();
  if (v3)
  {
    (*(v18 + 8))(v20, v17);

    v26 = v127;
    v27 = a2;
    return outlined consume of Data._Representation(v26, v27);
  }

  v113 = v24;
  v110 = v25;
  v111 = v20;
  v114 = v17;
  v112 = v18;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GMR);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v16, 1, v30) == 1)
  {

    outlined destroy of [Regex2BNF.CharacterPredicate](v16, &_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GSgMR);
    lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();
    v33 = v127;
    v34 = a2;
LABEL_10:
    outlined consume of Data._Representation(v33, v34);
    return (*(v112 + 8))(v111, v114);
  }

  v108 = 0;
  v109 = a2;
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v35 = v130;
  v36 = v131;
  v37 = v132;
  (*(v31 + 8))(v16, v30);
  v38 = MEMORY[0x1AC57C040](v35, *(&v35 + 1), v36, v37);
  v40 = v39;

  v129._countAndFlagsBits = v38;
  v129._object = v40;

  v41 = String.count.getter();

  if (v41 < 3)
  {

    lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();
    v33 = v127;
    v34 = v109;
    goto LABEL_10;
  }

  v43 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v43 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v44 = v109;
  v45 = v127;
  if (v43)
  {
    result = specialized Collection.first.getter(v38, v40);
    if (!v46)
    {
      __break(1u);
      return result;
    }

    v47 = result;
    v48 = v46;
    specialized RangeReplaceableCollection.removeFirst(_:)(1);
    v49._countAndFlagsBits = v47;
    v49._object = v48;
    v50 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Npy.Header.DataType.Endianness.init(rawValue:), v49);

    if (v50 >= 4)
    {

      v52 = v114;
      goto LABEL_20;
    }

    Npy.Header.DataType.DType.init(rawValue:)(v129);
    v51 = v130;
    v52 = v114;
    if (v130 == 7)
    {

LABEL_20:
      v53 = v111;
      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v54 = 2;
      swift_willThrow();
      outlined consume of Data._Representation(v45, v44);
      return (*(v112 + 8))(v53, v52);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_Ss14isFortranOrdertMd, &_sSs_Ss14isFortranOrdertMR);
    v55 = v125;
    Regex.init(_regexString:version:)();
    v56 = v124;
    v57 = v126;
    v58 = v108;
    Regex.firstMatch(in:)();
    v108 = v58;
    if (v58)
    {

      outlined consume of Data._Representation(v45, v44);
      (*(v123 + 8))(v55, v57);
      return (*(v112 + 8))(v111, v52);
    }

    v107 = v51;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GMR);
    v60 = v56;
    v61 = *(v59 - 8);
    if ((*(v61 + 48))(v60, 1, v59) == 1)
    {

      outlined destroy of [Regex2BNF.CharacterPredicate](v60, &_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GSgMR);
      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v62 = 4;
      swift_willThrow();
      outlined consume of Data._Representation(v45, v44);
LABEL_27:
      (*(v123 + 8))(v125, v126);
      return (*(v112 + 8))(v111, v114);
    }

    v106 = v50;
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v63 = v130;
    v64 = v131;
    v65 = v132;
    (*(v61 + 8))(v60, v59);
    v66 = specialized static StringProtocol.== infix<A>(_:_:)(v63, *(&v63 + 1), v64, v65, 1702195796, 0xE400000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_Ss5shapetMd, &_sSs_Ss5shapetMR);
    v67 = v121;
    Regex.init(_regexString:version:)();
    v68 = v120;
    v69 = v122;
    v70 = v108;
    Regex.firstMatch(in:)();
    if (v70)
    {

      outlined consume of Data._Representation(v127, v109);
      (*(v119 + 8))(v67, v69);
      goto LABEL_27;
    }

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GMR);
    v72 = *(v71 - 8);
    v73 = (*(v72 + 48))(v68, 1, v71);
    v74 = v127;
    v30 = v114;
    if (v73 == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v68, &_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GSgMR);
      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v75 = 5;
      swift_willThrow();
      v76 = v74;
LABEL_48:
      outlined consume of Data._Representation(v76, v109);
      (*(v119 + 8))(v67, v69);
      (*(v123 + 8))(v125, v126);
      return (*(v112 + 8))(v111, v30);
    }

    LODWORD(v113) = v66;
    v108 = 0;
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v124 = v130;
    v77 = v131;
    v78 = v132;
    (*(v72 + 8))(v68, v71);
    v130 = v124;
    v131 = v77;
    v132 = v78;
    v79 = v116;
    Regex.init(_regexString:version:)();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>, &_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR, MEMORY[0x1E69E9290]);
    v80 = v118;
    v81 = BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
    (*(v117 + 8))(v79, v80);

    v82 = *(v81 + 16);
    if (!v82)
    {

      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v103 = 5;
      swift_willThrow();
      v76 = v127;
      goto LABEL_48;
    }

    LODWORD(v124) = v113 & 1;
    v133 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
    v83 = 0;
    v84 = v133;
    v85 = (v81 + 56);
    while (v83 < *(v81 + 16))
    {
      v86 = *(v85 - 3);
      v87 = *(v85 - 2);
      v88 = *v85;
      if (!((v87 ^ v86) >> 14))
      {
        goto LABEL_51;
      }

      v89 = *(v85 - 1);
      if ((v88 & 0x1000000000000000) != 0)
      {
        v97 = *(v85 - 3);
        v98 = *(v85 - 2);
        v120 = *(v85 - 1);
        swift_bridgeObjectRetain_n();
        v92 = specialized _parseInteger<A, B>(ascii:radix:)(v97, v98, v120, v88, 10);
        LOBYTE(v97) = v99;

        if (v97)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if ((v88 & 0x2000000000000000) != 0)
        {
          *&v130 = *(v85 - 1);
          *(&v130 + 1) = v88 & 0xFFFFFFFFFFFFFFLL;
          v90 = &v130;
        }

        else if ((v89 & 0x1000000000000000) != 0)
        {
          v90 = ((v88 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v100 = *(v85 - 3);
          v101 = *(v85 - 2);
          v102 = *(v85 - 1);
          v90 = _StringObject.sharedUTF8.getter();
          v89 = v102;
          v30 = v114;
          v86 = v100;
          v87 = v101;
        }

        v91 = v108;
        v92 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v90, v86, v87, v89, v88, 10);
        v108 = v91;
        v128 = v93 & 1;
        LOBYTE(v91) = v93 & 1;

        if (v91)
        {
          goto LABEL_52;
        }
      }

      v133 = v84;
      v95 = *(v84 + 16);
      v94 = *(v84 + 24);
      if (v95 >= v94 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
        v84 = v133;
      }

      ++v83;
      *(v84 + 16) = v95 + 1;
      *(v84 + 8 * v95 + 32) = v92;
      v85 += 4;
      v96 = v127;
      v30 = v114;
      if (v82 == v83)
      {

        outlined consume of Data._Representation(v96, v109);
        (*(v119 + 8))(v121, v122);
        (*(v123 + 8))(v125, v126);
        result = (*(v112 + 8))(v111, v30);
        v104 = v115;
        *v115 = v106;
        v104[1] = v107;
        v104[2] = v124;
        *(v104 + 1) = v84;
        return result;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_51:

LABEL_52:

  lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
  swift_allocError();
  *v105 = 6;
  swift_willThrow();
  outlined consume of Data._Representation(v127, v109);

  (*(v119 + 8))(v121, v122);
  (*(v123 + 8))(v125, v126);
  (*(v112 + 8))(v111, v30);
}

uint64_t Npy.init(header:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 2);
  v5 = *(result + 8);
  *a4 = *result;
  *(a4 + 2) = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t Npy.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v70 = *MEMORY[0x1E69E9840];
  v8 = Data._Representation.subscript.getter();
  if (v8 == 1)
  {
    v9 = 10;
  }

  else
  {
    if (v8 != 2)
    {
LABEL_15:
      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
      return outlined consume of Data._Representation(a1, a2);
    }

    v9 = 12;
  }

  v10 = Data._Representation.subscript.getter();
  v68 = MEMORY[0x1E6969080];
  v69 = MEMORY[0x1E6969078];
  v66 = v10;
  v67 = v11;
  v12 = __swift_project_boxed_opaque_existential_1(&v66, MEMORY[0x1E6969080]);
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  v63 = a3;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v64[0] = *v12;
      LOWORD(v64[1]) = v14;
      BYTE2(v64[1]) = BYTE2(v14);
      BYTE3(v64[1]) = BYTE3(v14);
      BYTE4(v64[1]) = BYTE4(v14);
      BYTE5(v64[1]) = BYTE5(v14);
      v16 = v64 + BYTE6(v14);
      v17 = v64;
      goto LABEL_28;
    }

    v25 = v13;
    v26 = v13 >> 32;
    v23 = v26 - v25;
    if (v26 < v25)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v20 = __DataStorage._bytes.getter();
    if (v20)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v20 += v25 - v27;
    }

    goto LABEL_20;
  }

  if (v15 != 2)
  {
    memset(v64, 0, 14);
    v17 = v64;
    v16 = v64;
    goto LABEL_28;
  }

  v18 = *(v13 + 16);
  v19 = *(v13 + 24);
  v20 = __DataStorage._bytes.getter();
  if (v20)
  {
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v20 += v18 - v21;
  }

  v22 = __OFSUB__(v19, v18);
  v23 = v19 - v18;
  if (v22)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_20:
  v28 = MEMORY[0x1AC57AAA0]();
  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + v20);
  if (v20)
  {
    v16 = v30;
  }

  else
  {
    v16 = 0;
  }

  v17 = v20;
LABEL_28:
  closure #1 in Data.init<A>(_:)(v17, v16, v65);
  v31 = v65[0];
  v32 = v65[1];
  result = __swift_destroy_boxed_opaque_existential_0(&v66);
  v34 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = v31;
      goto LABEL_44;
    }

    if (v31 > v31 >> 32)
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v40 = __DataStorage._bytes.getter();
    if (!v40)
    {
LABEL_64:
      MEMORY[0x1AC57AAA0]();
      goto LABEL_65;
    }

    v41 = v40;
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v31, v42))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    v38 = (v31 - v42 + v41);
    MEMORY[0x1AC57AAA0]();
    if (v38)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

  if (v34 == 2)
  {
    v37 = *(v31 + 16);
    v36 = *(v31 + 24);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v39))
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v38 = (v38 + v37 - v39);
    }

    if (__OFSUB__(v36, v37))
    {
      goto LABEL_75;
    }

    MEMORY[0x1AC57AAA0]();
    if (v38)
    {
LABEL_37:
      v4 = v3;
      v35 = *v38;
      result = outlined consume of Data._Representation(v31, v32);
      goto LABEL_44;
    }

LABEL_65:
    lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
    swift_allocError();
    *v55 = 1;
    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    return outlined consume of Data._Representation(v31, v32);
  }

  v35 = 0;
LABEL_44:
  v43 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v43)
    {
      v44 = BYTE6(a2);
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v43 != 2)
  {
    goto LABEL_81;
  }

  v46 = *(a1 + 16);
  v45 = *(a1 + 24);
  v44 = v45 - v46;
  if (__OFSUB__(v45, v46))
  {
    __break(1u);
LABEL_51:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v44 = HIDWORD(a1) - a1;
  }

LABEL_53:
  if (v44 >= v9)
  {
    v32 = Data.subdata(in:)();
    v31 = v47;
    v48 = Data.subdata(in:)();
    v50 = v49;
    outlined copy of Data._Representation(v48, v49);
    Npy.Header.init(from:)(v48, v50, &v66);
    if (v4)
    {
      outlined consume of Data._Representation(v48, v50);
      outlined consume of Data._Representation(v32, v31);
      return outlined consume of Data._Representation(a1, a2);
    }

    v51 = v31 >> 62;
    if ((v31 >> 62) <= 1)
    {
      if (v51)
      {
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_80;
        }

        v52 = HIDWORD(v32) - v32;
      }

      else
      {
        v52 = BYTE6(v31);
      }

      goto LABEL_69;
    }

    if (v51 != 2)
    {
      v52 = 0;
LABEL_69:
      v59 = v67;
      v60 = BYTE2(v66);
      v61 = BYTE1(v66);
      v62 = v66;
      if (v52 >= v35)
      {
        v56 = Data.subdata(in:)();
        v58 = v57;
        outlined consume of Data._Representation(v48, v50);
        outlined consume of Data._Representation(v32, v31);
        result = outlined consume of Data._Representation(a1, a2);
        *v63 = v62;
        *(v63 + 1) = v61;
        *(v63 + 2) = v60;
        *(v63 + 8) = v59;
        *(v63 + 16) = v56;
        *(v63 + 24) = v58;
        return result;
      }

      __break(1u);
      goto LABEL_72;
    }

    v54 = *(v32 + 16);
    v53 = *(v32 + 24);
    v52 = v53 - v54;
    if (!__OFSUB__(v53, v54))
    {
      goto LABEL_69;
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t Npy.makeArray<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 1);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v8 >> 62;
  if (v6 > 2)
  {
    if (*(v3 + 1) > 4u)
    {
      if (v6 != 5)
      {
        if (v9 <= 1)
        {
          if (v9)
          {
            v89 = v7;
            v90 = v7 >> 32;
            v53 = v90 - v89;
            if (v90 < v89)
            {
LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

            v91 = __DataStorage._bytes.getter();
            if (v91)
            {
              v92 = v91;
              v93 = __DataStorage._offset.getter();
              if (__OFSUB__(v89, v93))
              {
                goto LABEL_210;
              }

              v51 = v89 - v93 + v92;
LABEL_162:
              a1 = MEMORY[0x1AC57AAA0]();
              if (a1 >= v53)
              {
                v94 = v53;
              }

              else
              {
                v94 = a1;
              }

              v22 = v94 / 8;
              if (v51)
              {
                v23 = v51;
              }

              else
              {
                v23 = 0;
              }

              if (!v51)
              {
                v22 = 0;
              }

              goto LABEL_188;
            }

            a1 = MEMORY[0x1AC57AAA0]();
            v23 = 0;
            v22 = 0;
          }

          else
          {
            v22 = (v8 >> 51) & 0x1F;
            v23 = &v105;
          }

          goto LABEL_188;
        }

LABEL_70:
        if (v9 == 2)
        {
          v49 = *(v7 + 16);
          v50 = *(v7 + 24);
          v51 = __DataStorage._bytes.getter();
          if (v51)
          {
            v52 = __DataStorage._offset.getter();
            v7 = v49 - v52;
            if (__OFSUB__(v49, v52))
            {
LABEL_203:
              __break(1u);
              goto LABEL_204;
            }

            v51 += v7;
          }

          v27 = __OFSUB__(v50, v49);
          v53 = v50 - v49;
          if (!v27)
          {
            goto LABEL_162;
          }

          __break(1u);
          goto LABEL_77;
        }

        v22 = 0;
        v23 = &v105;
LABEL_188:
        v105 = v23;
        v106 = v22;
        MEMORY[0x1EEE9AC00](a1);
        v103 = a2;
        v104 = a3;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRySdGMd, &_sSRySdGMR);
        v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<Double> and conformance UnsafeBufferPointer<A>, &_sSRySdGMd, &_sSRySdGMR, MEMORY[0x1E69E6068]);
        v98 = MEMORY[0x1E69E73E0];
        v99 = MEMORY[0x1E69E7410];
        v100 = partial apply for closure #14 in Npy.makeArray<A>(type:);
        goto LABEL_189;
      }

      if (v9 <= 1)
      {
        if (v9)
        {
          v77 = v7;
          v78 = v7 >> 32;
          v44 = v78 - v77;
          if (v78 < v77)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v79 = __DataStorage._bytes.getter();
          if (v79)
          {
            v80 = v79;
            v81 = __DataStorage._offset.getter();
            if (__OFSUB__(v77, v81))
            {
LABEL_208:
              __break(1u);
              goto LABEL_209;
            }

            v43 = v77 - v81 + v80;
LABEL_136:
            a1 = MEMORY[0x1AC57AAA0]();
            if (a1 >= v44)
            {
              v82 = v44;
            }

            else
            {
              v82 = a1;
            }

            v14 = v82 / 4;
            if (v43)
            {
              v15 = v43;
            }

            else
            {
              v15 = 0;
            }

            if (!v43)
            {
              v14 = 0;
            }

            goto LABEL_184;
          }

          a1 = MEMORY[0x1AC57AAA0]();
          v15 = 0;
          v14 = 0;
        }

        else
        {
          v14 = (v8 >> 50) & 0x3F;
          v15 = &v105;
        }

        goto LABEL_184;
      }

LABEL_56:
      if (v9 == 2)
      {
        v41 = *(v7 + 16);
        v42 = *(v7 + 24);
        a1 = __DataStorage._bytes.getter();
        v43 = a1;
        if (a1)
        {
          a1 = __DataStorage._offset.getter();
          v7 = v41 - a1;
          if (__OFSUB__(v41, a1))
          {
LABEL_201:
            __break(1u);
            goto LABEL_202;
          }

          v43 += v7;
        }

        v27 = __OFSUB__(v42, v41);
        v44 = v42 - v41;
        if (!v27)
        {
          goto LABEL_136;
        }

        __break(1u);
        goto LABEL_63;
      }

      v14 = 0;
      v15 = &v105;
LABEL_184:
      v105 = v15;
      v106 = v14;
      MEMORY[0x1EEE9AC00](a1);
      v103 = a2;
      v104 = a3;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRySfGMd, &_sSRySfGMR);
      v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<Float> and conformance UnsafeBufferPointer<A>, &_sSRySfGMd, &_sSRySfGMR, MEMORY[0x1E69E6068]);
      v98 = MEMORY[0x1E69E73E0];
      v99 = MEMORY[0x1E69E7410];
      v100 = partial apply for closure #12 in Npy.makeArray<A>(type:);
      goto LABEL_189;
    }

    if (v6 != 3)
    {
      if (v9 <= 1)
      {
        if (v9)
        {
          v83 = v7;
          v84 = v7 >> 32;
          v48 = v84 - v83;
          if (v84 < v83)
          {
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }

          v85 = __DataStorage._bytes.getter();
          if (v85)
          {
            v86 = v85;
            v87 = __DataStorage._offset.getter();
            if (__OFSUB__(v83, v87))
            {
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
            }

            v47 = v83 - v87 + v86;
LABEL_149:
            a1 = MEMORY[0x1AC57AAA0]();
            if (a1 >= v48)
            {
              v88 = v48;
            }

            else
            {
              v88 = a1;
            }

            v20 = v88 / 2;
            if (v47)
            {
              v21 = v47;
            }

            else
            {
              v21 = 0;
            }

            if (!v47)
            {
              v20 = 0;
            }

            goto LABEL_186;
          }

          a1 = MEMORY[0x1AC57AAA0]();
          v21 = 0;
          v20 = 0;
        }

        else
        {
          v20 = (v8 >> 49) & 0x7F;
          v21 = &v105;
        }

        goto LABEL_186;
      }

LABEL_63:
      if (v9 == 2)
      {
        v45 = *(v7 + 16);
        v46 = *(v7 + 24);
        a1 = __DataStorage._bytes.getter();
        v47 = a1;
        if (a1)
        {
          a1 = __DataStorage._offset.getter();
          v7 = v45 - a1;
          if (__OFSUB__(v45, a1))
          {
LABEL_202:
            __break(1u);
            goto LABEL_203;
          }

          v47 += v7;
        }

        v27 = __OFSUB__(v46, v45);
        v48 = v46 - v45;
        if (!v27)
        {
          goto LABEL_149;
        }

        __break(1u);
        goto LABEL_70;
      }

      v20 = 0;
      v21 = &v105;
LABEL_186:
      v105 = v21;
      v106 = v20;
      MEMORY[0x1EEE9AC00](a1);
      v103 = a2;
      v104 = a3;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys7Float16VGMd, &_sSRys7Float16VGMR);
      v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<Float16> and conformance UnsafeBufferPointer<A>, &_sSRys7Float16VGMd, &_sSRys7Float16VGMR, MEMORY[0x1E69E6068]);
      v98 = MEMORY[0x1E69E73E0];
      v99 = MEMORY[0x1E69E7410];
      v100 = partial apply for closure #10 in Npy.makeArray<A>(type:);
      goto LABEL_189;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        v10 = (v8 >> 51) & 0x1F;
        v11 = &v105;
LABEL_182:
        v105 = v11;
        v106 = v10;
        MEMORY[0x1EEE9AC00](a1);
        v103 = a2;
        v104 = a3;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys6UInt64VGMd, &_sSRys6UInt64VGMR);
        v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt64> and conformance UnsafeBufferPointer<A>, &_sSRys6UInt64VGMd, &_sSRys6UInt64VGMR, MEMORY[0x1E69E6068]);
        v98 = MEMORY[0x1E69E73E0];
        v99 = MEMORY[0x1E69E7410];
        v100 = partial apply for closure #8 in Npy.makeArray<A>(type:);
        goto LABEL_189;
      }

      v71 = v7;
      v72 = v7 >> 32;
      v40 = v72 - v71;
      if (v72 >= v71)
      {
        v73 = __DataStorage._bytes.getter();
        if (!v73)
        {
          a1 = MEMORY[0x1AC57AAA0]();
          v11 = 0;
          v10 = 0;
          goto LABEL_182;
        }

        v74 = v73;
        v75 = __DataStorage._offset.getter();
        if (!__OFSUB__(v71, v75))
        {
          v39 = v71 - v75 + v74;
LABEL_123:
          a1 = MEMORY[0x1AC57AAA0]();
          if (a1 >= v40)
          {
            v76 = v40;
          }

          else
          {
            v76 = a1;
          }

          v10 = v76 / 8;
          if (v39)
          {
            v11 = v39;
          }

          else
          {
            v11 = 0;
          }

          if (!v39)
          {
            v10 = 0;
          }

          goto LABEL_182;
        }

        goto LABEL_207;
      }

      goto LABEL_193;
    }

LABEL_49:
    if (v9 != 2)
    {
      v10 = 0;
      v11 = &v105;
      goto LABEL_182;
    }

    v37 = *(v7 + 16);
    v38 = *(v7 + 24);
    a1 = __DataStorage._bytes.getter();
    v39 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      v7 = v37 - a1;
      if (__OFSUB__(v37, a1))
      {
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      v39 += v7;
    }

    v27 = __OFSUB__(v38, v37);
    v40 = v38 - v37;
    if (!v27)
    {
      goto LABEL_123;
    }

    __break(1u);
    goto LABEL_56;
  }

  if (*(v3 + 1))
  {
    if (v6 != 1)
    {
      if (v9 <= 1)
      {
        if (v9)
        {
          v65 = v7;
          v66 = v7 >> 32;
          v36 = v66 - v65;
          if (v66 < v65)
          {
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

          v67 = __DataStorage._bytes.getter();
          if (v67)
          {
            v68 = v67;
            v69 = __DataStorage._offset.getter();
            if (__OFSUB__(v65, v69))
            {
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
              goto LABEL_208;
            }

            v35 = v65 - v69 + v68;
LABEL_108:
            a1 = MEMORY[0x1AC57AAA0]();
            if (a1 >= v36)
            {
              v70 = v36;
            }

            else
            {
              v70 = a1;
            }

            v18 = v70 / 4;
            if (v35)
            {
              v19 = v35;
            }

            else
            {
              v19 = 0;
            }

            if (!v35)
            {
              v18 = 0;
            }

            goto LABEL_180;
          }

          a1 = MEMORY[0x1AC57AAA0]();
          v19 = 0;
          v18 = 0;
        }

        else
        {
          v18 = (v8 >> 50) & 0x3F;
          v19 = &v105;
        }

LABEL_180:
        v105 = v19;
        v106 = v18;
        MEMORY[0x1EEE9AC00](a1);
        v103 = a2;
        v104 = a3;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys6UInt32VGMd, &_sSRys6UInt32VGMR);
        v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt32> and conformance UnsafeBufferPointer<A>, &_sSRys6UInt32VGMd, &_sSRys6UInt32VGMR, MEMORY[0x1E69E6068]);
        v98 = MEMORY[0x1E69E73E0];
        v99 = MEMORY[0x1E69E7410];
        v100 = partial apply for closure #6 in Npy.makeArray<A>(type:);
        goto LABEL_189;
      }

LABEL_42:
      if (v9 == 2)
      {
        v33 = *(v7 + 16);
        v34 = *(v7 + 24);
        a1 = __DataStorage._bytes.getter();
        v35 = a1;
        if (a1)
        {
          a1 = __DataStorage._offset.getter();
          v7 = v33 - a1;
          if (__OFSUB__(v33, a1))
          {
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

          v35 += v7;
        }

        v27 = __OFSUB__(v34, v33);
        v36 = v34 - v33;
        if (v27)
        {
          __break(1u);
          goto LABEL_49;
        }

        goto LABEL_108;
      }

      v18 = 0;
      v19 = &v105;
      goto LABEL_180;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        v12 = (v8 >> 49) & 0x7F;
        v13 = &v105;
LABEL_178:
        v105 = v13;
        v106 = v12;
        MEMORY[0x1EEE9AC00](a1);
        v103 = a2;
        v104 = a3;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys6UInt16VGMd, &_sSRys6UInt16VGMR);
        v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16> and conformance UnsafeBufferPointer<A>, &_sSRys6UInt16VGMd, &_sSRys6UInt16VGMR, MEMORY[0x1E69E6068]);
        v98 = MEMORY[0x1E69E73E0];
        v99 = MEMORY[0x1E69E7410];
        v100 = partial apply for closure #4 in Npy.makeArray<A>(type:);
        goto LABEL_189;
      }

      v59 = v7;
      v60 = v7 >> 32;
      v32 = v60 - v59;
      if (v60 < v59)
      {
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      v61 = __DataStorage._bytes.getter();
      if (!v61)
      {
        a1 = MEMORY[0x1AC57AAA0]();
        v13 = 0;
        v12 = 0;
        goto LABEL_178;
      }

      v62 = v61;
      v63 = __DataStorage._offset.getter();
      if (__OFSUB__(v59, v63))
      {
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      v31 = v59 - v63 + v62;
      goto LABEL_95;
    }

LABEL_35:
    if (v9 != 2)
    {
      v12 = 0;
      v13 = &v105;
      goto LABEL_178;
    }

    v29 = *(v7 + 16);
    v30 = *(v7 + 24);
    a1 = __DataStorage._bytes.getter();
    v31 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      v7 = v29 - a1;
      if (__OFSUB__(v29, a1))
      {
LABEL_198:
        __break(1u);
        goto LABEL_199;
      }

      v31 += v7;
    }

    v27 = __OFSUB__(v30, v29);
    v32 = v30 - v29;
    if (!v27)
    {
LABEL_95:
      a1 = MEMORY[0x1AC57AAA0]();
      if (a1 >= v32)
      {
        v64 = v32;
      }

      else
      {
        v64 = a1;
      }

      v12 = v64 / 2;
      if (v31)
      {
        v13 = v31;
      }

      else
      {
        v13 = 0;
      }

      if (!v31)
      {
        v12 = 0;
      }

      goto LABEL_178;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      v16 = 0;
      v17 = &v105;
      goto LABEL_176;
    }

    v24 = *(v7 + 16);
    v25 = *(v7 + 24);
    a1 = __DataStorage._bytes.getter();
    v26 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      v7 = v24 - a1;
      if (__OFSUB__(v24, a1))
      {
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      v26 += v7;
    }

    v27 = __OFSUB__(v25, v24);
    v28 = v25 - v24;
    if (!v27)
    {
      goto LABEL_81;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (!v9)
  {
    v16 = BYTE6(v8);
    v17 = &v105;
    goto LABEL_176;
  }

LABEL_77:
  v54 = v7;
  v55 = v7 >> 32;
  v28 = v55 - v54;
  if (v55 < v54)
  {
    __break(1u);
    goto LABEL_191;
  }

  v56 = __DataStorage._bytes.getter();
  if (v56)
  {
    v57 = v56;
    v58 = __DataStorage._offset.getter();
    if (__OFSUB__(v54, v58))
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v26 = v54 - v58 + v57;
LABEL_81:
    a1 = MEMORY[0x1AC57AAA0]();
    if (a1 >= v28)
    {
      v16 = v28;
    }

    else
    {
      v16 = a1;
    }

    if (v26)
    {
      v17 = v26;
    }

    else
    {
      v17 = 0;
    }

    if (!v26)
    {
      v16 = 0;
    }

    goto LABEL_176;
  }

  a1 = MEMORY[0x1AC57AAA0]();
  v17 = 0;
  v16 = 0;
LABEL_176:
  v105 = v17;
  v106 = v16;
  MEMORY[0x1EEE9AC00](a1);
  v103 = a2;
  v104 = a3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR, MEMORY[0x1E69E6068]);
  v98 = MEMORY[0x1E69E73E0];
  v99 = MEMORY[0x1E69E7410];
  v100 = partial apply for closure #2 in Npy.makeArray<A>(type:);
LABEL_189:
  v105 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v100, &v102, v95, a2, v98, v96, v99, v97);
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)(result, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = String.index(_:offsetBy:limitedBy:)();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x1EEE68E00](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v1);
  }

  return result;
}

uint64_t specialized static Npy.Header.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 8);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 8);
  if (specialized == infix<A>(_:_:)(*a1, *a2) & 1) == 0 || (specialized == infix<A>(_:_:)(v2, v5) & 1) == 0 || ((v3 ^ v6))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v7);
}

BOOL specialized static Npy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 8);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *a2;
  v11 = *a1;

  if ((specialized == infix<A>(_:_:)(v11, v10) & 1) == 0 || (specialized == infix<A>(_:_:)(v2, v5) & 1) == 0 || v3 != v6)
  {

    return 0;
  }

  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v7);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v15, v14, v8, v9);
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Npy.Header.DataType.Endianness and conformance Npy.Header.DataType.Endianness()
{
  result = lazy protocol witness table cache variable for type Npy.Header.DataType.Endianness and conformance Npy.Header.DataType.Endianness;
  if (!lazy protocol witness table cache variable for type Npy.Header.DataType.Endianness and conformance Npy.Header.DataType.Endianness)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Npy.Header.DataType.Endianness and conformance Npy.Header.DataType.Endianness);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Npy.Header.DataType.DType and conformance Npy.Header.DataType.DType()
{
  result = lazy protocol witness table cache variable for type Npy.Header.DataType.DType and conformance Npy.Header.DataType.DType;
  if (!lazy protocol witness table cache variable for type Npy.Header.DataType.DType and conformance Npy.Header.DataType.DType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Npy.Header.DataType.DType and conformance Npy.Header.DataType.DType);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for Npy.Header.DataType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
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

_WORD *storeEnumTagSinglePayload for Npy.Header.DataType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Float16 and conformance Float16()
{
  result = lazy protocol witness table cache variable for type Float16 and conformance Float16;
  if (!lazy protocol witness table cache variable for type Float16 and conformance Float16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Float16 and conformance Float16);
  }

  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t Overridable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = *(v2 + 24);
  if (one-time initialization token for isInternalInstall != -1)
  {
    v8 = a2;
    swift_once();
    v3 = a1;
    a2 = v8;
  }

  if (isInternalInstall)
  {
    return v4();
  }

  v6 = *(*(*(v3 + 16) - 8) + 56);

  return v6(a2, 1, 1);
}

void one-time initialization function for isInternalInstall()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    isInternalInstall = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    result = outlined destroy of Any?(v11);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a4 = 2;
  }

  return result;
}

uint64_t closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 URLForKey_];

  if (v7)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);

  return v10(a4, v8, 1, v9);
}

{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a4 = 0;
    }

    v9 = result ^ 1;
  }

  else
  {
    result = outlined destroy of Any?(v12);
    *a4 = 0;
    v9 = 1;
  }

  *(a4 + 8) = v9;
  return result;
}

{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a4 = 0;
    }

    v9 = result ^ 1;
  }

  else
  {
    result = outlined destroy of Any?(v12);
    *a4 = 0;
    v9 = 1;
  }

  *(a4 + 4) = v9;
  return result;
}

void closure #1 in Overridable<A>.init(key:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = MEMORY[0x1AC57BF60](a2, a3);
  v7 = [a1 stringForKey_];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a4 = v8;
  a4[1] = v10;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v4 = 0;
  v2 += 3;
  while (1)
  {
    v6 = v2 - 4;
    if (v4 == v2 - 4)
    {
      goto LABEL_8;
    }

    v7 = *(v1 + 2);
    if (v4 >= v7)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6 >= v7)
    {
      goto LABEL_17;
    }

    v8 = &v1[8 * v4];
    v9 = *(v8 + 4);
    *(v8 + 4) = *&v1[8 * v2];
    v10 = *(v1 + 2);

    if (v6 >= v10)
    {
      break;
    }

    *&v1[8 * v2] = v9;

LABEL_8:
    ++v4;
    v5 = v2 - 5;
    --v2;
    if (v4 >= v5)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v0 = v1;
}

{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (v1 - 1);
  if (v1 == 1)
  {
    return;
  }

  v3 = *v0;
  v16 = v0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = v3;
  }

  else
  {
LABEL_18:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v5 = 0;
  v6 = 32 * v1;
  v7 = 1;
  while (1)
  {
    if (v7 - 1 == v2)
    {
      goto LABEL_7;
    }

    v9 = *(v4 + 2);
    if (v7 - 1 >= v9)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v2 >= v9)
    {
      goto LABEL_17;
    }

    v10 = &v4[v5];
    v11 = *&v4[v5 + 32];
    v17 = *&v4[v5 + 40];
    v12 = *&v4[v5 + 56];
    v1 = &v4[v6];
    v13 = *&v4[v6 + 8];
    v14 = *&v4[v6 + 16];
    v15 = *&v4[v6 + 24];
    *(v10 + 4) = *&v4[v6];
    *(v10 + 5) = v13;
    *(v10 + 6) = v14;
    *(v10 + 7) = v15;
    v18 = *(v4 + 2);

    if (v2 >= v18)
    {
      break;
    }

    v3 = *(v1 + 1);
    *&v4[v6] = v11;
    *(v1 + 8) = v17;
    *(v1 + 3) = v12;

LABEL_7:
    --v2;
    v6 -= 32;
    v5 += 32;
    if (v7++ >= v2)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v16 = v4;
}

{
  v1 = type metadata accessor for Prompt.PromptFragment(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return;
  }

  v7 = v6 - 1;
  if (v6 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v8 = 1;
  while (1)
  {
    v10 = v8 - 1;
    if (v8 - 1 == v7)
    {
      goto LABEL_6;
    }

    v11 = v5[2];
    if (v10 >= v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    v14 = &v12[v13 * v10];
    outlined init with copy of Prompt.PromptFragment(v14, v4, type metadata accessor for Prompt.PromptFragment);
    if (v7 >= v11)
    {
      goto LABEL_16;
    }

    outlined assign with copy of Prompt.PromptFragment(&v12[v13 * v7], v14);
    if (v7 >= v5[2])
    {
      break;
    }

    outlined assign with take of Prompt.RenderedPromptFragment(v4, &v12[v13 * v7], type metadata accessor for Prompt.PromptFragment);
LABEL_6:
    if (v8++ >= --v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v5;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySis5UInt8V_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1AC57C380](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1AC57C380](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[5];
          if (v13 >= v12[1])
          {
            break;
          }

          v14 = v12[2];
          v15 = v12[3];
          v16 = v12[4];
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v16;
          v12[1] = v13;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS6symbol_Si8positionSi8prioritytMd, &_sSS6symbol_Si8positionSi8prioritytMR);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t Prompt.SpecialToken.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Prompt.SpecialToken(0);
  v7 = v6[5];
  v8 = type metadata accessor for Locale();
  result = (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = a1;
  *(a3 + 1) = a2;
  v10 = &a3[v6[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a3[v6[7]] = 0;
  return result;
}

uint64_t Prompt.renderPromptFragments(tokenTable:localizationOverrideMap:stopOnSpecialToken:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v123 = a3;
  v132 = a1;
  v5 = type metadata accessor for Prompt.Attachment(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v141 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v100 - v9;
  v11 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v137 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v128 = (&v100 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v112 = (&v100 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v100 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v100 - v23;
  v121 = type metadata accessor for Locale();
  v126 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v111 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v117 = &v100 - v26;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v116);
  v124 = &v100 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v122 = &v100 - v29;
  v131 = type metadata accessor for Prompt.SpecialToken(0);
  v125 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131);
  v127 = (&v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for Prompt.Delimiter(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v129 = (&v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = type metadata accessor for Prompt.PromptFragment(0);
  v139 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v3;
  v140 = *(v3 + 8);
  v133 = *(v3 + 24);
  v134 = v34;
  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Log.prompt);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v38 = os_log_type_enabled(v36, v37);
  v120 = v10;
  v135 = v11;
  v115 = v19;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v142 = v40;
    *v39 = 136642819;
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, type metadata accessor for Prompt.SpecialToken, &protocol conformance descriptor for Prompt.SpecialToken);
    v41 = Dictionary.description.getter();
    v43 = a2;
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v142);

    *(v39 + 4) = v44;
    a2 = v43;
    _os_log_impl(&dword_1A8E85000, v36, v37, "Token table: %{sensitive}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1AC57DBF0](v40, -1, -1);
    MEMORY[0x1AC57DBF0](v39, -1, -1);
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v37 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v142 = v47;
    *v37 = 136642819;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Prompt.SpecialToken and conformance Prompt.SpecialToken, type metadata accessor for Prompt.SpecialToken, &protocol conformance descriptor for Prompt.SpecialToken);
    v48 = Dictionary.description.getter();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v142);

    *(v37 + 4) = v50;
    _os_log_impl(&dword_1A8E85000, v45, v46, "Localization override map: %{sensitive}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1AC57DBF0](v47, -1, -1);
    MEMORY[0x1AC57DBF0](v37, -1, -1);
  }

  v142 = v134;
  v143 = v140;
  v144 = v133;
  v51 = v130;
  *&v140 = Prompt.promptFragments()();
  if (!v51)
  {
    v109 = a2;
    v52 = *(v140 + 16);
    if (v52)
    {
      v110 = 0;
      LODWORD(v130) = 0;
      v53 = 0;
      v134 = v140 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v125 += 6;
      v54 = (v126 + 48);
      v105 = (v126 + 32);
      v106 = (v126 + 8);
      v108 = (v137 + 56);
      v107 = (v137 + 48);
      v133 = v52;
      v126 = v52 - 1;
      v37 = MEMORY[0x1E69E7CC0];
      v55 = v138;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v53 >= *(v140 + 16))
            {
              __break(1u);
LABEL_77:

              _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v129, type metadata accessor for Prompt.Delimiter);

              return v37;
            }

            outlined init with copy of Prompt.PromptFragment(v134 + *(v139 + 72) * v53, v55, type metadata accessor for Prompt.PromptFragment);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload != 2)
            {
              break;
            }

            v57 = v55;
            v58 = v141;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v57, v141, type metadata accessor for Prompt.Attachment);
            outlined init with copy of Prompt.PromptFragment(v58, v145, type metadata accessor for Prompt.AttachmentContent);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
            }

            v60 = *(v37 + 16);
            v59 = *(v37 + 24);
            if (v60 >= v59 >> 1)
            {
              v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v37);
            }

            ++v53;
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v141, type metadata accessor for Prompt.Attachment);
            *(v37 + 16) = v60 + 1;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v145, v37 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v60, type metadata accessor for Prompt.RenderedPromptFragment);
            v55 = v138;
            if (v133 == v53)
            {
              goto LABEL_73;
            }
          }

          if (EnumCaseMultiPayload)
          {
            break;
          }

          v62 = *v55;
          v61 = v55[1];
          if ((v130 & 1) == 0)
          {
            goto LABEL_23;
          }

          v63 = *(v37 + 16);
          if (!v63)
          {
            goto LABEL_23;
          }

          v130 = v55[1];
          v104 = v63;
          v102 = (*(v137 + 80) + 32) & ~*(v137 + 80);
          v103 = *(v137 + 72) * (v63 - 1);
          v64 = v115;
          outlined init with copy of Prompt.PromptFragment(v37 + v102 + v103, v115, type metadata accessor for Prompt.RenderedPromptFragment);
          if (swift_getEnumCaseMultiPayload())
          {
            _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v64, type metadata accessor for Prompt.RenderedPromptFragment);
            v61 = v130;
LABEL_23:
            v65 = v128;
            *v128 = v62;
            v65[1] = v61;
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
            }

            v67 = *(v37 + 16);
            v66 = *(v37 + 24);
            if (v67 >= v66 >> 1)
            {
              v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v37);
            }

            *(v37 + 16) = v67 + 1;
            _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v128, v37 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v67, type metadata accessor for Prompt.RenderedPromptFragment);
            v55 = v138;
            goto LABEL_28;
          }

          v78 = *v64;
          v101 = v64[1];
          v142 = v78;
          *&v143 = v101;

          MEMORY[0x1AC57C120](v62, v130);

          v79 = v143;
          v80 = v112;
          *v112 = v142;
          v80[1] = v79;
          swift_storeEnumTagMultiPayload();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
            v37 = result;
          }

          v55 = v138;
          if (v104 > *(v37 + 16))
          {
            __break(1u);
            return result;
          }

          outlined assign with take of Prompt.RenderedPromptFragment(v112, v37 + v102 + v103, type metadata accessor for Prompt.RenderedPromptFragment);
LABEL_28:
          if (v126 == v53)
          {
            goto LABEL_73;
          }

          LODWORD(v130) = 0;
          ++v53;
        }

        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v55, v129, type metadata accessor for Prompt.Delimiter);
        v68 = v122;
        outlined init with copy of (String, Any)(v123, v122, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
        if ((*v125)(v68, 1, v131) == 1)
        {
          outlined destroy of [Regex2BNF.CharacterPredicate](v68, &_s15TokenGeneration6PromptV07SpecialA0VSgMd, &_s15TokenGeneration6PromptV07SpecialA0VSgMR);
          goto LABEL_56;
        }

        v69 = v68;
        v70 = v127;
        _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v69, v127, type metadata accessor for Prompt.SpecialToken);
        if (*v129 == *v70 && v129[1] == v70[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v104 = v131[5];
          v130 = *(v116 + 48);
          v71 = v124;
          outlined init with copy of (String, Any)(v129 + v104, v124, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          outlined init with copy of (String, Any)(v127 + v104, &v130[v71], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          v104 = *v54;
          if ((v104)(v71, 1, v121) == 1)
          {
            v72 = v124;
            v73 = (v104)(&v130[v124], 1, v121) == 1;
            v74 = v72;
            if (!v73)
            {
              goto LABEL_41;
            }

            outlined destroy of [Regex2BNF.CharacterPredicate](v72, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
          }

          else
          {
            v75 = v124;
            outlined init with copy of (String, Any)(v124, v117, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            v76 = &v130[v75];
            v77 = v121;
            if ((v104)(v76, 1, v121) == 1)
            {
              (*v106)(v117, v77);
              v74 = v124;
LABEL_41:
              outlined destroy of [Regex2BNF.CharacterPredicate](v74, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
              goto LABEL_55;
            }

            (*v105)(v111, &v130[v124], v77);
            lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
            LODWORD(v104) = dispatch thunk of static Equatable.== infix(_:_:)();
            v130 = *v106;
            (v130)(v111, v77);
            (v130)(v117, v77);
            outlined destroy of [Regex2BNF.CharacterPredicate](v124, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
            if ((v104 & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          v82 = v131[6];
          v83 = (v129 + v82);
          v84 = *(v129 + v82 + 8);
          v85 = (v127 + v82);
          v86 = v85[1];
          if (v84)
          {
            if (v86 && (*v83 == *v85 && v84 == v86 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {
LABEL_54:
              if (*(v129 + v131[7]) == *(v127 + v131[7]))
              {

                _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v127, type metadata accessor for Prompt.SpecialToken);
                _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v129, type metadata accessor for Prompt.Delimiter);
                return v37;
              }
            }
          }

          else if (!v86)
          {
            goto LABEL_54;
          }
        }

LABEL_55:
        _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v127, type metadata accessor for Prompt.SpecialToken);
LABEL_56:
        v87 = v129;
        if (*(v129 + v131[7]))
        {
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v129, type metadata accessor for Prompt.Delimiter);
          if (v126 == v53)
          {
            goto LABEL_73;
          }

          LODWORD(v130) = 1;
          goto LABEL_72;
        }

        v88 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v132);
        v89 = v110;
        v90 = Prompt.renderSpecialToken(delimiter:tokenTable:localizationOverrideMap:)(v87, v88, v109);
        v130 = v91;
        v110 = v89;
        if (v89)
        {
          goto LABEL_77;
        }

        v92 = v90;

        if (String.count.getter() <= 0)
        {
          v95 = v120;
          v96 = v135;
          (*v108)(v120, 1, 1, v135);
        }

        else
        {
          v93 = v113;
          outlined init with copy of Prompt.PromptFragment(v129, &v113[*(v114 + 20)], type metadata accessor for Prompt.SpecialToken);
          v94 = v130;
          *v93 = v92;
          v93[1] = v94;
          v95 = v120;
          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v93, v120, type metadata accessor for Prompt.RenderedSpecialToken);
          v96 = v135;
          swift_storeEnumTagMultiPayload();
          (*v108)(v95, 0, 1, v96);
        }

        if ((*v107)(v95, 1, v96) == 1)
        {
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v129, type metadata accessor for Prompt.Delimiter);
          outlined destroy of [Regex2BNF.CharacterPredicate](v95, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMd, &_s15TokenGeneration6PromptV0aB4CoreE08RenderedC8FragmentOSgMR);
          v55 = v138;
          if (v126 == v53)
          {
            goto LABEL_73;
          }

          LODWORD(v130) = 0;
          ++v53;
        }

        else
        {
          v97 = v118;
          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v95, v118, type metadata accessor for Prompt.RenderedPromptFragment);
          outlined init with copy of Prompt.PromptFragment(v97, v119, type metadata accessor for Prompt.RenderedPromptFragment);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
          }

          v99 = *(v37 + 16);
          v98 = *(v37 + 24);
          if (v99 >= v98 >> 1)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v37);
          }

          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v118, type metadata accessor for Prompt.RenderedPromptFragment);
          *(v37 + 16) = v99 + 1;
          _s15TokenGeneration6PromptV10AttachmentVWObTm_0(v119, v37 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v99, type metadata accessor for Prompt.RenderedPromptFragment);
          _s15TokenGeneration6PromptV10AttachmentVWOhTm_0(v129, type metadata accessor for Prompt.Delimiter);
          if (v126 == v53)
          {
LABEL_73:

            return v37;
          }

          LODWORD(v130) = 0;
LABEL_72:
          v55 = v138;
          ++v53;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v37;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v276 = a1;
  v6 = 0;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  while (1)
  {
    if (v10)
    {
      v12 = __clz(__rbit64(v10));
      v278 = (v10 - 1) & v10;
      goto LABEL_13;
    }

    v13 = v6;
    do
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_208:
        v168 = a1;
        v169 = *&v3;
        v174 = v10;
        outlined copy of JSON(*&v3, v10, v5);
        outlined copy of JSON(v168, v275, 2);
        v170 = v168;
        v171 = v275;
        v172 = 2;
        goto LABEL_211;
      }

      if (v6 >= v11)
      {
        return 1;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
    }

    while (!v14);
    v12 = __clz(__rbit64(v14));
    v278 = (v14 - 1) & v14;
LABEL_13:
    v15 = v12 | (v6 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(a1 + 56) + 24 * v15;
    v20 = *v19;
    v5 = *(v19 + 8);
    v4 = *(v19 + 16);

    v279 = v20;
    outlined copy of JSON(v20, v5, v4);
    v21 = v18 == 0;
    if (!v18)
    {
      return v21;
    }

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    v3 = v23;

    if ((LOBYTE(v3) & 1) == 0)
    {
      goto LABEL_249;
    }

    v24 = *(a2 + 56) + 24 * v22;
    v25 = *v24;
    v2 = *(v24 + 8);
    v26 = *(v24 + 16);
    if (v26 > 2)
    {
      break;
    }

    if (*(v24 + 16))
    {
      if (v26 == 1)
      {
        if (v4 != 1)
        {
          goto LABEL_248;
        }

        v3 = *&v279;
        outlined consume of JSON(*v24, *(v24 + 8), 1);
        outlined consume of JSON(v279, v5, 1);
        a1 = v276;
        v10 = v278;
        if (*&v25 != *&v279)
        {
          return v21;
        }

        continue;
      }

      if (v4 == 2)
      {
        v4 = v279;
        if (v25 != v279 || v2 != v5)
        {
          v3 = COERCE_DOUBLE(_stringCompareWithSmolCheck(_:_:expecting:)());

          outlined consume of JSON(v25, v2, 2);
          v27 = v279;
          v28 = v5;
          v29 = 2;
LABEL_39:
          outlined consume of JSON(v27, v28, v29);
          a1 = v276;
          v10 = v278;
          if ((LOBYTE(v3) & 1) == 0)
          {
            return v21;
          }

          continue;
        }

        outlined consume of JSON(v279, v5, 2);
        v34 = v279;
        v35 = v5;
        v36 = 2;
LABEL_51:
        outlined consume of JSON(v34, v35, v36);
        a1 = v276;
        v10 = v278;
        continue;
      }

LABEL_205:
      v166 = *(v24 + 16);

      LOBYTE(v26) = v166;
      goto LABEL_248;
    }

    outlined consume of JSON(*v24, *(v24 + 8), 0);
    if (v4)
    {
      goto LABEL_249;
    }

    v2 = v279;
    outlined consume of JSON(v279, v5, 0);
    a1 = v276;
    v10 = v278;
    if ((v25 ^ v279))
    {
      return v21;
    }
  }

  if (v26 != 3)
  {
    if (v26 != 4)
    {
      *&v3 = v5 | v279;
      outlined consume of JSON(v25, v2, 5);
      if (v4 != 5 || *&v3 != 0)
      {
        goto LABEL_249;
      }

      v34 = 0;
      v35 = 0;
      v36 = 5;
      goto LABEL_51;
    }

    if (v4 == 4)
    {
      outlined copy of JSON(*v24, *(v24 + 8), 4);
      outlined copy of JSON(v25, v2, 4);
      v4 = v279;
      outlined copy of JSON(v279, v5, 4);
      v3 = COERCE_DOUBLE(_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v25, v279));
      outlined consume of JSON(v279, v5, 4);
      outlined consume of JSON(v25, v2, 4);
      outlined consume of JSON(v25, v2, 4);
      v27 = v279;
      v28 = v5;
      v29 = 4;
      goto LABEL_39;
    }

    goto LABEL_205;
  }

  if (v4 != 3)
  {
    goto LABEL_205;
  }

  v30 = *(v25 + 16);
  v4 = v279;
  if (v30 != *(v279 + 16))
  {
    v167 = v26;

    LOBYTE(v26) = v167;
    LOBYTE(v4) = 3;
    goto LABEL_248;
  }

  if (!v30)
  {

LABEL_49:
    outlined consume of JSON(v31, v2, 3);
    v34 = v279;
    v35 = v5;
    goto LABEL_50;
  }

  if (v25 == v279)
  {

    v31 = v279;
    goto LABEL_49;
  }

  v259 = 3;
  v273 = v25 + 32;
  outlined copy of JSON(v25, v2, 3);
  outlined copy of JSON(v25, v2, 3);
  result = outlined copy of JSON(v279, v5, 3);
  v38 = 0;
  v269 = v2;
  v270 = v25;
  v271 = v30;
  v272 = v5;
  while (2)
  {
    if (v38 >= *(v25 + 16))
    {
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
      return result;
    }

    if (v38 >= *(v4 + 16))
    {
      goto LABEL_253;
    }

    v41 = v273 + 24 * v38;
    a1 = *v41;
    v275 = *(v41 + 8);
    v42 = *(v41 + 16);
    v43 = v279 + 32 + 24 * v38;
    v3 = *v43;
    v10 = *(v43 + 8);
    LODWORD(v5) = *(v43 + 16);
    if (v42 <= 2)
    {
      if (v42)
      {
        if (v42 == 1)
        {
          if (v5 == 1)
          {
            v44 = *&a1;
            v45 = *(v43 + 8);
            outlined consume of JSON(a1, v275, 1);
            result = outlined consume of JSON(*&v3, v45, 1);
            if (v44 != v3)
            {
              goto LABEL_247;
            }

            goto LABEL_54;
          }

          v185 = a1;
          v174 = *(v43 + 8);
          outlined copy of JSON(*v43, v174, *(v43 + 16));
          v175 = v185;
          v176 = v275;
          v177 = 1;
LABEL_214:
          outlined consume of JSON(v175, v176, v177);
          v183 = *&v3;
LABEL_215:
          outlined consume of JSON(v183, v174, v5);
          goto LABEL_247;
        }

        if (v5 != 2)
        {
          goto LABEL_208;
        }

        if (a1 == *&v3 && v275 == v10)
        {
          v3 = *&v2;
          v39 = a1;
          outlined copy of JSON(a1, v275, 2);
          outlined copy of JSON(v39, v275, 2);
          outlined consume of JSON(v39, v275, 2);
          v40 = v39;
          *&v2 = v3;
          result = outlined consume of JSON(v40, v275, 2);
          v30 = v271;
        }

        else
        {
          v58 = *v43;
          v3 = *&a1;
          v59 = *(v43 + 8);
          v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of JSON(v58, v59, 2);
          outlined copy of JSON(*&v3, v275, 2);
          v25 = v270;
          outlined consume of JSON(*&v3, v275, 2);
          v61 = v59;
          v2 = v269;
          result = outlined consume of JSON(v58, v61, 2);
          v30 = v271;
          if ((v60 & 1) == 0)
          {
            goto LABEL_247;
          }
        }
      }

      else
      {
        if (*(v43 + 16))
        {
          v184 = a1;
          v174 = *(v43 + 8);
          outlined copy of JSON(*v43, v174, *(v43 + 16));
          v175 = v184;
          v176 = v275;
          v177 = 0;
          goto LABEL_214;
        }

        v51 = v2;
        v52 = a1;
        v53 = *(v43 + 8);
        outlined consume of JSON(a1, v275, 0);
        result = outlined consume of JSON(*&v3, v53, 0);
        v54 = LOBYTE(v3) ^ v52;
        v2 = v51;
        v30 = v271;
        if (v54)
        {
          goto LABEL_247;
        }
      }

LABEL_54:
      ++v38;
      LOBYTE(v5) = v272;
      if (v38 != v30)
      {
        continue;
      }

      outlined consume of JSON(v25, v2, 3);
      outlined consume of JSON(v4, v272, 3);
      outlined consume of JSON(v4, v272, 3);
      v34 = v25;
      v35 = v2;
LABEL_50:
      v36 = 3;
      goto LABEL_51;
    }

    break;
  }

  v274 = a1;
  if (v42 != 3)
  {
    if (v42 != 4)
    {
      if (v5 != 5 || (v10 | *&v3) != 0)
      {
        v173 = a1;
        v174 = *(v43 + 8);
        outlined copy of JSON(*&v3, v10, v5);
        v175 = v173;
        v176 = v275;
        v177 = 5;
        goto LABEL_214;
      }

      outlined consume of JSON(a1, v275, 5);
      result = outlined consume of JSON(0, 0, 5);
      goto LABEL_54;
    }

    if (v5 == 4)
    {
      v46 = *(v43 + 8);
      outlined copy of JSON(*&v3, v10, 4);
      v47 = *&v3;
      v3 = *&v274;
      outlined copy of JSON(v274, v275, 4);
      outlined copy of JSON(v47, v46, 4);
      outlined copy of JSON(v274, v275, 4);
      v48 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v274, v47);
      outlined consume of JSON(v274, v275, 4);
      outlined consume of JSON(v47, v46, 4);
      v49 = v47;
      v30 = v271;
      v50 = v46;
      v2 = v269;
      outlined consume of JSON(v49, v50, 4);
      result = outlined consume of JSON(v274, v275, 4);
      v25 = v270;
      if ((v48 & 1) == 0)
      {
        goto LABEL_247;
      }

      goto LABEL_54;
    }

    v178 = *(v43 + 8);
    outlined copy of JSON(*&v3, v10, v5);
    outlined copy of JSON(v274, v275, 4);
    outlined consume of JSON(v274, v275, 4);
    v179 = *&v3;
    v180 = v178;
    v181 = v5;
LABEL_217:
    outlined consume of JSON(v179, v180, v181);
    goto LABEL_246;
  }

  if (v5 != 3)
  {
    v182 = a1;
    v169 = *v43;
    v174 = *(v43 + 8);
    outlined copy of JSON(*&v3, v10, v5);
    outlined copy of JSON(v182, v275, 3);
    v170 = v182;
    v171 = v275;
    v172 = 3;
LABEL_211:
    outlined consume of JSON(v170, v171, v172);
    v183 = v169;
    v25 = v270;
    goto LABEL_215;
  }

  v55 = *(a1 + 16);
  if (v55 != *(*&v3 + 16))
  {
    v186 = a1;
    v187 = *(v43 + 8);
    outlined copy of JSON(*&v3, v10, 3);
    outlined copy of JSON(v186, v275, 3);
    outlined consume of JSON(v186, v275, 3);
    v179 = *&v3;
    v180 = v187;
    v181 = 3;
    goto LABEL_217;
  }

  if (!v55)
  {
    v63 = *v43;
    v3 = *&a1;
    v64 = *(v43 + 8);
    outlined copy of JSON(*v43, v10, 3);
    outlined copy of JSON(*&v3, v275, 3);
    outlined consume of JSON(*&v3, v275, 3);
    v65 = v63;
    v30 = v271;
    v66 = v64;
    v2 = v269;
    result = outlined consume of JSON(v65, v66, 3);
    v25 = v270;
    goto LABEL_54;
  }

  if (a1 == *&v3)
  {
    v3 = *&a1;
    v56 = *(v43 + 8);
    outlined copy of JSON(a1, v10, 3);
    outlined copy of JSON(*&v3, v275, 3);
    outlined consume of JSON(*&v3, v275, 3);
    result = outlined consume of JSON(*&v3, v56, 3);
    v2 = v269;
LABEL_76:
    v25 = v270;
    v30 = v271;
    goto LABEL_54;
  }

  v264 = *&v3 + 32;
  v265 = a1 + 32;
  v67 = *(v43 + 8);
  outlined copy of JSON(*&v3, v10, 3);
  outlined copy of JSON(v274, v275, 3);
  v268 = *&v3;
  v245 = v67;
  outlined copy of JSON(*&v3, v67, 3);
  result = outlined copy of JSON(v274, v275, 3);
  v3 = *&v274;
  v68 = 0;
  v2 = v269;
  v263 = v55;
  while (2)
  {
    if (v68 >= *(*&v3 + 16))
    {
      goto LABEL_254;
    }

    if (v68 >= *(v268 + 16))
    {
      goto LABEL_255;
    }

    v72 = v265 + 24 * v68;
    v73 = *v72;
    v74 = *(v72 + 8);
    v75 = *(v72 + 16);
    v76 = v264 + 24 * v68;
    v77 = *v76;
    v78 = *(v76 + 8);
    v79 = *(v76 + 16);
    if (v75 <= 2)
    {
      if (v75)
      {
        if (v75 == 1)
        {
          if (v79 == 1)
          {
            v80 = *&v73;
            v81 = *v76;
            v82 = *v76;
            outlined consume of JSON(v73, v74, 1);
            v83 = v82;
            v55 = v263;
            result = outlined consume of JSON(v83, v78, 1);
            if (v80 != v81)
            {
              goto LABEL_245;
            }

            goto LABEL_93;
          }

          v194 = v73;
          v195 = v74;
          v190 = *v76;
          outlined copy of JSON(*v76, *(v76 + 8), *(v76 + 16));
          v191 = v194;
          v192 = v195;
          v193 = 1;
LABEL_223:
          outlined consume of JSON(v191, v192, v193);
          v198 = v190;
          v199 = v78;
LABEL_224:
          v206 = v79;
          goto LABEL_244;
        }

        if (v79 != 2)
        {
          v204 = v73;
          v205 = v74;
          v190 = *v76;
          outlined copy of JSON(*v76, *(v76 + 8), *(v76 + 16));
          outlined copy of JSON(v204, v205, 2);
          v191 = v204;
          v192 = v205;
          v193 = 2;
          goto LABEL_223;
        }

        if (v73 != v77 || v74 != v78)
        {
          v69 = v73;
          v70 = v74;
          v71 = *v76;
          v266 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of JSON(v71, v78, 2);
          outlined copy of JSON(v69, v70, 2);
          outlined consume of JSON(v69, v70, 2);
          result = outlined consume of JSON(v71, v78, 2);
          v55 = v263;
          if ((v266 & 1) == 0)
          {
            goto LABEL_245;
          }

          goto LABEL_93;
        }

        v95 = v73;
        v96 = v74;
        outlined copy of JSON(v73, v74, 2);
        outlined copy of JSON(v95, v96, 2);
        outlined consume of JSON(v95, v96, 2);
        v91 = v95;
        v92 = v96;
        v93 = 2;
LABEL_123:
        result = outlined consume of JSON(v91, v92, v93);
        v55 = v263;
        goto LABEL_93;
      }

      if (*(v76 + 16))
      {
        v202 = v73;
        v203 = v74;
        v190 = *v76;
        outlined copy of JSON(*v76, *(v76 + 8), *(v76 + 16));
        v191 = v202;
        v192 = v203;
        v193 = 0;
        goto LABEL_223;
      }

      v86 = v73;
      v87 = *v76;
      outlined consume of JSON(v73, v74, 0);
      result = outlined consume of JSON(v87, v78, 0);
      v88 = v87 ^ v86;
      v55 = v263;
      if (v88)
      {
        goto LABEL_245;
      }

LABEL_93:
      ++v68;
      v3 = *&v274;
      if (v68 == v55)
      {
        outlined consume of JSON(v274, v275, 3);
        outlined consume of JSON(v268, v245, 3);
        v2 = v269;
        outlined consume of JSON(v268, v245, 3);
        result = outlined consume of JSON(v274, v275, 3);
        v4 = v279;
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  v267 = v73;
  if (v75 != 3)
  {
    if (v75 == 4)
    {
      v84 = v74;
      if (v79 != 4)
      {
        v196 = *(v76 + 8);
        v197 = *v76;
        outlined copy of JSON(v77, v196, v79);
        outlined copy of JSON(v267, v84, 4);
        outlined consume of JSON(v267, v84, 4);
        v198 = v197;
        v199 = v196;
        goto LABEL_224;
      }

      v85 = *v76;
      outlined copy of JSON(v77, v78, 4);
      outlined copy of JSON(v267, v84, 4);
      outlined copy of JSON(v85, v78, 4);
      outlined copy of JSON(v267, v84, 4);
      v261 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v267, v85);
      outlined consume of JSON(v267, v84, 4);
      outlined consume of JSON(v85, v78, 4);
      outlined consume of JSON(v85, v78, 4);
      v55 = v263;
      result = outlined consume of JSON(v267, v84, 4);
      if ((v261 & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_93;
    }

    if (v79 != 5 || (v78 | v77) != 0)
    {
      v188 = v73;
      v189 = v74;
      v190 = *v76;
      outlined copy of JSON(v77, v78, v79);
      v191 = v188;
      v192 = v189;
      v193 = 5;
      goto LABEL_223;
    }

    outlined consume of JSON(v73, v74, 5);
    v98 = 0;
    v99 = 0;
    v100 = 5;
LABEL_131:
    result = outlined consume of JSON(v98, v99, v100);
    goto LABEL_93;
  }

  if (v79 != 3)
  {
    v200 = v73;
    v201 = v74;
    v190 = *v76;
    outlined copy of JSON(v77, v78, v79);
    outlined copy of JSON(v200, v201, 3);
    v191 = v200;
    v192 = v201;
    v193 = 3;
    goto LABEL_223;
  }

  v89 = *(v73 + 16);
  if (v89 != *(v77 + 16))
  {
    v207 = v73;
    v208 = v74;
    v209 = *v76;
    outlined copy of JSON(v77, v78, 3);
    outlined copy of JSON(v207, v208, 3);
    outlined consume of JSON(v207, v208, 3);
    v198 = v209;
    v199 = v78;
    goto LABEL_243;
  }

  if (!v89)
  {
    v101 = v73;
    v102 = v74;
    v103 = *v76;
    outlined copy of JSON(v77, v78, 3);
    outlined copy of JSON(v101, v102, 3);
    v104 = v101;
    v55 = v263;
    outlined consume of JSON(v104, v102, 3);
    v98 = v103;
    v99 = v78;
    v100 = 3;
    goto LABEL_131;
  }

  v246 = v74;
  if (v73 == v77)
  {
    v90 = v73;
    outlined copy of JSON(v73, v78, 3);
    outlined copy of JSON(v90, v246, 3);
    outlined consume of JSON(v90, v246, 3);
    v91 = v90;
    v92 = v78;
LABEL_115:
    v93 = 3;
    goto LABEL_123;
  }

  v254 = v77 + 32;
  v255 = v73 + 32;
  v105 = *v76;
  outlined copy of JSON(v77, v78, 3);
  outlined copy of JSON(v267, v246, 3);
  v260 = v105;
  v240 = v78;
  outlined copy of JSON(v105, v78, 3);
  result = outlined copy of JSON(v267, v246, 3);
  v106 = v267;
  v107 = 0;
  v253 = v89;
  while (2)
  {
    if (v107 >= *(v106 + 16))
    {
      goto LABEL_256;
    }

    if (v107 >= *(v260 + 16))
    {
      goto LABEL_257;
    }

    v112 = v255 + 24 * v107;
    v114 = *v112;
    v113 = *(v112 + 8);
    v115 = *(v112 + 16);
    v116 = v254 + 24 * v107;
    v118 = *v116;
    v117 = *(v116 + 8);
    v119 = *(v116 + 16);
    v262 = v107;
    if (v115 > 2)
    {
      if (v115 != 3)
      {
        if (v115 == 4)
        {
          v120 = *v116;
          v121 = v114;
          v122 = *(v116 + 8);
          v123 = v113;
          if (v119 != 4)
          {
            v223 = *v116;
            outlined copy of JSON(*&v120, v122, v119);
            outlined copy of JSON(v121, v123, 4);
            outlined consume of JSON(v121, v123, 4);
            v224 = *&v223;
            goto LABEL_233;
          }

          v124 = *v116;
          outlined copy of JSON(*&v120, v122, 4);
          outlined copy of JSON(v121, v123, 4);
          outlined copy of JSON(*&v124, v122, 4);
          outlined copy of JSON(v121, v123, 4);
          v257 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v121, *&v124);
          outlined consume of JSON(v121, v123, 4);
          outlined consume of JSON(*&v124, v122, 4);
          outlined consume of JSON(*&v124, v122, 4);
          v125 = v121;
          v126 = v123;
          v127 = 4;
          goto LABEL_162;
        }

        if (v119 != 5 || (v117 | v118) != 0)
        {
          v225 = v114;
          v122 = *(v116 + 8);
          v226 = v113;
          outlined copy of JSON(v118, v122, v119);
          v227 = v225;
          v228 = v226;
          v229 = 5;
          goto LABEL_232;
        }

        outlined consume of JSON(v114, v113, 5);
        v109 = 0;
        v110 = 0;
        v111 = 5;
LABEL_134:
        result = outlined consume of JSON(v109, v110, v111);
        goto LABEL_135;
      }

      if (v119 != 3)
      {
        v217 = v114;
        v122 = *(v116 + 8);
        v218 = v113;
        outlined copy of JSON(v118, v122, v119);
        outlined copy of JSON(v217, v218, 3);
        v227 = v217;
        v228 = v218;
        v229 = 3;
        goto LABEL_232;
      }

      v128 = *(v114 + 16);
      if (v128 != *(v118 + 16))
      {
        v234 = v114;
        v235 = v117;
        v236 = v113;
        outlined copy of JSON(v118, v235, 3);
        outlined copy of JSON(v234, v236, 3);
        outlined consume of JSON(v234, v236, 3);
        v224 = v118;
        v232 = v235;
LABEL_240:
        v233 = 3;
        goto LABEL_241;
      }

      v248 = *(v114 + 16);
      if (!v128)
      {
        v138 = v118;
        v139 = v118;
        v140 = v114;
        v131 = v117;
        v141 = v113;
        outlined copy of JSON(v138, v131, 3);
        outlined copy of JSON(v140, v141, 3);
        outlined consume of JSON(v140, v141, 3);
        v109 = v139;
        goto LABEL_171;
      }

      v241 = v113;
      if (v114 == v118)
      {
        outlined copy of JSON(v114, v117, 3);
        v129 = v114;
        v130 = v114;
        v131 = v117;
        outlined copy of JSON(v129, v241, 3);
        outlined consume of JSON(v130, v241, 3);
        v109 = v130;
LABEL_171:
        v110 = v131;
        v111 = 3;
        goto LABEL_134;
      }

      outlined copy of JSON(v118, v117, 3);
      v249 = v114;
      outlined copy of JSON(v114, v241, 3);
      v238 = v117;
      outlined copy of JSON(v118, v117, 3);
      result = outlined copy of JSON(v114, v241, 3);
      v142 = 0;
      v143 = (v118 + 48);
      v144 = (v249 + 48);
      v247 = v118;
      while (1)
      {
        if (v142 >= *(v249 + 16))
        {
          goto LABEL_258;
        }

        if (v142 >= *(v118 + 16))
        {
          goto LABEL_259;
        }

        v151 = *(v144 - 2);
        v150 = *(v144 - 1);
        v152 = *v144;
        v153 = *(v143 - 2);
        v154 = *(v143 - 1);
        v155 = *v143;
        v256 = v143;
        v258 = v144;
        if (v152 > 2)
        {
          if (v152 == 3)
          {
            v252 = *(v144 - 1);
            if (v155 != 3)
            {
              v213 = *(v143 - 2);
              v214 = *v143;
              v216 = *(v143 - 1);
              outlined copy of JSON(v153, v154, v155);
              v210 = v151;
              v211 = v252;
              v212 = v252;
              v215 = 3;
              goto LABEL_238;
            }

            v163 = *(v143 - 2);
            v164 = v154;
            v244 = v154;
            outlined copy of JSON(v153, v154, 3);
            outlined copy of JSON(v151, v252, 3);
            outlined copy of JSON(v163, v164, 3);
            outlined copy of JSON(v151, v252, 3);
            v239 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4JSONO_Tt1g5(v151, v163);
            outlined consume of JSON(v151, v252, 3);
            outlined consume of JSON(v163, v244, 3);
            outlined consume of JSON(v163, v244, 3);
            v147 = v151;
            v148 = v252;
            v149 = 3;
            goto LABEL_174;
          }

          if (v152 == 4)
          {
            v251 = *(v144 - 1);
            if (v155 != 4)
            {
              v213 = *(v143 - 2);
              v214 = *v143;
              v216 = *(v143 - 1);
              outlined copy of JSON(v153, v154, v155);
              v210 = v151;
              v211 = v251;
              v212 = v251;
              v215 = 4;
              goto LABEL_238;
            }

            v159 = *(v143 - 2);
            v160 = *(v143 - 1);
            v243 = v154;
            outlined copy of JSON(v153, v154, 4);
            outlined copy of JSON(v151, v251, 4);
            outlined copy of JSON(v159, v160, 4);
            outlined copy of JSON(v151, v251, 4);
            v239 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v151, v159);
            outlined consume of JSON(v151, v251, 4);
            outlined consume of JSON(v159, v243, 4);
            outlined consume of JSON(v159, v243, 4);
            v147 = v151;
            v148 = v251;
            v149 = 4;
LABEL_174:
            result = outlined consume of JSON(v147, v148, v149);
            if ((v239 & 1) == 0)
            {
              goto LABEL_239;
            }

            goto LABEL_175;
          }

          if (v155 != 5 || v154 | v153)
          {
LABEL_226:
            v210 = *(v143 - 2);
            v211 = *(v144 - 1);
            v212 = v154;
            v213 = v153;
            v214 = v155;
            v215 = v155;
            v216 = v154;
LABEL_238:
            outlined copy of JSON(v210, v212, v215);
            outlined consume of JSON(v151, v211, v152);
            outlined consume of JSON(v213, v216, v214);
LABEL_239:
            outlined consume of JSON(v249, v241, 3);
            outlined consume of JSON(v247, v238, 3);
            outlined consume of JSON(v247, v238, 3);
            v224 = v249;
            v232 = v241;
            goto LABEL_240;
          }

          outlined consume of JSON(v151, v150, 5);
          result = outlined consume of JSON(0, 0, 5);
        }

        else if (*v144)
        {
          if (v152 != 1)
          {
            if (v155 != 2)
            {
              v211 = *(v144 - 1);
              v213 = v153;
              v214 = v155;
              v216 = v154;
              outlined copy of JSON(v153, v154, v155);
              v210 = v151;
              v212 = v211;
              v215 = 2;
              goto LABEL_238;
            }

            if (v151 == v153 && v150 == v154)
            {
              v165 = *(v144 - 1);
              outlined copy of JSON(v151, v150, 2);
              outlined copy of JSON(v151, v165, 2);
              outlined consume of JSON(v151, v165, 2);
              result = outlined consume of JSON(v151, v165, 2);
              goto LABEL_175;
            }

            v250 = *(v144 - 1);
            v145 = *(v143 - 2);
            v146 = *(v143 - 1);
            v242 = v154;
            v239 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined copy of JSON(v145, v146, 2);
            outlined copy of JSON(v151, v250, 2);
            outlined consume of JSON(v151, v250, 2);
            v147 = v145;
            v148 = v242;
            v149 = 2;
            goto LABEL_174;
          }

          if (v155 != 1)
          {
            goto LABEL_226;
          }

          v156 = *(v144 - 2);
          v157 = *(v143 - 2);
          v158 = *(v143 - 1);
          outlined consume of JSON(v156, v150, 1);
          result = outlined consume of JSON(v157, v158, 1);
          if (*&v156 != *&v157)
          {
            goto LABEL_239;
          }
        }

        else
        {
          if (*v143)
          {
            goto LABEL_226;
          }

          v161 = *(v143 - 2);
          v162 = *(v143 - 1);
          outlined consume of JSON(v151, v150, 0);
          result = outlined consume of JSON(v161, v162, 0);
          if ((v161 ^ v151))
          {
            goto LABEL_239;
          }
        }

LABEL_175:
        ++v142;
        v143 = v256 + 24;
        v144 = v258 + 24;
        v118 = v247;
        if (v248 == v142)
        {
          outlined consume of JSON(v249, v241, 3);
          outlined consume of JSON(v247, v238, 3);
          outlined consume of JSON(v247, v238, 3);
          v109 = v249;
          v110 = v241;
          v111 = 3;
          goto LABEL_134;
        }
      }
    }

    if (!v115)
    {
      if (*(v116 + 16))
      {
        v219 = v114;
        v122 = *(v116 + 8);
        v220 = v113;
        outlined copy of JSON(v118, v122, v119);
        v227 = v219;
        v228 = v220;
        v229 = 0;
        goto LABEL_232;
      }

      outlined consume of JSON(v114, v113, 0);
      result = outlined consume of JSON(v118, v117, 0);
      if ((v118 ^ v114))
      {
        goto LABEL_242;
      }

      goto LABEL_135;
    }

    if (v115 == 1)
    {
      if (v119 != 1)
      {
        v221 = v114;
        v122 = *(v116 + 8);
        v222 = v113;
        outlined copy of JSON(v118, v122, v119);
        v227 = v221;
        v228 = v222;
        v229 = 1;
        goto LABEL_232;
      }

      outlined consume of JSON(v114, v113, 1);
      result = outlined consume of JSON(v118, v117, 1);
      if (*&v114 != *&v118)
      {
        goto LABEL_242;
      }

LABEL_135:
      v107 = v262 + 1;
      v106 = v267;
      if (v262 + 1 == v253)
      {
        outlined consume of JSON(v267, v246, 3);
        outlined consume of JSON(v260, v240, 3);
        outlined consume of JSON(v260, v240, 3);
        v91 = v267;
        v92 = v246;
        goto LABEL_115;
      }

      continue;
    }

    break;
  }

  if (v119 == 2)
  {
    if (v114 != v118 || v113 != v117)
    {
      v133 = *v116;
      v134 = v114;
      v135 = *(v116 + 8);
      v136 = v113;
      v257 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of JSON(*&v133, v135, 2);
      outlined copy of JSON(v134, v136, 2);
      outlined consume of JSON(v134, v136, 2);
      v125 = *&v133;
      v126 = v135;
      v127 = 2;
LABEL_162:
      result = outlined consume of JSON(v125, v126, v127);
      if ((v257 & 1) == 0)
      {
        goto LABEL_242;
      }

      goto LABEL_135;
    }

    v108 = v113;
    outlined copy of JSON(v114, v113, 2);
    outlined copy of JSON(v114, v108, 2);
    outlined consume of JSON(v114, v108, 2);
    v109 = v114;
    v110 = v108;
    v111 = 2;
    goto LABEL_134;
  }

  v230 = v114;
  v122 = *(v116 + 8);
  v231 = v113;
  outlined copy of JSON(v118, v122, v119);
  outlined copy of JSON(v230, v231, 2);
  v227 = v230;
  v228 = v231;
  v229 = 2;
LABEL_232:
  outlined consume of JSON(v227, v228, v229);
  v224 = v118;
LABEL_233:
  v232 = v122;
  v233 = v119;
LABEL_241:
  outlined consume of JSON(v224, v232, v233);
LABEL_242:
  outlined consume of JSON(v267, v246, 3);
  outlined consume of JSON(v260, v240, 3);
  outlined consume of JSON(v260, v240, 3);
  v198 = v267;
  v199 = v246;
LABEL_243:
  v206 = 3;
LABEL_244:
  outlined consume of JSON(v198, v199, v206);
LABEL_245:
  outlined consume of JSON(v274, v275, 3);
  outlined consume of JSON(v268, v245, 3);
  outlined consume of JSON(v268, v245, 3);
  outlined consume of JSON(v274, v275, 3);
  v4 = v279;
LABEL_246:
  v25 = v270;
LABEL_247:
  v237 = v4;
  LOBYTE(v4) = 3;
  v5 = v272;
  outlined consume of JSON(v237, v272, 3);
  outlined consume of JSON(v25, v2, 3);
  LOBYTE(v26) = v259;
LABEL_248:
  outlined consume of JSON(v25, v2, v26);
LABEL_249:
  outlined consume of JSON(v279, v5, v4);
  return 0;
}