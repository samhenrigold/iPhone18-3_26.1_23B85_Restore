uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _DictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  return a4(a1, a2, a3) & 0x1FF;
}

{
  return a4(a1, a2, a3) & 0x1FFFF;
}

{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

void _JSONUnkeyedDecodingContainer.decodeNil()()
{
  v1 = v0[1];
  v2 = v0[3];
  if (v2 >= *(v1 + 16))
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    _sypSgMaTm_0(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    *v5 = v6;
    v7 = *v0;
    swift_beginAccess();
    v8 = *(v7 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v14 = 0xE600000000000000;
    v15 = v2;

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v10);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v11 = swift_allocObject();
    *(inited + 32) = v11;
    *(v11 + 16) = 0x207865646E49;
    *(v11 + 24) = 0xE600000000000000;
    *(v11 + 32) = v2;
    *(v11 + 40) = 0;
    v13 = v8;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
  }

  else if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of Any(v1 + 32 * v2 + 32, v12);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      v0[3] = v2 + 1;
    }
  }
}

void _JSONUnkeyedDecodingContainer.decode<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  v14 = v4[1];
  v15 = v4[3];
  if (v15 >= *(v14 + 16))
  {
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v29 = a1;
    v30 = *v4;
    swift_beginAccess();
    v31 = *(v30 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v62 = 0x207865646E49;
    v63 = 0xE600000000000000;
    v64 = v15;

    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v33);

    v34 = v62;
    v35 = v63;
    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v36 = swift_allocObject();
    *(inited + 32) = v36;
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    *(v36 + 32) = v15;
    *(v36 + 40) = 0;
    v62 = v31;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6B08], v27);
    swift_willThrow();
    return;
  }

  v55 = v5;
  v51 = v11;
  v52 = a4;
  v57 = a1;
  v53 = v10;
  v54 = v4;
  v16 = *v4;
  *&v59 = 0x207865646E49;
  *(&v59 + 1) = 0xE600000000000000;
  v62 = v15;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v17);

  v56 = *(&v59 + 1);
  v18 = v59;
  swift_beginAccess();
  v19 = *(v16 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 136) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
    *(v16 + 136) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
  }

  v60 = &unk_1EFFB8510;
  v50 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v61 = v50;
  v23 = swift_allocObject();
  *&v59 = v23;
  v24 = v56;
  *(v23 + 16) = v18;
  *(v23 + 24) = v24;
  *(v23 + 32) = v15;
  *(v23 + 40) = 0;
  v19[2] = v22 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v59, &v19[5 * v22 + 4]);
  *(v16 + 136) = v19;
  swift_endAccess();
  if (v15 < 0)
  {
    __break(1u);
  }

  else if (v15 < *(v14 + 16))
  {
    outlined init with copy of Any(v14 + 32 * v15 + 32, &v59);
    v25 = v57;
    v26 = v55;
    __DictionaryDecoder.unbox<A>(_:as:)(&v59, v57, a2, v58, v13);
    if (v26)
    {
      __swift_destroy_boxed_opaque_existential_1(&v59);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v59);
      v37 = *(a2 - 8);
      if ((*(v37 + 48))(v13, 1, a2) != 1)
      {
        (*(v37 + 32))(v52, v13, a2);
        v49 = v54;
        v54[3] = v15 + 1;
        goto LABEL_14;
      }

      (*(v51 + 8))(v13, v53);
      v38 = type metadata accessor for DecodingError();
      swift_allocError();
      v40 = v39;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      v58 = *(v41 + 48);
      *v40 = v25;
      v42 = *(v16 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_18CD63400;
      *&v59 = 0x207865646E49;
      *(&v59 + 1) = 0xE600000000000000;
      v62 = v15;

      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v44);

      v45 = v59;
      v46 = v50;
      *(v43 + 56) = &unk_1EFFB8510;
      *(v43 + 64) = v46;
      v47 = swift_allocObject();
      *(v43 + 32) = v47;
      *(v47 + 16) = v45;
      *(v47 + 32) = v15;
      *(v47 + 40) = 0;
      *&v59 = v42;
      specialized Array.append<A>(contentsOf:)(v43);
      *&v59 = 0;
      *(&v59 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *&v59 = 0x6465746365707845;
      *(&v59 + 1) = 0xE900000000000020;
      v48 = _typeName(_:qualified:)();
      MEMORY[0x18D00C9B0](v48);

      MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD46EB0);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6B08], v38);
      swift_willThrow();
    }

    v49 = v54;
LABEL_14:
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v49);
    return;
  }

  __break(1u);
}

void _JSONUnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = v3[3];
  *&v36 = 0x207865646E49;
  *(&v36 + 1) = 0xE600000000000000;
  v35[0] = v6;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  swift_beginAccess();
  v8 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v5 + 136) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v37 = &unk_1EFFB8510;
  v38 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v12 = swift_allocObject();
  *&v36 = v12;
  *(v12 + 16) = 0x207865646E49;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v6;
  *(v12 + 40) = 0;
  v8[2] = v11 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v36, &v8[5 * v11 + 4]);
  *(v5 + 136) = v8;
  swift_endAccess();
  v13 = v4[1];
  if (v6 >= *(v13 + 16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v19 = type metadata accessor for KeyedDecodingContainer();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
LABEL_15:
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v4);
    return;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    outlined init with copy of Any(v13 + 32 * v6 + 32, &v36);
    outlined init with copy of Any(&v36, v35);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v15;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v16 = type metadata accessor for KeyedDecodingContainer();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B08], v14);
    }

    else
    {
      outlined init with copy of Any(&v36, v35);
      type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E5E28]);
      if (swift_dynamicCast())
      {
        v20 = v39;
        v4[3] = v6 + 1;

        specialized _DictionaryKeyedDecodingContainer.init(referencing:wrapping:)(v21, v20);
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v35[0] = v23;
        v35[1] = v25;
        v35[2] = v27;
        v29 = type metadata accessor for _DictionaryKeyedDecodingContainer(0, a2, a3, v28);
        swift_getWitnessTable(protocol conformance descriptor for _DictionaryKeyedDecodingContainer<A>, v29);
        KeyedDecodingContainer.init<A>(_:)();
LABEL_14:
        __swift_destroy_boxed_opaque_existential_1(&v36);
        goto LABEL_15;
      }

      v30 = type metadata accessor for DecodingError();
      swift_allocError();
      v32 = v31;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v32 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    }

    swift_willThrow();
    goto LABEL_14;
  }

  __break(1u);
}

void _JSONUnkeyedDecodingContainer.nestedUnkeyedContainer()(void *a1@<X8>)
{
  v2 = v1;
  v3 = *v1;
  v4 = v1[3];
  *&v26 = 0x207865646E49;
  *(&v26 + 1) = 0xE600000000000000;
  v25[0] = v4;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  swift_beginAccess();
  v6 = *(v3 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 136) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v3 + 136) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v27 = &unk_1EFFB8510;
  v28 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v10 = swift_allocObject();
  *&v26 = v10;
  *(v10 + 16) = 0x207865646E49;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  v6[2] = v9 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v26, &v6[5 * v9 + 4]);
  *(v3 + 136) = v6;
  swift_endAccess();
  v11 = v2[1];
  if (v4 >= *(v11 + 16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v19 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UnkeyedDecodingContainer, MEMORY[0x1E69E6FA0]);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
LABEL_15:
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    outlined init with copy of Any(v11 + 32 * v4 + 32, &v26);
    outlined init with copy of Any(&v26, v25);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
    v12 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {

      v13 = type metadata accessor for DecodingError();
      swift_allocError();
      v15 = v14;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v15 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UnkeyedDecodingContainer, MEMORY[0x1E69E6FA0]);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v16 = MEMORY[0x1E69E6B08];
    }

    else
    {
      outlined init with copy of Any(&v26, v25);
      _sypSgMaTm_0(0, &lazy cache variable for type metadata for [Any], v12 + 8, MEMORY[0x1E69E62F8]);
      if (swift_dynamicCast())
      {
        v20 = v29;
        v2[3] = v4 + 1;
        v21 = *(v3 + 136);
        a1[3] = &unk_1EFFB8488;
        a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer();
        v22 = swift_allocObject();
        *a1 = v22;
        v22[2] = v3;
        v22[3] = v20;
        v22[4] = v21;
        v22[5] = 0;

LABEL_14:
        __swift_destroy_boxed_opaque_existential_1(&v26);
        goto LABEL_15;
      }

      v13 = type metadata accessor for DecodingError();
      swift_allocError();
      v15 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v16 = MEMORY[0x1E69E6AF8];
    }

    (*(*(v13 - 8) + 104))(v15, *v16, v13);
    swift_willThrow();
    goto LABEL_14;
  }

  __break(1u);
}

void _JSONUnkeyedDecodingContainer.superDecoder()(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[3];
  *&v23 = 0x207865646E49;
  *(&v23 + 1) = 0xE600000000000000;
  v26[0] = v5;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v4 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v4 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v24 = &unk_1EFFB8510;
  v25 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v11 = swift_allocObject();
  *&v23 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v5;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v23, &v7[5 * v10 + 4]);
  *(v4 + 136) = v7;
  swift_endAccess();
  v12 = v2[1];
  if (v5 >= *(v12 + 16))
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v22 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Decoder, MEMORY[0x1E69E7748]);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B08], v20);
    swift_willThrow();
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
  }

  else if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v2[3] = v5 + 1;
    outlined init with copy of Any(v12 + 32 * v5 + 32, v26);
    v13 = *(v4 + 24);
    v14 = *(v4 + 40);
    v15 = *(v4 + 56);
    v16 = *(v4 + 72);
    v17 = *(v4 + 104);
    v27[4] = *(v4 + 88);
    v27[5] = v17;
    v27[6] = *(v4 + 120);
    v27[2] = v15;
    v27[3] = v16;
    v27[0] = v13;
    v27[1] = v14;
    v18 = type metadata accessor for __DictionaryDecoder();
    swift_allocObject();

    outlined init with copy of DictionaryDecoder._Options(v27, &v23);
    v19 = __DictionaryDecoder.init(referencing:at:options:)(v26, v7, v27);
    a1[3] = v18;
    a1[4] = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryDecoder and conformance __DictionaryDecoder, type metadata accessor for __DictionaryDecoder, protocol conformance descriptor for __DictionaryDecoder);
    *a1 = v19;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
  }
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _JSONUnkeyedDecodingContainer()
{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)() & 1;
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

__int128 *protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _JSONUnkeyedDecodingContainer()
{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

void protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _JSONUnkeyedDecodingContainer()
{
  specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

{
  specialized _JSONUnkeyedDecodingContainer.decode(_:)();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

unint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FA8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FC0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FE0]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FB0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FB8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FD0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FC8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FD8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(a1, a2, MEMORY[0x1E69E6FE8]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _JSONUnkeyedDecodingContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  return a3(a1, a2) & 0x1FF;
}

{
  return a3(a1, a2) & 0x1FFFF;
}

{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

void __DictionaryDecoder.expectNonNull<A>(_:)(uint64_t a1)
{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = a1;
    swift_beginAccess();

    _StringGuts.grow(_:)(41);

    v6 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v6);

    MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD467D0);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
  }
}

void __DictionaryDecoder.decodeNil()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    outlined init with copy of Any(v1 + 32 * v2, v4);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void __DictionaryDecoder.decode<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17[-1] - v11;
  __DictionaryDecoder.expectNonNull<A>(_:)(a1);
  if (!v5)
  {
    swift_beginAccess();
    v13 = *(v4 + 16);
    v14 = *(v13 + 16);
    if (v14)
    {
      outlined init with copy of Any(v13 + 32 * v14, v17);
      __DictionaryDecoder.unbox<A>(_:as:)(v17, a1, a2, a3, v12);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v15 = *(a2 - 8);
      if ((*(v15 + 48))(v12, 1, a2) != 1)
      {
        (*(v15 + 32))(a4, v12, a2);
        return;
      }

      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

double protocol witness for Encoder.codingPath.getter in conformance __DictionaryEncoder()
{
  swift_beginAccess();

  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance __DictionaryDecoder()
{
  return specialized __DictionaryDecoder.decode(_:)() & 1;
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return specialized __DictionaryDecoder.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __DictionaryDecoder.unbox(_:as:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  _s10Foundation3URLVSgMaTm_0(0, a2, a3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v23 - v12;
  outlined init with copy of Any(a1, v24);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    v14 = a4(0);
    return (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  }

  else
  {
    v23[0] = v5;
    outlined init with copy of Any(a1, v24);
    v16 = a4(0);
    v17 = swift_dynamicCast();
    v18 = *(*(v16 - 8) + 56);
    if (v17)
    {
      v19 = *(v16 - 8);
      v18(v13, 0, 1, v16);
      (*(v19 + 32))(a5, v13, v16);
      return (v18)(a5, 0, 1, v16);
    }

    else
    {
      v18(v13, 1, 1, v16);
      _s10Foundation3URLVSgWOhTm_0(v13, a2, a3);
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      return swift_willThrow();
    }
  }
}

id __DictionaryDecoder.unbox(_:as:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  v3 = swift_dynamicCast();
  v4 = v3;
  if (v3)
  {

    result = 0;
  }

  else
  {
    outlined init with copy of Any(a1, v8);
    type metadata accessor for NSDecimal(0);
    if (swift_dynamicCast())
    {
      result = v7;
    }

    else
    {
      result = specialized __DictionaryDecoder.unbox(_:as:)(a1);
      if (v1)
      {
        return result;
      }

      if (v6)
      {
        __break(1u);
        return result;
      }

      result = MEMORY[0x18D00E3C0](*&result);
    }
  }

  v8[0] = v4;
  return result;
}

void specialized __DictionaryDecoder.unbox<A>(_:as:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  outlined init with copy of Any(a1, &v58);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  v12 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {

    *a4 = 0u;
    a4[1] = 0u;
    return;
  }

  outlined init with copy of Any(a1, &v58);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v46 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    return;
  }

  v47 = a4;
  v13 = (*(a3 + 8))(a2, a3);
  v50 = v14;
  v51 = v13;
  v48 = v54;
  v62 = NSDictionary.makeIterator()();
  NSDictionary.Iterator.next()();
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  if (!*(&v55 + 1))
  {
    v15 = MEMORY[0x1E69E7CC8];
LABEL_39:

    *&v58 = v15;
    type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E5E28]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *v47 = 0u;
      v47[1] = 0u;
    }

    return;
  }

  v15 = MEMORY[0x1E69E7CC8];
  v49 = v7;
  while (1)
  {
    outlined init with take of Any(&v60, v53);
    outlined init with take of Any(&v58, &v54);
    swift_dynamicCast();
    v16 = v52[0];
    swift_beginAccess();
    v17 = *(v7 + 136);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 136) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
      *(v7 + 136) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    }

    *(&v55 + 1) = &unk_1EFFB8510;
    *&v56 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v21 = swift_allocObject();
    *&v54 = v21;
    *(v21 + 16) = v16;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    v17[2] = v20 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v54, &v17[5 * v20 + 4]);
    *(v7 + 136) = v17;
    swift_endAccess();
    v22 = v6;
    __DictionaryDecoder.unbox_(_:as:)(v53, v51, v50, &v54);
    if (v6)
    {

      $defer #1 <A>() in _DictionaryKeyedDecodingContainer.decode(_:forKey:)(v7);

      __swift_destroy_boxed_opaque_existential_1(v53);
      return;
    }

    if (*(&v55 + 1))
    {
      v23 = v12;
      outlined init with take of Any(&v54, v52);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v16, *(&v16 + 1));
      v27 = v15[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_45;
      }

      v30 = v25;
      if (v15[3] < v29)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v24);
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v16, *(&v16 + 1));
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_47;
        }

        v26 = v31;
        if ((v30 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_23:

        v36 = (v15[7] + 32 * v26);
        __swift_destroy_boxed_opaque_existential_1(v36);
        outlined init with take of Any(v52, v36);
LABEL_29:
        v12 = v23;
        v6 = v22;
        v7 = v49;
        goto LABEL_30;
      }

      if (v24)
      {
        if (v25)
        {
          goto LABEL_23;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v30)
        {
          goto LABEL_23;
        }
      }

LABEL_27:
      v15[(v26 >> 6) + 8] |= 1 << v26;
      *(v15[6] + 16 * v26) = v16;
      outlined init with take of Any(v52, (v15[7] + 32 * v26));
      v37 = v15[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_46;
      }

      v15[2] = v39;
      goto LABEL_29;
    }

    outlined destroy of Any?(&v54);
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v16, *(&v16 + 1));
    v35 = v34;

    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }

      outlined init with take of Any((v15[7] + 32 * v33), v52);
      specialized _NativeDictionary._delete(at:)(v33, v15);
    }

    else
    {
      memset(v52, 0, sizeof(v52));
    }

    outlined destroy of Any?(v52);
LABEL_30:
    swift_beginAccess();
    v40 = *(v7 + 136);
    if (!v40[2])
    {
      break;
    }

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 136) = v40;
    if (v41)
    {
      v42 = v40[2];
      if (!v42)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      *(v7 + 136) = v40;
      v42 = v40[2];
      if (!v42)
      {
        goto LABEL_44;
      }
    }

    v43 = v42 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v40[5 * v42 - 1]);
    v40[2] = v43;
    *(v7 + 136) = v40;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v53);
    NSDictionary.Iterator.next()();
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v61 = v57;
    if (!*(&v55 + 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void __DictionaryDecoder.unbox_(_:as:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v55 = a3;
  v56 = a4;
  _s10Foundation3URLVSgMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation3URLVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = type metadata accessor for Date();
  if (v17 == a2 || type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDate, 0x1E695DF00) == a2)
  {
    v22 = v63;
    __DictionaryDecoder.unbox(_:as:)(a1, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E6969530], v16);
    if (!v22)
    {
      v23 = *(v17 - 8);
      if ((*(v23 + 48))(v16, 1, v17) == 1)
      {
        _s10Foundation3URLVSgWOhTm_0(v16, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
        v24 = v56;
        *v56 = 0u;
        v24[1] = 0u;
      }

      else
      {
        v29 = v56;
        *(v56 + 3) = v17;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
        (*(v23 + 32))(boxed_opaque_existential_1, v16, v17);
      }
    }
  }

  else
  {
    v18 = MEMORY[0x1E6969080];
    if (a2 == MEMORY[0x1E6969080] || type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0) == a2)
    {
      v25 = v63;
      v26 = specialized __DictionaryDecoder.unbox(_:as:)(a1);
      if (v25)
      {
        return;
      }

      if (v27 >> 60 != 15)
      {
        v35 = v56;
        *(v56 + 3) = v18;
        *v35 = v26;
        v35[1] = v27;
        return;
      }

      goto LABEL_17;
    }

    if (v10 != a2 && type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSURL, 0x1E695DFF8) != a2)
    {
      type metadata accessor for NSDecimal(0);
      v20 = v19;
      if (v19 != a2 && type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDecimalNumber, 0x1E696AB90) != a2)
      {
        v21 = swift_conformsToProtocol2();
        if (v21 && a2)
        {
          specialized __DictionaryDecoder.unbox<A>(_:as:)(a1, a2, v21, v56);
        }

        else
        {
          outlined init with copy of Any(a1, v60);
          swift_beginAccess();
          outlined init with copy of Any(v60, &v57);
          v44 = *(v4 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + 16) = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
            *(v4 + 16) = v44;
          }

          v46 = v63;
          v47 = v55;
          v49 = *(v44 + 2);
          v48 = *(v44 + 3);
          if (v49 >= v48 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v44);
            *(v4 + 16) = v44;
          }

          __swift_destroy_boxed_opaque_existential_1(v60);
          *(v44 + 2) = v49 + 1;
          outlined init with take of Any(&v57, &v44[32 * v49 + 32]);
          *(v4 + 16) = v44;
          swift_endAccess();
          v58 = type metadata accessor for __DictionaryDecoder();
          v59 = lazy protocol witness table accessor for type __DictionaryEncoder and conformance __DictionaryEncoder(&lazy protocol witness table cache variable for type __DictionaryDecoder and conformance __DictionaryDecoder, type metadata accessor for __DictionaryDecoder, protocol conformance descriptor for __DictionaryDecoder);
          *&v57 = v4;
          v61 = a2;
          v62 = v47;
          __swift_allocate_boxed_opaque_existential_1(v60);

          dispatch thunk of Decodable.init(from:)();
          if (v46)
          {
            __swift_deallocate_boxed_opaque_existential_0(v60);
          }

          else
          {
            v50 = v61;
            v51 = __swift_project_boxed_opaque_existential_1(v60, v61);
            v52 = v56;
            *(v56 + 3) = v50;
            v53 = __swift_allocate_boxed_opaque_existential_1(v52);
            (*(*(v50 - 8) + 16))(v53, v51, v50);
            __swift_destroy_boxed_opaque_existential_1(v60);
          }

          swift_beginAccess();
          _DictionaryDecodingStorage.popContainer()();
          swift_endAccess();
        }

        return;
      }

      v36 = v63;
      v37 = __DictionaryDecoder.unbox(_:as:)(a1);
      if (v36)
      {
        return;
      }

      if ((v39 & 0x100000000) == 0)
      {
        v40 = v56;
        *(v56 + 3) = v20;
        *v40 = v37;
        *(v40 + 1) = v38;
        *(v40 + 4) = v39;
        return;
      }

LABEL_17:
      v28 = v56;
      *v56 = 0u;
      v28[1] = 0u;
      return;
    }

    v31 = v63;
    __DictionaryDecoder.unbox(_:as:)(a1, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0], v9);
    if (!v31)
    {
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        _s10Foundation3URLVSgWOhTm_0(v9, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
        v32 = type metadata accessor for DecodingError();
        swift_allocError();
        v34 = v33;
        swift_beginAccess();

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B00], v32);
        swift_willThrow();
      }

      else
      {
        v41 = *(v11 + 32);
        v41(v13, v9, v10);
        v42 = v56;
        *(v56 + 3) = v10;
        v43 = __swift_allocate_boxed_opaque_existential_1(v42);
        v41(v43, v13, v10);
      }
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _JSONKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance _JSONKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _JSONKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _JSONKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = MEMORY[0x1E69E7CC0];
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = Substring.subscript.getter();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = Substring.index(after:)() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = Substring.index(after:)();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = Substring.subscript.getter();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = Substring.index(after:)();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = Substring.subscript.getter();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = Substring.subscript.getter();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey()
{
  result = lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey;
  if (!lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _JSONKey, &unk_1EFFB8510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey;
  if (!lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _JSONKey, &unk_1EFFB8510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey;
  if (!lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _JSONKey, &unk_1EFFB8510, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONKey and conformance _JSONKey);
  }

  return result;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for (Any, EncodingError.Context)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Any, EncodingError.Context))
  {
    type metadata accessor for EncodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Any, EncodingError.Context));
    }
  }
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s7SwiftUI30__DictionaryReferencingEncoder33_2462DFFC835A6F4511AFEB231EB4B8C2LLC11referencing3key12convertedKey8wrappingAdA02__cE0ACLLC_s06CodingP0_psAK_phSo09NSMutableC0CtcfCTf4nennn_nAA8_JSONKeyACLLV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  type metadata accessor for __DictionaryReferencingEncoder();
  v14 = swift_allocObject();
  *(v14 + 144) = a1;
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);

  v15 = dispatch thunk of CodingKey.stringValue.getter();
  *(v14 + 152) = a7;
  *(v14 + 160) = v15;
  *(v14 + 168) = v16;
  *(v14 + 176) = 1;
  v17 = *(a1 + 72);
  v18 = *(a1 + 104);
  v35 = *(a1 + 88);
  v36 = v18;
  v37 = *(a1 + 120);
  v19 = *(a1 + 40);
  v31 = *(a1 + 24);
  v32 = v19;
  v33 = *(a1 + 56);
  v34 = v17;
  swift_beginAccess();
  v20 = v33;
  *(v14 + 72) = v34;
  v21 = v36;
  *(v14 + 88) = v35;
  *(v14 + 104) = v21;
  *(v14 + 120) = v37;
  v22 = v32;
  *(v14 + 24) = v31;
  *(v14 + 40) = v22;
  v23 = *(a1 + 136);
  *(v14 + 56) = v20;
  outlined init with copy of DictionaryEncoder._Options(&v31, &v28);

  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  *(v14 + 136) = v23;
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  v29 = &unk_1EFFB8510;
  v30 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v26 = swift_allocObject();
  *&v28 = v26;
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  *(v26 + 32) = a4;
  *(v26 + 40) = a5 & 1;
  v23[2] = v25 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v28, &v23[5 * v25 + 4]);
  *(v14 + 136) = v23;
  swift_endAccess();
  return v14;
}

uint64_t specialized __DictionaryReferencingEncoder.__allocating_init(referencing:key:convertedKey:wrapping:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  (*(v11 + 32))(&v33 - v15, v14);
  type metadata accessor for __DictionaryReferencingEncoder();
  v17 = swift_allocObject();
  *(v17 + 144) = a1;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  v18 = dispatch thunk of CodingKey.stringValue.getter();
  *(v17 + 152) = a4;
  *(v17 + 160) = v18;
  *(v17 + 168) = v19;
  *(v17 + 176) = 1;
  v20 = *(a1 + 72);
  v21 = *(a1 + 104);
  v41 = *(a1 + 88);
  v42 = v21;
  v43 = *(a1 + 120);
  v22 = *(a1 + 40);
  v37 = *(a1 + 24);
  v38 = v22;
  v39 = *(a1 + 56);
  v40 = v20;
  swift_beginAccess();
  v23 = v39;
  *(v17 + 72) = v40;
  v24 = v42;
  *(v17 + 88) = v41;
  *(v17 + 104) = v24;
  *(v17 + 120) = v43;
  v25 = v38;
  *(v17 + 24) = v37;
  *(v17 + 40) = v25;
  v26 = *(a1 + 136);
  *(v17 + 56) = v23;
  outlined init with copy of DictionaryEncoder._Options(&v37, v36);

  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  *(v17 + 136) = v26;
  v27 = (v17 + 136);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v17 + 136) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    *v27 = v26;
  }

  v30 = v26[2];
  v29 = v26[3];
  if (v30 >= v29 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v26);
    *v27 = v26;
  }

  v31 = v34;
  (*(v11 + 16))(v34, v16, a6);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v30, v31, (v17 + 136), a6, v35);
  *(v17 + 136) = v26;
  swift_endAccess();
  (*(v11 + 8))(v16, a6);
  return v17;
}

unint64_t specialized static DictionaryDecoder.KeyDecodingStrategy._convertFromSnakeCase(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_11:

    return v3;
  }

  v5 = 0;
  v6 = 4 * v4;
  v7 = 15;
  while (1)
  {
    if (String.subscript.getter() == 95 && v9 == 0xE100000000000000)
    {

      goto LABEL_7;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v7 = String.index(after:)();
    v5 = v7 >> 14;
    if (v7 >> 14 == v6)
    {
      goto LABEL_11;
    }
  }

  v11 = 7;
  if (((a2 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v59 = v11 | (v4 << 16);
  result = String.index(before:)();
  for (i = result >> 14; v5 < result >> 14; i = result >> 14)
  {
    if (String.subscript.getter() == 95 && v14 == 0xE100000000000000)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        break;
      }
    }

    result = String.index(before:)();
  }

  if (i < v5)
  {
    __break(1u);
    goto LABEL_45;
  }

  result = String.index(after:)();
  v15 = result >> 14;
  v60 = v6;
  if (v6 < result >> 14)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = result;
  String.index(after:)();
  v17 = String.subscript.getter();
  *&v62 = 95;
  *(&v62 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v17);
  v54[2] = &v62;
  v21 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v54, v18, v19, v20, v55);
  v22 = *(v21 + 2);
  if (v22 == 1)
  {

    String.index(after:)();
    v23 = String.subscript.getter();
    v24 = MEMORY[0x18D00C930](v23);
    v26 = v25;

    v27 = v60;
    if (!(v7 >> 14))
    {
      goto LABEL_26;
    }

LABEL_39:
    v47 = String.subscript.getter();
    v48 = MEMORY[0x18D00C930](v47);
    v50 = v49;

    if (v15 == v27)
    {
      *&v62 = v48;
      *(&v62 + 1) = v50;

      MEMORY[0x18D00C9B0](v24, v26);

      goto LABEL_43;
    }

    *&v62 = v48;
    *(&v62 + 1) = v50;

    MEMORY[0x18D00C9B0](v24, v26);

    v26 = *(&v62 + 1);
    v51 = v62;
    v52 = String.subscript.getter();
    v43 = MEMORY[0x18D00C930](v52);
    v45 = v53;

    *&v62 = v51;
LABEL_42:
    *(&v62 + 1) = v26;

    MEMORY[0x18D00C9B0](v43, v45);

LABEL_43:

    return v62;
  }

  _sypSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18CD63400;
  if (!v22)
  {
    goto LABEL_46;
  }

  v28 = result;
  v57 = v15;
  v58 = v16;

  v29 = Substring.lowercased()();

  v28[2] = v29;
  v56 = v28;
  v30 = *(v21 + 2);
  v27 = v60;
  if (!v30)
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v55[1] = v3;
  v31 = v30 - 1;
  if (v30 == 1)
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v65;
    v61 = lazy protocol witness table accessor for type Substring and conformance Substring();
    v55[0] = v21;
    v33 = (v21 + 88);
    do
    {
      v34 = *(v33 - 1);
      v35 = *v33;
      v62 = *(v33 - 3);
      v63 = v34;
      v64 = v35;
      v36 = StringProtocol.capitalized.getter();
      v38 = v37;
      v65 = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v32 = v65;
      }

      *(v32 + 16) = v40 + 1;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v33 += 4;
      --v31;
    }

    while (v31);

    v27 = v60;
  }

  *&v62 = v56;
  specialized Array.append<A>(contentsOf:)(v32);
  _sypSgMaTm_0(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v46;

  v15 = v57;
  if (v7 >> 14)
  {
    goto LABEL_39;
  }

LABEL_26:
  if (v15 != v27)
  {
    v42 = String.subscript.getter();
    v43 = MEMORY[0x18D00C930](v42);
    v45 = v44;

    *&v62 = v24;
    goto LABEL_42;
  }

  return v24;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t result, char a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  outlined init with copy of (String, Any)(result + 32, &v40);
  v8 = v40;
  v7 = v41;
  outlined init with take of Any(v42, v39);
  v9 = *a3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v9[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    result = outlined init with take of Any(v39, (v21[7] + 32 * result));
    v23 = v21[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v21[2] = v24;
    v5 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  specialized _NativeDictionary.copy()();
  result = v20;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = *a3;
  v18 = 32 * result;
  outlined init with copy of Any(*(*a3 + 56) + 32 * result, v38);
  __swift_destroy_boxed_opaque_existential_1(v39);

  v19 = v17[7];
  __swift_destroy_boxed_opaque_existential_1((v19 + v18));
  result = outlined init with take of Any(v38, (v19 + v18));
  v5 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 80;
    v3 = 1;
    while (1)
    {
      outlined init with copy of (String, Any)(v6, &v40);
      v8 = v40;
      v7 = v41;
      outlined init with take of Any(v42, v39);
      v28 = *a3;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v30 = *(v28 + 16);
      v31 = (v29 & 1) == 0;
      v13 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v13)
      {
        goto LABEL_23;
      }

      v15 = v29;
      if (*(v28 + 24) < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v15 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v15)
      {
        v25 = *a3;
        v26 = 32 * result;
        outlined init with copy of Any(*(*a3 + 56) + 32 * result, v38);
        __swift_destroy_boxed_opaque_existential_1(v39);

        v27 = *(v25 + 56);
        __swift_destroy_boxed_opaque_existential_1((v27 + v26));
        result = outlined init with take of Any(v38, (v27 + v26));
      }

      else
      {
        v34 = *a3;
        *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
        v35 = (v34[6] + 16 * result);
        *v35 = v8;
        v35[1] = v7;
        result = outlined init with take of Any(v39, (v34[7] + 32 * result));
        v36 = v34[2];
        v13 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v34[2] = v37;
      }

      v6 += 48;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void specialized _DictionaryKeyedDecodingContainer.init(referencing:wrapping:)(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[14];
  if (!v4)
  {

LABEL_44:
    swift_beginAccess();

    return;
  }

  if (v4 != 1)
  {
    v29 = a1[15];
    v30 = *(a2 + 16);
    if (v30)
    {

      sub_18C0C046C(v4, v29);
      v69 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v31 = v69;
      v32 = v2 + 64;
      v33 = _HashTable.startBucket.getter();
      v34 = *(v2 + 36);
      swift_beginAccess();
      v55 = v2 + 64;
      v56 = v2;
      do
      {
        if (v33 < 0 || v33 >= 1 << *(v2 + 32))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if ((*(v32 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
        {
          goto LABEL_46;
        }

        v60 = v34;
        v58 = v30;
        v35 = *(v2 + 56);
        v36 = (*(v2 + 48) + 16 * v33);
        v37 = v31;
        v38 = v29;
        v39 = v4;
        v41 = *v36;
        v40 = v36[1];
        outlined init with copy of Any(v35 + 32 * v33, v65);
        v62 = v41;
        v63 = v40;
        outlined init with take of Any(v65, v64);
        v42 = a1[17];
        type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18CD63400;
        *(inited + 56) = &unk_1EFFB8510;
        *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
        v44 = swift_allocObject();
        *(inited + 32) = v44;
        *(v44 + 16) = v41;
        *(v44 + 24) = v40;
        v4 = v39;
        v29 = v38;
        v31 = v37;
        *(v44 + 32) = 0;
        *(v44 + 40) = 1;
        v61[0] = v42;
        swift_bridgeObjectRetain_n();

        specialized Array.append<A>(contentsOf:)(inited);
        v4(v61, v61[0]);

        __swift_project_boxed_opaque_existential_1(v61, v61[3]);
        v45 = dispatch thunk of CodingKey.stringValue.getter();
        v47 = v46;
        outlined init with copy of Any(v64, &v67);
        __swift_destroy_boxed_opaque_existential_1(v61);
        *&v66 = v45;
        *(&v66 + 1) = v47;
        outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)(&v62, type metadata accessor for (key: String, value: Any));
        v69 = v37;
        v49 = *(v37 + 16);
        v48 = *(v37 + 24);
        if (v49 >= v48 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
          v31 = v69;
        }

        *(v31 + 16) = v49 + 1;
        v50 = (v31 + 48 * v49);
        v51 = v66;
        v52 = v68;
        v50[3] = v67;
        v50[4] = v52;
        v50[2] = v51;
        v2 = v56;
        if (v33 >= -(-1 << *(v56 + 32)))
        {
          goto LABEL_47;
        }

        v32 = v55;
        if ((*(v55 + 8 * (v33 >> 6)) & (1 << v33)) == 0)
        {
          goto LABEL_48;
        }

        if (v60 != *(v56 + 36))
        {
          goto LABEL_49;
        }

        v33 = _HashTable.occupiedBucket(after:)();
        v34 = *(v56 + 36);
        v30 = v58 - 1;
      }

      while (v58 != 1);

      if (!*(v31 + 16))
      {
        goto LABEL_42;
      }
    }

    else
    {

      sub_18C0C046C(v4, v29);

      v31 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_42:
        v53 = MEMORY[0x1E69E7CC8];
        goto LABEL_43;
      }
    }

    type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>, MEMORY[0x1E69E6EC8]);
    v53 = static _DictionaryStorage.allocate(capacity:)();
LABEL_43:
    *&v66 = v53;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v31, 1, &v66);

    _s7SwiftUI17DictionaryDecoderC20DataDecodingStrategyOWOe_0(v4, v29);
    goto LABEL_44;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {

    v6 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_37:
      type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>, MEMORY[0x1E69E6EC8]);
      v54 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
LABEL_39:
      v54 = MEMORY[0x1E69E7CC8];
    }

    *&v66 = v54;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, 1, &v66);

    goto LABEL_44;
  }

  v61[0] = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v61[0];
  v57 = v2 + 64;
  v7 = _HashTable.startBucket.getter();
  v8 = 0;
  v59 = *(v2 + 36);
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v57 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_51;
    }

    if (v59 != *(v2 + 36))
    {
      goto LABEL_52;
    }

    v11 = (*(v2 + 48) + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    outlined init with copy of Any(*(v2 + 56) + 32 * v7, v65);
    v62 = v12;
    v63 = v13;
    outlined init with take of Any(v65, v64);

    v14 = specialized static DictionaryDecoder.KeyDecodingStrategy._convertFromSnakeCase(_:)(v12, v13);
    v16 = v15;
    outlined init with copy of Any(v64, &v67);
    *&v66 = v14;
    *(&v66 + 1) = v16;
    outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)(&v62, type metadata accessor for (key: String, value: Any));
    v61[0] = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      v6 = v61[0];
    }

    *(v6 + 16) = v18 + 1;
    v19 = (v6 + 48 * v18);
    v20 = v66;
    v21 = v68;
    v19[3] = v67;
    v19[4] = v21;
    v19[2] = v20;
    v9 = 1 << *(v2 + 32);
    if (v7 >= v9)
    {
      goto LABEL_53;
    }

    v22 = *(v57 + 8 * v10);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_54;
    }

    if (v59 != *(v2 + 36))
    {
      goto LABEL_55;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v10 << 6;
      v25 = v10 + 1;
      v26 = (v2 + 72 + 8 * v10);
      while (v25 < (v9 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v59, 0);
          v9 = __clz(__rbit64(v27)) + v24;
          goto LABEL_6;
        }
      }

      outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v59, 0);
    }

LABEL_6:
    ++v8;
    v7 = v9;
    if (v8 == v5)
    {

      if (!*(v6 + 16))
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);

  __break(1u);
}

uint64_t specialized __DictionaryDecoder.unbox(_:as:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    return 0;
  }

  else
  {
    outlined init with copy of Any(a1, v7);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v5 = v4;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
      return swift_willThrow();
    }
  }
}

{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    return 0;
  }

  outlined init with copy of Any(a1, v18);
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    if (*MEMORY[0x1E695E4D0])
    {
      v5 = v16 == *MEMORY[0x1E695E4D0];
    }

    else
    {
      v5 = 0;
    }

    if (!v5 && (!*MEMORY[0x1E695E4C0] || v16 != *MEMORY[0x1E695E4C0]))
    {
      [v16 doubleValue];
      v14 = v13;

      return v14;
    }
  }

  outlined init with copy of Any(a1, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v6 = v1[9];
  if (!v6)
  {

    goto LABEL_18;
  }

  v8 = v1[10];
  v7 = v1[11];
  v9 = v1[12];
  if (v16 == v1[8] && v6 == v17 || (v19 = v1[13], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 0x7FF0000000000000;
  }

  if (v16 == v8 && v7 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0xFFF0000000000000;
  }

  if (v16 == v9 && v19 == v17)
  {

    return 0x7FF8000000000000;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
LABEL_18:
    v10 = type metadata accessor for DecodingError();
    swift_allocError();
    v12 = v11;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v12 = v4;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6AF8], v10);
    return swift_willThrow();
  }

  return 0x7FF8000000000000;
}

{
  outlined init with copy of Any(a1, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    return 0;
  }

  else
  {
    outlined init with copy of Any(a1, v7);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v5 = v4;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
      return swift_willThrow();
    }
  }
}

__int128 *specialized _JSONUnkeyedDecodingContainer.decode(_:)()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v18 = MEMORY[0x1E69E6158];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v39 = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v33 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v33;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    v14 = specialized __DictionaryDecoder.unbox(_:as:)(&v35);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if (v24)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v26 = MEMORY[0x1E69E6158];
      v27 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v29);

      v31 = *(&v35 + 1);
      v30 = v35;
      *(v28 + 56) = &unk_1EFFB8510;
      *(v28 + 64) = v33;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v35 = v27;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v28);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v26, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v18 = MEMORY[0x1E69E6530];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v39 = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v34 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v34;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v35, &selRef_integerValue, &selRef_initWithInteger_, 7630409, 0xE300000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if ((v24 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v27 = MEMORY[0x1E69E6530];
      v28 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v30);

      v32 = *(&v35 + 1);
      v31 = v35;
      *(v29 + 56) = &unk_1EFFB8510;
      *(v29 + 64) = v34;
      v33 = swift_allocObject();
      *(v29 + 32) = v33;
      *(v33 + 16) = __PAIR128__(v32, v31);
      *(v33 + 32) = v4;
      *(v33 + 40) = 0;
      *&v35 = v28;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v29);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6B08], v25);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v17 = MEMORY[0x1E69E7230];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v37 = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x100) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v24 = MEMORY[0x1E69E7230];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v17 = MEMORY[0x1E69E7290];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v37 = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x10000) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v24 = MEMORY[0x1E69E7290];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v18 = MEMORY[0x1E69E7360];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v39 = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v33 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v33;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v35, &selRef_longLongValue, &selRef_initWithLongLong_, 0x3436746E49, 0xE500000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if ((v24 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v26 = MEMORY[0x1E69E7360];
      v27 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v29);

      v31 = *(&v35 + 1);
      v30 = v35;
      *(v28 + 56) = &unk_1EFFB8510;
      *(v28 + 64) = v33;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v35 = v27;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v28);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v26, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v18 = MEMORY[0x1E69E6810];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v39 = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v33 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v33;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v35, &selRef_unsignedIntegerValue, &selRef_initWithUnsignedInteger_, 1953384789, 0xE400000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if ((v24 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v26 = MEMORY[0x1E69E6810];
      v27 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v29);

      v31 = *(&v35 + 1);
      v30 = v35;
      *(v28 + 56) = &unk_1EFFB8510;
      *(v28 + 64) = v33;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v35 = v27;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v28);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v26, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v17 = MEMORY[0x1E69E7508];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v37 = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x100) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v24 = MEMORY[0x1E69E7508];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v17 = MEMORY[0x1E69E75F8];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v37 = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x10000) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v24 = MEMORY[0x1E69E75F8];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v18 = MEMORY[0x1E69E76D8];
    v19 = *v0;
    swift_beginAccess();
    v20 = *(v19 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v38[1] = 0xE600000000000000;
    v39 = v4;

    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v22);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v23 = swift_allocObject();
    *(inited + 32) = v23;
    *(v23 + 16) = 0x207865646E49;
    *(v23 + 24) = 0xE600000000000000;
    *(v23 + 32) = v4;
    *(v23 + 40) = 0;
    v38[0] = v20;
    v13 = v38;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v35 = 0x207865646E49;
  *(&v35 + 1) = 0xE600000000000000;
  v38[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v36 = &unk_1EFFB8510;
  v33 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v37 = v33;
  v11 = swift_allocObject();
  *&v35 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v35);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v35, &selRef_unsignedLongLongValue, &selRef_initWithUnsignedLongLong_, 0x3436746E4955, 0xE600000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    else
    {
      v13 = v14;
      v24 = v15;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      if ((v24 & 1) == 0)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13;
      }

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v26 = MEMORY[0x1E69E76D8];
      v27 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_18CD63400;
      *&v35 = 0x207865646E49;
      *(&v35 + 1) = 0xE600000000000000;
      v38[0] = v4;

      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v29);

      v31 = *(&v35 + 1);
      v30 = v35;
      *(v28 + 56) = &unk_1EFFB8510;
      *(v28 + 64) = v33;
      v32 = swift_allocObject();
      *(v28 + 32) = v32;
      *(v32 + 16) = __PAIR128__(v31, v30);
      *(v32 + 32) = v4;
      *(v32 + 40) = 0;
      *&v35 = v27;
      v13 = &v35;
      specialized Array.append<A>(contentsOf:)(v28);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v26, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

void specialized __DictionaryDecoder.unbox(_:as:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v18);
    v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_10:
      v4 = type metadata accessor for DecodingError();
      swift_allocError();
      v6 = v5;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v6 = v2;
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
      swift_willThrow();
      return;
    }

    if (*MEMORY[0x1E695E4D0])
    {
      v3 = v17 == *MEMORY[0x1E695E4D0];
    }

    else
    {
      v3 = 0;
    }

    if (v3 || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
    {

      goto LABEL_10;
    }

    v7 = [v17 charValue];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
    v9 = static NSObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      v10 = type metadata accessor for DecodingError();
      swift_allocError();
      v12 = v11;
      swift_beginAccess();

      _StringGuts.grow(_:)(43);

      v13 = [v17 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      MEMORY[0x18D00C9B0](v14, v16);

      MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
      MEMORY[0x18D00C9B0](947154505, 0xE400000000000000);
      MEMORY[0x18D00C9B0](46, 0xE100000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
      swift_willThrow();
    }
  }
}

{
  outlined init with copy of Any(a1, v7);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v7);
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    if (*MEMORY[0x1E695E4D0])
    {
      if (v6 == *MEMORY[0x1E695E4D0])
      {
LABEL_2:

        return;
      }

      if (*MEMORY[0x1E695E4C0])
      {
        if (v6 == *MEMORY[0x1E695E4C0])
        {
        }

        else
        {
          [v6 integerValue];
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  outlined init with copy of Any(a1, v7);
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, v7);
    if (!swift_dynamicCast())
    {
      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v5 = v4;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v5 = v2;
      swift_beginAccess();

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
      swift_willThrow();
    }
  }
}

{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v18);
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v3 = v17 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  if (v3 || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v6 = v2;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
    return;
  }

  v7 = [v17 shortValue];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
LABEL_2:

    return;
  }

  v10 = type metadata accessor for DecodingError();
  swift_allocError();
  v12 = v11;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v13 = [v17 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x18D00C9B0](v14, v16);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](0x3631746E49, 0xE500000000000000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
  swift_willThrow();
}

{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v18);
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v3 = v17 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  if (v3 || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v6 = v2;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
    return;
  }

  v7 = [v17 unsignedCharValue];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
LABEL_2:

    return;
  }

  v10 = type metadata accessor for DecodingError();
  swift_allocError();
  v12 = v11;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v13 = [v17 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x18D00C9B0](v14, v16);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](0x38746E4955, 0xE500000000000000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
  swift_willThrow();
}

{
  outlined init with copy of Any(a1, v18);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v18);
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v3 = v17 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  if (v3 || *MEMORY[0x1E695E4C0] && v17 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v4 = type metadata accessor for DecodingError();
    swift_allocError();
    v6 = v5;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v6 = v2;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
    return;
  }

  v7 = [v17 unsignedShortValue];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
LABEL_2:

    return;
  }

  v10 = type metadata accessor for DecodingError();
  swift_allocError();
  v12 = v11;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v13 = [v17 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x18D00C9B0](v14, v16);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](0x3631746E4955, 0xE600000000000000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B00], v10);
  swift_willThrow();
}

{
  outlined init with copy of Any(a1, v26);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  v3 = swift_dynamicCast();
  v4 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  outlined init with copy of Any(a1, v26);
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (*MEMORY[0x1E695E4D0])
  {
    v6 = v24 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = 0;
  }

  if (v6 || *MEMORY[0x1E695E4C0] && v24 == *MEMORY[0x1E695E4C0])
  {

LABEL_12:
    outlined init with copy of Any(a1, v26);
    if (swift_dynamicCast())
    {
      v7 = v1[9];
      if (v7)
      {
        v9 = v1[10];
        v8 = v1[11];
        v10 = v1[12];
        if (v24 == v1[8] && v7 == v25 || (v23 = v1[13], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v24 == v9 && v8 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v24 == v10 && v23 == v25)
        {

          goto LABEL_3;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }
    }

    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v12;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v13 = v5;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
    swift_willThrow();
    return;
  }

  [v24 doubleValue];
  if (fabs(v14) <= 3.40282347e38)
  {
LABEL_2:

LABEL_3:
    v26[0] = v4;
    return;
  }

  v15 = type metadata accessor for DecodingError();
  swift_allocError();
  v17 = v16;
  swift_beginAccess();

  _StringGuts.grow(_:)(41);

  v18 = [v24 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  MEMORY[0x18D00C9B0](v19, v21);

  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD46A60);
  MEMORY[0x18D00C9B0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
  swift_willThrow();
}

uint64_t specialized __DictionaryDecoder.decode(_:)()
{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E7230];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v10);
    specialized __DictionaryDecoder.unbox(_:as:)(v10);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v0;
    }

    v0 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
    if ((v0 & 0x100) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E6370];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0 & 1;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v10);
    specialized __DictionaryDecoder.unbox(_:as:)(v10);
    LOBYTE(v0) = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v1 || v0 != 2)
    {
      return v0 & 1;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E6530];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v12);
    specialized __DictionaryDecoder.unbox(_:as:)(v12, &selRef_integerValue, &selRef_initWithInteger_, 7630409, 0xE300000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v0;
    }

    v0 = v8;
    v11 = v9;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if ((v11 & 1) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E7290];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v10);
    specialized __DictionaryDecoder.unbox(_:as:)(v10);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v0;
    }

    v0 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
    if ((v0 & 0x10000) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E72F0];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v10);
    specialized __DictionaryDecoder.unbox(_:as:)(v10, &selRef_intValue, &selRef_initWithInt_, 0x3233746E49, 0xE500000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v0;
    }

    v0 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
    if ((v0 & 0x100000000) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E7360];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v12);
    specialized __DictionaryDecoder.unbox(_:as:)(v12, &selRef_longLongValue, &selRef_initWithLongLong_, 0x3436746E49, 0xE500000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v0;
    }

    v0 = v8;
    v11 = v9;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if ((v11 & 1) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E6810];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v12);
    specialized __DictionaryDecoder.unbox(_:as:)(v12, &selRef_unsignedIntegerValue, &selRef_initWithUnsignedInteger_, 1953384789, 0xE400000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v0;
    }

    v0 = v8;
    v11 = v9;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if ((v11 & 1) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E7508];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v10);
    specialized __DictionaryDecoder.unbox(_:as:)(v10);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v0;
    }

    v0 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
    if ((v0 & 0x100) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E75F8];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v10);
    specialized __DictionaryDecoder.unbox(_:as:)(v10);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v0;
    }

    v0 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
    if ((v0 & 0x10000) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E7668];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v10);
    specialized __DictionaryDecoder.unbox(_:as:)(v10, &selRef_unsignedIntValue, &selRef_initWithUnsignedInt_, 0x3233746E4955, 0xE600000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v0;
    }

    v0 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
    if ((v0 & 0x100000000) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E76D8];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v12);
    specialized __DictionaryDecoder.unbox(_:as:)(v12, &selRef_unsignedLongLongValue, &selRef_initWithUnsignedLongLong_, 0x3436746E4955, 0xE600000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v0;
    }

    v0 = v8;
    v11 = v9;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if ((v11 & 1) == 0)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E6448];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    return swift_willThrow();
  }

  swift_beginAccess();
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_9;
  }

  outlined init with copy of Any(v7 + 32 * v8, v11);
  specialized __DictionaryDecoder.unbox(_:as:)(v11);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v10 = v9;
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  if ((v10 & 0x100000000) != 0)
  {
    __break(1u);
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E63B0];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    return swift_willThrow();
  }

  swift_beginAccess();
  v7 = *(v0 + 16);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_9;
  }

  outlined init with copy of Any(v7 + 32 * v8, v11);
  specialized __DictionaryDecoder.unbox(_:as:)(v11);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v10 = v9;
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  if (v10)
  {
    __break(1u);
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  __DictionaryDecoder.decodeNil()();
  if (v2)
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v5 = MEMORY[0x1E69E6158];
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return v0;
  }

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of Any(v6 + 32 * v7, v11);
    v0 = specialized __DictionaryDecoder.unbox(_:as:)(v11);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v1 || v9)
    {
      return v0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static DictionaryEncoder.KeyEncodingStrategy._convertToSnakeCase(_:)(uint64_t a1, unint64_t a2)
{
  v43 = type metadata accessor for CharacterSet();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return a1;
  }

  v10 = String.index(after:)();
  v45 = a2;
  v11 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v41 = 4 * v9;
  if (4 * v9 < v10 >> 14)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v44 = v11 | (v9 << 16);
    v42 = (v6 + 8);
    v2 = MEMORY[0x1E69E7CC0];
    v3 = 15;
    v46 = a1;
    while (1)
    {
      v47 = a1;
      v48 = v45;
      static CharacterSet.uppercaseLetters.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v13 = StringProtocol.rangeOfCharacter(from:options:range:)();
      v15 = v14;
      v16 = *v42;
      (*v42)(v8, v43);
      if (v15)
      {
        v17 = v3 >> 14;
        goto LABEL_26;
      }

      v17 = v13 >> 14;
      if (v13 >> 14 < v3 >> 14)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v2);
      }

      *(v2 + 2) = v19 + 1;
      v20 = &v2[16 * v19];
      *(v20 + 4) = v3;
      *(v20 + 5) = v13;
      if (v41 < v17)
      {
        goto LABEL_37;
      }

      v3 = v45;
      a1 = v46;
      v47 = v46;
      v48 = v45;
      static CharacterSet.lowercaseLetters.getter();
      v21 = StringProtocol.rangeOfCharacter(from:options:range:)();
      v23 = v22;
      v25 = v24;
      v16(v8, v43);
      if (v25)
      {
        break;
      }

      if ((String.index(after:)() ^ v21) >= 0x4000)
      {
        v26 = String.index(before:)();
        if (v17 > v26 >> 14)
        {
          goto LABEL_39;
        }

        v28 = *(v2 + 2);
        v27 = *(v2 + 3);
        if (v28 >= v27 >> 1)
        {
          v29 = v26;
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2);
          v26 = v29;
        }

        *(v2 + 2) = v28 + 1;
        v12 = &v2[16 * v28];
        *(v12 + 4) = v13;
        *(v12 + 5) = v26;
        v13 = v26;
      }

      v3 = v13;
      if (v41 < v23 >> 14)
      {
        goto LABEL_38;
      }
    }

    v3 = v13;
LABEL_26:
    if (v41 < v17)
    {
      goto LABEL_41;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_28;
    }
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
LABEL_28:
  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  v32 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v32;
  v33 = &v2[16 * v31];
  v34 = v44;
  *(v33 + 4) = v3;
  *(v33 + 5) = v34;
  v47 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 + 1, 0);
  v35 = v47;
  v36 = v2 + 40;
  do
  {
    String.subscript.getter();
    v37 = Substring.lowercased()();

    v47 = v35;
    v39 = *(v35 + 16);
    v38 = *(v35 + 24);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v35 = v47;
    }

    v36 += 16;
    *(v35 + 16) = v39 + 1;
    *(v35 + 16 * v39 + 32) = v37;
    --v32;
  }

  while (v32);

  v47 = v35;
  _sypSgMaTm_0(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  a1 = BidirectionalCollection<>.joined(separator:)();

  return a1;
}

void specialized __DictionaryDecoder.unbox(_:as:)(uint64_t a1, SEL *a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of Any(a1, v26);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  v27 = a5;
  outlined init with copy of Any(a1, v26);
  v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = v25;
  if (*MEMORY[0x1E695E4D0])
  {
    v12 = v25 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v12 = 0;
  }

  if (v12 || *MEMORY[0x1E695E4C0] && v25 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v14;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v15 = v10;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return;
  }

  v16 = [v25 *a2];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a3];
  LOBYTE(v16) = static NSObject.== infix(_:_:)();

  if (v16)
  {
LABEL_2:

    return;
  }

  v18 = type metadata accessor for DecodingError();
  swift_allocError();
  v20 = v19;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v21 = [v25 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  MEMORY[0x18D00C9B0](v22, v24);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](a4, v27);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B00], v18);
  swift_willThrow();
}

{
  outlined init with copy of Any(a1, v29);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNull, 0x1E695DFB0);
  v10 = swift_dynamicCast();
  v11 = v10;
  if (v10)
  {
    goto LABEL_2;
  }

  v30 = a5;
  outlined init with copy of Any(a1, v29);
  v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = v28;
  if (*MEMORY[0x1E695E4D0])
  {
    v14 = v28 == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v14 = 0;
  }

  if (v14 || *MEMORY[0x1E695E4C0] && v28 == *MEMORY[0x1E695E4C0])
  {

LABEL_11:
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v17 = v12;
    swift_beginAccess();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    return;
  }

  v18 = [v28 *a2];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a3];
  v20 = static NSObject.== infix(_:_:)();

  if (v20)
  {
LABEL_2:

    v29[0] = v11;
    return;
  }

  v21 = type metadata accessor for DecodingError();
  swift_allocError();
  v23 = v22;
  swift_beginAccess();

  _StringGuts.grow(_:)(43);

  v24 = [v28 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  MEMORY[0x18D00C9B0](v25, v27);

  MEMORY[0x18D00C9B0](0xD000000000000012, 0x800000018CD46840);
  MEMORY[0x18D00C9B0](a4, v30);
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B00], v21);
  swift_willThrow();
}

uint64_t specialized _JSONUnkeyedDecodingContainer.decode(_:)()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v17 = MEMORY[0x1E69E6370];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v37 = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13 & 1;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    LOBYTE(v13) = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
    }

    else
    {
      LOBYTE(v13) = v14;
      __swift_destroy_boxed_opaque_existential_1(&v33);
      if (v13 != 2)
      {
        v2[3] = v4 + 1;
        $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
        return v13 & 1;
      }

      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v24 = MEMORY[0x1E69E6370];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
    }

    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13 & 1;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v17 = MEMORY[0x1E69E72F0];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v37 = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33, &selRef_intValue, &selRef_initWithInt_, 0x3233746E49, 0xE500000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x100000000) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v24 = MEMORY[0x1E69E72F0];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v17 = MEMORY[0x1E69E7668];
    v18 = *v0;
    swift_beginAccess();
    v19 = *(v18 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v36[1] = 0xE600000000000000;
    v37 = v4;

    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v21);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v22 = swift_allocObject();
    *(inited + 32) = v22;
    *(v22 + 16) = 0x207865646E49;
    *(v22 + 24) = 0xE600000000000000;
    *(v22 + 32) = v4;
    *(v22 + 40) = 0;
    v36[0] = v19;
    v13 = v36;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
    swift_willThrow();
    return v13;
  }

  v5 = *v0;
  *&v33 = 0x207865646E49;
  *(&v33 + 1) = 0xE600000000000000;
  v36[0] = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v34 = &unk_1EFFB8510;
  v31 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v35 = v31;
  v11 = swift_allocObject();
  *&v33 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v33, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  result = swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *(v3 + 16))
  {
    outlined init with copy of Any(v3 + 32 * v4 + 32, &v33);
    v13 = v5;
    specialized __DictionaryDecoder.unbox(_:as:)(&v33, &selRef_unsignedIntValue, &selRef_initWithUnsignedInt_, 0x3233746E4955, 0xE600000000000000);
    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_14:
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return v13;
    }

    v13 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v33);
    if ((v13 & 0x100000000) != 0)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v24 = MEMORY[0x1E69E7668];
      v25 = *(v5 + 136);
      type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_18CD63400;
      *&v33 = 0x207865646E49;
      *(&v33 + 1) = 0xE600000000000000;
      v36[0] = v4;

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v27);

      v29 = *(&v33 + 1);
      v28 = v33;
      *(v26 + 56) = &unk_1EFFB8510;
      *(v26 + 64) = v31;
      v30 = swift_allocObject();
      *(v26 + 32) = v30;
      *(v30 + 16) = __PAIR128__(v29, v28);
      *(v30 + 32) = v4;
      *(v30 + 40) = 0;
      *&v33 = v25;
      v13 = &v33;
      specialized Array.append<A>(contentsOf:)(v26);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      goto LABEL_14;
    }

    v2[3] = v4 + 1;
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return v13;
  }

  __break(1u);
  return result;
}

void specialized _JSONUnkeyedDecodingContainer.decode(_:)()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v14;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v15 = MEMORY[0x1E69E6448];
    v16 = *v0;
    swift_beginAccess();
    v17 = *(v16 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v35 = 0xE600000000000000;
    v36 = v4;

    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v19);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = 0x207865646E49;
    *(v20 + 24) = 0xE600000000000000;
    *(v20 + 32) = v4;
    *(v20 + 40) = 0;
    v34 = v17;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B08], v13);
    swift_willThrow();
    return;
  }

  v5 = *v0;
  *&v31 = 0x207865646E49;
  *(&v31 + 1) = 0xE600000000000000;
  v34 = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v32 = &unk_1EFFB8510;
  v29 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v33 = v29;
  v11 = swift_allocObject();
  *&v31 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v31, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *(v3 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  outlined init with copy of Any(v3 + 32 * v4 + 32, &v31);
  specialized __DictionaryDecoder.unbox(_:as:)(&v31);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  else
  {
    v21 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v31);
    if ((v21 & 0x100000000) == 0)
    {
      v2[3] = v4 + 1;
      $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
      return;
    }

    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v23 = MEMORY[0x1E69E6448];
    v24 = *(v5 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_18CD63400;
    *&v31 = 0x207865646E49;
    *(&v31 + 1) = 0xE600000000000000;
    v34 = v4;

    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v26);

    v27 = v31;
    *(v25 + 56) = &unk_1EFFB8510;
    *(v25 + 64) = v29;
    v28 = swift_allocObject();
    *(v25 + 32) = v28;
    *(v28 + 16) = v27;
    *(v28 + 32) = v4;
    *(v28 + 40) = 0;
    *&v31 = v24;
    specialized Array.append<A>(contentsOf:)(v25);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v23, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
  }

  $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
}

{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    v13 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v14;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v15 = MEMORY[0x1E69E63B0];
    v16 = *v0;
    swift_beginAccess();
    v17 = *(v16 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v35 = 0xE600000000000000;
    v36 = v4;

    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v19);

    *(inited + 56) = &unk_1EFFB8510;
    *(inited + 64) = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
    v20 = swift_allocObject();
    *(inited + 32) = v20;
    *(v20 + 16) = 0x207865646E49;
    *(v20 + 24) = 0xE600000000000000;
    *(v20 + 32) = v4;
    *(v20 + 40) = 0;
    v34 = v17;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B08], v13);
    swift_willThrow();
    return;
  }

  v5 = *v0;
  *&v31 = 0x207865646E49;
  *(&v31 + 1) = 0xE600000000000000;
  v34 = v4;
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  swift_beginAccess();
  v7 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 136) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v5 + 136) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v32 = &unk_1EFFB8510;
  v29 = lazy protocol witness table accessor for type _JSONKey and conformance _JSONKey();
  v33 = v29;
  v11 = swift_allocObject();
  *&v31 = v11;
  *(v11 + 16) = 0x207865646E49;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v4;
  *(v11 + 40) = 0;
  v7[2] = v10 + 1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v31, &v7[5 * v10 + 4]);
  *(v5 + 136) = v7;
  swift_endAccess();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *(v3 + 16))
  {
LABEL_16:
    __break(1u);
    return;
  }

  outlined init with copy of Any(v3 + 32 * v4 + 32, &v31);
  specialized __DictionaryDecoder.unbox(_:as:)(&v31);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v31);
LABEL_13:
    $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
    return;
  }

  v21 = v12;
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (v21)
  {
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v23 = MEMORY[0x1E69E63B0];
    v24 = *(v5 + 136);
    type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30], type metadata accessor for CVarArg);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_18CD63400;
    *&v31 = 0x207865646E49;
    *(&v31 + 1) = 0xE600000000000000;
    v34 = v4;

    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v26);

    v27 = v31;
    *(v25 + 56) = &unk_1EFFB8510;
    *(v25 + 64) = v29;
    v28 = swift_allocObject();
    *(v25 + 32) = v28;
    *(v28 + 16) = v27;
    *(v28 + 32) = v4;
    *(v28 + 40) = 0;
    *&v31 = v24;
    specialized Array.append<A>(contentsOf:)(v25);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v23, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    goto LABEL_13;
  }

  v2[3] = v4 + 1;
  $defer #1 <A>() in _JSONKeyedEncodingContainer.encode(_:forKey:)(v2);
}

unint64_t lazy protocol witness table accessor for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer()
{
  result = lazy protocol witness table cache variable for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer;
  if (!lazy protocol witness table cache variable for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _JSONUnkeyedDecodingContainer, &unk_1EFFB8488, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONUnkeyedDecodingContainer and conformance _JSONUnkeyedDecodingContainer);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(Any, Any)>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of (positiveInfinity: String, negativeInfinity: String, nan: String)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (key: String, value: Any)()
{
  if (!lazy cache variable for type metadata for (key: String, value: Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: String, value: Any));
    }
  }
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67E8], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67D0], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t outlined consume of DictionaryDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer;
  if (!lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _JSONUnkeyedEncodingContainer, &unk_1EFFB83A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer);
  }

  return result;
}

void type metadata accessor for (String, Any)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double outlined copy of DictionaryEncoder.NonConformingFloatEncodingStrategy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t destroy for _JSONKeyedEncodingContainer(uint64_t a1)
{
}

uint64_t *initializeBufferWithCopyOfBuffer for _JSONKeyedEncodingContainer(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  v4 = v3;

  return a1;
}

uint64_t *assignWithCopy for _JSONKeyedEncodingContainer(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for _JSONKeyedEncodingContainer(void *a1, uint64_t a2)
{

  v4 = a1[1];
  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for _DictionaryKeyedDecodingContainer(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for _DictionaryKeyedDecodingContainer(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for _DictionaryKeyedDecodingContainer(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t destroy for _DictionaryKeyedDecodingContainer(void *a1)
{
}

uint64_t *initializeWithCopy for _JSONUnkeyedDecodingContainer(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for _JSONUnkeyedDecodingContainer(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

void *assignWithTake for _JSONUnkeyedDecodingContainer(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  a1[3] = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for _JSONKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithTake for _JSONKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void type metadata accessor for (CodingKey, DecodingError.Context)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CodingKey, DecodingError.Context))
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30]);
    type metadata accessor for DecodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CodingKey, DecodingError.Context));
    }
  }
}

uint64_t AccessibilityAdaptiveStack.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for AdaptiveStack(0, v5, v6, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v4 + 41);
  if (v14 == 2)
  {
    v14 = specialized Environment.wrappedValue.getter(*(v4 + 48), *(v4 + 56));
  }

  MEMORY[0x1EEE9AC00](v14);
  *(&v23 - 4) = v5;
  *(&v23 - 3) = v6;
  v22 = v6;
  AdaptiveStack.init(axis:alignment:spacing:content:)(v15 & 1, v16, v17, v18, v19, partial apply for closure #1 in AccessibilityAdaptiveStack.body.getter, (&v23 - 6), v5);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v8 + 8);
  v20(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v13, v7);
}

uint64_t closure #1 in AccessibilityAdaptiveStack.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v11 = *v10;
  v12 = specialized Environment.wrappedValue.getter(*(v10 + 48), *(a1 + 56));
  v11((v12 | *(a1 + 41)) & 1);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, a2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v9, a2);
}

uint64_t EnvironmentValues.isAccessibilityLayout.getter()
{
  lazy protocol witness table accessor for type AccessibilityLayoutKey and conformance AccessibilityLayoutKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t destroy for AccessibilityAdaptiveStack(uint64_t a1)
{

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

uint64_t initializeWithCopy for AccessibilityAdaptiveStack(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);

  outlined copy of Environment<Bool>.Content();
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  return a1;
}

uint64_t assignWithCopy for AccessibilityAdaptiveStack(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = v2[2];
  *(a1 + 24) = v2[3];
  v5 = v2[4];
  *(a1 + 40) = *(v2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 41) = *(v2 + 41);
  v6 = v2[6];
  LOBYTE(v2) = *(v2 + 56);
  outlined copy of Environment<Bool>.Content();
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *(a1 + 48) = v6;
  *(a1 + 56) = v2;
  outlined consume of Environment<Bool>.Content(v7, v8);
  return a1;
}

uint64_t assignWithTake for AccessibilityAdaptiveStack(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  outlined consume of Environment<Bool>.Content(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityAdaptiveStack(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for AccessibilityAdaptiveStack(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of WindowLayoutRootView.Proxy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 < 2)
  {
    if (v1 != 1)
    {
      return result;
    }

LABEL_5:
    v2 = result;
    MEMORY[0x18D011290]();
    return v2;
  }

  if (*result == -1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t destroy for WindowLayoutRoot(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    MEMORY[0x18D011290](a1);
  }
}

uint64_t initializeWithCopy for WindowLayoutRoot(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = *(a2 + 8);
    v4 = 1;
  }

  else
  {
    *a1 = *a2;
    v4 = *(a2 + 16);
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for WindowLayoutRoot(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of WindowLayoutRootView.Proxy(a1);
    if (*(a2 + 16) == 1)
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = 1;
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
    }
  }

  *(a1 + 24) = *(a2 + 3);

  return a1;
}

uint64_t initializeWithTake for WindowLayoutRoot(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    result = swift_unknownObjectWeakTakeInit();
    *(result + 8) = *(a2 + 8);
    v3 = 1;
  }

  else
  {
    *result = *a2;
    v3 = *(a2 + 16);
  }

  *(result + 16) = v3;
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t assignWithTake for WindowLayoutRoot(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of WindowLayoutRootView.Proxy(a1);
    if (*(a2 + 16) == 1)
    {
      swift_unknownObjectWeakTakeInit();
      *(a1 + 8) = *(a2 + 8);
      v4 = 1;
    }

    else
    {
      *a1 = *a2;
      v4 = *(a2 + 16);
    }

    *(a1 + 16) = v4;
  }

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t destroy for WindowLayoutRootView.Proxy(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 2)
  {
    v1 = *result + 2;
  }

  if (v1 == 1)
  {
    JUMPOUT(0x18D011290);
  }

  return result;
}

uint64_t assignWithCopy for WindowLayoutRootView.Proxy(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    if (v3 == 1)
    {
      v4 = result;
      MEMORY[0x18D011290]();
      result = v4;
    }

    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      result = swift_unknownObjectWeakCopyInit();
      *(result + 8) = a2[1];
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *a2;
      *(result + 8) = *(a2 + 2);
      *result = v7;
    }

    *(result + 16) = v6;
  }

  return result;
}

uint64_t initializeWithCopy for WindowLayoutRootView.Proxy(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    result = a4(result);
    *(result + 8) = *(a2 + 8);
    *(result + 16) = 1;
  }

  else
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 16) = 0;
  }

  return result;
}

uint64_t assignWithTake for WindowLayoutRootView.Proxy(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    if (v3 == 1)
    {
      v4 = result;
      MEMORY[0x18D011290]();
      result = v4;
    }

    v5 = *(a2 + 16);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      result = swift_unknownObjectWeakTakeInit();
      *(result + 8) = *(a2 + 8);
      v6 = 1;
    }

    else
    {
      v6 = 0;
      *result = *a2;
      *(result + 8) = *(a2 + 8);
    }

    *(result + 16) = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowLayoutRootView.Proxy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WindowLayoutRootView.Proxy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTag for WindowLayoutRootView.Proxy(uint64_t a1)
{
  result = *(a1 + 16);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for WindowLayoutRootView.Proxy(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

double View.accessibilityScrollAction(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();

  View.accessibilityAction<A>(_:label:image:_:)(v12, 0, 0, 0, 0, 0, partial apply for thunk for @escaping @callee_guaranteed (@unowned Edge) -> (), v10, a5, a3, &type metadata for AccessibilityScrollAction, a4, v11);

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollAction, &type metadata for AccessibilityScrollAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollAction, &type metadata for AccessibilityScrollAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollAction and conformance AccessibilityScrollAction);
  }

  return result;
}

double ModifiedContent<>.accessibilityScrollAction(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();

  ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)(v10, 0, 0, 0, 0, 0, thunk for @escaping @callee_guaranteed (@unowned Edge) -> ()partial apply, v8, a4, a3, &type metadata for AccessibilityScrollAction, v9);

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityScrollAction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();
  *(a1 + 8) = result;
  return result;
}

double View.fileDialogDefaultDirectory(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.fileDialogDefaultDirectory.setter(uint64_t a1)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of URL?(a1, &v10 - v7);
  outlined init with copy of URL?(v8, v5);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogDefaultDirectoryKey>, &unk_1EFFB8930, &protocol witness table for EnvironmentValues.FileDialogDefaultDirectoryKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogDefaultDirectoryKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogDefaultDirectoryKey>, &unk_1EFFB8930, &protocol witness table for EnvironmentValues.FileDialogDefaultDirectoryKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of Predicate<Pack{URL}>?(a1, type metadata accessor for URL?);
  return outlined destroy of Predicate<Pack{URL}>?(v8, type metadata accessor for URL?);
}

double View.fileDialogCustomizationID(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();

  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.fileDialogCustomizationID.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.fileDialogCustomizationID : EnvironmentValues@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.fileDialogCustomizationID : EnvironmentValues(void *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogCustomizationIDKey>, &unk_1EFFB8950, &protocol witness table for EnvironmentValues.FileDialogCustomizationIDKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t View.fileDialogMessage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return View.fileDialogMessage<A>(_:)(a1, a2, a3, a4, a5);
}

{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v7 + 16))(v9, a1, a3);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v16[0] = v10;
  v16[1] = v11;
  LOBYTE(v9) = v13 & 1;
  v16[2] = v13 & 1;
  v16[3] = v14;
  View.environment<A>(_:_:)();

  outlined consume of Text.Storage(v10, v12, v9);
}

double View.fileDialogMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.fileDialogMessage.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1, a2, a3);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1, a2, a3);
    PropertyList.subscript.getter();
  }

  return v10;
}

double key path getter for EnvironmentValues.fileDialogMessage : EnvironmentValues@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t *a5@<X6>, _OWORD *a6@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2, a3, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2, a3, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);
    PropertyList.subscript.getter();
  }

  result = *&v12;
  *a6 = v12;
  a6[1] = v13;
  return result;
}

double key path setter for EnvironmentValues.fileDialogMessage : EnvironmentValues(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v12 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a5, a6, a7);

  outlined copy of Text?(v12, v13, v15, v14);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a8, a5, a6, a7);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t View.fileDialogMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();

  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10 & 1;
  View.environment<A>(_:_:)();

  outlined consume of Text.Storage(v7, v9, v11);
}

uint64_t View.fileDialogURLEnabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Predicate<Pack{URL}>?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  type metadata accessor for Predicate<Pack{URL}>(0);
  v8 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, a1, v7);
  (*(v9 + 56))(v6, 0, 1, v8);
  View.environment<A>(_:_:)();

  return outlined destroy of Predicate<Pack{URL}>?(v6, type metadata accessor for Predicate<Pack{URL}>?);
}

void key path getter for EnvironmentValues.fileDialogDefaultDirectory : EnvironmentValues(uint64_t *a1, void x1_0, void x2_0, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2, a3, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2, a3, a4);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);

    PropertyList.subscript.getter();
  }
}

uint64_t key path setter for EnvironmentValues.fileDialogDefaultDirectory : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *, double), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  a6(a1, &v15 - v12, v11);
  return a7(v13);
}

uint64_t EnvironmentValues.fileDialogURLEnabled.setter(uint64_t a1)
{
  type metadata accessor for Predicate<Pack{URL}>?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of Predicate<Pack{URL}>?(a1, &v10 - v7);
  outlined init with copy of Predicate<Pack{URL}>?(v8, v5);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogURLEnabledKey>, &unk_1EFFB89D0, &protocol witness table for EnvironmentValues.FileDialogURLEnabledKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogURLEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogURLEnabledKey>, &unk_1EFFB89D0, &protocol witness table for EnvironmentValues.FileDialogURLEnabledKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of Predicate<Pack{URL}>?(a1, type metadata accessor for Predicate<Pack{URL}>?);
  return outlined destroy of Predicate<Pack{URL}>?(v8, type metadata accessor for Predicate<Pack{URL}>?);
}

double View.fileDialogImportsUnresolvedAliases(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.fileDialogImportsUnresolvedAliases.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.fileDialogImportsUnresolvedAliases : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.fileDialogImportsUnresolvedAliases : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogImportsUnresolvedAliasesKey>, &unk_1EFFB89F0, &protocol witness table for EnvironmentValues.FileDialogImportsUnresolvedAliasesKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double View.fileDialogBrowserOptions(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void EnvironmentValues.fileDialogBrowserOptions.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);

    PropertyList.subscript.getter();
  }
}

void key path getter for EnvironmentValues.fileDialogBrowserOptions : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues.fileDialogBrowserOptions : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.FileDialogBrowserOptionsKey>, &unk_1EFFB8A10, &protocol witness table for EnvironmentValues.FileDialogBrowserOptionsKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions()
{
  result = lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions;
  if (!lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FileDialogBrowserOptions, &type metadata for FileDialogBrowserOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions;
  if (!lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FileDialogBrowserOptions, &type metadata for FileDialogBrowserOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions;
  if (!lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FileDialogBrowserOptions, &type metadata for FileDialogBrowserOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions;
  if (!lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FileDialogBrowserOptions, &type metadata for FileDialogBrowserOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FileDialogBrowserOptions and conformance FileDialogBrowserOptions);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy10Foundation3URLVSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(a1 + 8);
  a2(255);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v6;
  v9[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<URL?> and conformance _EnvironmentKeyWritingModifier<A>(a3, a4);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v7, v9);
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<URL?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v4);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for FileDialogConfiguration(uint64_t a1)
{
  type metadata accessor for Predicate<Pack{URL}>?(319, &lazy cache variable for type metadata for Environment<URL?>.Content, type metadata accessor for URL?, MEMORY[0x1E697DCB8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Predicate<Pack{URL}>?(319, &lazy cache variable for type metadata for Environment<Predicate<Pack{URL}>?>.Content, type metadata accessor for Predicate<Pack{URL}>?, MEMORY[0x1E697DCB8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void *initializeBufferWithCopyOfBuffer for FileDialogConfiguration(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  type metadata accessor for Predicate<Pack{URL}>(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v12 & 0xF8;
  if (*(v11 + 84))
  {
    v14 = *(v11 + 64);
  }

  else
  {
    v14 = *(v11 + 64) + 1;
  }

  v86 = *(a3 + 24);
  v15 = *(v86 - 8);
  if (v14 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v14;
  }

  v17 = *(v15 + 80);
  v18 = *(v15 + 84);
  v85 = *(v86 - 8);
  v19 = *(v15 + 64);
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = v17 | *(v7 + 80) & 0xF8 | v13;
  if (((v17 | v12 | *(v7 + 80)) & 0x100000) != 0 || (((-9 - ((((((((v9 & 0xFFFFFFFFFFFFFFF8) + (v13 | 7) + 145) & ~(v13 | 7)) + v16 + 1 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + v17)) | v17) - v20 >= 0xFFFFFFFFFFFFFFE7 ? (v22 = v21 > 7) : (v22 = 1), v22))
  {
    v27 = *a2;
    *a1 = *a2;
    v28 = v27 + (((v21 | 7) + 16) & ~(v21 | 7));

    return v28;
  }

  v23 = *(a2 + v9);
  v24 = v23 - 2;
  if (v23 >= 2)
  {
    if (v9 <= 3)
    {
      v25 = v9;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *a2;
        if (v9 >= 4)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v25 == 3)
        {
          v26 = *a2 | (*(a2 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_37;
          }

LABEL_35:
          v23 = v26 + 2;
          goto LABEL_38;
        }

        v26 = *a2;
        if (v9 >= 4)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      v23 = (v26 | (v24 << (8 * v9))) + 2;
      goto LABEL_38;
    }

    if (!v25)
    {
      goto LABEL_38;
    }

    v26 = *a2;
    if (v9 < 4)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_38:
  __n = v14;
  v81 = v20;
  v82 = v16 + 1;
  v83 = v10;
  if (v23 == 1)
  {
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    *(a1 + v9) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + v9) = 0;
  }

  v84 = a1;
  v29 = a1 + v9 + 1;
  v30 = a2 + v9 + 1;
  v31 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  outlined copy of Environment<String?>.Content(*v32, v34, v35);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  v36 = (v29 + 31) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v30 + 31) & 0xFFFFFFFFFFFFFFF8;
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = *(v37 + 16);
  v41 = *(v37 + 24);
  v42 = *(v37 + 32);
  outlined copy of Environment<Text?>.Content(*v37, v39, v40, v41, v42);
  *v36 = v38;
  *(v36 + 8) = v39;
  *(v36 + 16) = v40;
  *(v36 + 24) = v41;
  *(v36 + 32) = v42;
  v43 = (v29 + 71) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v30 + 71) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  outlined copy of Environment<Text?>.Content(*v44, v46, v47, v48, v49);
  *v43 = v45;
  *(v43 + 8) = v46;
  *(v43 + 16) = v47;
  *(v43 + 24) = v48;
  *(v43 + 32) = v49;
  v50 = (v29 + 111) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v30 + 111) & 0xFFFFFFFFFFFFFFF8;
  v52 = *v51;
  v53 = *(v51 + 8);
  v54 = *(v51 + 16);
  v55 = *(v51 + 24);
  v56 = *(v51 + 32);
  v57.n128_f64[0] = outlined copy of Environment<Text?>.Content(*v51, v53, v54, v55, v56);
  *v50 = v52;
  *(v50 + 8) = v53;
  *(v50 + 16) = v54;
  *(v50 + 24) = v55;
  *(v50 + 32) = v56;
  v58 = ((v29 + 151) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v30 + 151) & 0xFFFFFFFFFFFFFFF8);
  v60 = v59[v16];
  v61 = v60 - 2;
  if (v60 >= 2)
  {
    if (v16 <= 3)
    {
      v62 = v16;
    }

    else
    {
      v62 = 4;
    }

    v63 = v83;
    if (v62 <= 1)
    {
      if (!v62)
      {
        goto LABEL_60;
      }

      v64 = *v59;
      if (v16 < 4)
      {
LABEL_71:
        if ((v64 | (v61 << (8 * v16))) != 0xFFFFFFFF)
        {
          goto LABEL_54;
        }

LABEL_61:
        if ((*(v11 + 48))(v59, 1, v63, v57))
        {
          memcpy(((v29 + 151) & 0xFFFFFFFFFFFFFFF8), v59, __n);
        }

        else
        {
          (*(v11 + 16))((v29 + 151) & 0xFFFFFFFFFFFFFFF8, v59, v63);
          (*(v11 + 56))((v29 + 151) & 0xFFFFFFFFFFFFFFF8, 0, 1, v63);
        }

        *(v58 + v16) = 1;
        goto LABEL_65;
      }
    }

    else if (v62 == 2)
    {
      v64 = *v59;
      if (v16 < 4)
      {
        goto LABEL_71;
      }
    }

    else if (v62 == 3)
    {
      v64 = *v59 | (v59[2] << 16);
      if (v16 < 4)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v64 = *v59;
      if (v16 < 4)
      {
        goto LABEL_71;
      }
    }

    v60 = v64 + 2;
LABEL_60:
    if (v60 == 1)
    {
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  v63 = v83;
  if (v60 == 1)
  {
    goto LABEL_61;
  }

LABEL_54:
  *v58 = *v59;
  *(v58 + v16) = 0;

LABEL_65:
  v65 = (v58 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = &v59[v82 + 7] & 0xFFFFFFFFFFFFFFF8;
  v67 = *v66;
  v68 = *(v66 + 8);
  outlined copy of Environment<Bool>.Content();
  *v65 = v67;
  *(v65 + 8) = v68;
  v69 = (v58 + v82 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = &v59[v82 + 23] & 0xFFFFFFFFFFFFFFF8;
  v71 = *v70;
  v72 = *(v70 + 9);
  v73 = *(v70 + 8);
  outlined copy of Environment<FileDialogBrowserOptions?>.Content(*v70, v73, v72);
  *v69 = v71;
  *(v69 + 8) = v73;
  *(v69 + 9) = v72;
  v74 = ((v70 + 17) & 0xFFFFFFFFFFFFFFF8);
  v76 = *v74;
  v75 = v74 + 1;
  v77 = ((v69 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v77 = v76;
  v78 = v77 + 1;
  if ((*(v85 + 48))(v75, 1, v86))
  {
    memcpy(v78, v75, v81);
  }

  else
  {
    (*(v85 + 16))(v78, v75, v86);
    (*(v85 + 56))(v78, 0, 1, v86);
  }

  return v84;
}

double outlined copy of Environment<Text?>.Content(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    outlined copy of Text?(result, a2, a3, a4);
  }

  else
  {
  }

  return v5;
}

uint64_t destroy for FileDialogConfiguration(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = *a1;
      if (v7 < 4)
      {
LABEL_25:
        if ((v11 | (v9 << (8 * v7))) != 0xFFFFFFFF)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    else if (v10 == 2)
    {
      v11 = *a1;
      if (v7 < 4)
      {
        goto LABEL_25;
      }
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
      if (v7 < 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = *a1;
      if (v7 < 4)
      {
        goto LABEL_25;
      }
    }

    v8 = v11 + 2;
  }

LABEL_21:
  if (v8 != 1)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_22:
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

LABEL_27:
  v12 = &a1[v7];
  outlined consume of Environment<String?>.Content(*((v12 + 8) & 0xFFFFFFFFFFFFFFF8), *(((v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 8), *(((v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 16));
  outlined consume of Environment<Text?>.Content(*((v12 + 32) & 0xFFFFFFFFFFFFFFF8), *(((v12 + 32) & 0xFFFFFFFFFFFFFFF8) + 8), *(((v12 + 32) & 0xFFFFFFFFFFFFFFF8) + 16), *(((v12 + 32) & 0xFFFFFFFFFFFFFFF8) + 24), *(((v12 + 32) & 0xFFFFFFFFFFFFFFF8) + 32));
  outlined consume of Environment<Text?>.Content(*((v12 + 72) & 0xFFFFFFFFFFFFFFF8), *(((v12 + 72) & 0xFFFFFFFFFFFFFFF8) + 8), *(((v12 + 72) & 0xFFFFFFFFFFFFFFF8) + 16), *(((v12 + 72) & 0xFFFFFFFFFFFFFFF8) + 24), *(((v12 + 72) & 0xFFFFFFFFFFFFFFF8) + 32));
  v13 = (v12 + 112) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Text?>.Content(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  type metadata accessor for Predicate<Pack{URL}>(0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 80) & 0xF8 | 7;
  v18 = ((v13 + v17 + 33) & ~v17);
  v19 = *(v16 + 64);
  if (!*(v16 + 84))
  {
    ++v19;
  }

  if (v19 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v19;
  }

  v21 = v18[v20];
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_46;
      }

      v24 = *v18;
    }

    else if (v23 == 2)
    {
      v24 = *v18;
    }

    else if (v23 == 3)
    {
      v24 = *v18 | (v18[2] << 16);
    }

    else
    {
      v24 = *v18;
    }

    v25 = (v24 | (v22 << (8 * v20))) + 2;
    v21 = v24 + 2;
    if (v20 < 4)
    {
      v21 = v25;
    }
  }

LABEL_46:
  if (v21 == 1)
  {
    if (!(*(v16 + 48))(v18, 1, v14))
    {
      (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
  }

  outlined consume of Environment<Bool>.Content(*(&v18[v20 + 8] & 0xFFFFFFFFFFFFFFF8), *((&v18[v20 + 8] & 0xFFFFFFFFFFFFFFF8) + 8));
  v26 = &v18[v20 + 24] & 0xFFFFFFFFFFFFFFF8;
  v27.n128_f64[0] = outlined consume of Environment<FileDialogBrowserOptions?>.Content(*v26, *(v26 + 8), *(v26 + 9));
  v28 = (v26 + 17) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(a2 + 24);
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + v31 + 8;
  v35 = v30;
  result = (*(v30 + 48))(v32 & ~v31, 1, v29, v27);
  if (!result)
  {
    v34 = *(v35 + 8);

    return v34(v32 & ~v31, v29);
  }

  return result;
}

double outlined consume of Environment<Text?>.Content(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    outlined consume of Text?(result, a2, a3, a4);
  }

  else
  {
  }

  return v5;
}

void *initializeWithCopy for FileDialogConfiguration(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = *a2;
      if (v9 < 4)
      {
LABEL_27:
        if ((v13 | (v11 << (8 * v9))) != 0xFFFFFFFF)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }
    }

    else if (v12 == 2)
    {
      v13 = *a2;
      if (v9 < 4)
      {
        goto LABEL_27;
      }
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = *a2;
      if (v9 < 4)
      {
        goto LABEL_27;
      }
    }

    v10 = v13 + 2;
  }

LABEL_21:
  if (v10 != 1)
  {
LABEL_28:
    *a1 = *a2;
    *(a1 + v9) = 0;

    goto LABEL_29;
  }

LABEL_22:
  if ((*(v7 + 48))(a2, 1, v6))
  {
    memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *(a1 + v9) = 1;
LABEL_29:
  v14 = a1 + v9 + 1;
  v15 = &a2[v9 + 1];
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  outlined copy of Environment<String?>.Content(*v17, v19, v20);
  *v16 = v18;
  *(v16 + 8) = v19;
  *(v16 + 16) = v20;
  v21 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  outlined copy of Environment<Text?>.Content(*v22, v24, v25, v26, v27);
  *v21 = v23;
  *(v21 + 8) = v24;
  *(v21 + 16) = v25;
  *(v21 + 24) = v26;
  *(v21 + 32) = v27;
  v28 = (v14 + 71) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v33 = *(v29 + 24);
  v34 = *(v29 + 32);
  outlined copy of Environment<Text?>.Content(*v29, v31, v32, v33, v34);
  *v28 = v30;
  *(v28 + 8) = v31;
  *(v28 + 16) = v32;
  *(v28 + 24) = v33;
  *(v28 + 32) = v34;
  v35 = (v14 + 111) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v15 + 111) & 0xFFFFFFFFFFFFFFF8;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(v36 + 16);
  v40 = *(v36 + 24);
  v41 = *(v36 + 32);
  outlined copy of Environment<Text?>.Content(*v36, v38, v39, v40, v41);
  *v35 = v37;
  *(v35 + 8) = v38;
  *(v35 + 16) = v39;
  *(v35 + 24) = v40;
  *(v35 + 32) = v41;
  type metadata accessor for Predicate<Pack{URL}>(0);
  v43 = v42;
  v44 = *(v42 - 8);
  v45 = *(v44 + 80) & 0xF8;
  v46 = ~v45 & 0xFFFFFFFFFFFFFFF8;
  v45 += 40;
  v47 = ((v45 + v35) & v46);
  v48 = ((v45 + v36) & v46);
  if (*(v44 + 84))
  {
    v49 = *(*(v42 - 8) + 64);
  }

  else
  {
    v49 = *(*(v42 - 8) + 64) + 1;
  }

  if (v49 <= 8)
  {
    v50 = 8;
  }

  else
  {
    v50 = v49;
  }

  v51 = v48[v50];
  v52 = v51 - 2;
  if (v51 < 2)
  {
    goto LABEL_49;
  }

  if (v50 <= 3)
  {
    v53 = v50;
  }

  else
  {
    v53 = 4;
  }

  if (v53 <= 1)
  {
    if (!v53)
    {
      goto LABEL_49;
    }

    v54 = *v48;
  }

  else if (v53 == 2)
  {
    v54 = *v48;
  }

  else if (v53 == 3)
  {
    v54 = *v48 | (v48[2] << 16);
  }

  else
  {
    v54 = *v48;
  }

  v55 = (v54 | (v52 << (8 * v50))) + 2;
  v51 = v54 + 2;
  if (v50 < 4)
  {
    v51 = v55;
  }

LABEL_49:
  if (v51 == 1)
  {
    if ((*(v44 + 48))(v48, 1, v42))
    {
      memcpy(v47, v48, v49);
    }

    else
    {
      (*(v44 + 16))(v47, v48, v43);
      (*(v44 + 56))(v47, 0, 1, v43);
    }

    *(v47 + v50) = 1;
  }

  else
  {
    *v47 = *v48;
    *(v47 + v50) = 0;
  }

  v56 = v47 + v50 + 1;
  v57 = &v48[v50 + 1];
  v58 = (v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = *v59;
  v61 = *(v59 + 8);
  outlined copy of Environment<Bool>.Content();
  *v58 = v60;
  *(v58 + 8) = v61;
  v62 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = *v63;
  v65 = *(v63 + 9);
  LOBYTE(v56) = *(v63 + 8);
  outlined copy of Environment<FileDialogBrowserOptions?>.Content(*v63, v56, v65);
  *v62 = v64;
  *(v62 + 8) = v56;
  *(v62 + 9) = v65;
  v66 = ((v62 + 17) & 0xFFFFFFFFFFFFFFF8);
  v67 = ((v63 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v66 = *v67;
  v68 = *(a3 + 24);
  v69 = *(v68 - 8);
  v70 = *(v69 + 80);
  v71 = v66 + v70 + 8;
  v72 = v67 + v70 + 8;
  if ((*(v69 + 48))(v72 & ~v70, 1, v68))
  {
    if (*(v69 + 84))
    {
      v73 = *(v69 + 64);
    }

    else
    {
      v73 = *(v69 + 64) + 1;
    }

    memcpy((v71 & ~v70), (v72 & ~v70), v73);
  }

  else
  {
    (*(v69 + 16))(v71 & ~v70, v72 & ~v70, v68);
    (*(v69 + 56))(v71 & ~v70, 0, 1, v68);
  }

  return a1;
}

unsigned __int8 *assignWithCopy for FileDialogConfiguration(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_50;
  }

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
      if (v9 < 4)
      {
LABEL_26:
        if ((v13 | (v11 << (8 * v9))) != 0xFFFFFFFF)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (v12 == 2)
    {
      v13 = *a1;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = *a1;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    v10 = v13 + 2;
  }

LABEL_22:
  if (v10 != 1)
  {
LABEL_27:

    goto LABEL_28;
  }

LABEL_23:
  if (!(*(v7 + 48))(a1, 1, v6))
  {
    (*(v7 + 8))(a1, v6);
  }

LABEL_28:
  v14 = a2[v9];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_42;
  }

  if (v9 <= 3)
  {
    v16 = v9;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_42;
    }

    v17 = *a2;
    if (v9 < 4)
    {
LABEL_48:
      if ((v17 | (v15 << (8 * v9))) != 0xFFFFFFFF)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }
  }

  else if (v16 == 2)
  {
    v17 = *a2;
    if (v9 < 4)
    {
      goto LABEL_48;
    }
  }

  else if (v16 == 3)
  {
    v17 = *a2 | (a2[2] << 16);
    if (v9 < 4)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v17 = *a2;
    if (v9 < 4)
    {
      goto LABEL_48;
    }
  }

  v14 = v17 + 2;
LABEL_42:
  if (v14 != 1)
  {
LABEL_49:
    *a1 = *a2;
    a1[v9] = 0;

    goto LABEL_50;
  }

LABEL_43:
  if ((*(v7 + 48))(a2, 1, v6))
  {
    memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  a1[v9] = 1;
LABEL_50:
  v18 = *(type metadata accessor for URL() - 8);
  if (*(v18 + 84))
  {
    v19 = *(v18 + 64);
  }

  else
  {
    v19 = *(v18 + 64) + 1;
  }

  if (v19 <= 8)
  {
    v19 = 8;
  }

  v20 = v19 + 1;
  v21 = &a1[v20];
  v22 = &a2[v20];
  v23 = &a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
  v24 = &a2[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  outlined copy of Environment<String?>.Content(*v24, v26, v27);
  v28 = *v23;
  v29 = *(v23 + 8);
  v30 = *(v23 + 16);
  *v23 = v25;
  *(v23 + 8) = v26;
  *(v23 + 16) = v27;
  outlined consume of Environment<String?>.Content(v28, v29, v30);
  v31 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  v36 = *(v32 + 24);
  v37 = *(v32 + 32);
  outlined copy of Environment<Text?>.Content(*v32, v34, v35, v36, v37);
  v38 = *v31;
  v39 = *(v31 + 8);
  v40 = *(v31 + 16);
  v41 = *(v31 + 24);
  v42 = *(v31 + 32);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  *(v31 + 24) = v36;
  *(v31 + 32) = v37;
  outlined consume of Environment<Text?>.Content(v38, v39, v40, v41, v42);
  v43 = (v21 + 71) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v22 + 71) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  outlined copy of Environment<Text?>.Content(*v44, v46, v47, v48, v49);
  v50 = *v43;
  v51 = *(v43 + 8);
  v52 = *(v43 + 16);
  v53 = *(v43 + 24);
  v54 = *(v43 + 32);
  *v43 = v45;
  *(v43 + 8) = v46;
  *(v43 + 16) = v47;
  *(v43 + 24) = v48;
  *(v43 + 32) = v49;
  outlined consume of Environment<Text?>.Content(v50, v51, v52, v53, v54);
  v55 = (v21 + 111) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v22 + 111) & 0xFFFFFFFFFFFFFFF8;
  v57 = *v56;
  v58 = *(v56 + 8);
  v59 = *(v56 + 16);
  v60 = *(v56 + 24);
  v61 = *(v56 + 32);
  outlined copy of Environment<Text?>.Content(*v56, v58, v59, v60, v61);
  v62 = *v55;
  v63 = *(v55 + 8);
  v64 = *(v55 + 16);
  v65 = *(v55 + 24);
  v66 = *(v55 + 32);
  *v55 = v57;
  *(v55 + 8) = v58;
  *(v55 + 16) = v59;
  *(v55 + 24) = v60;
  *(v55 + 32) = v61;
  outlined consume of Environment<Text?>.Content(v62, v63, v64, v65, v66);
  type metadata accessor for Predicate<Pack{URL}>(0);
  v68 = *(v67 - 8);
  v69 = v68;
  v70 = *(v68 + 84);
  v71 = *(v68 + 80) & 0xF8;
  v72 = ~v71 & 0xFFFFFFFFFFFFFFF8;
  v71 += 40;
  v73 = ((v71 + v55) & v72);
  v74 = ((v71 + v56) & v72);
  v75 = *(v68 + 64);
  if (v73 != v74)
  {
    v76 = v67;
    if (v70)
    {
      v77 = *(v68 + 64);
    }

    else
    {
      v77 = v75 + 1;
    }

    if (v77 <= 8)
    {
      v78 = 8;
    }

    else
    {
      v78 = v77;
    }

    v79 = v73[v78];
    v80 = v79 - 2;
    if (v79 >= 2)
    {
      if (v78 <= 3)
      {
        v81 = v78;
      }

      else
      {
        v81 = 4;
      }

      if (v81 <= 1)
      {
        if (!v81)
        {
          goto LABEL_76;
        }

        v82 = *v73;
        if (v78 < 4)
        {
LABEL_80:
          if ((v82 | (v80 << (8 * v78))) != 0xFFFFFFFF)
          {
            goto LABEL_81;
          }

          goto LABEL_77;
        }
      }

      else if (v81 == 2)
      {
        v82 = *v73;
        if (v78 < 4)
        {
          goto LABEL_80;
        }
      }

      else if (v81 == 3)
      {
        v82 = *v73 | (v73[2] << 16);
        if (v78 < 4)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v82 = *v73;
        if (v78 < 4)
        {
          goto LABEL_80;
        }
      }

      v79 = v82 + 2;
    }

LABEL_76:
    if (v79 != 1)
    {
LABEL_81:

      goto LABEL_82;
    }

LABEL_77:
    if (!(*(v69 + 48))(v73, 1, v67))
    {
      (*(v69 + 8))(v73, v76);
    }

LABEL_82:
    v83 = v74[v78];
    v84 = v83 - 2;
    if (v83 < 2)
    {
      goto LABEL_96;
    }

    if (v78 <= 3)
    {
      v85 = v78;
    }

    else
    {
      v85 = 4;
    }

    if (v85 <= 1)
    {
      if (!v85)
      {
        goto LABEL_96;
      }

      v86 = *v74;
      if (v78 < 4)
      {
LABEL_102:
        if ((v86 | (v84 << (8 * v78))) != 0xFFFFFFFF)
        {
          goto LABEL_103;
        }

LABEL_97:
        if ((*(v69 + 48))(v74, 1, v76))
        {
          memcpy(v73, v74, v77);
        }

        else
        {
          (*(v69 + 16))(v73, v74, v76);
          (*(v69 + 56))(v73, 0, 1, v76);
        }

        v73[v78] = 1;
        goto LABEL_104;
      }
    }

    else if (v85 == 2)
    {
      v86 = *v74;
      if (v78 < 4)
      {
        goto LABEL_102;
      }
    }

    else if (v85 == 3)
    {
      v86 = *v74 | (v74[2] << 16);
      if (v78 < 4)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v86 = *v74;
      if (v78 < 4)
      {
        goto LABEL_102;
      }
    }

    v83 = v86 + 2;
LABEL_96:
    if (v83 != 1)
    {
LABEL_103:
      *v73 = *v74;
      v73[v78] = 0;

      goto LABEL_104;
    }

    goto LABEL_97;
  }

LABEL_104:
  if (v70)
  {
    v87 = v75;
  }

  else
  {
    v87 = v75 + 1;
  }

  if (v87 <= 8)
  {
    v87 = 8;
  }

  v88 = v87 + 1;
  v89 = &v73[v88];
  v90 = &v74[v88];
  v91 = &v73[v88 + 7] & 0xFFFFFFFFFFFFFFF8;
  v92 = &v74[v88 + 7] & 0xFFFFFFFFFFFFFFF8;
  v93 = *v92;
  v94 = *(v92 + 8);
  outlined copy of Environment<Bool>.Content();
  v95 = *v91;
  v96 = *(v91 + 8);
  *v91 = v93;
  *(v91 + 8) = v94;
  outlined consume of Environment<Bool>.Content(v95, v96);
  v97 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = *v98;
  v100 = *(v98 + 9);
  LOBYTE(v89) = *(v98 + 8);
  outlined copy of Environment<FileDialogBrowserOptions?>.Content(*v98, v89, v100);
  v101 = *v97;
  v102 = *(v97 + 9);
  *v97 = v99;
  v103 = *(v97 + 8);
  *(v97 + 8) = v89;
  *(v97 + 9) = v100;
  v104.n128_f64[0] = outlined consume of Environment<FileDialogBrowserOptions?>.Content(v101, v103, v102);
  v105 = ((v97 + 17) & 0xFFFFFFFFFFFFFFF8);
  v106 = ((v98 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v105 = *v106;
  v107 = *(a3 + 24);
  v108 = *(v107 - 8);
  v109 = *(v108 + 80);
  v110 = v105 + v109 + 8;
  v111 = v106 + v109 + 8;
  v112 = *(v108 + 48);
  LODWORD(v99) = v112(v110 & ~v109, 1, v107, v104);
  v113 = (v112)(v111 & ~v109, 1, v107);
  if (v99)
  {
    if (!v113)
    {
      (*(v108 + 16))(v110 & ~v109, v111 & ~v109, v107);
      (*(v108 + 56))(v110 & ~v109, 0, 1, v107);
      return a1;
    }

    v114 = *(v108 + 84);
    v115 = *(v108 + 64);
  }

  else
  {
    if (!v113)
    {
      (*(v108 + 24))(v110 & ~v109, v111 & ~v109, v107);
      return a1;
    }

    v117 = *(v108 + 8);
    v116 = v108 + 8;
    v117(v110 & ~v109, v107);
    v114 = *(v116 + 76);
    v115 = *(v116 + 56);
  }

  if (v114)
  {
    v118 = v115;
  }

  else
  {
    v118 = v115 + 1;
  }

  memcpy((v110 & ~v109), (v111 & ~v109), v118);
  return a1;
}

void *initializeWithTake for FileDialogConfiguration(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = *a2;
      if (v9 < 4)
      {
LABEL_26:
        if ((v13 | (v11 << (8 * v9))) != 0xFFFFFFFF)
        {
          goto LABEL_27;
        }

LABEL_22:
        if ((*(v7 + 48))(a2, 1, v6))
        {
          memcpy(a1, a2, v8);
          v14 = 1;
        }

        else
        {
          (*(v7 + 32))(a1, a2, v6);
          v14 = 1;
          (*(v7 + 56))(a1, 0, 1, v6);
        }

        goto LABEL_28;
      }
    }

    else if (v12 == 2)
    {
      v13 = *a2;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = *a2;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    v10 = v13 + 2;
  }

LABEL_21:
  if (v10 == 1)
  {
    goto LABEL_22;
  }

LABEL_27:
  v14 = 0;
  *a1 = *a2;
LABEL_28:
  *(a1 + v9) = v14;
  v15 = a1 + v9 + 1;
  v16 = &a2[v9 + 1];
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v17 + 16) = *(v18 + 16);
  *v17 = v19;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v22;
  *(v20 + 16) = v23;
  v24 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = (v15 + 111) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v16 + 111) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v31 = *(v29 + 16);
  *(v28 + 32) = *(v29 + 32);
  *v28 = v30;
  *(v28 + 16) = v31;
  type metadata accessor for Predicate<Pack{URL}>(0);
  v33 = v32;
  v34 = *(v32 - 8);
  v35 = *(v34 + 80) & 0xF8;
  v36 = ~v35 & 0xFFFFFFFFFFFFFFF8;
  v35 += 40;
  v37 = ((v35 + v28) & v36);
  v38 = ((v35 + v29) & v36);
  if (*(v34 + 84))
  {
    v39 = *(*(v32 - 8) + 64);
  }

  else
  {
    v39 = *(*(v32 - 8) + 64) + 1;
  }

  if (v39 <= 8)
  {
    v40 = 8;
  }

  else
  {
    v40 = v39;
  }

  v41 = v38[v40];
  v42 = v41 - 2;
  if (v41 >= 2)
  {
    if (v40 <= 3)
    {
      v43 = v40;
    }

    else
    {
      v43 = 4;
    }

    if (v43 <= 1)
    {
      if (!v43)
      {
        goto LABEL_48;
      }

      v44 = *v38;
    }

    else if (v43 == 2)
    {
      v44 = *v38;
    }

    else if (v43 == 3)
    {
      v44 = *v38 | (v38[2] << 16);
    }

    else
    {
      v44 = *v38;
    }

    v45 = (v44 | (v42 << (8 * v40))) + 2;
    v41 = v44 + 2;
    if (v40 < 4)
    {
      v41 = v45;
    }
  }

LABEL_48:
  if (v41 == 1)
  {
    if ((*(v34 + 48))(v38, 1, v32))
    {
      memcpy(v37, v38, v39);
      v46 = 1;
    }

    else
    {
      (*(v34 + 32))(v37, v38, v33);
      v46 = 1;
      (*(v34 + 56))(v37, 0, 1, v33);
    }
  }

  else
  {
    v46 = 0;
    *v37 = *v38;
  }

  *(v37 + v40) = v46;
  v47 = v37 + v40 + 1;
  v48 = &v38[v40 + 1];
  v49 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = *v50;
  *(v49 + 8) = *(v50 + 8);
  *v49 = v51;
  v52 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v54 = *v53;
  *(v52 + 8) = *(v53 + 8);
  *v52 = v54;
  v55 = ((v52 + 17) & 0xFFFFFFFFFFFFFFF8);
  v56 = ((v53 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v55 = *v56;
  v57 = *(a3 + 24);
  v58 = *(v57 - 8);
  v59 = *(v58 + 80);
  v60 = v55 + v59 + 8;
  v61 = v56 + v59 + 8;
  if ((*(v58 + 48))(v61 & ~v59, 1, v57))
  {
    if (*(v58 + 84))
    {
      v62 = *(v58 + 64);
    }

    else
    {
      v62 = *(v58 + 64) + 1;
    }

    memcpy((v60 & ~v59), (v61 & ~v59), v62);
  }

  else
  {
    (*(v58 + 32))(v60 & ~v59, v61 & ~v59, v57);
    (*(v58 + 56))(v60 & ~v59, 0, 1, v57);
  }

  return a1;
}

unsigned __int8 *assignWithTake for FileDialogConfiguration(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_50;
  }

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *a1;
      if (v9 < 4)
      {
LABEL_26:
        if ((v13 | (v11 << (8 * v9))) != 0xFFFFFFFF)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if (v12 == 2)
    {
      v13 = *a1;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = *a1;
      if (v9 < 4)
      {
        goto LABEL_26;
      }
    }

    v10 = v13 + 2;
  }

LABEL_22:
  if (v10 != 1)
  {
LABEL_27:

    goto LABEL_28;
  }

LABEL_23:
  if (!(*(v7 + 48))(a1, 1, v6))
  {
    (*(v7 + 8))(a1, v6);
  }

LABEL_28:
  v14 = a2[v9];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_42;
  }

  if (v9 <= 3)
  {
    v16 = v9;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_42;
    }

    v17 = *a2;
    if (v9 < 4)
    {
LABEL_47:
      if ((v17 | (v15 << (8 * v9))) != 0xFFFFFFFF)
      {
        goto LABEL_48;
      }

LABEL_43:
      if ((*(v7 + 48))(a2, 1, v6))
      {
        memcpy(a1, a2, v8);
        v18 = 1;
      }

      else
      {
        (*(v7 + 32))(a1, a2, v6);
        v18 = 1;
        (*(v7 + 56))(a1, 0, 1, v6);
      }

      goto LABEL_49;
    }
  }

  else if (v16 == 2)
  {
    v17 = *a2;
    if (v9 < 4)
    {
      goto LABEL_47;
    }
  }

  else if (v16 == 3)
  {
    v17 = *a2 | (a2[2] << 16);
    if (v9 < 4)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v17 = *a2;
    if (v9 < 4)
    {
      goto LABEL_47;
    }
  }

  v14 = v17 + 2;
LABEL_42:
  if (v14 == 1)
  {
    goto LABEL_43;
  }

LABEL_48:
  v18 = 0;
  *a1 = *a2;
LABEL_49:
  a1[v9] = v18;
LABEL_50:
  v19 = *(type metadata accessor for URL() - 8);
  if (*(v19 + 84))
  {
    v20 = *(v19 + 64);
  }

  else
  {
    v20 = *(v19 + 64) + 1;
  }

  if (v20 <= 8)
  {
    v20 = 8;
  }

  v21 = v20 + 1;
  v22 = &a1[v21];
  v23 = &a2[v21];
  v24 = &a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 16);
  v27 = *v24;
  v28 = *(v24 + 8);
  v29 = *(v24 + 16);
  *v24 = *v25;
  *(v24 + 16) = v26;
  outlined consume of Environment<String?>.Content(v27, v28, v29);
  v30 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 32);
  v32 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  v36 = *(v32 + 24);
  v37 = *(v32 + 32);
  v38 = *(v30 + 16);
  *v32 = *v30;
  *(v32 + 16) = v38;
  *(v32 + 32) = v31;
  outlined consume of Environment<Text?>.Content(v33, v34, v35, v36, v37);
  v39 = (v23 + 71) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v39 + 32);
  v41 = (v22 + 71) & 0xFFFFFFFFFFFFFFF8;
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  v45 = *(v41 + 24);
  v46 = *(v41 + 32);
  v47 = *(v39 + 16);
  *v41 = *v39;
  *(v41 + 16) = v47;
  *(v41 + 32) = v40;
  outlined consume of Environment<Text?>.Content(v42, v43, v44, v45, v46);
  v48 = (v23 + 111) & 0xFFFFFFFFFFFFFFF8;
  v49 = *(v48 + 32);
  v50 = (v22 + 111) & 0xFFFFFFFFFFFFFFF8;
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  v54 = *(v50 + 24);
  v55 = *(v50 + 32);
  v56 = *(v48 + 16);
  *v50 = *v48;
  *(v50 + 16) = v56;
  *(v50 + 32) = v49;
  outlined consume of Environment<Text?>.Content(v51, v52, v53, v54, v55);
  type metadata accessor for Predicate<Pack{URL}>(0);
  v58 = *(v57 - 8);
  v59 = v58;
  v60 = *(v58 + 84);
  v61 = *(v58 + 80) & 0xF8;
  v62 = ~v61 & 0xFFFFFFFFFFFFFFF8;
  v61 += 40;
  v63 = ((v61 + v50) & v62);
  v64 = ((v61 + v48) & v62);
  v65 = *(v58 + 64);
  if (v63 != v64)
  {
    v66 = v57;
    if (v60)
    {
      v67 = *(v58 + 64);
    }

    else
    {
      v67 = v65 + 1;
    }

    if (v67 <= 8)
    {
      v68 = 8;
    }

    else
    {
      v68 = v67;
    }

    v69 = v63[v68];
    v70 = v69 - 2;
    if (v69 >= 2)
    {
      if (v68 <= 3)
      {
        v71 = v68;
      }

      else
      {
        v71 = 4;
      }

      if (v71 <= 1)
      {
        if (!v71)
        {
          goto LABEL_76;
        }

        v72 = *v63;
        if (v68 < 4)
        {
LABEL_80:
          if ((v72 | (v70 << (8 * v68))) != 0xFFFFFFFF)
          {
            goto LABEL_81;
          }

          goto LABEL_77;
        }
      }

      else if (v71 == 2)
      {
        v72 = *v63;
        if (v68 < 4)
        {
          goto LABEL_80;
        }
      }

      else if (v71 == 3)
      {
        v72 = *v63 | (v63[2] << 16);
        if (v68 < 4)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v72 = *v63;
        if (v68 < 4)
        {
          goto LABEL_80;
        }
      }

      v69 = v72 + 2;
    }

LABEL_76:
    if (v69 != 1)
    {
LABEL_81:

      goto LABEL_82;
    }

LABEL_77:
    if (!(*(v59 + 48))(v63, 1, v57))
    {
      (*(v59 + 8))(v63, v66);
    }

LABEL_82:
    v73 = v64[v68];
    v74 = v73 - 2;
    if (v73 < 2)
    {
      goto LABEL_96;
    }

    if (v68 <= 3)
    {
      v75 = v68;
    }

    else
    {
      v75 = 4;
    }

    if (v75 <= 1)
    {
      if (!v75)
      {
        goto LABEL_96;
      }

      v76 = *v64;
      if (v68 < 4)
      {
LABEL_101:
        if ((v76 | (v74 << (8 * v68))) != 0xFFFFFFFF)
        {
          goto LABEL_102;
        }

        goto LABEL_97;
      }
    }

    else if (v75 == 2)
    {
      v76 = *v64;
      if (v68 < 4)
      {
        goto LABEL_101;
      }
    }

    else if (v75 == 3)
    {
      v76 = *v64 | (v64[2] << 16);
      if (v68 < 4)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v76 = *v64;
      if (v68 < 4)
      {
        goto LABEL_101;
      }
    }

    v73 = v76 + 2;
LABEL_96:
    if (v73 != 1)
    {
LABEL_102:
      v77 = 0;
      *v63 = *v64;
LABEL_103:
      v63[v68] = v77;
      goto LABEL_104;
    }

LABEL_97:
    if ((*(v59 + 48))(v64, 1, v66))
    {
      memcpy(v63, v64, v67);
      v77 = 1;
    }

    else
    {
      (*(v59 + 32))(v63, v64, v66);
      v77 = 1;
      (*(v59 + 56))(v63, 0, 1, v66);
    }

    goto LABEL_103;
  }

LABEL_104:
  if (v60)
  {
    v78 = v65;
  }

  else
  {
    v78 = v65 + 1;
  }

  if (v78 <= 8)
  {
    v78 = 8;
  }

  v79 = v78 + 1;
  v80 = &v63[v79];
  v81 = &v64[v79];
  v82 = (v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = *v83;
  LOBYTE(v83) = *(v83 + 8);
  v85 = *v82;
  v86 = *(v82 + 8);
  *v82 = v84;
  *(v82 + 8) = v83;
  outlined consume of Environment<Bool>.Content(v85, v86);
  v87 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v89 = *(v88 + 8);
  v90 = *(v88 + 9);
  v91 = *v87;
  v92 = *(v87 + 9);
  *v87 = *v88;
  v93 = *(v87 + 8);
  *(v87 + 8) = v89;
  *(v87 + 9) = v90;
  v94.n128_f64[0] = outlined consume of Environment<FileDialogBrowserOptions?>.Content(v91, v93, v92);
  v95 = ((v87 + 17) & 0xFFFFFFFFFFFFFFF8);
  v96 = ((v88 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v95 = *v96;
  v97 = *(a3 + 24);
  v98 = *(v97 - 8);
  v99 = *(v98 + 80);
  v100 = v95 + v99 + 8;
  v101 = v96 + v99 + 8;
  v102 = *(v98 + 48);
  LODWORD(v87) = v102(v100 & ~v99, 1, v97, v94);
  v103 = (v102)(v101 & ~v99, 1, v97);
  if (v87)
  {
    if (!v103)
    {
      (*(v98 + 32))(v100 & ~v99, v101 & ~v99, v97);
      (*(v98 + 56))(v100 & ~v99, 0, 1, v97);
      return a1;
    }

    v104 = *(v98 + 84);
    v105 = *(v98 + 64);
  }

  else
  {
    if (!v103)
    {
      (*(v98 + 40))(v100 & ~v99, v101 & ~v99, v97);
      return a1;
    }

    v107 = *(v98 + 8);
    v106 = v98 + 8;
    v107(v100 & ~v99, v97);
    v104 = *(v106 + 76);
    v105 = *(v106 + 56);
  }

  if (v104)
  {
    v108 = v105;
  }

  else
  {
    v108 = v105 + 1;
  }

  memcpy((v100 & ~v99), (v101 & ~v99), v108);
  return a1;
}