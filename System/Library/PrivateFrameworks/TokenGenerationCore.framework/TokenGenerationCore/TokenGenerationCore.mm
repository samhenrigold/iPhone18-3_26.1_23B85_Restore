uint64_t type metadata instantiation function for Overridable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void Overridable<A>.init(key:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

{
  Overridable<A>.init(key:)(a1, a2, partial apply for closure #1 in Overridable<A>.init(key:), a3);
}

uint64_t sub_1A8E86D38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void Overridable<A>.init(key:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = objc_allocWithZone(MEMORY[0x1E695E000]);

  v11 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v12 = [v10 initWithSuiteName_];

  if (v12)
  {
    *a5 = v12;
    a5[1] = a1;
    a5[2] = a2;
    a5[3] = a4;
    a5[4] = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for ModelConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t protocol witness for TokenIDToTextConverterProtocol.textsForTokenID(_:isStopTokenID:) in conformance TokenIDToTextConverter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t TokenIDToTextConverterProtocol.textsForTokenIDs(_:stopTokenIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  v18 = a1 + 32;
  v9 = (a2 + 32);
  while (1)
  {
    if (v7 == v8)
    {
      return v20;
    }

    v10 = *(v18 + 8 * v7++);
    v11 = *(a2 + 16);
    v12 = v9;
    do
    {
      v13 = v11;
      if (v11-- == 0)
      {
        break;
      }

      v15 = *v12++;
    }

    while (v15 != v10);
    v16 = (*(a4 + 24))(v10, v13 != 0, a3, a4);
    if (v4)
    {
      break;
    }

    specialized Array.append<A>(contentsOf:)(v16);
    if (v13)
    {
      return v20;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *LegacyTokenIDToTextConverterImpl.textsForTokenID(_:isStopTokenID:)(int64_t a1, char a2)
{
  v5 = v2;
  v7 = a1;
  v8 = LegacyTokenIDToTextConverterImpl.shouldBufferTokenID(tokenID:isStopTokenID:)(a1, a2);
  if (v3)
  {
    return v4;
  }

  object = *(v2 + 56);
  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 56) = object;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v12 = *(object + 16);
      v11 = *(object + 24);
      if (v12 >= v11 >> 1)
      {
        object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, object);
      }

      *(object + 16) = v12 + 1;
      *(object + 8 * v12 + 32) = v7;
      *(v5 + 56) = object;
      return MEMORY[0x1E69E7CC0];
    }

LABEL_53:
    object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
    *(v5 + 56) = object;
    goto LABEL_4;
  }

  if (!*(object + 16))
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      return v4;
    }

    goto LABEL_28;
  }

  v115._rawValue = *(v2 + 16);

  v13 = object;
  v4 = 0;
  specialized Array.append<A>(contentsOf:)(v13);
  v14 = TokenizerRunner.detokenize(_:)(v115);
  countAndFlagsBits = v14._countAndFlagsBits;
  if (v15)
  {
    goto LABEL_30;
  }

  object = v14._object;
  v103 = a2;
  v105 = v7;
  *(v2 + 16) = v115;

  v16 = *(v2 + 32);
  v19 = *(v16 + 64);
  v18 = v16 + 64;
  v17 = v19;
  v20 = 1 << *(*(v2 + 32) + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v7 = (v20 + 63) >> 6;
  v107 = *(v2 + 32);

  v23 = 0;
  if (v22)
  {
    while (1)
    {
      v24 = v23;
LABEL_17:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = (v24 << 10) | (16 * v25);
      v27 = *(v107 + 48) + v26;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = (*(v107 + 56) + v26);
      v31 = *v30;
      v32 = v30[1];
      v115._rawValue = countAndFlagsBits;
      v116 = object;
      v113._rawValue = v28;
      v114 = v29;
      v109 = v31;
      v110 = v32;
      lazy protocol witness table accessor for type String and conformance String();

      countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v34 = v33;

      object = v34;
      if (!v22)
      {
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
LABEL_13:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v24 >= v7)
    {
      break;
    }

    v22 = *(v18 + 8 * v24);
    ++v23;
    if (v22)
    {
      v23 = v24;
      goto LABEL_17;
    }
  }

  swift_beginAccess();

  v35 = String.count.getter();

  v36 = specialized Collection.dropFirst(_:)(v35, countAndFlagsBits, object);
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = MEMORY[0x1AC57C040](v36, v38, v40, v42);
  v45 = v44;

  swift_beginAccess();
  MEMORY[0x1AC57C120](v43, v45);
  swift_endAccess();
  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.tokenization);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    countAndFlagsBits = swift_slowAlloc();
    v113._rawValue = countAndFlagsBits;
    *v49 = 136643075;

    v51 = MEMORY[0x1AC57C2C0](v50, MEMORY[0x1E69E6530]);
    v53 = v52;

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v113);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2085;
    *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v113);
    _os_log_impl(&dword_1A8E85000, v47, v48, "Detokenized buffered token ids %{sensitive}s to %{sensitive}s", v49, 0x16u);
    v55 = countAndFlagsBits;
    swift_arrayDestroy();
    MEMORY[0x1AC57DBF0](v55, -1, -1);
    MEMORY[0x1AC57DBF0](v49, -1, -1);
  }

  v56 = MEMORY[0x1E69E7CC0];
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v58 = *(v4 + 2);
  v57 = *(v4 + 3);
  if (v58 >= v57 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v4);
  }

  *(v4 + 2) = v58 + 1;
  v59 = &v4[16 * v58];
  *(v59 + 4) = v43;
  *(v59 + 5) = v45;
  *(v5 + 56) = v56;

  v7 = v105;
  if ((v103 & 1) == 0)
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A8FC9400;
    *(inited + 32) = v7;
    v113._rawValue = *(v5 + 16);

    specialized Array.append<A>(contentsOf:)(inited);
    rawValue = v113._rawValue;
    v62 = TokenizerRunner.detokenize(_:)(v113);
    countAndFlagsBits = v62._countAndFlagsBits;
    if (!v63)
    {
      v64 = v62._object;
      v104 = v4;
      v106 = v7;
      *(v5 + 16) = rawValue;

      v65 = *(v5 + 32);
      v68 = *(v65 + 64);
      v67 = v65 + 64;
      v66 = v68;
      v69 = 1 << *(*(v5 + 32) + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      object = v70 & v66;
      v7 = (v69 + 63) >> 6;
      v108 = *(v5 + 32);

      for (i = 0; object; v64 = v82)
      {
        v72 = i;
LABEL_39:
        v73 = __clz(__rbit64(object));
        object &= object - 1;
        v74 = (v72 << 10) | (16 * v73);
        v75 = (*(v108 + 48) + v74);
        v76 = *v75;
        v77 = v75[1];
        v78 = (*(v108 + 56) + v74);
        v79 = *v78;
        v80 = v78[1];
        v113._rawValue = countAndFlagsBits;
        v114 = v64;
        v109 = v76;
        v110 = v77;
        v111 = v79;
        v112 = v80;
        lazy protocol witness table accessor for type String and conformance String();

        countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v82 = v81;
      }

      while (1)
      {
        v72 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v72 >= v7)
        {

          swift_beginAccess();

          v83 = String.count.getter();

          v84 = specialized Collection.dropFirst(_:)(v83, countAndFlagsBits, v64);
          v86 = v85;
          v88 = v87;
          v90 = v89;

          v91 = MEMORY[0x1AC57C040](v84, v86, v88, v90);
          v93 = v92;

          swift_beginAccess();
          MEMORY[0x1AC57C120](v91, v93);
          swift_endAccess();
          if (one-time initialization token for tokenization != -1)
          {
            swift_once();
          }

          v94 = type metadata accessor for Logger();
          __swift_project_value_buffer(v94, static Log.tokenization);

          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.debug.getter();

          v4 = v104;
          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v109 = v98;
            *v97 = 134545923;
            *(v97 + 4) = v106;
            *(v97 + 12) = 2085;
            *(v97 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v109);
            _os_log_impl(&dword_1A8E85000, v95, v96, "Detokenized %{sensitive}ld to %{sensitive}s", v97, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v98);
            MEMORY[0x1AC57DBF0](v98, -1, -1);
            MEMORY[0x1AC57DBF0](v97, -1, -1);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v104 + 2) + 1, 1, v104);
          }

          v100 = *(v4 + 2);
          v99 = *(v4 + 3);
          if (v100 >= v99 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v100 + 1, 1, v4);
          }

          *(v4 + 2) = v100 + 1;
          v101 = &v4[16 * v100];
          *(v101 + 4) = v91;
          *(v101 + 5) = v93;
          return v4;
        }

        object = *(v67 + 8 * v72);
        ++i;
        if (object)
        {
          i = v72;
          goto LABEL_39;
        }
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_30:
  }

  return v4;
}

uint64_t LegacyTokenIDToTextConverterImpl.shouldBufferTokenID(tokenID:isStopTokenID:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - v11;
  if (a2)
  {
    v13 = 0;
    return v13 & 1;
  }

  if (*(v2 + 64))
  {
LABEL_4:
    v13 = 1;
    return v13 & 1;
  }

  v15 = v10;
  v36 = v9;
  v16 = *(v2 + 24);
  v17 = v16[5];
  v18 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v17);
  if (((*(v18 + 64))(a1, v17, v18) & 1) == 0)
  {
    v22 = v16[5];
    v23 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v22);
    v35[6] = (*(v23 + 16))(a1, v22, v23);
    v35[7] = v24;
    v25 = String.init<A>(_:)();
    v27 = specialized BidirectionalCollection.last.getter(v25, v26);

    if ((v27 & 0x100000000) == 0)
    {
      Unicode.Scalar.properties.getter();
      v28 = Unicode.Scalar.Properties.isEmoji.getter();
      v29 = *(v15 + 8);
      v29(v12, v36);
      if ((v28 & 1) == 0)
      {
        Unicode.Scalar.properties.getter();
        v30 = Unicode.Scalar.Properties.isEmojiModifier.getter();
        v29(v7, v36);
        if ((v30 & 1) == 0)
        {
          Unicode.Scalar.properties.getter();
          v31 = Unicode.Scalar.Properties.isEmojiPresentation.getter();
          v29(v7, v36);
          if ((v31 & 1) == 0)
          {
            Unicode.Scalar.properties.getter();
            v32 = Unicode.Scalar.Properties.isEmojiModifierBase.getter();
            v29(v7, v36);
            if ((v32 & 1) == 0)
            {
              Unicode.Scalar.properties.getter();
              v33 = Unicode.Scalar.Properties.isJoinControl.getter();
              v29(v7, v36);
              if ((v33 & 1) == 0)
              {
                Unicode.Scalar.properties.getter();
                v13 = Unicode.Scalar.Properties.isVariationSelector.getter();
                v29(v7, v36);
                return v13 & 1;
              }
            }
          }
        }
      }
    }

    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 32) = a1;
  v13 = v16;
  v20 = TokenizerRunner.detokenize(_:)(inited);
  if (v21)
  {
    swift_setDeallocating();
  }

  else
  {
    swift_setDeallocating();
    v34 = specialized Collection.first.getter(v20._countAndFlagsBits, v20._object);

    v13 = (v34 & 0x100) != 0 || (v34 & 0x80) != 0;
  }

  return v13 & 1;
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO4RuleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16VGMd, &_ss23_ContiguousArrayStorageCys7Float16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H6SymbolOGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC4ItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore17RecognizerElementOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17RecognizerElementOGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallV8FunctionVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallV8FunctionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore21TokenizedPromptModuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore21TokenizedPromptModuleVGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore12PromptModuleOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore12PromptModuleOGMR);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV4TurnV7SegmentOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV14ToolCallResultVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore14ToolCallParserV13FunctionDeltaVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14ToolCallParserV13FunctionDeltaVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

Swift::tuple_tokens_OpaquePointer_stopSequence_String_optional __swiftcall StopSequenceMonitor.handleOutputTokens(_:)(Swift::OpaquePointer a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v68 - v5;
  v84 = v1[1];
  v71 = v84;

  rawValue = a1._rawValue;
  specialized Array.append<A>(contentsOf:)(v6);
  v7 = 0xE000000000000000;
  v82 = 0;
  v83 = 0xE000000000000000;
  v8 = *(v84 + 16);
  v75 = v84;
  v73 = v1 + 1;
  if (v8)
  {
    v9 = (v84 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      MEMORY[0x1AC57C120](v10, v11);

      v9 += 2;
      --v8;
    }

    while (v8);
    v7 = v83;
    v77 = v82;
  }

  else
  {
    v77 = 0;
  }

  v12 = *v1;
  v13 = *(*v1 + 56);
  v74 = *v1 + 56;
  v14 = v12[32];
  v72 = 1;
  v15 = 1 << v14;
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v78 = v12;

  v68 = 0;
  v19 = 0;
  v69 = 2;
LABEL_9:
  if (v17)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      if (v72)
      {

        v31 = 0;
        v8 = 0;
        *v73 = MEMORY[0x1E69E7CC0];
        v32 = v75;
      }

      else
      {

        specialized Array.append<A>(contentsOf:)(v33);
        v31 = 0;
        v8 = 0;
        v32 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_38;
    }

    v17 = *(v74 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
LABEL_14:
      v21 = v77;
      v22 = *(v78 + 6) + ((v19 << 10) | (16 * __clz(__rbit64(v17))));
      v2 = *v22;
      v23 = *(v22 + 8);
      v81[0] = v77;
      v81[1] = v7;
      v79 = v2;
      v80 = v23;
      v24 = type metadata accessor for Locale();
      v8 = v76;
      (*(*(v24 - 8) + 56))(v76, 1, 1, v24);
      lazy protocol witness table accessor for type String and conformance String();

      v25 = StringProtocol.range<A>(of:options:range:locale:)();
      v27 = v26;
      outlined destroy of Locale?(v8);
      if ((v27 & 1) == 0)
      {
        v76 = v25;
        v74 = v7;

        outlined consume of StopSequenceMonitor.StopSequenceMatch(v68, 0, 0, v69);
        v34 = one-time initialization token for stopSequenceMonitor;

        v8 = v23;
        if (v34 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_48;
      }

      v17 &= v17 - 1;
      v28 = specialized static StopSequenceMonitor.endsWithPrefix(_:stopSequence:)(v21, v7, v2, v23);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        outlined consume of StopSequenceMonitor.StopSequenceMatch(v68, 0, 0, v69);
        v72 = 0;
        v69 = 1;
        v68 = v28;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_21:
  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Log.stopSequenceMonitor);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v75;
  rawValue = v2;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v81[0] = v41;
    *v40 = 136642819;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(rawValue, v8, v81);
    _os_log_impl(&dword_1A8E85000, v36, v37, "Found stop sequence in output:%{sensitive}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1AC57DBF0](v41, -1, -1);
    MEMORY[0x1AC57DBF0](v40, -1, -1);
  }

  v42 = v76;
  if (*(v39 + 2))
  {
    v43 = *(v39 + 2);
    v44 = 0;
    v72 = v76 >> 14;
    v2 = v39 + 40;
    v78 = MEMORY[0x1E69E7CC0];
    v45 = 15;
    while (1)
    {
      if (v44 >= *(v39 + 2))
      {
        goto LABEL_47;
      }

      v47 = *(v2 - 1);
      v46 = *v2;

      String.count.getter();
      v48 = String.index(_:offsetBy:limitedBy:)();
      if ((v49 & 1) == 0)
      {
        v42 = v48;
      }

      if (v42 >> 14 >= v72)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
      }

      v51 = *(v78 + 2);
      v50 = *(v78 + 3);
      if (v51 >= v50 >> 1)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v78);
      }

      ++v44;
      v52 = v78;
      *(v78 + 2) = v51 + 1;
      v53 = &v52[16 * v51];
      *(v53 + 4) = v47;
      *(v53 + 5) = v46;
      v2 += 2;
      v45 = v42;
      v39 = v75;
      v42 = v76;
      if (v43 == v44)
      {
        goto LABEL_36;
      }
    }

    if (v42 >> 14 < v45 >> 14)
    {
      __break(1u);
    }

    else
    {
      v55 = String.subscript.getter();
      v57 = v56;
      v59 = v58;
      v61 = v60;

      if ((v55 ^ v57) < 0x4000)
      {

        v47 = v73;
        v42 = v76;
        goto LABEL_37;
      }

      v46 = MEMORY[0x1AC57C040](v55, v57, v59, v61);
      v42 = v62;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v73;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_43;
      }
    }

    v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
LABEL_43:
    v65 = *(v78 + 2);
    v64 = *(v78 + 3);
    if (v65 >= v64 >> 1)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v78);
    }

    v66 = v78;
    *(v78 + 2) = v65 + 1;
    v67 = &v66[16 * v65];
    *(v67 + 4) = v46;
    *(v67 + 5) = v42;
    v42 = v76;
    goto LABEL_37;
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_36:

  v47 = v73;
LABEL_37:
  outlined consume of StopSequenceMonitor.StopSequenceMatch(v42, rawValue, v8, 0);

  v31 = rawValue;
  *v47 = MEMORY[0x1E69E7CC0];
  v32 = v78;
LABEL_38:
  v54 = v8;
  result.stopSequence.value._object = v54;
  result.stopSequence.value._countAndFlagsBits = v31;
  result.tokens._rawValue = v32;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration0D0VGMR, &type metadata for Token);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR, &type metadata for Regex2BNF.Choice);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR, &type metadata for Regex2BNF.Symbol);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR, &type metadata for Choice);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR, MEMORY[0x1E69E5EE0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC0H4RuleVGMR, &type metadata for EarleyRecognizer.RecognizerRule);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR, &type metadata for EarleyRecognizer.State);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore17NonTerminalSymbolVGMR, &type metadata for NonTerminalSymbol);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4JSONOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4JSONOGMR, &type metadata for JSON);
}

uint64_t getEnumTagSinglePayload for Prompt.Rendering(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for Prompt.Rendering(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ModelConfiguration.init(modelConfigurationData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for _LoadedModelConfiguration();
  v7 = static _LoadedModelConfiguration.create(modelConfigurationData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t static _LoadedModelConfiguration.create(modelConfigurationData:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    return v4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration()
{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration)
  {
    type metadata accessor for _LoadedModelConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance _LoadedModelConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sentencepiece::SentencePieceProcessor::SentencePieceProcessor(sentencepiece::SentencePieceProcessor *this)
{
  *this = &unk_1F1CABBD8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

uint64_t TokenizerRunner.init(tokenizerPath:substitutionTextForInputTokenText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v5 + 96) = 1;
  v9 = objc_allocWithZone(TokenizerRunnerObjC);
  v10 = @nonobjc TokenizerRunnerObjC.init(tokenizerPath:)(a1, a2);
  if (v4)
  {

    type metadata accessor for TokenizerRunner();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v10;
    v14 = type metadata accessor for TokenizerRunnerObjC();
    v15 = &protocol witness table for TokenizerRunnerObjC;
    *&v13 = v11;
    outlined init with take of PromptComponentValueConvertible(&v13, v5 + 16);
    v14 = &type metadata for GenerationOverrides;
    v15 = &protocol witness table for GenerationOverrides;
    *&v13 = swift_allocObject();
    GenerationOverrides.init()((v13 + 16));
    outlined init with take of PromptComponentValueConvertible(&v13, v5 + 56);
    *(v5 + 104) = a3;
  }

  return v5;
}

uint64_t outlined init with take of PromptComponentValueConvertible(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1A8E88B88()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

id @nonobjc TokenizerRunnerObjC.init(tokenizerPath:)(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1AC57BF60](a1);

  v8[0] = 0;
  v4 = [v2 initWithTokenizerPath:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t _LoadedModelConfiguration.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  _LoadedModelConfiguration.init(from:)(a1);
  return v2;
}

void *_LoadedModelConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore25_LoadedModelConfigurationC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore25_LoadedModelConfigurationC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  v9 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    outlined consume of (start: String, end: String)?(*(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64));
    type metadata accessor for _LoadedModelConfiguration();
    swift_deallocPartialClassInstance();
LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(v45);
    return v3;
  }

  v44 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v47 = 0;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = v46;
  if (!v46)
  {
    v33 = 0;
LABEL_17:
    *(v3 + 16) = v33;
    swift_beginAccess();
    v34 = *(v3 + 40);
    v35 = *(v3 + 48);
    v36 = *(v3 + 56);
    v37 = *(v3 + 64);
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    outlined consume of (start: String, end: String)?(v34, v35, v36, v37);
    v47 = 1;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v39;
    (*(v44 + 8))(v8, v5);
    *(v3 + 24) = v38;
    *(v3 + 32) = v40 & 1;
    goto LABEL_19;
  }

  v41 = v8;
  v42 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore32ModelConfigurationPromptTemplateVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore32ModelConfigurationPromptTemplateVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v12 = result;
  v13 = 0;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v10 + 64);
  v17 = (v14 + 63) >> 6;
  v43 = result + 8;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v21 = v18 | (v13 << 6);
      v22 = 16 * v21;
      v23 = (*(v10 + 48) + 16 * v21);
      v24 = *v23;
      result = v23[1];
      v25 = (*(v10 + 56) + 16 * v21);
      v26 = *v25;
      v27 = v25[1];
      *(v43 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v28 = (v12[6] + 16 * v21);
      *v28 = v24;
      v28[1] = result;
      v29 = (v12[7] + v22);
      *v29 = v26;
      v29[1] = v27;
      v30 = v12[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v12[2] = v32;

      if (!v16)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v33 = v12;
        v8 = v41;
        v5 = v42;
        goto LABEL_17;
      }

      v20 = *(v10 + 64 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _LoadedModelConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0x655474706D6F7270;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void outlined consume of (start: String, end: String)?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunner.detokenize(_:)(Swift::OpaquePointer a1)
{
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 32))(a1._rawValue, v4, v5);
  if (v2)
  {

    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.tokenization);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A8E85000, v7, v8, "Failed to detokenize the tokenIDs associated with prompt", v9, 2u);
      MEMORY[0x1AC57DBF0](v9, -1, -1);
    }

    type metadata accessor for GenerationError(0);
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_0(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v10 = swift_willThrow();
  }

  else
  {
    v10 = String.init<A>(_:)();
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerObjC.detokenize(tokenIDs:)(Swift::OpaquePointer tokenIDs)
{
  v2 = v1;
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(tokenIDs._rawValue + 2);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (tokenIDs._rawValue + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = 0;
  v8 = [v1 detokenize:isa error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v11;
    v12 = v9;
  }

  else
  {
    v10 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v13 = v10;
  v14 = v2;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<int>::__append(this, __sz - v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sentencepiece::SentencePieceText::SentencePieceText(&v9, 0);
      (*(*a1 + 280))(a1, a2, &v9);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        std::string::operator=(a3, (v12[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sentencepiece::util::Status::Status(a4);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v9);
    }

    else
    {
      LODWORD(v9) = 13;
      v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
      MEMORY[0x1AC57D010](&v10, 458);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "detokenized", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
      v10 = *MEMORY[0x1E69E54E8];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v11 = MEMORY[0x1E69E5548] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      MEMORY[0x1AC57D130](&v14);
    }
  }
}

{
  (*(*a1 + 88))(a1);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    if (a3)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }

      sentencepiece::SentencePieceText::SentencePieceText(&v9, 0);
      (*(*a1 + 272))(a1, a2, &v9);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        std::string::operator=(a3, (v12[6].__locale_ & 0xFFFFFFFFFFFFFFFELL));
        sentencepiece::util::Status::Status(a4);
      }

      sentencepiece::SentencePieceText::~SentencePieceText(&v9);
    }

    else
    {
      LODWORD(v9) = 13;
      v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
      MEMORY[0x1AC57D010](&v10, 447);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "detokenized", 11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "output container is null", 24);
      sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
      v10 = *MEMORY[0x1E69E54E8];
      *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v11 = MEMORY[0x1E69E5548] + 16;
      if (v13 < 0)
      {
        operator delete(v12[7].__locale_);
      }

      v11 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v12);
      std::ostream::~ostream();
      MEMORY[0x1AC57D130](&v14);
    }
  }
}

uint64_t sentencepiece::SentencePieceProcessor::Load(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sentencepiece::IsMMappableFile(a2))
  {
    absl::make_unique<sentencepiece::ModelProto>();
  }

  v7 = *(*a1 + 64);

  return v7(a1, a2, a3);
}

void sub_1A8E89EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<sentencepiece::ModelProto>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::IsMMappableFile(uint64_t a1)
{
  v4[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v2, a1, 12);
  if ((v3[*(v2[0] - 24) + 16] & 5) == 0)
  {
    std::istream::read();
  }

  v2[0] = *MEMORY[0x1E69E54C8];
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1AC57CF40](v3);
  std::istream::~istream();
  MEMORY[0x1AC57D130](v4);
  return 0;
}

void sub_1A8E8A03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::ifstream::~ifstream(&a10, MEMORY[0x1E69E54C8]);
  MEMORY[0x1AC57D130](&a63);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v6 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x1AC57CF30](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1A8E8A1F8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1AC57D130](v1);
  _Unwind_Resume(a1);
}

void sub_1A8E8A358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1A8E8A3B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1A8E8A530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void sentencepiece::Mmap<char>::open(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, sentencepiece::util::Status *a4@<X8>)
{
  sentencepiece::Mmap<char>::close(a1);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v9 = open(p_p, 0, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
    v10 = v9;
    *(a1 + 24) = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    else if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 13;
    v11 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 66);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(fd = ::open(filename.string().data(), mode)) >= 0", 50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

LABEL_66:
    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v13, &v13[v12], 34, 92);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
    __p.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
    *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v27);
    std::ostream::~ostream();
    MEMORY[0x1AC57D130](v30);
    return;
  }

  std::__fs::filesystem::path::parent_path[abi:ne200100](a2, &v32);
  std::__fs::filesystem::path::filename[abi:ne200100](a2, &v31);
  std::__fs::filesystem::__status(&v32, 0);
  if (__p.__r_.__value_.__s.__data_[0] != 2)
  {
    goto LABEL_30;
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v32.__pn_.__r_.__value_.__l.__data_, v32.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v32.__pn_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  v15 = open(v14, 0, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2]);
  v16 = v15;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    LODWORD(__p.__r_.__value_.__l.__data_) = 13;
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
    MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 59);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "std::filesystem::is_directory(dir) && (dirfd = ::open(dir.string().data(), mode)) >= 0", 86);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
    size = HIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]);
    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v32;
    }

    else
    {
      v18 = v32.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v32.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__pn_.__r_.__value_.__l.__size_;
    }

    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v18, v18 + size, 34, 92);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
    __p.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
    *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
    if (v29 < 0)
    {
      operator delete(v28);
    }

    goto LABEL_37;
  }

  if (v15 < 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v31;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  *(a1 + 24) = openat_authenticated_np(v16, v19, 0, -1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  close(v16);
  if ((*(a1 + 24) & 0x80000000) == 0)
  {
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__pn_.__r_.__value_.__l.__data_);
    }

LABEL_52:
    if (fstat(*(a1 + 24), &v33) < 0)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 13;
      v22 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "::fstat(fd, &st) >= 0", 21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "failed to get file size: ", 25);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    else
    {
      st_size = v33.st_size;
      *(a1 + 16) = v33.st_size;
      v21 = mmap(0, st_size, 1, 1, *(a1 + 24), 0);
      if (v21 != -1)
      {
        *(a1 + 8) = v21;
        close(*(a1 + 24));
        *(a1 + 24) = -1;
        sentencepiece::util::Status::Status(a4);
        return;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 13;
      v23 = std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
      MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 78);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(p = reinterpret_cast<char*>( ::mmap(0, length, PROT_READ, MAP_SHARED, fd, 0))) != MAP_FAILED", 93);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "mmap() failed: ", 15);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }
    }

    goto LABEL_66;
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 13;
  std::ostringstream::basic_ostringstream[abi:ne200100](&__p.__r_.__value_.__l.__size_);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/mmap.h", 62);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "(", 1);
  MEMORY[0x1AC57D010](&__p.__r_.__value_.__r.__words[1], 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, ") [", 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "fd >= 0", 7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "] ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, "open failed: ", 13);
  v24 = *(a2 + 23);
  if ((v24 & 0x80u) == 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 8);
  }

  std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__l.__size_, v25, &v25[v24], 34, 92);
  sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&__p, a4);
  __p.__r_.__value_.__l.__size_ = *MEMORY[0x1E69E54E8];
  *(&__p.__r_.__value_.__r.__words[1] + *(__p.__r_.__value_.__l.__size_ - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(v28);
  }

LABEL_37:
  __p.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  MEMORY[0x1AC57D130](v30);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1A8E8AF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 217) < 0)
  {
    operator delete(*(v14 - 240));
  }

  if (*(v14 - 193) < 0)
  {
    operator delete(*(v14 - 216));
  }

  _Unwind_Resume(exception_object);
}

void *sentencepiece::Mmap<char>::close(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 24) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

void sentencepiece::SentencePieceProcessor::LoadFromMemoryMappedFile(const char *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v15 = a2;
  v16 = a3;
  if (a3 <= 0x13)
  {
    LODWORD(v9) = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 1230);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(size) >= (sizeof(MMapHeader))", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
  }

  else if (*a2)
  {
    LODWORD(v9) = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 1233);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "header->sentinel == 0", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "This file format is not for mmap-based loading.", 47);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
  }

  else
  {
    sentencepiece::mmap_util::RemovePrefix(&v15, 0x14uLL, a4);
    if (*a4)
    {
      return;
    }

    sentencepiece::util::Status::~Status(a4);
    if (v16 >= *(a2 + 1))
    {
      operator new();
    }

    LODWORD(v9) = 13;
    v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 1238);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(blob.size()) >= (header->model_proto_size)", 43);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a4);
  }

  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  MEMORY[0x1AC57D130](&v14);
}

void sub_1A8E8BBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::mmap_util::RemovePrefix@<X0>(void *a1@<X0>, unint64_t a2@<X1>, sentencepiece::util::Status *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sentencepiece::util::Status::Status(a3);
  }

  else
  {
    LODWORD(v9) = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 287);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "string.size() >= size", 21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a3);
    v10 = *MEMORY[0x1E69E54E8];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v11 = MEMORY[0x1E69E5548] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x1AC57D130](&v14);
  }
}

void sentencepiece::util::Status::~Status(sentencepiece::util::Status *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](this, v1);
  }
}

void *sentencepiece::MemoryMappedModelProto::Init@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(a2, a3, &v12, a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v13, v14, &v11, a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sentencepiece::mmap_util::DecodePrefix<unsigned int>(v13, v14, &v10, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sentencepiece::mmap_util::DecodePrefix<int>(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sentencepiece::util::Status::~Status(a4);
                result = sentencepiece::mmap_util::RemovePrefix(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sentencepiece::util::Status::~Status(a4);
                  *(a1 + 56) = v13;
                  v8 = sentencepiece::mmap_util::RoundUp(*(a1 + 48), 4uLL);
                  result = sentencepiece::mmap_util::RemovePrefix(&v13, v8, a4);
                  if (!*a4)
                  {
                    sentencepiece::util::Status::~Status(a4);
                    *(a1 + 64) = v13;
                    result = sentencepiece::mmap_util::RemovePrefix(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sentencepiece::util::Status::~Status(a4);
                      *(a1 + 72) = v13;
                      result = sentencepiece::mmap_util::RemovePrefix(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        sentencepiece::util::Status::~Status(a4);
                        *(a1 + 80) = v13;
                        return sentencepiece::util::Status::Status(v9);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sentencepiece::mmap_util::DecodePrefix<unsigned int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 <= 3)
  {
    LODWORD(v7) = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x1AC57D010](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1AC57D130](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

void *sentencepiece::mmap_util::DecodePrefix<int>@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 <= 3)
  {
    LODWORD(v7) = 13;
    v6 = std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "(", 1);
    MEMORY[0x1AC57D010](&v8, 448);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "string.size() >= sizeof(T)", 26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "] ", 2);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v7, a4);
    v8 = *MEMORY[0x1E69E54E8];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v9 = MEMORY[0x1E69E5548] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x1AC57D130](&v12);
  }

  else
  {
    *a3 = *a1;

    return sentencepiece::util::Status::Status(a4);
  }
}

unint64_t sentencepiece::mmap_util::RoundUp(sentencepiece::mmap_util *this, unint64_t a2)
{
  if (!a2)
  {
    sentencepiece::mmap_util::RoundUp();
  }

  return (this + a2 - 1) / a2 * a2;
}

void sentencepiece::util::Status::operator=(uint64_t *a1, _DWORD **a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      std::default_delete<sentencepiece::util::Status::Rep>::operator()[abi:ne200100](a1, v3);
    }
  }
}

void sentencepiece::ModelFactory::Create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16[1] = a2;
  v16[2] = a3;
  v6 = (*(*a1 + 80))(a1);
  if (v6 == 1)
  {
    absl::make_unique<sentencepiece::bpe::Model,sentencepiece::MemoryMappedModelProto const&,std::string_view &>();
  }

  if (!v6)
  {
    absl::make_unique<sentencepiece::unigram::Model,sentencepiece::MemoryMappedModelProto const&,std::string_view &>();
  }

  if (sentencepiece::logging::GetMinLogLevel(v6) <= 2)
  {
    LOBYTE(v16[0]) = 0;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "model_factory.cc", 16);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "(", 1);
    v9 = MEMORY[0x1AC57D010](v8, 61);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "LOG(", 4);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ERROR", 5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") ", 2);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unknown model_type: ", 20);
    v15 = (*(*a1 + 80))(a1);
    MEMORY[0x1AC57D020](v14, v15);
    sentencepiece::error::Die::~Die(v16);
  }

  *a4 = 0;
}

void sub_1A8E8C724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::error::Die::~Die(va);
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::ModelInterface::ModelInterface(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *a1 = &unk_1F1CAB9B0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F1CABAD0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F1CABAD0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sentencepiece::util::Status::Status((a1 + 96));
  sentencepiece::ModelInterface::InitFromMMappedFile(a1, a3, a4, &v8);
  sentencepiece::util::Status::operator=((a1 + 96), &v8);
  sentencepiece::util::Status::~Status(&v8);
  return a1;
}

void sub_1A8E8C8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v5 + 96));
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v6);
  Darts::DoubleArrayImpl<void,void,int,void>::~DoubleArrayImpl(v4);
  v8 = *v3;
  *v3 = 0;
  if (v8)
  {
    std::default_delete<sentencepiece::normalizer::PrefixMatcher>::operator()[abi:ne200100](v3, v8);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::ModelInterface::InitFromMMappedFile(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, sentencepiece::util::Status *a4@<X8>)
{
  v7 = a2;
  v8 = a3;
  sentencepiece::mmap_util::DecodePrefix<int>(a2, a3, (a1 + 88), a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    sentencepiece::mmap_util::RemovePrefix(&v7, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      sentencepiece::mmap_util::DecodePrefix<int>(v7, v8, (a1 + 92), a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        sentencepiece::mmap_util::RemovePrefix(&v7, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          v6 = 0;
          sentencepiece::mmap_util::DecodePrefix<unsigned int>(v7, v8, &v6, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            sentencepiece::mmap_util::RemovePrefix(&v7, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              absl::make_unique<sentencepiece::normalizer::PrefixMatcher,std::string_view>();
            }
          }
        }
      }
    }
  }
}

void sub_1A8E8CF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sentencepiece::util::StatusBuilder::~StatusBuilder(va);
  _Unwind_Resume(a1);
}

void *sentencepiece::bpe::Model::Model(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sentencepiece::ModelInterface::ModelInterface(a1, a2, a3, a4);
  *result = &unk_1F1CACB38;
  return result;
}

void *sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  if (a3)
  {
    operator new();
  }

  return a1;
}

void sub_1A8E8D128(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sentencepiece::normalizer::PrefixMatcher::PrefixMatcher(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sentencepiece::normalizer::Normalizer::Normalizer(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F1CABB40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sentencepiece::util::Status::Status((a1 + 56));
  v10 = 0;
  sentencepiece::mmap_util::DecodePrefix<unsigned int>(a3, a4, &v10, &v9);
  sentencepiece::util::Status::operator=((a1 + 56), &v9);
  sentencepiece::util::Status::~Status(&v9);
  (*(*a1 + 24))(&v9, a1);
  v7 = v9;
  sentencepiece::util::Status::~Status(&v9);
  if (!v7)
  {
    *(a1 + 48) = v10 != 0;
    sentencepiece::normalizer::Normalizer::Init(a1, a3 + 1, a4 - 4);
  }

  return a1;
}

void sub_1A8E8D2D4(_Unwind_Exception *a1)
{
  sentencepiece::util::Status::~Status((v1 + 56));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void sentencepiece::normalizer::Normalizer::Init(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  if (a3)
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = 0uLL;
    sentencepiece::normalizer::Normalizer::DecodePrecompiledCharsMap(a2, a3, v6, &v5, &v4);
    sentencepiece::util::Status::operator=((a1 + 56), &v4);
    sentencepiece::util::Status::~Status(&v4);
    if (!*(a1 + 56))
    {
      operator new();
    }
  }
}

void sub_1A8E8D498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::Status::~Status(va);
  _Unwind_Resume(a1);
}

unint64_t type metadata accessor for TokenizerRunnerObjC()
{
  result = lazy cache variable for type metadata for TokenizerRunnerObjC;
  if (!lazy cache variable for type metadata for TokenizerRunnerObjC)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TokenizerRunnerObjC);
  }

  return result;
}

uint64_t TokenizerRunner.vocabularyCount.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 56))(v1, v2);
}

sentencepiece::util::Status *sentencepiece::util::Status::Status(sentencepiece::util::Status *this, const sentencepiece::util::Status *a2)
{
  if (*a2)
  {
    operator new();
  }

  *this = 0;
  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSet(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sentencepiece::MemoryMappedModelProto::MemoryMappedModelProto(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_1F1CACEE0;
  *(a1 + 16) = &unk_1F1CACEA0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F1CACEA0;
  *(a1 + 40) = 0;
  sentencepiece::util::Status::Status((a1 + 88));
  sentencepiece::MemoryMappedModelProto::Init(a1, a2, a3, &v7);
  sentencepiece::util::Status::operator=((a1 + 88), &v7);
  sentencepiece::util::Status::~Status(&v7);
  return a1;
}

void sub_1A8E8D6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v3 + 88));
  _Unwind_Resume(a1);
}

uint64_t sentencepiece::SentencePieceProcessor::GetPieceSize(sentencepiece::SentencePieceProcessor *this)
{
  (*(*this + 88))(&v17);
  v2 = v17;
  sentencepiece::util::Status::~Status(&v17);
  if (!v2)
  {
    return (*(**(this + 1) + 128))(*(this + 1));
  }

  if (sentencepiece::logging::GetMinLogLevel(v3) <= 2)
  {
    v16 = 0;
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(", 1);
    v6 = MEMORY[0x1AC57D010](v5, 961);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") ", 2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "LOG(", 4);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "ERROR", 5);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ") ", 2);
    (*(*this + 88))(&v17, this);
    v11 = sentencepiece::util::Status::error_message(&v17);
    v12 = strlen(v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nReturns default value ", 23);
    MEMORY[0x1AC57D010](v14, 0);
    sentencepiece::util::Status::~Status(&v17);
    sentencepiece::error::Die::~Die(&v16);
  }

  return 0;
}

uint64_t sentencepiece::SentencePieceText::SentencePieceText(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1CAC3C8;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_SentencePieceText_sentencepiece_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SentencePieceText_sentencepiece_2eproto);
  }

  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = 0;
  return a1;
}

void sub_1A8E8D9CC(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<sentencepiece::SentencePieceText_SentencePiece>::~RepeatedPtrField(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void sentencepiece::SentencePieceProcessor::Decode(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memset(&v19, 0, sizeof(v19));
  v8 = (*(*a1 + 496))(a1);
  std::vector<std::string>::reserve(&v19, a2[1] - *a2);
  v10 = *a2;
  v9 = a2[1];
  while (1)
  {
    if (v10 == v9)
    {
      (*(*a1 + 264))(a1, &v19, a3);
      goto LABEL_18;
    }

    v11 = *v10;
    v18 = v11;
    if (v11 < 0 || v11 >= v8)
    {
      break;
    }

    __p.__r_.__value_.__r.__words[0] = (*(*a1 + 512))(a1);
    __p.__r_.__value_.__l.__size_ = v12;
    end = v19.__end_;
    if (v19.__end_ >= v19.__end_cap_.__value_)
    {
      v14 = std::vector<std::string>::__emplace_back_slow_path<std::string_view>(&v19, &__p);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(&v19, &__p);
      v14 = end + 1;
    }

    v19.__end_ = v14;
    ++v10;
  }

  absl::StrCat<int>(&__p, "Invalid id: ", 0xCuLL, &v18);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sentencepiece::util::Status::Status(a4, 11, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_18:
  __p.__r_.__value_.__r.__words[0] = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1A8E8DBAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

const char *sentencepiece::SentencePieceProcessor::IdToPiece(sentencepiece::SentencePieceProcessor *this, uint64_t a2)
{
  (*(*this + 88))(&v19);
  v4 = v19;
  sentencepiece::util::Status::~Status(&v19);
  if (!v4)
  {
    return (*(**(this + 1) + 120))(*(this + 1), a2);
  }

  if (sentencepiece::logging::GetMinLogLevel(v5) <= 2)
  {
    v18 = 0;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "sentencepiece_processor.cc", 26);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(", 1);
    v8 = MEMORY[0x1AC57D010](v7, 971);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "LOG(", 4);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "ERROR", 5);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") ", 2);
    (*(*this + 88))(&v19, this);
    v13 = sentencepiece::util::Status::error_message(&v19);
    v14 = strlen(v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nReturns default value ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "", 0);
    sentencepiece::util::Status::~Status(&v19);
    sentencepiece::error::Die::~Die(&v18);
  }

  return "";
}

uint64_t sentencepiece::MemoryMappedModelProto::IdToPiece(sentencepiece::MemoryMappedModelProto *this, int a2)
{
  v2 = *(this + 10);
  v3 = *(*(this + 9) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

void *std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string_view>(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v3[23] = v4;
  if (v4)
  {
    result = memmove(v3, v5, v4);
  }

  v3[v4] = 0;
  v2[1] = v3 + 24;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

void *sentencepiece::SentencePieceProcessor::status@<X0>(sentencepiece::SentencePieceProcessor *this@<X0>, sentencepiece::util::Status *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    if (*(this + 2))
    {
      result = (*(*v4 + 16))(v4);
      if (!*a2)
      {
        sentencepiece::util::Status::~Status(a2);
        result = (*(**(this + 2) + 24))(*(this + 2));
        if (!*a2)
        {
          sentencepiece::util::Status::~Status(a2);

          return sentencepiece::util::Status::Status(v6);
        }
      }

      return result;
    }

    LODWORD(v9) = 13;
    v8 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 320);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "normalizer_", 11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Normalizer is not initialized.", 30);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  else
  {
    LODWORD(v9) = 13;
    v7 = std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/sentencepiece_processor.cc", 82, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "(", 1);
    MEMORY[0x1AC57D010](&v10, 319);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, ") [", 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "model_", 6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "] ", 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "Model is not initialized.", 25);
    sentencepiece::util::StatusBuilder::operator sentencepiece::util::Status(&v9, a2);
  }

  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1AC57D130](&v14);
}

uint64_t sentencepiece::ModelInterface::GetPieceSize(sentencepiece::ModelInterface *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t sub_1A8E8E428()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

_OWORD *_sypWOb_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1A8E8E4F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A8E8E690()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A8E8E6E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8E8E73C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CharacterSet();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1A8E8E7E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CharacterSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8E88C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A8E8E89C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8E8E8EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8E8E934()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10GuardrailsV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOs0J3KeyAAsAKP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 7566959;
  }
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore14AutomationJSONV14RenderedPromptVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A8E8EB54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8E8EBA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OSSignposter();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for OSSignpostID();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1A8E8ECA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OSSignposter();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for OSSignpostID();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1A8E8EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A8E8EE78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void *_s15TokenGeneration6PromptVs43ExpressibleByExtendedGraphemeClusterLiteralAAsADP08extendedghI0x0fghI4TypeQz_tcfCTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v3;
  return result;
}

uint64_t sub_1A8E8EF94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8E8F050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F190(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Schema();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8E8F23C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Schema();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F2E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Prompt.SpecialToken(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8E8F394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Prompt.SpecialToken(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F438@<X0>(uint64_t *a1@<X8>)
{
  result = Prompt.Turn.content.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8E8F468(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1A8E8F5A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1A8E8F6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A8E8F7B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A8E8F928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8F9DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8E8FA98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8FB48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A8E8FBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A8E8FC24()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A8E8FC5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A8E8FC94(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentVSgMd, &_s9PromptKit0A0V9ComponentVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1A8E8FD48(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentVSgMd, &_s9PromptKit0A0V9ComponentVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8E8FDF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8E8FE2C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A8E8FE64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A8E8FEDC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit15ChatMessageRoleO4role_tMd, &_s9PromptKit15ChatMessageRoleO4role_tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void sub_1A8E9059C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sentencepiece::util::Status::~Status(va);
  _Unwind_Resume(a1);
}

void sub_1A8E90B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sentencepiece::util::Status::~Status(&a11);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A8E90EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  sentencepiece::util::Status::~Status(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_1A8E91060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8E913E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  sentencepiece::util::Status::~Status(&a16);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E785E4C0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::string_view::compare[abi:ne200100](void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E785E4C8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A8E91EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void OUTLINED_FUNCTION_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t specialized Regex2BNFBNFNode.description.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 == 5)
      {
        return 0x554E4148504C413CLL;
      }
    }

    else if (a1 == 3)
    {
      return 0xD000000000000010;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000001ALL;
    }

LABEL_10:
    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    MEMORY[0x1AC57C120](0x203A524F525245, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();

    return 0;
  }

  return 0xD00000000000002BLL;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Regex2BNF.Expression.render()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v2 + 32;
    while (1)
    {

      v4 = Regex2BNF.Choice.render()();
      if (v5)
      {
        break;
      }

      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v14 + 16) = v7 + 1;
      *(v14 + 16 * v7 + 32) = v4;
      v3 += 8;
      if (!--v1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;

    MEMORY[0x1AC57C120](v8, v10);

    v11 = 0;
    v12 = 0xE000000000000000;
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Regex2BNF.NonTerminalSymbol()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Regex2BNF.NonTerminalSymbol(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Regex2BNF.NonTerminalSymbol(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex2BNF.NonTerminalSymbol()
{
  MEMORY[0x1AC57C120](*v0, v0[1]);
  MEMORY[0x1AC57C120](62, 0xE100000000000000);
  return 60;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Regex2BNF.Choice.render()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;

    MEMORY[0x1AC57C120](v38, v40);

    v20 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_46;
  }

  v3 = v0;
  v52 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = 0;
  v45 = v3 + 32;
  v5 = v52;
  v43 = v1;
  while (1)
  {
    v6 = v45 + 24 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = v9 >> 6;
    if (v9 >> 6 <= 1)
    {
      break;
    }

    if (v10 == 2)
    {
      v50 = 60;
      v51 = 0xE100000000000000;
      v17 = v7;
      v18 = v7;
      v12 = v4;
      outlined copy of Regex2BNF.Symbol(v8, v17, v9);
      MEMORY[0x1AC57C120](v8, v18);
      MEMORY[0x1AC57C120](62, 0xE100000000000000);
      v14 = v8;
      v15 = v18;
      v16 = v9;
LABEL_29:
      outlined consume of Regex2BNF.Symbol(v14, v15, v16);
      v4 = v12;
      v35 = v50;
      v36 = v51;
      goto LABEL_30;
    }

    if (v8 <= 2u)
    {
      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_43;
        }

        v35 = 0xD00000000000001ALL;
        v36 = 0x80000001A8FD8460;
      }

      else
      {
        v35 = 0xD00000000000002BLL;
        v36 = 0x80000001A8FD8480;
      }
    }

    else if (v8 > 4u)
    {
      if (v8 != 5)
      {
LABEL_43:
        type metadata accessor for GenerationError(0);
        lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_39:

        goto LABEL_46;
      }

      v35 = 0x554E4148504C413CLL;
      v36 = 0xEF3E53434952454DLL;
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_43;
      }

      v35 = 0xD000000000000010;
      v36 = 0x80000001A8FD8440;
    }

LABEL_30:
    v53 = v5;
    v30 = *(v5 + 16);
    v29 = *(v5 + 24);
    if (v30 >= v29 >> 1)
    {
      v37 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      v4 = v37;
      v5 = v53;
    }

    ++v4;
    *(v5 + 16) = v30 + 1;
    v31 = v5 + 16 * v30;
    *(v31 + 32) = v35;
    *(v31 + 40) = v36;
    if (v4 == v1)
    {
      goto LABEL_40;
    }
  }

  if (!v10)
  {
    if (v9 <= 0)
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      v28 = v7;
      v12 = v4;
      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      Unicode.Scalar.write<A>(to:)();
      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      v14 = v8;
      v15 = v28;
      v16 = 0;
    }

    else
    {
      if (v9 != 1)
      {
        type metadata accessor for GenerationError(0);
        lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        if (v9 == 2)
        {
          outlined copy of Regex2BNF.Symbol(v8, v7, 2);
        }

        swift_willThrow();
        outlined consume of Regex2BNF.Symbol(v8, v7, v9);
        goto LABEL_39;
      }

      v50 = 34;
      v51 = 0xE100000000000000;
      v11 = v7;
      v12 = v4;
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v13);

      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      v14 = v8;
      v15 = v11;
      v16 = 1;
    }

    goto LABEL_29;
  }

  v19 = *(v8 + 16);
  if (!v19)
  {
    v36 = 0xE200000000000000;
    v35 = 8738;
    v1 = v43;
    goto LABEL_30;
  }

  v44 = v7;
  v42 = v4;
  v49 = v2;

  v20 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v22 = 0;
  v23 = (v8 + 48);
  v46 = v8;
  while (v22 < *(v8 + 16))
  {
    if (*v23)
    {
      if (*v23 != 1)
      {
        type metadata accessor for GenerationError(0);
        lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        outlined consume of Regex2BNF.Symbol(v8, v44, v9);

        goto LABEL_39;
      }

      v47 = 34;
      v48 = 0xE100000000000000;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v24);
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      Unicode.Scalar.write<A>(to:)();
    }

    v20 = MEMORY[0x1AC57C120](34, 0xE100000000000000);
    v26 = *(v49 + 16);
    v25 = *(v49 + 24);
    if (v26 >= v25 >> 1)
    {
      v20 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
    }

    ++v22;
    *(v49 + 16) = v26 + 1;
    v27 = v49 + 16 * v26;
    *(v27 + 32) = v47;
    *(v27 + 40) = v48;
    v23 += 24;
    v8 = v46;
    if (v19 == v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v32 = BidirectionalCollection<>.joined(separator:)();
      v34 = v33;

      MEMORY[0x1AC57C120](v32, v34);

      outlined consume of Regex2BNF.Symbol(v46, v44, v9);
      v35 = 0;
      v36 = 0xE000000000000000;
      v4 = v42;
      v2 = MEMORY[0x1E69E7CC0];
      v1 = v43;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_46:
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Regex2BNF.Symbol.render()()
{
  if ((v1 >> 6) <= 1u)
  {
    if (!(v1 >> 6))
    {
      v4 = Regex2BNF.TerminalSymbol.render()();
      object = v4._object;
      countAndFlagsBits = v4._countAndFlagsBits;
      goto LABEL_31;
    }

    v5 = *(v0 + 16);
    if (!v5)
    {
      object = 0xE200000000000000;
      countAndFlagsBits = 8738;
      goto LABEL_31;
    }

    v21 = MEMORY[0x1E69E7CC0];
    v6 = v0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = (v6 + 48);
    while (1)
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      if (*v7)
      {
        if (v9 != 1)
        {
          v14 = *(v7 - 1);
          type metadata accessor for GenerationError(0);
          lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          if (v9 == 2)
          {
            outlined copy of Regex2BNF.TerminalSymbol(v8, v14, 2);
          }

          swift_willThrow();
          outlined consume of Regex2BNF.TerminalSymbol(v8, v14, v9);

          goto LABEL_31;
        }

        v19 = 34;
        v20 = 0xE100000000000000;
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1AC57C120](v10);
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
        MEMORY[0x1AC57C120](34, 0xE100000000000000);
        Unicode.Scalar.write<A>(to:)();
      }

      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      v12 = *(v21 + 16);
      v11 = *(v21 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      v7 += 24;
      *(v21 + 16) = v12 + 1;
      v13 = v21 + 16 * v12;
      *(v13 + 32) = v19;
      *(v13 + 40) = v20;
      if (!--v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v15 = BidirectionalCollection<>.joined(separator:)();
        v17 = v16;

        MEMORY[0x1AC57C120](v15, v17);

        countAndFlagsBits = 0;
        object = 0xE000000000000000;
        goto LABEL_31;
      }
    }
  }

  if (v1 >> 6 != 2)
  {
    if (v0 <= 2u)
    {
      if (!v0)
      {
        object = 0x80000001A8FD8480;
        countAndFlagsBits = 0xD00000000000002BLL;
        goto LABEL_31;
      }

      if (v0 == 1)
      {
        object = 0x80000001A8FD8460;
        countAndFlagsBits = 0xD00000000000001ALL;
        goto LABEL_31;
      }
    }

    else if (v0 > 4u)
    {
      if (v0 == 5)
      {
        object = 0xEF3E53434952454DLL;
        countAndFlagsBits = 0x554E4148504C413CLL;
        goto LABEL_31;
      }
    }

    else if (v0 == 3)
    {
      countAndFlagsBits = 0xD000000000000010;
      object = 0x80000001A8FD8440;
      goto LABEL_31;
    }

    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    countAndFlagsBits = swift_willThrow();
    goto LABEL_31;
  }

  MEMORY[0x1AC57C120]();
  MEMORY[0x1AC57C120](62, 0xE100000000000000);
  countAndFlagsBits = 60;
  object = 0xE100000000000000;
LABEL_31:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Regex2BNF.TerminalSymbol.render()()
{
  if (v0 - 2 >= 2)
  {
    if (v0)
    {
      v5 = 34;
      v6 = 0xE100000000000000;
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v3);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      Unicode.Scalar.write<A>(to:)();
    }

    MEMORY[0x1AC57C120](34, 0xE100000000000000);
    v1 = v5;
    v2 = v6;
  }

  else
  {
    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v1 = swift_willThrow();
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex2BNF.Symbol()
{
  result = Regex2BNF.Symbol.render()()._countAndFlagsBits;
  if (v1)
  {
    MEMORY[0x1AC57C120](0x203A524F525245, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();

    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Regex2BNF.Builtin()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Regex2BNF.Builtin(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex2BNF.TerminalSymbol()
{
  result = Regex2BNF.TerminalSymbol.render()()._countAndFlagsBits;
  if (v1)
  {
    MEMORY[0x1AC57C120](0x203A524F525245, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();

    return 0;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _opaque_pthread_mutex_t(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _opaque_pthread_mutex_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

void type metadata accessor for _opaque_pthread_mutex_t(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance IOSurfacePropertyKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance IOSurfacePropertyKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance IOSurfacePropertyKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x1AC57BF60](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance IOSurfacePropertyKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1AC57C1E0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IOSurfacePropertyKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IOSurfacePropertyKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IOSurfacePropertyKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance IOSurfacePropertyKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1AC57BF60](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance IOSurfacePropertyKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance IOSurfacePropertyKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey, type metadata accessor for IOSurfacePropertyKey, &protocol conformance descriptor for IOSurfacePropertyKey);
  v3 = lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(&lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey, type metadata accessor for IOSurfacePropertyKey, &protocol conformance descriptor for IOSurfacePropertyKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized Regex2BNF.BNF.render()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v13 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  for (i = a1 + 56; ; i += 32)
  {
    v4 = *(i - 24);
    v5 = *(i - 16);

    MEMORY[0x1AC57C120](v4, v5);
    MEMORY[0x1AC57C120](62, 0xE100000000000000);
    MEMORY[0x1AC57C120](0x203D3A3A20, 0xE500000000000000);
    countAndFlagsBits = Regex2BNF.Expression.render()()._countAndFlagsBits;
    if (v7)
    {
      break;
    }

    MEMORY[0x1AC57C120](countAndFlagsBits);

    v9 = *(v13 + 16);
    v8 = *(v13 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
    }

    *(v13 + 16) = v9 + 1;
    v10 = v13 + 16 * v9;
    *(v10 + 32) = 60;
    *(v10 + 40) = 0xE100000000000000;
    if (!--v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v11 = BidirectionalCollection<>.joined(separator:)();

      MEMORY[0x1AC57C120](10, 0xE100000000000000);

      return v11;
    }
  }
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

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined copy of Regex2BNF.Symbol(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return outlined copy of Regex2BNF.TerminalSymbol(result, a2, a3);
  }
}

uint64_t outlined copy of Regex2BNF.TerminalSymbol(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t outlined consume of Regex2BNF.Symbol(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return outlined consume of Regex2BNF.TerminalSymbol(result, a2, a3);
  }
}

uint64_t outlined consume of Regex2BNF.TerminalSymbol(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t specialized Regex2BNF.Rule.render()()
{
  MEMORY[0x1AC57C120]();
  MEMORY[0x1AC57C120](62, 0xE100000000000000);
  MEMORY[0x1AC57C120](0x203D3A3A20, 0xE500000000000000);
  countAndFlagsBits = Regex2BNF.Expression.render()()._countAndFlagsBits;
  if (v1)
  {
  }

  MEMORY[0x1AC57C120](countAndFlagsBits);

  return 60;
}

uint64_t specialized Regex2BNF.Choice.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);

      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 24 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      *(v9 + 48) = 0x80;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore9Regex2BNFO14TerminalSymbolO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.TerminalSymbol(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Regex2BNF.TerminalSymbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for Regex2BNF.TerminalSymbol(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.Symbol(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Regex2BNF.Symbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.Rule(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for Regex2BNF.Rule(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.CharacterPredicate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Regex2BNF.CharacterPredicate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.NonTerminalSymbol(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Regex2BNF.NonTerminalSymbol(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.NonTerminalSymbol(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.NonTerminalSymbol and conformance Regex2BNF.NonTerminalSymbol);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Expression(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Expression and conformance Regex2BNF.Expression();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Expression and conformance Regex2BNF.Expression()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Expression and conformance Regex2BNF.Expression;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Expression and conformance Regex2BNF.Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Expression and conformance Regex2BNF.Expression);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Rule(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Rule and conformance Regex2BNF.Rule();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Rule and conformance Regex2BNF.Rule()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Rule and conformance Regex2BNF.Rule;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Rule and conformance Regex2BNF.Rule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Rule and conformance Regex2BNF.Rule);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Choice(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Choice and conformance Regex2BNF.Choice();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Choice and conformance Regex2BNF.Choice()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Choice and conformance Regex2BNF.Choice;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Choice and conformance Regex2BNF.Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Choice and conformance Regex2BNF.Choice);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Symbol(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Symbol and conformance Regex2BNF.Symbol);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.TerminalSymbol(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol;
  if (!lazy protocol witness table cache variable for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.TerminalSymbol and conformance Regex2BNF.TerminalSymbol);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Regex2BNF.Builtin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Regex2BNF.Builtin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Regex2BNF.Builtin(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin()
{
  result = lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin;
  if (!lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex2BNF.Builtin and conformance Regex2BNF.Builtin);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12_RegexParser3ASTV4NodeOG_19TokenGenerationCore9Regex2BNFO6ChoiceVsAE_pTg504_s19hi5Core9k43BNFO10BNFConvertV7convertySayAC6SymbolOG12_d12Parser3ASTV4g6OKFAC6M9VANKXEfU_AN0Q0VTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v13;
    v5 = *(type metadata accessor for AST.Node() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    while (1)
    {
      v8 = Regex2BNF.BNFConvert.convert(_:)(v6);
      if (v1)
      {
        break;
      }

      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v11;
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v6 += v7;
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12_RegexParser3ASTV4NodeOG_Say19TokenGenerationCore9Regex2BNFO6SymbolOGsAE_pTg504_s19hi5Core9k32BNFO10BNFConvertV7convertySayAC6m5OG12_d12Parser3ASTV4G13OKFAiNKXEfU0_AN0Q0VTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v13;
    v5 = *(type metadata accessor for AST.Node() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    while (1)
    {
      v8 = Regex2BNF.BNFConvert.convert(_:)(v6);
      if (v1)
      {
        break;
      }

      v14 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v8 = v11;
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v8;
      v6 += v7;
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore9Regex2BNFO14TerminalSymbolOs5NeverOTg504_s19gh5Core9j32BNFO10BNFConvertV7convertySayAC6m33OG12_RegexParser3ASTV4NodeOKFAC08l5H0Os7d2O6E7VXEfU2_Tf1cn_n(unint64_t a1, unint64_t a2)
{
  v3 = specialized Collection.count.getter(a1, a2);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  v37 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v4 = v37;
    v8 = a1;
    v9 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v12 = 15;
    v31 = v5;
    v32 = v11;
    v33 = 4 << v9;
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v8, a2);
          v11 = v32;
          v10 = v33;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_61;
        }

        if ((result & 1) == 0)
        {
          v18 = _StringGuts.scalarAlignSlow(_:)(result, v8, a2);
          v11 = v32;
          v10 = v33;
          v17 = v18 >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_62;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v11 = v32;
        v10 = v33;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v35 = v8;
          v36 = a2 & 0xFFFFFFFFFFFFFFLL;
          v20 = &v35 + v17;
        }

        else
        {
          v19 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v8 & 0x1000000000000000) == 0)
          {
            v19 = _StringObject.sharedUTF8.getter();
            v11 = v32;
            v10 = v33;
          }

          v20 = (v19 + v17);
        }

        result = *v20;
        if (*v20 < 0)
        {
          v29 = (__clz(result ^ 0xFF) - 24);
          if (v29 > 2)
          {
            if (v29 == 3)
            {
              result = ((result & 0xF) << 12) | ((v20[1] & 0x3F) << 6) | v20[2] & 0x3F;
            }

            else
            {
              result = ((result & 0xF) << 18) | ((v20[1] & 0x3F) << 12) | ((v20[2] & 0x3F) << 6) | v20[3] & 0x3F;
            }
          }

          else if (v29 != 1)
          {
            result = v20[1] & 0x3F | ((result & 0x1F) << 6);
          }
        }
      }

      v37 = v4;
      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        v30 = result;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v11 = v32;
        v10 = v33;
        result = v30;
        v4 = v37;
      }

      *(v4 + 16) = v22 + 1;
      v23 = v4 + 24 * v22;
      *(v23 + 32) = result;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      if (v16)
      {
        v8 = a1;
        v24 = v31;
        if (v14 == v10)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a1, a2);
          v11 = v32;
          v10 = v33;
          v12 = result;
          if (v32 <= result >> 16)
          {
            goto LABEL_63;
          }
        }

        else if (v11 <= v12 >> 16)
        {
          goto LABEL_63;
        }

        if ((v12 & 1) == 0)
        {
          result = _StringGuts.scalarAlignSlow(_:)(v12, a1, a2);
          v11 = v32;
          v10 = v33;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v8 = a1;
        v24 = v31;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_64;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        v11 = v32;
        v10 = v33;
        v12 = result;
      }

      else
      {
        v25 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v35 = v8;
          v36 = a2 & 0xFFFFFFFFFFFFFFLL;
          v26 = *(&v35 + v25);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v8 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
            v11 = v32;
            v10 = v33;
          }

          v26 = *(result + v25);
        }

        v27 = v26;
        v28 = __clz(v26 ^ 0xFF) - 24;
        if (v27 >= 0)
        {
          LOBYTE(v28) = 1;
        }

        v12 = ((v25 + v28) << 16) | 5;
      }

      ++v7;
      if (v13 == v24)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Regex2BNF.SymbolGenerator.genSuffix(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *(v1 + 16);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1._countAndFlagsBits, a1._object), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v9);

    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v2 + 16);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8 + 1, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
      v11 = 0xE100000000000000;
      v10 = 95;
      *(v2 + 16) = v15;
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, countAndFlagsBits, object, v13);
    v10 = 0;
    *(v2 + 16) = v16;
    v11 = 0xE000000000000000;
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

char *Regex2BNF.BNFConvert.convert(_:)(uint64_t a1)
{
  v170 = a1;
  v132 = type metadata accessor for AST.CustomCharacterClass.Start();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v136 = &v125 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v137 = &v125 - v3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV20CustomCharacterClassV5StartOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV20CustomCharacterClassV5StartOGMR);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v125 - v4;
  v135 = type metadata accessor for AST.CustomCharacterClass();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AST.Atom.EscapedBuiltin();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for AST.Atom.Kind();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for AST.Atom();
  v8 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for AST.Quantification.Amount();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = (&v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV6AmountOGMR);
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v146 = &v125 - v11;
  v151 = type metadata accessor for AST.Quantification.Kind();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v147 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV14QuantificationV4KindOGMR);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v125 - v13;
  v14 = type metadata accessor for AST.Quantification();
  v156 = *(v14 - 8);
  v157 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AST.Group.Kind();
  v161 = *(v16 - 8);
  v162 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v164 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser6SourceV7LocatedVy_AA3ASTV5GroupV4KindOGMd, &_s12_RegexParser6SourceV7LocatedVy_AA3ASTV5GroupV4KindOGMR);
  v159 = *(v18 - 8);
  v160 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v125 - v19;
  v165 = type metadata accessor for AST.Group();
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v166 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AST.Concatenation();
  v168 = *(v22 - 8);
  v169 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v167 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AST.Alternation();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AST.Node();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v158 = &v125 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = (&v125 - v36);
  (*(v29 + 16))(&v125 - v36, v170, v28, v35);
  v38 = (*(v29 + 88))(v37, v28);
  if (v38 == *MEMORY[0x1E69E8D98])
  {
    (*(v29 + 96))(v37, v28);
    v39 = swift_projectBox();
    (*(v25 + 16))(v27, v39, v24);
    v20 = AST.Alternation.children.getter();
    v40 = v171;
    v41 = v176;
    v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12_RegexParser3ASTV4NodeOG_19TokenGenerationCore9Regex2BNFO6ChoiceVsAE_pTg504_s19hi5Core9k43BNFO10BNFConvertV7convertySayAC6SymbolOG12_d12Parser3ASTV4g6OKFAC6M9VANKXEfU_AN0Q0VTf1cn_n(v20);
    if (v41)
    {
      (*(v25 + 8))(v27, v24);
LABEL_7:

      return v20;
    }

    v176 = 0;
    v170 = v24;
    v58 = v42;

    v59._countAndFlagsBits = 5524545;
    v59._object = 0xE300000000000000;
    v60 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v59);
    v61 = v40[1];
    v174 = *v40;
    v175 = v61;

    MEMORY[0x1AC57C120](5524545, 0xE300000000000000);

    MEMORY[0x1AC57C120](v60._countAndFlagsBits, v60._object);

    v62 = v174;
    v63 = v175;
    if (!*(v40[3] + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(v62, v63), v65 = v64, , (v65 & 1) == 0))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = v40[3];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v62, v63, isUniquelyReferenced_nonNull_native);

      v40[3] = v174;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
      v20 = swift_allocObject();
      *(v20 + 1) = xmmword_1A8FC9400;
      *(v20 + 4) = v62;
      *(v20 + 5) = v63;
      v20[48] = 0x80;
      (*(v25 + 8))(v27, v170);
      goto LABEL_62;
    }

    goto LABEL_124;
  }

  v43 = v171;
  if (v38 == *MEMORY[0x1E69E8DA8])
  {
    (*(v29 + 96))(v37, v28);
    v44 = *v37;
    v45 = swift_projectBox();
    v47 = v167;
    v46 = v168;
    v31 = v169;
    (*(v168 + 16))(v167, v45, v169);
    v20 = AST.Concatenation.children.getter();
    v48 = v176;
    v49 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12_RegexParser3ASTV4NodeOG_Say19TokenGenerationCore9Regex2BNFO6SymbolOGsAE_pTg504_s19hi5Core9k32BNFO10BNFConvertV7convertySayAC6m5OG12_d12Parser3ASTV4G13OKFAiNKXEfU0_AN0Q0VTf1cn_n(v20);
    if (v48)
    {
      (*(v46 + 8))(v47, v31);
      goto LABEL_7;
    }

    v67 = v49;
    v170 = v44;

    v29 = *(v67 + 16);
    v176 = 0;
    if (!v29)
    {
      v20 = MEMORY[0x1E69E7CC0];
LABEL_44:

      (*(v168 + 8))(v167, v169);
      goto LABEL_62;
    }

    v68 = 0;
    v28 = v67 + 32;
    v20 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v68 >= *(v67 + 16))
      {
        goto LABEL_86;
      }

      v31 = *(v28 + 8 * v68);
      v43 = *(v31 + 2);
      v69 = *(v20 + 2);
      v70 = v43 + v69;
      if (__OFADD__(v69, v43))
      {
        goto LABEL_87;
      }

      v71 = swift_isUniquelyReferenced_nonNull_native();
      if (v71 && v70 <= *(v20 + 3) >> 1)
      {
        if (!*(v31 + 2))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v69 <= v70)
        {
          v72 = v43 + v69;
        }

        else
        {
          v72 = v69;
        }

        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71, v72, 1, v20);
        if (!*(v31 + 2))
        {
LABEL_20:

          if (v43)
          {
            goto LABEL_88;
          }

          goto LABEL_21;
        }
      }

      if ((*(v20 + 3) >> 1) - *(v20 + 2) < v43)
      {
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();

      if (v43)
      {
        v74 = *(v20 + 2);
        v75 = __OFADD__(v74, v43);
        v76 = v43 + v74;
        if (v75)
        {
          __break(1u);
          goto LABEL_96;
        }

        *(v20 + 2) = v76;
      }

LABEL_21:
      if (v29 == ++v68)
      {
        goto LABEL_44;
      }
    }
  }

  if (v38 != *MEMORY[0x1E69E8DE0])
  {
    if (v38 == *MEMORY[0x1E69E8DA0])
    {
LABEL_17:
      (*(v29 + 8))(v37, v28);
      v20 = type metadata accessor for GenerationError(0);
      lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v20;
    }

    if (v38 == *MEMORY[0x1E69E8DC0])
    {
      (*(v29 + 96))(v37, v28);
      v80 = *v37;
      v81 = swift_projectBox();
      v83 = v155;
      v82 = v156;
      v84 = v157;
      (*(v156 + 16))(v155, v81, v157);
      AST.Quantification.child.getter();
      v85 = v176;
      v86 = Regex2BNF.BNFConvert.convert(_:)(v31);
      if (v85)
      {
        (*(v29 + 8))(v31, v28);
        v87 = *(v82 + 8);
        v20 = (v82 + 8);
        v87(v83, v84);
        goto LABEL_62;
      }

      v176 = 0;
      v170 = v80;
      v97 = v86;
      (*(v29 + 8))(v31, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1A8FC9400;
      *(v98 + 32) = v97;

      v99._countAndFlagsBits = 0x48435F544E415551;
      v99._object = 0xEB00000000444C49;
      v100 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v99);
      v101 = v43[1];
      v174 = *v43;
      v175 = v101;

      MEMORY[0x1AC57C120](0x48435F544E415551, 0xEB00000000444C49);

      MEMORY[0x1AC57C120](v100._countAndFlagsBits, v100._object);

      v102 = v174;
      v103 = v175;
      if (!*(v43[3] + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(v102, v103), v105 = v104, , (v105 & 1) == 0))
      {

        v106 = swift_isUniquelyReferenced_nonNull_native();
        v174 = v43[3];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, v102, v103, v106);

        v43[3] = v174;
        v107 = v143;
        v108 = v155;
        AST.Quantification.kind.getter();
        v109 = v147;
        v110 = v102;
        v111 = v145;
        MEMORY[0x1AC57B0A0](v145);
        (*(v144 + 8))(v107, v111);
        v112 = v146;
        AST.Quantification.amount.getter();
        v113 = v152;
        v114 = v150;
        MEMORY[0x1AC57B0A0](v150);
        (*(v148 + 8))(v112, v114);
        v20 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v110, v103, v109, v113);

        (*(v153 + 8))(v113, v154);
        (*(v149 + 8))(v109, v151);
        (*(v156 + 8))(v108, v157);
        goto LABEL_62;
      }

      goto LABEL_124;
    }

    v68 = v176;
    if (v38 == *MEMORY[0x1E69E8DE8] || v38 == *MEMORY[0x1E69E8DF0] || v38 == *MEMORY[0x1E69E8DB0])
    {
      goto LABEL_17;
    }

    if (v38 == *MEMORY[0x1E69E8DD0])
    {
      (*(v29 + 96))(v37, v28);
      v88 = swift_projectBox();
      v69 = v8;
      v43 = v141;
      v31 = v142;
      (*(v8 + 16))(v141, v88, v142);
      v20 = v138;
      AST.Atom.kind.getter();
      v28 = v139;
      v67 = v140;
      v73 = (*(v139 + 88))(v20, v140);
      if (v73 != *MEMORY[0x1E69E8D58])
      {
        if (v73 == *MEMORY[0x1E69E8D60] || v73 == *MEMORY[0x1E69E8D28])
        {
          v119 = v20;
          v20 = type metadata accessor for GenerationError(0);
          lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v69 + 8))(v43, v31);
          (*(v28 + 8))(v119, v67);
          goto LABEL_62;
        }

LABEL_96:
        if (v73 == *MEMORY[0x1E69E8D80])
        {
          goto LABEL_97;
        }

        if (v73 == *MEMORY[0x1E69E8D70])
        {
          (*(v28 + 96))(v20, v67);
          v122 = v125;
          (*(v126 + 32))(v125, v20, v127);
          v123 = specialized Regex2BNF.BNFConvert.mapEscapedBuiltin(_:)(v122);
          if (v68)
          {
            (*(v126 + 8))(v125, v127);
            (*(v69 + 8))(v141, v142);

            return v20;
          }

          v124 = v123;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
          v20 = swift_allocObject();
          *(v20 + 1) = xmmword_1A8FC9400;
          *(v20 + 4) = v124;
          *(v20 + 5) = 0;
          v20[48] = -64;
          (*(v126 + 8))(v125, v127);
          (*(v69 + 8))(v141, v142);
          goto LABEL_62;
        }

        if (v73 == *MEMORY[0x1E69E8D30] || v73 == *MEMORY[0x1E69E8D10] || v73 == *MEMORY[0x1E69E8D38])
        {
          (*(v139 + 8))(v138, v140);
          v20 = type metadata accessor for GenerationError(0);
          lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v69 + 8))(v141, v142);
          goto LABEL_62;
        }

        v31 = v142;
        v43 = v141;
        v67 = v140;
        v28 = v139;
        v20 = v138;
        if (v73 == *MEMORY[0x1E69E8D20] || v73 == *MEMORY[0x1E69E8D18] || v73 == *MEMORY[0x1E69E8CF8] || v73 == *MEMORY[0x1E69E8D68] || v73 == *MEMORY[0x1E69E8D40] || v73 == *MEMORY[0x1E69E8D48])
        {
LABEL_97:
          (*(v28 + 8))(v20, v67);
        }

        else
        {
          if (v73 == *MEMORY[0x1E69E8D50])
          {
            (*(v69 + 8))(v141, v142);
            v20 = &outlined read-only object #0 of Regex2BNF.BNFConvert.convert(_:);
            goto LABEL_62;
          }

          v31 = v142;
          v43 = v141;
          if (v73 != *MEMORY[0x1E69E8D00] && v73 != *MEMORY[0x1E69E8D08] && v73 != *MEMORY[0x1E69E8D78])
          {
            goto LABEL_125;
          }
        }

        v20 = type metadata accessor for GenerationError(0);
        lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v69 + 8))(v43, v31);
        goto LABEL_62;
      }

      (*(v28 + 96))(v20, v67);
      v90 = *v20;
      v89 = *(v20 + 1);
      v91 = HIBYTE(v89) & 0xF;
      if ((v89 & 0x2000000000000000) == 0)
      {
        v91 = v90;
      }

      v92 = 7;
      if (((v89 >> 60) & ((v90 & 0x800000000000000) == 0)) != 0)
      {
        v92 = 11;
      }

      if (String.UnicodeScalarView.distance(from:to:)(0xFuLL, v92 | (v91 << 16), v90, v89) == 1)
      {
        v93 = specialized Collection.first.getter(v90, v89);
        if ((v93 & 0x100000000) != 0)
        {
          __break(1u);
LABEL_124:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          goto LABEL_125;
        }

        LODWORD(v95) = v93;

        v94 = 0;
        v95 = v95;
      }

      else
      {
        v95 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore9Regex2BNFO14TerminalSymbolOs5NeverOTg504_s19gh5Core9j32BNFO10BNFConvertV7convertySayAC6m33OG12_RegexParser3ASTV4NodeOKFAC08l5H0Os7d2O6E7VXEfU2_Tf1cn_n(v90, v89);

        v94 = 64;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
      v20 = swift_allocObject();
      *(v20 + 1) = xmmword_1A8FC9400;
      *(v20 + 4) = v95;
      *(v20 + 5) = 0;
      v20[48] = v94;
      outlined consume of Regex2BNF.Symbol(v95, 0, v94);
      (*(v69 + 8))(v43, v31);
      goto LABEL_62;
    }

    if (v38 == *MEMORY[0x1E69E8DC8])
    {
      (*(v29 + 96))(v37, v28);
      v176 = *v37;
      v115 = swift_projectBox();
      v29 = v134;
      v28 = v133;
      v31 = v135;
      (*(v134 + 16))(v133, v115, v135);
      v116 = v128;
      AST.CustomCharacterClass.start.getter();
      v20 = v137;
      v117 = v130;
      MEMORY[0x1AC57B0A0](v130);
      (*(v129 + 8))(v116, v117);
      v43 = v131;
      v68 = v132;
      (*(v131 + 104))(v136, *MEMORY[0x1E69E8B08], v132);
      lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type AST.CustomCharacterClass.Start and conformance AST.CustomCharacterClass.Start, MEMORY[0x1E69E8B10], MEMORY[0x1E69E8B18]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v174 == v172 && v175 == v173)
      {
        v118 = v43[1];
        v118(v136, v68);
        v118(v137, v68);

        goto LABEL_79;
      }
    }

    else
    {
      if (v38 == *MEMORY[0x1E69E8DB8] || v38 == *MEMORY[0x1E69E8DD8])
      {
        goto LABEL_17;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    v120 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20 = v43[1];
    (v20)(v136, v68);
    (v20)(v137, v68);

    if (v120)
    {
      goto LABEL_92;
    }

    v121 = *(AST.CustomCharacterClass.members.getter() + 16);

    if (v121 >= 2)
    {
      goto LABEL_92;
    }

    AST.CustomCharacterClass.members.getter();
LABEL_79:

LABEL_92:
    type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v29 + 8))(v28, v31);
    goto LABEL_62;
  }

  (*(v29 + 96))(v37, v28);
  v170 = *v37;
  v50 = swift_projectBox();
  v51 = v163;
  (*(v163 + 16))(v166, v50, v165);
  AST.Group.kind.getter();
  v52 = v164;
  v53 = v160;
  MEMORY[0x1AC57B0A0](v160);
  (*(v159 + 8))(v20, v53);
  v55 = v161;
  v54 = v162;
  v56 = (*(v161 + 88))(v52, v162);
  if (v56 == *MEMORY[0x1E69E8E10] || v56 == *MEMORY[0x1E69E8E20])
  {
    (*(v55 + 8))(v164, v54);
    v77 = v166;
    v57 = v158;
LABEL_37:
    AST.Group.child.getter();
    v78 = v176;
    v79 = Regex2BNF.BNFConvert.convert(_:)(v57);
    if (!v78)
    {
      v20 = v79;
      (*(v29 + 8))(v57, v28);
      (*(v51 + 8))(v77, v165);
      goto LABEL_62;
    }

    (*(v29 + 8))(v57, v28);
    goto LABEL_39;
  }

  v57 = v158;
  if (v56 == *MEMORY[0x1E69E8E58])
  {
    v20 = type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v51 + 8))(v166, v165);
    (*(v55 + 8))(v164, v54);
LABEL_62:

    return v20;
  }

  v77 = v166;
  if (v56 == *MEMORY[0x1E69E8E60] || v56 == *MEMORY[0x1E69E8E08])
  {
    goto LABEL_37;
  }

  if (v56 == *MEMORY[0x1E69E8E28])
  {
    v20 = type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_39:
    (*(v51 + 8))(v77, v165);
    goto LABEL_62;
  }

  if (v56 == *MEMORY[0x1E69E8E38] || v56 == *MEMORY[0x1E69E8E68] || v56 == *MEMORY[0x1E69E8E30] || v56 == *MEMORY[0x1E69E8E48] || v56 == *MEMORY[0x1E69E8E00] || v56 == *MEMORY[0x1E69E8E40] || v56 == *MEMORY[0x1E69E8E50])
  {
    v20 = type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v51 + 8))(v77, v165);
    goto LABEL_62;
  }

  if (v56 == *MEMORY[0x1E69E8E70] || v56 == *MEMORY[0x1E69E8E18])
  {
    v20 = type metadata accessor for GenerationError(0);
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError, &protocol conformance descriptor for GenerationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v163 + 8))(v166, v165);
    goto LABEL_62;
  }

LABEL_125:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t Regex2BNF.BNFConvert.createQuantify(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, char *))
{
  v131 = a4;
  v134 = a2;
  v135 = a1;
  v5 = type metadata accessor for Source.Location();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v130 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AST.Atom.Number();
  v128 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v121 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v121 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v121 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v121 - v16;
  v18 = type metadata accessor for AST.Quantification.Amount();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v121 - v23;
  v25 = type metadata accessor for AST.Quantification.Kind();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v26 + 16);
  *&v132 = a3;
  v30(v29, a3, v25, v27);
  LODWORD(v31) = (*(v26 + 88))(v29, v25);
  if (v31 != *MEMORY[0x1E69E8A88])
  {
    goto LABEL_40;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6SymbolOGMR);
  v33 = swift_allocObject();
  v127 = xmmword_1A8FC9400;
  *(v33 + 16) = xmmword_1A8FC9400;
  *(v33 + 32) = MEMORY[0x1E69E7CC0];
  *(v33 + 40) = 0;
  *(v33 + 48) = 64;
  (*(v19 + 16))(v24, v131, v18);
  v34 = (*(v19 + 88))(v24, v18);
  LODWORD(v131) = *MEMORY[0x1E69E8AC8];
  if (v34 == v131)
  {

    (*(v19 + 96))(v24, v18);
    v35 = v128;
    (*(v128 + 32))(v17, v24, v7);
    v36 = AST.Atom.Number.value.getter();
    if (v37)
    {
      goto LABEL_45;
    }

    v38 = v36;
    v39 = v134;

    v40 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore9Regex2BNFO6SymbolO_Tt1g5Tf4gn_n(v135, v39, 128, v38);

    (*(v35 + 8))(v17, v7);
    return v40;
  }

  if (v34 == *MEMORY[0x1E69E8AD0])
  {

    (*(v19 + 96))(v24, v18);
    v42 = v128;
    v43 = v129;
    (*(v128 + 32))(v129, v24, v7);
    (*(v42 + 16))(v21, v43, v7);
    v130 = *(v19 + 104);
    (v130)(v21, v131, v18);
    v123 = v7;
    v44 = v135;
    v45 = v134;
    v46 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v135, v134, v132, v21);
    v47 = *(v19 + 8);
    v47(v21, v18);
    v137 = v46;
    (v130)(v21, *MEMORY[0x1E69E8AB0], v18);
    v48 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v44, v45, v132, v21);
    v47(v21, v18);
    specialized Array.append<A>(contentsOf:)(v48);
    (*(v42 + 8))(v129, v123);
    return v137;
  }

  v49 = *MEMORY[0x1E69E8AC0];
  v129 = v18;
  if (v34 != v49)
  {
    if (v34 == *MEMORY[0x1E69E8AB8])
    {

      (*(v19 + 96))(v24, v18);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
      v71 = *(v128 + 32);
      v71(v124, v24, v7);
      v123 = v7;
      v71(v125, &v24[v70], v7);
      v72 = AST.Atom.Number.value.getter();
      if (v73)
      {
        goto LABEL_45;
      }

      v74 = v72;
      *&v127 = AST.Atom.Number.value.getter();
      if (v75)
      {
        goto LABEL_45;
      }

      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      v126 = v74;
      v76 = v131;
      v77 = v129;
      v131 = *(v19 + 104);
      v131(v21, v76, v129);
      v78 = v135;
      v79 = v134;
      v80 = v132;
      v81 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v135, v134, v132, v21);
      v122 = *(v19 + 8);
      LODWORD(v31) = v122(v21, v77);
      v137 = v81;
      if (__OFSUB__(v127, v126))
      {
        goto LABEL_39;
      }

      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      v131(v21, v49, v77);
      v82 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v78, v79, v80, v21);
      v122(v21, v77);
      specialized Array.append<A>(contentsOf:)(v82);
      v83 = *(v128 + 8);
      v84 = v123;
      v83(v125, v123);
      v83(v124, v84);
      return v137;
    }

    if (v34 == *MEMORY[0x1E69E8AB0])
    {
      v93._countAndFlagsBits = 0x2A5F544E415551;
      v93._object = 0xE700000000000000;
      v94 = v133;
      v95 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v93);
      v96 = v94[1];
      v137 = *v94;
      v138 = v96;

      MEMORY[0x1AC57C120](0x2A5F544E415551, 0xE700000000000000);

      MEMORY[0x1AC57C120](v95._countAndFlagsBits, v95._object);

      v97 = v137;
      v98 = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
      v99 = swift_allocObject();
      v132 = xmmword_1A8FC9410;
      *(v99 + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v132;
      *(inited + 32) = v97;
      *(inited + 40) = v98;
      v101 = v134;
      *(inited + 48) = v135;
      *(inited + 56) = v101;
    }

    else
    {
      v102 = v133;
      v103 = v134;
      if (v34 == *MEMORY[0x1E69E8AD8])
      {

        v104._countAndFlagsBits = 0x2B5F544E415551;
        v104._object = 0xE700000000000000;
        v105 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v104);
        v106 = v102[1];
        v137 = *v102;
        v138 = v106;

        MEMORY[0x1AC57C120](0x2B5F544E415551, 0xE700000000000000);

        MEMORY[0x1AC57C120](v105._countAndFlagsBits, v105._object);

        v97 = v137;
        v98 = v138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
        v107 = swift_allocObject();
        v132 = xmmword_1A8FC9410;
        *(v107 + 16) = xmmword_1A8FC9410;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMR);
        v108 = swift_initStackObject();
        *(v108 + 16) = v132;
        *(v108 + 32) = v97;
        *(v108 + 40) = v98;
        v109 = v135;
        *(v108 + 48) = v135;
        *(v108 + 56) = v103;

        *(v107 + 32) = specialized Regex2BNF.Choice.init(_:)(v108);
        v110 = swift_initStackObject();
        *(v110 + 16) = v127;
        *(v110 + 32) = v109;
        *(v110 + 40) = v103;

        *(v107 + 40) = specialized Regex2BNF.Choice.init(_:)(v110);
        if (*(v102[3] + 16))
        {

          specialized __RawDictionaryStorage.find<A>(_:)(v97, v98);
          v112 = v111;

          if (v112)
          {
            goto LABEL_45;
          }
        }

        v113 = v133;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137 = v113[3];
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v107, v97, v98, isUniquelyReferenced_nonNull_native);
        goto LABEL_37;
      }

      if (v34 != *MEMORY[0x1E69E8AE0])
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v115._countAndFlagsBits = 0x3F5F544E415551;
      v115._object = 0xE700000000000000;
      v94 = v133;
      v116 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v115);
      v117 = v102[1];
      v137 = *v102;
      v138 = v117;

      MEMORY[0x1AC57C120](0x3F5F544E415551, 0xE700000000000000);

      MEMORY[0x1AC57C120](v116._countAndFlagsBits, v116._object);

      v97 = v137;
      v98 = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO17NonTerminalSymbolVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v127;
      *(inited + 32) = v135;
      *(inited + 40) = v103;
    }

    *(v99 + 32) = specialized Regex2BNF.Choice.init(_:)(inited);
    *(v99 + 40) = v33;
    if (*(v94[3] + 16))
    {

      specialized __RawDictionaryStorage.find<A>(_:)(v97, v98);
      v119 = v118;

      if (v119)
      {
        goto LABEL_45;
      }
    }

    v113 = v133;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v113[3];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v99, v97, v98, v120);
LABEL_37:

    v113[3] = v137;
    result = swift_allocObject();
    *(result + 16) = v127;
    *(result + 32) = v97;
    *(result + 40) = v98;
    *(result + 48) = 0x80;
    return result;
  }

  (*(v19 + 96))(v24, v18);
  v50 = *(v128 + 32);
  v123 = v7;
  v50(v126, v24, v7);
  v51._countAndFlagsBits = 0x50555F544E415551;
  v51._object = 0xEC0000004E5F4F54;
  v52 = v133;
  v53 = Regex2BNF.SymbolGenerator.genSuffix(for:)(v51);
  v54 = v52[1];
  v137 = *v52;
  v138 = v54;

  MEMORY[0x1AC57C120](0x50555F544E415551, 0xEC0000004E5F4F54);

  MEMORY[0x1AC57C120](v53._countAndFlagsBits, v53._object);

  v55 = v137;
  v56 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore9Regex2BNFO6ChoiceVGMR);
  v57 = swift_allocObject();
  *(v57 + 16) = v127;
  *(v57 + 32) = v33;
  v31 = AST.Atom.Number.value.getter();
  if (v58)
  {
    goto LABEL_45;
  }

  v59 = v31;
  v122 = v56;
  v124 = v55;
  v125 = v32;
  v60 = v135;
  if (v31 < 1)
  {
    goto LABEL_38;
  }

  v61 = (v19 + 104);
  v62 = (v19 + 8);
  v63 = 1;
  v64 = v132;
  while (1)
  {
    static Source.Location.fake.getter();
    AST.Atom.Number.init(_:at:)();
    v65 = v129;
    (*v61)(v21, v131, v129);
    v66 = Regex2BNF.BNFConvert.createQuantify(_:_:_:)(v60, v134, v64, v21);
    LODWORD(v31) = (*v62)(v21, v65);
    v68 = *(v57 + 16);
    v67 = *(v57 + 24);
    if (v68 >= v67 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v57);
      v57 = v31;
    }

    *(v57 + 16) = v68 + 1;
    *(v57 + 8 * v68 + 32) = v66;
    if (v59 == v63)
    {
      break;
    }

    v69 = __OFADD__(v63++, 1);
    v60 = v135;
    v64 = v132;
    if (v69)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      if (v31 != *MEMORY[0x1E69E8A90] && v31 != *MEMORY[0x1E69E8A80])
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }

      while (1)
      {
LABEL_45:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }

  v137 = v57;
  specialized MutableCollection<>.reverse()();
  v85 = v137;
  v86 = v133;
  v87 = v124;
  v88 = v122;
  if (*(v133[3] + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)(v87, v88);
    v90 = v89;

    if (v90)
    {
      goto LABEL_45;
    }
  }

  v91 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v86[3];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v85, v87, v88, v91);

  v86[3] = v136;
  v92 = swift_allocObject();
  *(v92 + 16) = v127;
  *(v92 + 32) = v87;
  *(v92 + 40) = v88;
  *(v92 + 48) = 0x80;
  (*(v128 + 8))(v126, v123);
  return v92;
}

Swift::Void __swiftcall Regex2BNF.BNFConvert.optimize()()
{
  v1 = MEMORY[0x1E69E7CC8];
LABEL_2:
  v2 = v0[3];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v105 = v2 + 64;
  v106 = v2;
  while (v6)
  {
LABEL_11:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(*(v2 + 56) + 8 * v11);
    if (*(v12 + 16) == 1)
    {
      v13 = *(v12 + 32);
      if (*(v13 + 16) == 1)
      {
        v14 = *(v13 + 32);
        v15 = *(v13 + 48);
        if ((v15 & 0xC0) != 0x40 || *(v14 + 16) <= 3uLL)
        {
          v16 = (*(v2 + 48) + 16 * v11);
          v17 = v1;
          v18 = *v16;
          v19 = v16[1];
          v20 = *(v13 + 40);

          outlined copy of Regex2BNF.Symbol(v14, v20, v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116 = v18;
          v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
          v24 = v17[2];
          v25 = (v23 & 1) == 0;
          v26 = __OFADD__(v24, v25);
          v27 = v24 + v25;
          if (v26)
          {
            goto LABEL_91;
          }

          v28 = v23;
          if (v17[3] >= v27)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v30 = v20;
              v31 = v17;
              if (v23)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v30 = v20;
              v36 = v22;
              specialized _NativeDictionary.copy()();
              v22 = v36;
              v31 = v17;
              if (v28)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
            v22 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v19);
            if ((v28 & 1) != (v29 & 1))
            {
              goto LABEL_94;
            }

            v30 = v20;
            v31 = v17;
            if (v28)
            {
LABEL_22:
              v32 = v31[7] + 24 * v22;
              v33 = *v32;
              v34 = *(v32 + 8);
              *v32 = v14;
              *(v32 + 8) = v30;
              v35 = *(v32 + 16);
              *(v32 + 16) = v15;
              outlined consume of Regex2BNF.Symbol(v33, v34, v35);

              v1 = v31;
              goto LABEL_26;
            }
          }

          v31[(v22 >> 6) + 8] |= 1 << v22;
          v37 = (v31[6] + 16 * v22);
          *v37 = v116;
          v37[1] = v19;
          v38 = v31[7] + 24 * v22;
          *v38 = v14;
          *(v38 + 8) = v30;
          *(v38 + 16) = v15;
          v39 = v31[2];
          v26 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v26)
          {
            goto LABEL_92;
          }

          v1 = v31;
          v31[2] = v40;
LABEL_26:
          v3 = v105;
          v2 = v106;
        }
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
LABEL_85:
      __break(1u);
      return;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  v41 = v106;
  v98 = 0;
  v42 = 0;
  v43 = 1 << *(v106 + 32);
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  else
  {
    v44 = -1;
  }

  v45 = v44 & *(v106 + 64);
  v46 = (v43 + 63) >> 6;
  v99 = v46;
  v100 = v106;
LABEL_31:
  v47 = v105;
LABEL_32:
  while (v45)
  {
LABEL_37:
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v50 = v49 | (v42 << 6);
    v51 = *(*(v41 + 56) + 8 * v50);
    v52 = *(v51 + 16);
    if (v52)
    {
      v103 = v45;
      v104 = v42;
      v53 = (*(v41 + 48) + 16 * v50);
      v54 = v53[1];
      v97 = *v53;
      v111 = v51 + 32;
      swift_bridgeObjectRetain_n();
      v102 = v54;

      v55 = 0;
      v107 = 0;
      v56 = v51;
      v108 = v52;
      v109 = v51;
      while (v55 < *(v51 + 16))
      {
        v57 = v55 + 1;
        v58 = *(v111 + 8 * v55);
        v59 = *(v58 + 16);
        if (v59)
        {
          v110 = v55;
          v112 = v55 + 1;
          v113 = v56;
          swift_bridgeObjectRetain_n();
          v60 = 0;
          v61 = 0;
          v115 = v58;
          v117 = v58;
          while (2)
          {
            v114 = v60;
            v62 = 24 * v61 + 48;
            while (1)
            {
              if (v61 >= v59)
              {
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }

              v63 = v61 + 1;
              if (__OFADD__(v61, 1))
              {
                goto LABEL_83;
              }

              if (v61 >= *(v58 + 16))
              {
                goto LABEL_84;
              }

              v64 = v58 + v62;
              v65 = *(v58 + v62);
              if ((v65 & 0xC0) == 0x80)
              {
                if (v1[2])
                {
                  v66 = v59;
                  v67 = v1;
                  v69 = *(v64 - 16);
                  v68 = *(v64 - 8);

                  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v68);
                  v72 = v71;
                  v73 = v68;
                  v1 = v67;
                  v59 = v66;
                  v58 = v117;
                  outlined consume of Regex2BNF.Symbol(v69, v73, v65);
                  if (v72)
                  {
                    break;
                  }
                }
              }

              ++v61;
              v62 += 24;
              if (v63 == v59)
              {

                v52 = v108;
                v51 = v109;
                v56 = v113;
                if ((v114 & 1) == 0)
                {

                  v57 = v112;
                  goto LABEL_40;
                }

                goto LABEL_59;
              }
            }

            v74 = v1[7] + 24 * v70;
            v76 = *v74;
            v75 = *(v74 + 8);
            v77 = *(v74 + 16);
            outlined copy of Regex2BNF.Symbol(*v74, v75, v77);
            v78 = v115;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = specialized _ArrayBuffer._consumeAndCreateNew()(v115);
            }

            if (v61 >= *(v78 + 2))
            {
              goto LABEL_90;
            }

            v115 = v78;
            v79 = &v78[v62];
            v80 = *&v78[v62 - 16];
            v81 = *&v78[v62 - 8];
            *(v79 - 2) = v76;
            *(v79 - 1) = v75;
            v82 = v78[v62];
            *v79 = v77;
            outlined consume of Regex2BNF.Symbol(v80, v81, v82);
            v60 = 1;
            ++v61;
            if (v63 != v59)
            {
              continue;
            }

            break;
          }

          v52 = v108;
          v51 = v109;
          v56 = v113;
LABEL_59:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
          }

          if (v110 >= *(v56 + 2))
          {
            goto LABEL_89;
          }

          *&v56[8 * v110 + 32] = v115;

          v57 = v112;
          if (v112 != v52)
          {
            v107 = 1;
            goto LABEL_41;
          }

LABEL_67:
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v118 = v101[3];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v97, v102, v83);

          v100 = v118;
          v101[3] = v118;
          v98 = 1;
          v41 = v106;
          v45 = v103;
          v42 = v104;
          v46 = v99;
          goto LABEL_31;
        }

LABEL_40:
        if (v57 == v52)
        {

          if ((v107 & 1) == 0)
          {

            v47 = v105;
            v41 = v106;
            v45 = v103;
            v42 = v104;
            v46 = v99;
            goto LABEL_32;
          }

          goto LABEL_67;
        }

LABEL_41:
        v55 = v57;
        if (v57 == v52)
        {
          goto LABEL_87;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }
  }

  while (1)
  {
    v48 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v48 >= v46)
    {

      v84 = v101[5];
      if (!v84)
      {
        goto LABEL_93;
      }

      v85 = v101[4];
      v86 = *(v100 + 16);

      if (!v86)
      {
        goto LABEL_93;
      }

      v87 = specialized __RawDictionaryStorage.find<A>(_:)(v85, v84);
      if ((v88 & 1) == 0)
      {
        goto LABEL_93;
      }

      v89 = *(*(v100 + 56) + 8 * v87);
      if (*(v89 + 16) == 1)
      {
        v90 = *(v89 + 32);
        if (*(v90 + 16) == 1)
        {
          v91 = *(v90 + 48);
          if ((v91 & 0xC0) == 0x80)
          {
            if (*(v100 + 16))
            {
              v92 = *(v90 + 32);
              v93 = *(v90 + 40);

              specialized __RawDictionaryStorage.find<A>(_:)(v92, v93);
              v95 = v94;
              outlined consume of Regex2BNF.Symbol(v92, v93, v91);
              if (v95)
              {
              }

              else
              {
                v96 = 0;
              }
            }

            else
            {
              v96 = 0;
            }

            specialized Dictionary.subscript.setter(v96, v85, v84);

            v0 = v101;
            v1 = MEMORY[0x1E69E7CC8];
            goto LABEL_2;
          }
        }
      }

      v0 = v101;
      v1 = MEMORY[0x1E69E7CC8];
      if (v98)
      {
        goto LABEL_2;
      }

      return;
    }

    v45 = *(v47 + 8 * v48);
    ++v42;
    if (v45)
    {
      v42 = v48;
      goto LABEL_37;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_94:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}