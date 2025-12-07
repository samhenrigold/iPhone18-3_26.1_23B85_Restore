uint64_t getEnumTagSinglePayload for PlaybackButton.Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t outlined init with take of PlaybackButton.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PlaybackButton.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.State.PausedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys, &unk_1EFF98998, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.State.PlayingCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys, &unk_1EFF98908, v3);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v8;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.State.UnplayedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys, &unk_1EFF988E8, v3);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v47 - v10;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.State.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys, &unk_1EFF988C8, v3);
  v12 = v11;
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys();
  v21 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v47 = v17;
    v48 = v20;
    v23 = v57;
    v22 = v58;
    v60 = a1;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = v24;
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = *(v24 + 32);
      if (v26 == 1 && v27 != 3)
      {
        if (*(v24 + 32))
        {
          v36 = v59;
          if (v27 == 1)
          {
            v62 = 1;
            lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys();
            v37 = v55;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v38 = v56;
            (*(v51 + 8))(v37, v52);
            (*(v36 + 8))(v14, v12);
            swift_unknownObjectRelease();
            v42 = type metadata accessor for Date();
            v43 = v48;
            (*(*(v42 - 8) + 56))(v48, 2, 2, v42);
LABEL_17:
            outlined init with take of PlaybackButton.State(v43, v38, type metadata accessor for PlaybackButton.State);
            v34 = v60;
            return __swift_destroy_boxed_opaque_existential_1(v34);
          }

          v63 = 2;
          lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys();
          v41 = v22;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v57 = v25;
          v44 = type metadata accessor for Date();
          lazy protocol witness table accessor for type Date and conformance Date();
          v45 = v47;
          v46 = v53;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v54 + 8))(v41, v46);
          (*(v36 + 8))(v14, v12);
          swift_unknownObjectRelease();
          (*(*(v44 - 8) + 56))(v45, 0, 2, v44);
          v43 = v48;
          outlined init with take of PlaybackButton.State(v45, v48, type metadata accessor for PlaybackButton.State);
        }

        else
        {
          v61 = 0;
          lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v39 = v59;
          (*(v49 + 8))(v23, v50);
          (*(v39 + 8))(v14, v12);
          swift_unknownObjectRelease();
          v40 = type metadata accessor for Date();
          v43 = v48;
          (*(*(v40 - 8) + 56))(v48, 1, 2, v40);
        }

        v38 = v56;
        goto LABEL_17;
      }
    }

    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v14;
    v31 = v12;
    v33 = v32;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v33 = v15;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v59 + 8))(v30, v31);
    swift_unknownObjectRelease();
    a1 = v60;
  }

  v34 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.PausedCodingKeys, &unk_1EFF98998, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.PausedCodingKeys, &unk_1EFF98998, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.PausedCodingKeys, &unk_1EFF98998, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.PausedCodingKeys, &unk_1EFF98998, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.PlayingCodingKeys, &unk_1EFF98908, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.PlayingCodingKeys, &unk_1EFF98908, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.PlayingCodingKeys, &unk_1EFF98908, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.UnplayedCodingKeys, &unk_1EFF988E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.UnplayedCodingKeys, &unk_1EFF988E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.UnplayedCodingKeys, &unk_1EFF988E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.CodingKeys, &unk_1EFF988C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.CodingKeys, &unk_1EFF988C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.CodingKeys, &unk_1EFF988C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.State.CodingKeys, &unk_1EFF988C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.Phase and conformance PlaybackButton.Phase()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase, &type metadata for PlaybackButton.Phase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase, &type metadata for PlaybackButton.Phase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase, &type metadata for PlaybackButton.Phase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase, &type metadata for PlaybackButton.Phase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase and conformance PlaybackButton.Phase);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PlaybackButton.Phase@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized PlaybackButton.Phase.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PendingPauseCodingKeys, &unk_1EFF98D08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PendingPauseCodingKeys, &unk_1EFF98D08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PendingPauseCodingKeys, &unk_1EFF98D08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PendingPlayCodingKeys, &unk_1EFF98CC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PendingPlayCodingKeys, &unk_1EFF98CC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PendingPlayCodingKeys, &unk_1EFF98CC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PausedCodingKeys, &unk_1EFF98CA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PausedCodingKeys, &unk_1EFF98CA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PausedCodingKeys, &unk_1EFF98CA8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.CodingKeys, &unk_1EFF98C88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.CodingKeys, &unk_1EFF98C88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.CodingKeys, &unk_1EFF98C88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.CodingKeys, &unk_1EFF98C88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys);
  }

  return result;
}

uint64_t specialized PlaybackButton.Phase.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646573756170 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xEB0000000079616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6979616C70 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xEC00000065737561)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment()
{
  result = lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment;
  if (!lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E970], MEMORY[0x1E697E960], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment;
  if (!lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E968], MEMORY[0x1E697E960], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment);
  }

  return result;
}

uint64_t specialized AppIntentAction.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v24[2] = *MEMORY[0x1E69E9840];
  type metadata accessor for KeyedDecodingContainer<AppIntentAction.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AppIntentAction.CodingKeys>, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  KeyPath = swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = KeyPath;
  v10 = v6;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v5;
  v14 = v24[0];
  v13 = v24[1];
  v15 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24[0] = 0;
  v17 = [v15 swiftui:isa unarchiveTopLevelLNActionWithData:v24 error:?];

  if (v24[0])
  {
    v24[0];

    swift_willThrow();
    outlined consume of Data._Representation(v14, v13);
LABEL_7:

    (*(v10 + 8))(v8, v11);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v22;
  if (!v17)
  {
    lazy protocol witness table accessor for type AppIntentAction.Error and conformance AppIntentAction.Error();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v14, v13);
    goto LABEL_7;
  }

  v19 = outlined consume of Data._Representation(v14, v13);
  (*(v10 + 8))(v8, v11, v19);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v23;
  *v23 = v18;
  v20[1] = 0;
  *(v20 + 16) = 0;
  v20[3] = v17;
  v20[4] = closure #1 in AppIntentAction.init(from:);
  v20[5] = 0;
  return result;
}

void type metadata accessor for KeyedDecodingContainer<AppIntentAction.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys();
    v7 = a3(a1, &type metadata for AppIntentAction.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackButton.State.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PlaybackButton.State.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t specialized PlaybackButton.State.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646579616C706E75 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6979616C70 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaybackButton.State.CodingKeys()
{
  v1 = 0x676E6979616C70;
  if (*v0 != 1)
  {
    v1 = 0x646573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646579616C706E75;
  }
}

uint64_t specialized PlaybackButton.Phase.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.Phase.PendingPauseCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys, &unk_1EFF98D08, MEMORY[0x1E69E6F48]);
  v39 = v3;
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v31 - v4;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.Phase.PlayingCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys, &unk_1EFF98CE8, v2);
  v38 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v31 - v6;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.Phase.PendingPlayCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys, &unk_1EFF98CC8, v2);
  v36 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v31 - v8;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.Phase.PausedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys, &unk_1EFF98CA8, v2);
  v10 = v9;
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton.Phase.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys, &unk_1EFF98C88, v2);
  v14 = v13;
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys();
  v17 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    goto LABEL_9;
  }

  v32 = v10;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v44 = a1;
  v21 = v16;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = *(v22 + 16);
  if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 4) : (v25 = 1), v25))
  {
    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v28 = &type metadata for PlaybackButton.Phase;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v43 + 8))(v21, v14);
    swift_unknownObjectRelease();
    a1 = v44;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  v45 = *(v22 + 32);
  if (v24 > 1)
  {
    v30 = v43;
    if (v24 == 2)
    {
      v48 = 2;
      lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v35 + 8))(v19, v38);
    }

    else
    {
      v49 = 3;
      lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v20, v39);
    }

    (*(v30 + 8))(v21, v14);
  }

  else
  {
    if (v24)
    {
      v47 = 1;
      lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v34 + 8))(v18, v36);
    }

    else
    {
      v46 = 0;
      lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v33 + 8))(v12, v32);
    }

    (*(v43 + 8))(v16, v14);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v45;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PlayingCodingKeys, &unk_1EFF98CE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PlayingCodingKeys, &unk_1EFF98CE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton.Phase.PlayingCodingKeys, &unk_1EFF98CE8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys);
  }

  return result;
}

double protocol witness for Decodable.init(from:) in conformance AppIntentAction@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized AppIntentAction.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackButton.Phase.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PlaybackButton.Phase.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaybackButton.Phase.CodingKeys()
{
  v1 = 0x646573756170;
  v2 = 0x676E6979616C70;
  if (*v0 != 2)
  {
    v2 = 0x50676E69646E6570;
  }

  if (*v0)
  {
    v1 = 0x50676E69646E6570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction()
{
  result = lazy protocol witness table cache variable for type AppIntentAction and conformance AppIntentAction;
  if (!lazy protocol witness table cache variable for type AppIntentAction and conformance AppIntentAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppIntentAction, &type metadata for AppIntentAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentAction and conformance AppIntentAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppIntentAction and conformance AppIntentAction;
  if (!lazy protocol witness table cache variable for type AppIntentAction and conformance AppIntentAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppIntentAction, &type metadata for AppIntentAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentAction and conformance AppIntentAction);
  }

  return result;
}

uint64_t outlined init with copy of FileImportExportBridge.PresentationState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppIntentAction.CodingKeys, &type metadata for AppIntentAction.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppIntentAction.CodingKeys, &type metadata for AppIntentAction.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppIntentAction.CodingKeys, &type metadata for AppIntentAction.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppIntentAction.CodingKeys, &type metadata for AppIntentAction.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentAction.CodingKeys and conformance AppIntentAction.CodingKeys);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E6969C28]);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for (source: IndexPath, destination: IndexPath));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for DisplayList.HostedViewState.Key);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody>, type metadata accessor for _ViewModifier_Content<ArchivableLinkModifier>, type metadata accessor for LinkButtonModifierBody);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableLinkModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<ArchivableLinkModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type LinkButtonModifierBody and conformance LinkButtonModifierBody, type metadata accessor for LinkButtonModifierBody, protocol conformance descriptor for LinkButtonModifierBody);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableLinkModifier>, LinkButtonModifierBody> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<ArchivableLinkModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ArchivableLinkModifier>)
  {
    type metadata accessor for ArchivableLinkModifier(255);
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier, protocol conformance descriptor for ArchivableLinkModifier);
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableLinkModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>)
  {
    type metadata accessor for _ViewModifier_Content<LinkButtonModifierBody>(255);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for TemporalStateViewModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981FD8], type metadata accessor for TemporalStateViewModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<LinkButtonModifierBody>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<LinkButtonModifierBody>)
  {
    type metadata accessor for LinkButtonModifierBody(255);
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type LinkButtonModifierBody and conformance LinkButtonModifierBody, type metadata accessor for LinkButtonModifierBody, protocol conformance descriptor for LinkButtonModifierBody);
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<LinkButtonModifierBody>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, type metadata accessor for _ViewModifier_Content<LinkButtonModifierBody>);
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<LinkButtonModifierBody> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<LinkButtonModifierBody>, MEMORY[0x1E697FDF8]);
    v5[1] = &protocol witness table for TemporalStateViewModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, type metadata accessor for _ViewModifier_Content<LinkButtonModifierBody>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<LinkButtonModifierBody> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<LinkButtonModifierBody>, MEMORY[0x1E697FDF8]);
    v5[1] = lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TemporalStateViewModifier<A>.MakeState(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TemporalStateViewModifier<A>.MakeState, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TemporalStateViewModifier<A>.AddState(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TemporalStateViewModifier<A>.AddState, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

double destroy for ScrollTargetBehaviorDecelerationContext(uint64_t a1)
{

  return result;
}

char *initializeBufferWithCopyOfBuffer for ActionDispatcherSubscriber(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    v7 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v7 = a1;
    v8 = *(a3 + 28);
    v9 = type metadata accessor for CombineIdentifier();
    v10 = *(*(v9 - 8) + 16);

    v10(v7 + v8, a2 + v8, v9);
  }

  return v7;
}

uint64_t assignWithCopy for ArchivableLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for LinkDestination.Configuration();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  return a1;
}

uint64_t assignWithCopy for TemporalState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17ArchivedViewStateV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = a1 + v5;
      v7 = a2 + v5;
      if ((vminv_u16(vmovn_s32(vceqq_s32(*(a1 + v5 + 32), *(a2 + v5 + 32)))) & 1) == 0)
      {
        break;
      }

      if (*(a1 + v5 + 48) != *(a2 + v5 + 48) || *(v6 + 52) != *(v7 + 52))
      {
        break;
      }

      v9 = *(v7 + 56);
      if (*(v6 + 56))
      {
        if (!v9)
        {
          return;
        }

        v10 = static Animation.== infix(_:_:)();

        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      else if (v9)
      {
        return;
      }

      v5 += 32;
      --v2;
    }

    while (v2);
  }
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69690B0], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969090], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

void specialized static InterpolatableArchiveContent.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v4 = type metadata accessor for InterpolatableArchiveContent(0);
    if ((static UUID.== infix(_:_:)() & 1) != 0 && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
    {
      v5 = *(v4 + 28);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17ArchivedViewStateV_Tt1g5(v6, v7);
    }
  }
}

uint64_t outlined init with copy of PlaybackButton.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *initializeWithCopy for PlaybackButton.Configuration(char *a1, char *a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 1, v6))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 16);
    v11(a1, a2, v10);
    v11(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v10);
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  v12 = a3[5];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(&a2[v12], 2, v13))
  {
    v15 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(&a1[v12], &a2[v12], v13);
    (*(v14 + 56))(&a1[v12], 0, 2, v13);
  }

  v16 = a3[6];
  v17 = a3[7];
  v18 = &a1[v16];
  v19 = &a2[v16];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  a1[v17] = a2[v17];
  v21 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v21] = *&a2[v21];
  v22 = a3[10];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = *&a2[v22];
  v26 = *(v24 + 1);
  v27 = v24[16];

  outlined copy of Environment<AppIntentExecutor?>.Content(v25, v26, v27, outlined copy of AppIntentExecutor?);
  *v23 = v25;
  *(v23 + 1) = v26;
  v23[16] = v27;
  v28 = *(v24 + 5);
  v29 = *(v24 + 24);
  *(v23 + 24) = v29;
  *(v23 + 5) = v28;
  v30 = v29;

  return a1;
}

uint64_t outlined destroy of PlaybackButton.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double destroy for PlaybackButton.Configuration(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClosedRange<Date>(0);
  v5 = v4;
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 8);
    v7(a1, v6);
    v7(a1 + *(v5 + 36), v6);
  }

  v8 = *(a2 + 20);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a1 + v8, 2, v9))
  {
    (*(v10 + 8))(a1 + v8, v9);
  }

  v11 = a1 + *(a2 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v11, *(v11 + 8), *(v11 + 16), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

  return result;
}

double outlined consume of Environment<AppIntentExecutor?>.Content(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    a4(a1, a2);
  }

  else
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage()
{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage, &type metadata for PlaybackButton._StyleStorage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage, &type metadata for PlaybackButton._StyleStorage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t PlaybackButton._StyleStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>, lazy protocol witness table accessor for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys, &unk_1EFFEB868, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v38 - v6;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton._StyleStorage.CircleCodingKeys>, lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys, &unk_1EFFEB7D8, v3);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v38 - v8;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton._StyleStorage.AutomaticCodingKeys>, lazy protocol witness table accessor for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys, &unk_1EFFEB7B8, v3);
  v10 = v9;
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton._StyleStorage.PillCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<PlaybackButton._StyleStorage.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys, &unk_1EFFEB798, v3);
  v14 = v13;
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys();
  v18 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v48 = v10;
    v20 = v44;
    v19 = v45;
    v21 = v46;
    v22 = KeyedDecodingContainer.allKeys.getter();
    v23 = (2 * *(v22 + 16)) | 1;
    v52 = v22;
    v53 = v22 + 32;
    v54 = 0;
    v55 = v23;
    v24 = specialized Collection<>.popFirst()();
    v25 = v16;
    if (v24 == 4 || v54 != v55 >> 1)
    {
      v29 = type metadata accessor for DecodingError();
      swift_allocError();
      v31 = v30;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v31 = &type metadata for PlaybackButton._StyleStorage;
      v32 = v14;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v33 = MEMORY[0x1E69E6AF8];
    }

    else
    {
      if (v24 <= 1u)
      {
        if (v24)
        {
          v49 = 1;
          lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v40 + 8))(v20, v41);
          (*(v47 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v26 = 0;
          v27 = 0;
          v28 = 5;
        }

        else
        {
          v49 = 0;
          lazy protocol witness table accessor for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v39 + 8))(v12, v48);
          (*(v47 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v26 = 0;
          v27 = 0;
          v28 = 4;
        }

        goto LABEL_14;
      }

      if (v24 == 2)
      {
        v49 = 2;
        lazy protocol witness table accessor for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type Text.DateStyle and conformance Text.DateStyle();
        v35 = v42;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v36 = v47;
        (*(v43 + 8))(v19, v35);
        (*(v36 + 8))(v16, v14);
        swift_unknownObjectRelease();
        v26 = v49;
        v27 = v50;
        v28 = v51;
LABEL_14:
        *v21 = v26;
        *(v21 + 8) = v27;
        *(v21 + 16) = v28;
        return __swift_destroy_boxed_opaque_existential_1(v56);
      }

      v29 = type metadata accessor for DecodingError();
      swift_allocError();
      v31 = v37;
      v32 = v14;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v33 = MEMORY[0x1E69E6B00];
    }

    (*(*(v29 - 8) + 104))(v31, *v33, v29);
    swift_willThrow();
    (*(v47 + 8))(v25, v32);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

unint64_t lazy protocol witness table accessor for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.PillCodingKeys, &unk_1EFFEB868, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.PillCodingKeys, &unk_1EFFEB868, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.PillCodingKeys, &unk_1EFFEB868, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.PillCodingKeys, &unk_1EFFEB868, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.PillCodingKeys and conformance PlaybackButton._StyleStorage.PillCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.CircleCodingKeys, &unk_1EFFEB7D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.CircleCodingKeys, &unk_1EFFEB7D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.CircleCodingKeys, &unk_1EFFEB7D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CircleCodingKeys and conformance PlaybackButton._StyleStorage.CircleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.AutomaticCodingKeys, &unk_1EFFEB7B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.AutomaticCodingKeys, &unk_1EFFEB7B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.AutomaticCodingKeys, &unk_1EFFEB7B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.AutomaticCodingKeys and conformance PlaybackButton._StyleStorage.AutomaticCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.CodingKeys, &unk_1EFFEB798, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.CodingKeys, &unk_1EFFEB798, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.CodingKeys, &unk_1EFFEB798, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaybackButton._StyleStorage.CodingKeys, &unk_1EFFEB798, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackButton._StyleStorage.CodingKeys and conformance PlaybackButton._StyleStorage.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackButton._StyleStorage.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PlaybackButton._StyleStorage.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t specialized PlaybackButton._StyleStorage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C63726963 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819044208 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaybackButton._StyleStorage.CodingKeys()
{
  v1 = 0x6974616D6F747561;
  v2 = 1819044208;
  if (*v0 != 2)
  {
    v2 = 0x79616C7265766FLL;
  }

  if (*v0)
  {
    v1 = 0x656C63726963;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility()
{
  result = lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility;
  if (!lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697ECD8], MEMORY[0x1E697ECC8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility;
  if (!lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697ECD0], MEMORY[0x1E697ECC8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility);
  }

  return result;
}

char *initializeWithCopy for ArchivablePlaybackButtonViewModifier(char *a1, char *a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 1, v6))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 16);
    v11(a1, a2, v10);
    v11(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v10);
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  v12 = type metadata accessor for PlaybackButton.Configuration(0);
  v13 = v12[5];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 2, v14))
  {
    v16 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 2, v14);
  }

  v17 = v12[6];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  a1[v12[7]] = a2[v12[7]];
  a1[v12[8]] = a2[v12[8]];
  *&a1[v12[9]] = *&a2[v12[9]];
  v21 = v12[10];
  v22 = &a1[v21];
  v23 = &a2[v21];
  v24 = *&a2[v21];
  v25 = *&a2[v21 + 8];
  v26 = a2[v21 + 16];

  outlined copy of Environment<AppIntentExecutor?>.Content(v24, v25, v26, outlined copy of AppIntentExecutor?);
  *v22 = v24;
  *(v22 + 1) = v25;
  v22[16] = v26;
  v27 = *(v23 + 5);
  v28 = *(v23 + 24);
  *(v22 + 24) = v28;
  *(v22 + 5) = v27;
  v29 = a3[5];
  v30 = a3[6];
  v31 = &a1[v29];
  v32 = &a2[v29];
  *v31 = *v32;
  v31[16] = v32[16];
  a1[v30] = a2[v30];
  *&a1[a3[7]] = *&a2[a3[7]];
  v33 = v28;

  return a1;
}

double destroy for ArchivablePlaybackButtonViewModifier(uint64_t a1)
{
  type metadata accessor for ClosedRange<Date>(0);
  v3 = v2;
  if (!(*(*(v2 - 8) + 48))(a1, 1, v2))
  {
    v4 = type metadata accessor for Date();
    v5 = *(*(v4 - 8) + 8);
    v5(a1, v4);
    v5(a1 + *(v3 + 36), v4);
  }

  v6 = type metadata accessor for PlaybackButton.Configuration(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v7, 2, v8))
  {
    (*(v9 + 8))(a1 + v7, v8);
  }

  v10 = a1 + *(v6 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v10, *(v10 + 8), *(v10 + 16), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

  return result;
}

uint64_t sub_18C07E0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackButton.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C07E1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ClosedRange<Date>?(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PlaybackButton.State(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

double protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ArchivablePlaybackButtonViewModifier@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(unint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static _ArchivableViewModifier.makeArchivableView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t type metadata completion function for ResolvedPlaybackButton(uint64_t a1)
{
  result = type metadata accessor for PlaybackButton.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ResolvedPlaybackButtonContent(uint64_t a1)
{
  result = type metadata accessor for PlaybackButton.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>)
  {
    type metadata accessor for ResolvedPlaybackButtonContent(255);
    type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, MEMORY[0x1E6981EC8], MEMORY[0x1E69805E0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>);
    }
  }
}

void type metadata accessor for ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>)
  {
    type metadata accessor for ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for ButtonBehavior(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, _EnvironmentKeyWritingModifier<Visibility>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, _EnvironmentKeyWritingModifier<Visibility>>)
  {
    type metadata accessor for ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E697DB50], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, _EnvironmentKeyWritingModifier<Visibility>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, _EnvironmentKeyWritingModifier<Visibility>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>> and conformance ButtonBehavior<A>, type metadata accessor for ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, protocol conformance descriptor for ButtonBehavior<A>);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E697DB50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset()
{
  result = lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset;
  if (!lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981EC0], MEMORY[0x1E6981EC8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Rectangle._Inset and conformance Rectangle._Inset);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ResolvedPlaybackButtonContent and conformance ResolvedPlaybackButtonContent, type metadata accessor for ResolvedPlaybackButtonContent, protocol conformance descriptor for ResolvedPlaybackButtonContent);
    v5[1] = lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle._Inset> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle._Inset> and conformance _ContentShapeKindModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle._Inset> and conformance _ContentShapeKindModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle._Inset> and conformance _ContentShapeKindModifier<A>)
  {
    type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, MEMORY[0x1E6981EC8], MEMORY[0x1E69805E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69805E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle._Inset> and conformance _ContentShapeKindModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CirclePlaybackButtonStyleBody(uint64_t a1)
{
  result = type metadata singleton initialization cache for CirclePlaybackButtonStyleBody;
  if (!type metadata singleton initialization cache for CirclePlaybackButtonStyleBody)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CirclePlaybackButtonStyleBody(uint64_t a1)
{
  result = type metadata accessor for PlaybackButton.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PillPlaybackButtonStyleBody(uint64_t a1)
{
  result = type metadata singleton initialization cache for PillPlaybackButtonStyleBody;
  if (!type metadata singleton initialization cache for PillPlaybackButtonStyleBody)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PillPlaybackButtonStyleBody(uint64_t a1)
{
  result = type metadata accessor for PlaybackButton.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<CirclePlaybackButtonStyleBody, PillPlaybackButtonStyleBody> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<CirclePlaybackButtonStyleBody, PillPlaybackButtonStyleBody> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<CirclePlaybackButtonStyleBody, PillPlaybackButtonStyleBody> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>(255, &lazy cache variable for type metadata for _ConditionalContent<CirclePlaybackButtonStyleBody, PillPlaybackButtonStyleBody>, type metadata accessor for CirclePlaybackButtonStyleBody, type metadata accessor for PillPlaybackButtonStyleBody, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CirclePlaybackButtonStyleBody and conformance CirclePlaybackButtonStyleBody, type metadata accessor for CirclePlaybackButtonStyleBody, protocol conformance descriptor for CirclePlaybackButtonStyleBody);
    v5[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PillPlaybackButtonStyleBody and conformance PillPlaybackButtonStyleBody, type metadata accessor for PillPlaybackButtonStyleBody, protocol conformance descriptor for PillPlaybackButtonStyleBody);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<CirclePlaybackButtonStyleBody, PillPlaybackButtonStyleBody> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

char *assignWithCopy for ArchivablePlaybackButtonViewModifier(char *a1, char *a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v6);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for Date();
      v13 = *(*(v12 - 8) + 16);
      v13(a1, a2, v12);
      v13(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v12);
      (*(v8 + 56))(a1, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    outlined destroy of PlaybackButton.State(a1, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v47 = type metadata accessor for Date();
  v48 = *(*(v47 - 8) + 24);
  v48(a1, a2, v47);
  v48(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v47);
LABEL_7:
  v15 = type metadata accessor for PlaybackButton.Configuration(0);
  v16 = v15[5];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(&a1[v16], 2, v17);
  v21 = v19(&a2[v16], 2, v17);
  if (!v20)
  {
    if (!v21)
    {
      (*(v18 + 24))(&a1[v16], &a2[v16], v17);
      goto LABEL_13;
    }

    (*(v18 + 8))(&a1[v16], v17);
    goto LABEL_12;
  }

  if (v21)
  {
LABEL_12:
    v22 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&a1[v16], &a2[v16], *(*(v22 - 8) + 64));
    goto LABEL_13;
  }

  (*(v18 + 16))(&a1[v16], &a2[v16], v17);
  (*(v18 + 56))(&a1[v16], 0, 2, v17);
LABEL_13:
  v23 = v15[6];
  v24 = &a1[v23];
  v25 = &a2[v23];
  *v24 = *v25;
  *(v24 + 1) = *(v25 + 1);

  a1[v15[7]] = a2[v15[7]];
  a1[v15[8]] = a2[v15[8]];
  v26 = v15[9];
  v27 = &a1[v26];
  v28 = &a2[v26];
  *v27 = *v28;
  *(v27 + 1) = *(v28 + 1);
  v29 = v15[10];
  v30 = &a1[v29];
  v31 = &a2[v29];
  v32 = *&a2[v29];
  v33 = *&a2[v29 + 8];
  v34 = a2[v29 + 16];
  outlined copy of Environment<AppIntentExecutor?>.Content(v32, v33, v34, outlined copy of AppIntentExecutor?);
  v35 = *v30;
  v36 = *(v30 + 1);
  v37 = v30[16];
  *v30 = v32;
  *(v30 + 1) = v33;
  v30[16] = v34;
  outlined consume of Environment<AppIntentExecutor?>.Content(v35, v36, v37, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v38 = *(v31 + 3);
  v39 = *(v30 + 3);
  *(v30 + 3) = v38;
  v40 = v38;

  v41 = *(v31 + 5);
  *(v30 + 4) = *(v31 + 4);
  *(v30 + 5) = v41;

  v42 = a3[5];
  v43 = &a1[v42];
  v44 = &a2[v42];
  v45 = *v44;
  v43[16] = v44[16];
  *v43 = v45;
  a1[a3[6]] = a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

double ArchivablePlaybackButtonViewModifier.body(content:)@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PlaybackButton.Configuration(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of PlaybackButton.State(v2, v10, type metadata accessor for PlaybackButton.Configuration);
  v11 = type metadata accessor for ArchivablePlaybackButtonViewModifier(0);
  v12 = v2 + v11[5];
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v28 = *(v2 + v11[6]);
  v16 = *(v2 + v11[7]);
  outlined init with copy of PlaybackButton.State(&v10[*(v8 + 28)], v6, type metadata accessor for PlaybackButton.State);
  *a1 = specialized PlaybackButton.Phase.init(_:)(v6);
  *(a1 + 8) = 0;
  v17 = type metadata accessor for ResolvedPlaybackButton(0);
  outlined init with copy of PlaybackButton.State(v10, a1 + v17[5], type metadata accessor for PlaybackButton.Configuration);
  v18 = &v10[*(v8 + 48)];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = v18[16];
  v22 = *(v18 + 5);
  v29 = *(v18 + 24);
  outlined copy of Environment<AppIntentExecutor?>.Content(v19, v20, v21, outlined copy of AppIntentExecutor?);
  v23 = v29;

  outlined destroy of PlaybackButton.State(v10, type metadata accessor for PlaybackButton.Configuration);
  v24 = a1 + v17[6];
  *v24 = v19;
  *(v24 + 8) = v20;
  *(v24 + 16) = v21;
  result = *&v29;
  *(v24 + 24) = v29;
  *(v24 + 40) = v22;
  v26 = a1 + v17[7];
  *v26 = v13;
  *(v26 + 8) = v14;
  *(v26 + 16) = v15;
  *(a1 + v17[9]) = v28;
  *(a1 + v17[8]) = v16;
  return result;
}

uint64_t specialized PlaybackButton.Phase.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (PlaybackButton.State, PlaybackButton.State)(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  (*(v3 + 56))(&v27 - v15, 2, 2, v2, v14);
  v17 = *(v7 + 56);
  outlined init with copy of PlaybackButton.State(a1, v9, type metadata accessor for PlaybackButton.State);
  outlined init with copy of PlaybackButton.State(v16, &v9[v17], type metadata accessor for PlaybackButton.State);
  v18 = *(v3 + 48);
  v19 = v18(v9, 2, v2);
  if (v19)
  {
    if (v19 == 1)
    {
      outlined destroy of PlaybackButton.State(a1, type metadata accessor for PlaybackButton.State);
      outlined destroy of PlaybackButton.State(v16, type metadata accessor for PlaybackButton.State);
      v20 = v18(&v9[v17], 2, v2);
      v21 = type metadata accessor for (PlaybackButton.State, PlaybackButton.State);
      if (v20 != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      outlined destroy of PlaybackButton.State(a1, type metadata accessor for PlaybackButton.State);
      outlined destroy of PlaybackButton.State(v16, type metadata accessor for PlaybackButton.State);
      v23 = v18(&v9[v17], 2, v2);
      v21 = type metadata accessor for (PlaybackButton.State, PlaybackButton.State);
      if (v23 != 2)
      {
LABEL_8:
        v22 = 0;
        goto LABEL_11;
      }
    }

LABEL_10:
    v22 = 2;
    v21 = type metadata accessor for PlaybackButton.State;
    goto LABEL_11;
  }

  outlined init with copy of PlaybackButton.State(v9, v12, type metadata accessor for PlaybackButton.State);
  if (!v18(&v9[v17], 2, v2))
  {
    (*(v3 + 32))(v5, &v9[v17], v2);
    v24 = static Date.== infix(_:_:)();
    outlined destroy of PlaybackButton.State(a1, type metadata accessor for PlaybackButton.State);
    v25 = *(v3 + 8);
    v25(v5, v2);
    outlined destroy of PlaybackButton.State(v16, type metadata accessor for PlaybackButton.State);
    v25(v12, v2);
    if ((v24 & 1) == 0)
    {
      v21 = type metadata accessor for PlaybackButton.State;
      v22 = 0;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  outlined destroy of PlaybackButton.State(a1, type metadata accessor for PlaybackButton.State);
  outlined destroy of PlaybackButton.State(v16, type metadata accessor for PlaybackButton.State);
  (*(v3 + 8))(v12, v2);
  v22 = 0;
  v21 = type metadata accessor for (PlaybackButton.State, PlaybackButton.State);
LABEL_11:
  outlined destroy of PlaybackButton.State(v9, v21);
  return v22;
}

void type metadata accessor for (PlaybackButton.State, PlaybackButton.State)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PlaybackButton.State, PlaybackButton.State))
  {
    type metadata accessor for PlaybackButton.State(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PlaybackButton.State, PlaybackButton.State));
    }
  }
}

uint64_t initializeWithCopy for ResolvedPlaybackButton(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for ClosedRange<Date>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 48);

  if (v12(v8, 1, v10))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v7, v8, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 16);
    v15(v7, v8, v14);
    v15(&v7[*(v10 + 36)], &v8[*(v10 + 36)], v14);
    (*(v11 + 56))(v7, 0, 1, v10);
  }

  v16 = type metadata accessor for PlaybackButton.Configuration(0);
  v17 = v16[5];
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(&v8[v17], 2, v18))
  {
    v20 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v7[v17], &v8[v17], *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(&v7[v17], &v8[v17], v18);
    (*(v19 + 56))(&v7[v17], 0, 2, v18);
  }

  v21 = v16[6];
  v22 = &v7[v21];
  v23 = &v8[v21];
  v24 = *(v23 + 1);
  *v22 = *v23;
  *(v22 + 1) = v24;
  v7[v16[7]] = v8[v16[7]];
  v7[v16[8]] = v8[v16[8]];
  *&v7[v16[9]] = *&v8[v16[9]];
  v25 = v16[10];
  v26 = &v7[v25];
  v27 = &v8[v25];
  v28 = *&v8[v25];
  v29 = *&v8[v25 + 8];
  v30 = v27[16];

  outlined copy of Environment<AppIntentExecutor?>.Content(v28, v29, v30, outlined copy of AppIntentExecutor?);
  *v26 = v28;
  *(v26 + 1) = v29;
  v26[16] = v30;
  v31 = *(v27 + 5);
  v32 = *(v27 + 24);
  *(v26 + 24) = v32;
  *(v26 + 5) = v31;
  v33 = a3[6];
  v34 = a1 + v33;
  v35 = a2 + v33;
  v36 = *(a2 + v33);
  v37 = *(a2 + v33 + 8);
  LOBYTE(v26) = *(a2 + v33 + 16);
  v38 = v32;

  outlined copy of Environment<AppIntentExecutor?>.Content(v36, v37, v26, outlined copy of AppIntentExecutor?);
  *v34 = v36;
  *(v34 + 8) = v37;
  *(v34 + 16) = v26;
  v39 = *(v35 + 40);
  v40 = *(v35 + 24);
  *(v34 + 24) = v40;
  *(v34 + 40) = v39;
  v41 = a3[7];
  v42 = a3[8];
  v43 = a1 + v41;
  v44 = a2 + v41;
  *v43 = *v44;
  *(v43 + 16) = *(v44 + 16);
  *(a1 + v42) = *(a2 + v42);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v45 = v40;

  return a1;
}

double destroy for ResolvedPlaybackButton(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  type metadata accessor for ClosedRange<Date>(0);
  v6 = v5;
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 8);
    v8(v4, v7);
    v8(v4 + *(v6 + 36), v7);
  }

  v9 = type metadata accessor for PlaybackButton.Configuration(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v10, 2, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = v4 + *(v9 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v13, *(v13 + 8), *(v13 + 16), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

  v14 = a1 + *(a2 + 24);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v14, *(v14 + 8), *(v14 + 16), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

  return result;
}

uint64_t ResolvedPlaybackButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ResolvedPlaybackButton(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  outlined init with copy of PlaybackButton.State(v1, &v18 - v9, type metadata accessor for ResolvedPlaybackButton);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of PlaybackButton.State(v10, v12 + v11, type metadata accessor for ResolvedPlaybackButton);
  v13 = v18;
  outlined init with copy of PlaybackButton.State(v18, v7, type metadata accessor for ResolvedPlaybackButton);
  v14 = swift_allocObject();
  outlined init with take of PlaybackButton.State(v7, v14 + v11, type metadata accessor for ResolvedPlaybackButton);
  v19 = 0;
  result = swift_getKeyPath();
  v16 = *(v13 + *(v4 + 44));
  v17 = v19;
  *a1 = 0;
  *(a1 + 8) = v17;
  *(a1 + 16) = partial apply for closure #1 in ResolvedPlaybackButton.body.getter;
  *(a1 + 24) = v12;
  *(a1 + 32) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(a1 + 40) = 0;
  *(a1 + 48) = partial apply for closure #2 in ResolvedPlaybackButton.body.getter;
  *(a1 + 56) = v14;
  *(a1 + 64) = closure #3 in ResolvedPlaybackButton.body.getter;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 82) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = result;
  *(a1 + 104) = v16;
  return result;
}

void partial apply for closure #2 in ResolvedPlaybackButton.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = *(type metadata accessor for ResolvedPlaybackButton(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  closure #2 in ResolvedPlaybackButton.body.getter(v3, v6, a2);
}

void closure #2 in ResolvedPlaybackButton.body.getter(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v38) = a1;
  v39 = a3;
  v4 = type metadata accessor for ResolvedPlaybackButtonContent(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResolvedPlaybackButton(0);
  v9 = &a2[*(v8 + 28)];
  v10 = *v9;
  v36 = v9[1];
  v37 = v10;
  v35 = *(v9 + 16);
  v33 = v8;
  v11 = &a2[*(v8 + 20)];
  v12 = &v7[*(v5 + 28)];
  outlined init with copy of PlaybackButton.State(v11, v12, type metadata accessor for ClosedRange<Date>?);
  v13 = type metadata accessor for PlaybackButton.Configuration(0);
  outlined init with copy of PlaybackButton.State(v11 + v13[5], v12 + v13[5], type metadata accessor for PlaybackButton.State);
  v14 = (v11 + v13[6]);
  v15 = v14[1];
  v34 = *v14;
  v16 = *(a2 + 1);
  v41 = *a2;
  v42 = v16;
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(0, &lazy cache variable for type metadata for State<PlaybackButton.Phase>, &type metadata for PlaybackButton.Phase, MEMORY[0x1E6981790]);

  State.wrappedValue.getter();
  v17 = v40;
  v18 = v13[9];
  v19 = v11 + v13[10];
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = (v12 + v13[6]);
  *v23 = v34;
  v23[1] = v15;
  *(v12 + v13[7]) = v17;
  v24 = *(v19 + 40);
  *(v12 + v13[8]) = v38;
  *(v12 + v13[9]) = *(v11 + v18);
  v25 = v12 + v13[10];
  *v25 = v20;
  *(v25 + 8) = v21;
  *(v25 + 16) = v22;
  v38 = *(v19 + 24);
  *(v25 + 24) = v38;
  *(v25 + 40) = v24;
  v26 = v36;
  *v7 = v37;
  *(v7 + 1) = v26;
  v7[16] = v35;
  v27 = 0.0;
  if ((v9[2] & 0xFE) == 4)
  {
    v27 = (28.0 - *&a2[*(v33 + 32)]) * 0.5;
  }

  v28 = v39;
  outlined init with take of PlaybackButton.State(v7, v39, type metadata accessor for ResolvedPlaybackButtonContent);
  type metadata accessor for ModifiedContent<ResolvedPlaybackButtonContent, _ContentShapeKindModifier<Rectangle._Inset>>(0);
  v30 = v28 + *(v29 + 36);
  *v30 = v27;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  outlined copy of Environment<AppIntentExecutor?>.Content(v20, v21, v22, outlined copy of AppIntentExecutor?);
  v31 = v38;
}

uint64_t initializeWithCopy for ResolvedPlaybackButtonContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a3 + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  type metadata accessor for ClosedRange<Date>(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v5, v6, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 16);
    v12(v5, v6, v11);
    v12(&v5[*(v8 + 36)], &v6[*(v8 + 36)], v11);
    (*(v9 + 56))(v5, 0, 1, v8);
  }

  v13 = type metadata accessor for PlaybackButton.Configuration(0);
  v14 = v13[5];
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&v6[v14], 2, v15))
  {
    v17 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v5[v14], &v6[v14], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(&v5[v14], &v6[v14], v15);
    (*(v16 + 56))(&v5[v14], 0, 2, v15);
  }

  v18 = v13[6];
  v19 = &v5[v18];
  v20 = &v6[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  v5[v13[7]] = v6[v13[7]];
  v5[v13[8]] = v6[v13[8]];
  *&v5[v13[9]] = *&v6[v13[9]];
  v22 = v13[10];
  v23 = &v5[v22];
  v24 = &v6[v22];
  v25 = *&v6[v22];
  v26 = *&v6[v22 + 8];
  v27 = v24[16];

  outlined copy of Environment<AppIntentExecutor?>.Content(v25, v26, v27, outlined copy of AppIntentExecutor?);
  *v23 = v25;
  *(v23 + 1) = v26;
  v23[16] = v27;
  v28 = *(v24 + 5);
  v29 = *(v24 + 24);
  *(v23 + 24) = v29;
  *(v23 + 5) = v28;
  v30 = v29;

  return a1;
}

double destroy for ResolvedPlaybackButtonContent(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  type metadata accessor for ClosedRange<Date>(0);
  v4 = v3;
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v5 = type metadata accessor for Date();
    v6 = *(*(v5 - 8) + 8);
    v6(v2, v5);
    v6(v2 + *(v4 + 36), v5);
  }

  v7 = type metadata accessor for PlaybackButton.Configuration(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v8, 2, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v11 = v2 + *(v7 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v11, *(v11 + 8), *(v11 + 16), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

  return result;
}

uint64_t ResolvedPlaybackButtonContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PillPlaybackButtonStyleBody(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CirclePlaybackButtonStyleBody(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  if ((v9 - 4) < 2)
  {
    v10 = type metadata accessor for ResolvedPlaybackButtonContent(0);
    outlined init with copy of PlaybackButton.State(v1 + *(v10 + 20), &v8[*(v6 + 20)], type metadata accessor for PlaybackButton.Configuration);
    *v8 = swift_getKeyPath();
    v8[8] = 0;
    outlined init with take of PlaybackButton.State(v8, a1, type metadata accessor for CirclePlaybackButtonStyleBody);
LABEL_5:
    type metadata accessor for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>(0, &lazy cache variable for type metadata for _ConditionalContent<CirclePlaybackButtonStyleBody, PillPlaybackButtonStyleBody>.Storage, type metadata accessor for CirclePlaybackButtonStyleBody, type metadata accessor for PillPlaybackButtonStyleBody, MEMORY[0x1E697F948]);
    return swift_storeEnumTagMultiPayload();
  }

  if (v9 != 6)
  {
    v12 = *v1;
    v11 = v1[1];
    v13 = type metadata accessor for ResolvedPlaybackButtonContent(0);
    outlined init with copy of PlaybackButton.State(v1 + *(v13 + 20), &v5[*(v3 + 20)], type metadata accessor for PlaybackButton.Configuration);
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    v14 = &v5[*(v3 + 24)];
    *v14 = v12;
    *(v14 + 1) = v11;
    v14[16] = v9;
    outlined init with take of PlaybackButton.State(v5, a1, type metadata accessor for PillPlaybackButtonStyleBody);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for CirclePlaybackButtonStyleBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a3 + 20);
  v9 = (a1 + v8);
  v10 = a2 + v8;
  type metadata accessor for ClosedRange<Date>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 16);
    v16(v9, v10, v15);
    v16(&v9[*(v12 + 36)], &v10[*(v12 + 36)], v15);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  v17 = type metadata accessor for PlaybackButton.Configuration(0);
  v18 = v17[5];
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(&v10[v18], 2, v19))
  {
    v21 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v9[v18], &v10[v18], *(*(v21 - 8) + 64));
  }

  else
  {
    (*(v20 + 16))(&v9[v18], &v10[v18], v19);
    (*(v20 + 56))(&v9[v18], 0, 2, v19);
  }

  v22 = v17[6];
  v23 = &v9[v22];
  v24 = &v10[v22];
  v25 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v25;
  v9[v17[7]] = v10[v17[7]];
  v9[v17[8]] = v10[v17[8]];
  *&v9[v17[9]] = *&v10[v17[9]];
  v26 = v17[10];
  v27 = &v9[v26];
  v28 = &v10[v26];
  v29 = *&v10[v26];
  v30 = *&v10[v26 + 8];
  v31 = v28[16];

  outlined copy of Environment<AppIntentExecutor?>.Content(v29, v30, v31);
  *v27 = v29;
  *(v27 + 1) = v30;
  v27[16] = v31;
  v32 = *(v28 + 5);
  v33 = *(v28 + 24);
  *(v27 + 24) = v33;
  *(v27 + 5) = v32;
  v34 = v33;

  return a1;
}

double destroy for PillPlaybackButtonStyleBody(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v4 = a1 + *(a2 + 20);
  type metadata accessor for ClosedRange<Date>(0);
  v6 = v5;
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 8);
    v8(v4, v7);
    v8(v4 + *(v6 + 36), v7);
  }

  v9 = type metadata accessor for PlaybackButton.Configuration(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v10, 2, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = v4 + *(v9 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v13, *(v13 + 8), *(v13 + 16));

  return result;
}

double outlined consume of Environment<AppIntentExecutor?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(result, a2);
  }

  else
  {
  }

  return v3;
}

void type metadata completion function for DefaultDateProgressLabel(uint64_t a1)
{
  type metadata accessor for ClosedRange<Date>(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>)
  {
    type metadata accessor for _ShapeView<Capsule, Color>(255, &lazy cache variable for type metadata for _ShapeView<Circle, Color>, lazy protocol witness table accessor for type Circle and conformance Circle, MEMORY[0x1E69817E8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Circle and conformance Circle()
{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69817E0], MEMORY[0x1E69817E8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Circle and conformance Circle;
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69817D0], MEMORY[0x1E69817E8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }

  return result;
}

void type metadata accessor for _AnimationModifier<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for AppearanceAnimationView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697EBB8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>, &lazy cache variable for type metadata for _ShapeView<Circle, Color>, lazy protocol witness table accessor for type Circle and conformance Circle, MEMORY[0x1E69817E8]);
    v5[1] = MEMORY[0x1E697E070];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, MEMORY[0x1E697E080], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PlaybackButton.Phase and conformance PlaybackButton.Phase();
    v1 = type metadata accessor for IDView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>);
    }
  }
}

void type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Int?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<Int?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Int?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Color?(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, MEMORY[0x1E697EBD0], MEMORY[0x1E697E830]);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for [AnyFontModifier](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _sSay7SwiftUI15AnyFontModifierCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _sSay7SwiftUI15AnyFontModifierCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, MEMORY[0x1E697E080], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>);
    v5[1] = MEMORY[0x1E697E070];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, MEMORY[0x1E697EBD0], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697EBB8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>(255);
    v4 = v3;
    v5 = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v6[0] = MEMORY[0x1E6981710];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMaTm_0(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Int?>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>, MEMORY[0x1E697F960]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>?);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for StrokeShapeView<Circle._Inset, Color, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StrokeShapeView<Circle._Inset, Color, EmptyView>)
  {
    lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset();
    v1 = type metadata accessor for StrokeShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StrokeShapeView<Circle._Inset, Color, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset()
{
  result = lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset;
  if (!lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69817C0], MEMORY[0x1E69817C8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>(255);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, type metadata accessor for ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, MEMORY[0x1E697EBD0], MEMORY[0x1E697E830]);
    type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(255, &lazy cache variable for type metadata for _AnimationModifier<PlaybackButton.Phase>, lazy protocol witness table accessor for type PlaybackButton.Phase and conformance PlaybackButton.Phase, &type metadata for PlaybackButton.Phase, MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>);
    }
  }
}

void type metadata accessor for StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>)
  {
    type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(255, &lazy cache variable for type metadata for _TrimmedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, MEMORY[0x1E69817C8], MEMORY[0x1E697E2D8]);
    lazy protocol witness table accessor for type _TrimmedShape<Circle._Inset> and conformance _TrimmedShape<A>();
    v1 = type metadata accessor for StrokeShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TrimmedShape<Circle._Inset> and conformance _TrimmedShape<A>()
{
  result = lazy protocol witness table cache variable for type _TrimmedShape<Circle._Inset> and conformance _TrimmedShape<A>;
  if (!lazy protocol witness table cache variable for type _TrimmedShape<Circle._Inset> and conformance _TrimmedShape<A>)
  {
    type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(255, &lazy cache variable for type metadata for _TrimmedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, MEMORY[0x1E69817C8], MEMORY[0x1E697E2D8]);
    result = swift_getWitnessTable(MEMORY[0x1E697E2E0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TrimmedShape<Circle._Inset> and conformance _TrimmedShape<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?(255);
    v4 = v3;
    v5[0] = _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform()
{
  result = lazy protocol witness table cache variable for type DisplayListTransform and conformance DisplayListTransform;
  if (!lazy protocol witness table cache variable for type DisplayListTransform and conformance DisplayListTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayListTransform, &unk_1EFFC6D48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayListTransform and conformance DisplayListTransform);
  }

  return result;
}

uint64_t assignWithCopy for CirclePlaybackButtonStyleBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(a3 + 20);
  v11 = (a1 + v10);
  v12 = a2 + v10;
  type metadata accessor for ClosedRange<Date>(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v11, 1, v13);
  v18 = v16(v12, 1, v14);
  if (v17)
  {
    if (!v18)
    {
      v19 = type metadata accessor for Date();
      v20 = *(*(v19 - 8) + 16);
      v20(v11, v12, v19);
      v20(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v19);
      (*(v15 + 56))(v11, 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    _sSNy10Foundation4DateVGWOhTm_3(v11, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v11, v12, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v50 = type metadata accessor for Date();
  v51 = *(*(v50 - 8) + 24);
  v51(v11, v12, v50);
  v51(&v11[*(v14 + 36)], &v12[*(v14 + 36)], v50);
LABEL_7:
  v22 = type metadata accessor for PlaybackButton.Configuration(0);
  v23 = v22[5];
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(&v11[v23], 2, v24);
  v28 = v26(&v12[v23], 2, v24);
  if (!v27)
  {
    if (!v28)
    {
      (*(v25 + 24))(&v11[v23], &v12[v23], v24);
      goto LABEL_13;
    }

    (*(v25 + 8))(&v11[v23], v24);
    goto LABEL_12;
  }

  if (v28)
  {
LABEL_12:
    v29 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v11[v23], &v12[v23], *(*(v29 - 8) + 64));
    goto LABEL_13;
  }

  (*(v25 + 16))(&v11[v23], &v12[v23], v24);
  (*(v25 + 56))(&v11[v23], 0, 2, v24);
LABEL_13:
  v30 = v22[6];
  v31 = &v11[v30];
  v32 = &v12[v30];
  *v31 = *v32;
  *(v31 + 1) = *(v32 + 1);

  v11[v22[7]] = v12[v22[7]];
  v11[v22[8]] = v12[v22[8]];
  v33 = v22[9];
  v34 = &v11[v33];
  v35 = &v12[v33];
  *v34 = *v35;
  *(v34 + 1) = *(v35 + 1);
  v36 = v22[10];
  v37 = &v11[v36];
  v38 = &v12[v36];
  v39 = *&v12[v36];
  v40 = *&v12[v36 + 8];
  v41 = v38[16];
  outlined copy of Environment<AppIntentExecutor?>.Content(v39, v40, v41);
  v42 = *v37;
  v43 = *(v37 + 1);
  v44 = v37[16];
  *v37 = v39;
  *(v37 + 1) = v40;
  v37[16] = v41;
  outlined consume of Environment<AppIntentExecutor?>.Content(v42, v43, v44);
  v45 = *(v38 + 3);
  v46 = *(v37 + 3);
  *(v37 + 3) = v45;
  v47 = v45;

  v48 = *(v38 + 5);
  *(v37 + 4) = *(v38 + 4);
  *(v37 + 5) = v48;

  return a1;
}

uint64_t CirclePlaybackButtonStyleBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<Mo(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PlaybackButton.Configuration(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<Mo(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v18 = static Alignment.center.getter();
  v18[1] = v19;
  type metadata accessor for _VariadicView.Tree<_ZStackLayout, TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<Modifie(0);
  closure #1 in CirclePlaybackButtonStyleBody.body.getter(v18 + *(v20 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = (v18 + *(v16 + 44));
  v22 = v39[6];
  *v21 = v39[5];
  v21[1] = v22;
  v21[2] = v39[7];
  if (specialized Environment.wrappedValue.getter(*v2, *(v2 + 8)) == 2)
  {
    v23 = 4;
  }

  else
  {
    v23 = 5;
  }

  v24 = type metadata accessor for CirclePlaybackButtonStyleBody(0);
  outlined init with copy of PlaybackButton.Configuration(v2 + *(v24 + 20), v11, type metadata accessor for PlaybackButton.Configuration);
  outlined init with copy of PlaybackButton.Configuration(&v11[*(v9 + 28)], v14, type metadata accessor for PlaybackButton.State);
  type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>( 0,  &lazy cache variable for type metadata for AccessibilityPlaybackButtonModifier<ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>,  type metadata accessor for ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<Mo,  lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent,  type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration);
  v26 = v25;
  outlined init with copy of PlaybackButton.Configuration(v11, &v14[*(v25 + 40)], type metadata accessor for ClosedRange<Date>?);
  _sSNy10Foundation4DateVGWOhTm_3(v11, type metadata accessor for PlaybackButton.Configuration);
  v27 = &v14[*(v26 + 36)];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = v23;
  specialized View.accessibilityCombinedElement(options:ignoredTraits:)(0, v7);
  v28 = *&v7[*(v5 + 44)];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v28 + 16, 1, 1);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v28 + 16, 0, 1024);
  v29 = specialized static Text.Accessibility.playback(for:)(v14);
  v31 = v30;
  v33 = v32;
  specialized ModifiedContent<>.accessibilityLabel(_:)(v29, v30, v32 & 1, v34, a1);
  outlined consume of Text.Storage(v29, v31, v33 & 1);

  _sSNy10Foundation4DateVGWOhTm_3(v7, type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<Mo);
  specialized AccessibilityPlaybackButtonModifier.resolvedValue.getter(v39);
  v35 = *(a1 + *(v5 + 44));
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v39, v38);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v35 + 80, v38);
  outlined destroy of AccessibilityValueStorage?(v35 + 80);
  outlined init with copy of AccessibilityValueStorage(v38, v35 + 80);
  outlined destroy of AccessibilityValueStorage(v38);
  swift_endAccess();
  outlined destroy of AccessibilityValueStorage(v39);

  _sSNy10Foundation4DateVGWOhTm_3(v14, type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>);
  return _sSNy10Foundation4DateVGWOhTm_3(v18, type metadata accessor for ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<Mo);
}

uint64_t type metadata completion function for AccessibilityPlaybackButtonModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityLinkModifier(uint64_t a1)
{
  result = type metadata accessor for LinkDestination();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for AccessibilityPlaybackButtonModifier.Configuration(uint64_t a1)
{
  type metadata accessor for PlaybackButton.State(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LinkDestination.Configuration?(319, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata accessor for LinkDestination.Configuration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s7SwiftUI15LinkDestinationV13ConfigurationVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t closure #1 in CirclePlaybackButtonStyleBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  CirclePlaybackButtonStyleBody.platter.getter(v26);
  CirclePlaybackButtonStyleBody.playbackStateImage.getter(v27);
  CirclePlaybackButtonStyleBody.resolvedProgressStroke.getter(v7);
  memcpy(v25, v26, sizeof(v25));
  v21 = v27[4];
  v22 = v27[5];
  v23 = v27[6];
  v24 = v28;
  v17 = v27[0];
  v18 = v27[1];
  v19 = v27[2];
  v20 = v27[3];
  outlined init with copy of PlaybackButton.Configuration(v7, v4, type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>?);
  memcpy(v29, v25, 0x101uLL);
  memcpy(a1, v25, 0x101uLL);
  v8 = v21;
  v9 = v22;
  v30[4] = v21;
  v30[5] = v22;
  v10 = v23;
  v30[6] = v23;
  v31 = v24;
  v11 = v17;
  v12 = v18;
  v30[0] = v17;
  v30[1] = v18;
  v13 = v19;
  v14 = v20;
  v30[2] = v19;
  v30[3] = v20;
  *(a1 + 376) = v24;
  *(a1 + 344) = v9;
  *(a1 + 360) = v10;
  *(a1 + 312) = v14;
  *(a1 + 328) = v8;
  *(a1 + 280) = v12;
  *(a1 + 296) = v13;
  *(a1 + 264) = v11;
  type metadata accessor for (TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Mod(0);
  outlined init with copy of PlaybackButton.Configuration(v4, a1 + *(v15 + 64), type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>?);
  outlined init with copy of PlaybackButton.Configuration(v29, v34, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>);
  outlined init with copy of PlaybackButton.Configuration(v30, v34, type metadata accessor for IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>);
  _sSNy10Foundation4DateVGWOhTm_3(v7, type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>?);
  _sSNy10Foundation4DateVGWOhTm_3(v4, type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>?);
  v32[4] = v21;
  v32[5] = v22;
  v32[6] = v23;
  v33 = v24;
  v32[0] = v17;
  v32[1] = v18;
  v32[2] = v19;
  v32[3] = v20;
  _sSNy10Foundation4DateVGWOhTm_3(v32, type metadata accessor for IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>);
  memcpy(v34, v25, 0x101uLL);
  return _sSNy10Foundation4DateVGWOhTm_3(v34, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>);
}

uint64_t CirclePlaybackButtonStyleBody.platter.getter@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for PlaybackButton.Specs(0);
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  static Color.white.getter();
  v15 = v1 + *(type metadata accessor for CirclePlaybackButtonStyleBody(0) + 20);
  outlined init with copy of PlaybackButton.Configuration(v15, v14, type metadata accessor for PlaybackButton.Configuration);
  *&v14[v2[5]] = 0x4000000000000000;
  *&v14[v2[6]] = 0x3FB47AE147AE147BLL;
  *&v14[v2[7]] = 0x3FA999999999999ALL;
  v16 = type metadata accessor for PlaybackButton.Configuration(0);
  _sSNy10Foundation4DateVGWOhTm_3(v14, type metadata accessor for PlaybackButton.Specs);
  v45 = Color.opacity(_:)();

  outlined init with copy of PlaybackButton.Configuration(v15, v11, type metadata accessor for PlaybackButton.Configuration);
  *&v11[v2[5]] = 0x4000000000000000;
  *&v11[v2[6]] = 0x3FB47AE147AE147BLL;
  *&v11[v2[7]] = 0x3FA999999999999ALL;
  v44 = v11[*(v16 + 32)];
  _sSNy10Foundation4DateVGWOhTm_3(v11, type metadata accessor for PlaybackButton.Specs);
  static UnitPoint.center.getter();
  v18 = v17;
  v20 = v19;
  v21 = outlined init with copy of PlaybackButton.Configuration(v15, v8, type metadata accessor for PlaybackButton.Configuration);
  *&v8[v2[5]] = 0x4000000000000000;
  *&v8[v2[6]] = 0x3FB47AE147AE147BLL;
  *&v8[v2[7]] = 0x3FA999999999999ALL;
  v22 = *(v15 + *(v16 + 32));
  v23.n128_u64[0] = 0x3FE3333333333333;
  if (*(v15 + *(v16 + 32)))
  {
    v23.n128_f64[0] = 0.01;
  }

  v24 = MEMORY[0x18D00B680](v21, v23, 0.8, 0.0);
  _sSNy10Foundation4DateVGWOhTm_3(v8, type metadata accessor for PlaybackButton.Specs);
  v25 = v16;
  v26 = *(v16 + 28);
  v27 = v15;
  LODWORD(v26) = *(v15 + v26) | 2;
  v28 = "LimitedAvailabilityTableColumnContentStorageBase";
  if (v26 == 3)
  {
    static Color.white.getter();
    v41 = v22;
    v40 = v24;
    v29 = v43;
    outlined init with copy of PlaybackButton.Configuration(v27, v43, type metadata accessor for PlaybackButton.Configuration);
    *(v29 + v2[5]) = 0x4000000000000000;
    *(v29 + v2[6]) = 0x3FB47AE147AE147BLL;
    *(v29 + v2[7]) = 0x3FA999999999999ALL;
    _sSNy10Foundation4DateVGWOhTm_3(v29, type metadata accessor for PlaybackButton.Specs);
    v30 = Color.opacity(_:)();

    v31 = v42;
    outlined init with copy of PlaybackButton.Configuration(v27, v42, type metadata accessor for PlaybackButton.Configuration);
    *(v31 + v2[5]) = 0x4000000000000000;
    *(v31 + v2[6]) = 0x3FB47AE147AE147BLL;
    *(v31 + v2[7]) = 0x3FA999999999999ALL;
    v32 = *(v31 + *(v25 + 32));
    _sSNy10Foundation4DateVGWOhTm_3(v31, type metadata accessor for PlaybackButton.Specs);
    if (v32)
    {
      v33 = 0.9;
    }

    else
    {
      v33 = 1.0;
    }

    static UnitPoint.center.getter();
    *&v83 = v30;
    WORD4(v83) = 256;
    *&v84 = v33;
    *(&v84 + 1) = v33;
    *&v85 = v34;
    *(&v85 + 1) = v35;
    LOBYTE(v86) = 20;
    outlined init with copy of PlaybackButton.Configuration(v27, v29, type metadata accessor for PlaybackButton.Configuration);
    *(v29 + v2[5]) = 0x4000000000000000;
    *(v29 + v2[6]) = 0x3FB47AE147AE147BLL;
    *(v29 + v2[7]) = 0x3FA999999999999ALL;
    static Animation.timingCurve(_:_:_:_:duration:)();
    _sSNy10Foundation4DateVGWOhTm_3(v29, type metadata accessor for PlaybackButton.Specs);
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>(0);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    View.repeatingOpacity(from:to:animation:)();
    v24 = v40;
    LOBYTE(v22) = v41;
    v28 = "LimitedAvailabilityTableColumnContentStorageBase";

    v47 = v83;
    v48 = v84;
    v49 = v85;
    LOBYTE(v50) = v86;
    _sSNy10Foundation4DateVGWOhTm_3(&v47, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>);
    v67 = v80;
    v68 = v81;
    v69 = v82;
    v63 = v76;
    v64 = v77;
    v65 = v78;
    v66 = v79;
    v59 = v72;
    v60 = v73;
    v61 = v74;
    v62 = v75;
    v57 = v70;
    v58 = v71;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    v93 = v67;
    v94 = v68;
    v95 = v69;
    v89 = v63;
    v90 = v64;
    v92 = v66;
    v91 = v65;
    v85 = v59;
    v86 = v60;
    v88 = v62;
    v87 = v61;
    v84 = v58;
    v83 = v57;
  }

  else
  {
    _s7SwiftUI23AppearanceAnimationViewVyAA15ModifiedContentVyAEyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA010_BlendModeL0VGAEyArA08_OpacityL0VGGSgWOi0_(&v83);
  }

  if (v44)
  {
    v36 = *(v28 + 473);
  }

  else
  {
    v36 = 1.0;
  }

  v80 = v93;
  v81 = v94;
  v76 = v89;
  v77 = v90;
  v78 = v91;
  v79 = v92;
  v72 = v85;
  v73 = v86;
  v74 = v87;
  v75 = v88;
  v70 = v83;
  v71 = v84;
  v37 = v45;
  *&v54 = v45;
  WORD4(v54) = 256;
  *(&v54 + 10) = v96;
  HIWORD(v54) = v97;
  *&v55 = v36;
  *(&v55 + 1) = v36;
  *&v56[0] = v18;
  *(&v56[0] + 1) = v20;
  *&v56[1] = v24;
  BYTE8(v56[1]) = v22;
  BYTE9(v56[1]) = 20;
  *(&v53[2] + 10) = *(v56 + 10);
  v53[0] = v54;
  v53[1] = v55;
  v59 = v85;
  v60 = v86;
  v57 = v83;
  v58 = v84;
  v63 = v89;
  v64 = v90;
  v61 = v87;
  v62 = v88;
  v67 = v93;
  v68 = v94;
  v65 = v91;
  v66 = v92;
  v53[13] = v92;
  v53[14] = v93;
  v53[15] = v94;
  v53[9] = v88;
  v53[10] = v89;
  v53[11] = v90;
  v53[12] = v91;
  v82 = v95;
  v53[5] = v84;
  v53[6] = v85;
  v69 = v95;
  LOBYTE(v53[16]) = v95;
  v53[7] = v86;
  v53[8] = v87;
  v53[2] = v56[0];
  v53[4] = v83;
  memcpy(v46, v53, 0x101uLL);
  outlined init with copy of PlaybackButton.Configuration(&v54, &v47, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>);
  outlined init with copy of PlaybackButton.Configuration(&v57, &v47, type metadata accessor for AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?);
  _sSNy10Foundation4DateVGWOhTm_3(&v70, type metadata accessor for AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?);
  *&v47 = v37;
  WORD4(v47) = 256;
  *(&v47 + 10) = v96;
  HIWORD(v47) = v97;
  *&v48 = v36;
  *(&v48 + 1) = v36;
  *&v49 = v18;
  *(&v49 + 1) = v20;
  v50 = v24;
  v51 = v22;
  v52 = 20;
  return _sSNy10Foundation4DateVGWOhTm_3(&v47, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>);
}

uint64_t type metadata accessor for PlaybackButton.Specs(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlaybackButton.Specs;
  if (!type metadata singleton initialization cache for PlaybackButton.Specs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PlaybackButton.Specs(uint64_t a1)
{
  result = type metadata accessor for PlaybackButton.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of PlaybackButton.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double destroy for PlaybackButton.Specs(uint64_t a1)
{
  type metadata accessor for ClosedRange<Date>(0);
  v3 = v2;
  if (!(*(*(v2 - 8) + 48))(a1, 1, v2))
  {
    v4 = type metadata accessor for Date();
    v5 = *(*(v4 - 8) + 8);
    v5(a1, v4);
    v5(a1 + *(v3 + 36), v4);
  }

  v6 = type metadata accessor for PlaybackButton.Configuration(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v7, 2, v8))
  {
    (*(v9 + 8))(a1 + v7, v8);
  }

  v10 = a1 + *(v6 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v10, *(v10 + 8), *(v10 + 16));

  return result;
}

double _s7SwiftUI23AppearanceAnimationViewVyAA15ModifiedContentVyAEyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_ScaleEffectVGAA010_BlendModeL0VGAEyArA08_OpacityL0VGGSgWOi0_(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void CirclePlaybackButtonStyleBody.playbackStateImage.getter(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of Transition.combined<A>(with:)>>.0(0);
  v56 = v3;
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>(0);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v45 - v9;
  v10 = type metadata accessor for PlaybackButton.Specs(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = v1 + *(type metadata accessor for CirclePlaybackButtonStyleBody(0) + 20);
  outlined init with copy of PlaybackButton.Configuration(v19, v18, type metadata accessor for PlaybackButton.Configuration);
  *&v18[v10[5]] = 0x4000000000000000;
  *&v18[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v18[v10[7]] = 0x3FA999999999999ALL;
  v57 = type metadata accessor for PlaybackButton.Configuration(0);
  v20 = v18[v57[7]];
  v21 = &v18[v57[6]];
  if (v20 >= 2)
  {
    v22 = 0x69662E6573756170;
  }

  else
  {
    v22 = 0x6C69662E79616C70;
  }

  if (v20 >= 2)
  {
    v23 = 0xEA00000000006C6CLL;
  }

  else
  {
    v23 = 0xE90000000000006CLL;
  }

  if (v21[1])
  {
    v22 = *v21;
  }

  v50 = type metadata accessor for PlaybackButton.Specs;
  _sSNy10Foundation4DateVGWOhTm_3(v18, type metadata accessor for PlaybackButton.Specs);
  specialized Image.init(systemName:)(v22, v23);
  v48 = v24;
  v47 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static UnitPoint.center.getter();
  *&v70 = 0x3EE4F8B588E368F1;
  *(&v70 + 1) = v25;
  *&v71 = v26;
  v27 = lazy protocol witness table accessor for type ScaleTransition and conformance ScaleTransition();
  v28 = lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition();
  Transition.combined<A>(with:)();
  v51 = type metadata accessor for PlaybackButton.Configuration;
  v29 = outlined init with copy of PlaybackButton.Configuration(v19, v15, type metadata accessor for PlaybackButton.Configuration);
  *&v15[v10[5]] = 0x4000000000000000;
  *&v15[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v15[v10[7]] = 0x3FA999999999999ALL;
  v30 = 0.8;
  MEMORY[0x18D00B680](v29, 0.38, 0.8, 0.0);
  v49 = v19;
  _sSNy10Foundation4DateVGWOhTm_3(v15, type metadata accessor for PlaybackButton.Specs);
  *&v70 = MEMORY[0x1E697E8A0];
  *(&v70 + 1) = MEMORY[0x1E697F268];
  *&v71 = v27;
  *(&v71 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v52;
  v32 = v56;
  Transition.animation(_:)();

  v33 = (*(v54 + 8))(v5, v32);
  sub_18C084CC8(v31, v53, v33);
  _s10Foundation4DateVACSLAAWlTm_3(&lazy protocol witness table cache variable for type FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0> and conformance FilteredTransition<A>, type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>, MEMORY[0x1E697F3D8]);
  v34 = AnyTransition.init<A>(_:)();
  sub_18C084D2C(v31, v35);
  v36 = static Font.footnote.getter();
  v37 = swift_getKeyPath();
  v58 = v48;
  v59 = KeyPath;
  v60 = v47;
  v61 = 20;
  v62 = v34;
  v63 = v37;
  v64 = v36;
  static Font.Weight.bold.getter();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  v67 = v72;
  v68 = v73;
  v69 = v74;
  v66 = v71;
  v65 = v70;
  v38 = v49;
  outlined init with copy of PlaybackButton.Configuration(v49, v12, v51);
  *&v12[v10[5]] = 0x4000000000000000;
  *&v12[v10[6]] = 0x3FB47AE147AE147BLL;
  *&v12[v10[7]] = 0x3FA999999999999ALL;
  v39 = v57;
  LODWORD(v34) = v12[v57[8]];
  _sSNy10Foundation4DateVGWOhTm_3(v12, v50);
  if (!v34)
  {
    v30 = 1.0;
  }

  static UnitPoint.center.getter();
  v40 = *(v38 + v39[7]);
  v41 = v69;
  *(a1 + 48) = v68;
  *(a1 + 64) = v41;
  v42 = v67;
  *(a1 + 16) = v66;
  *(a1 + 32) = v42;
  *a1 = v65;
  *(a1 + 80) = v30;
  *(a1 + 88) = v30;
  *(a1 + 96) = v43;
  *(a1 + 104) = v44;
  *(a1 + 112) = v40;
}

uint64_t sub_18C084CC8(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18C084D2C(uint64_t a1, double a2)
{
  type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for <<opaque return type of Transition.combined<A>(with:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of Transition.combined<A>(with:)>>.0)
  {
    lazy protocol witness table accessor for type ScaleTransition and conformance ScaleTransition();
    lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Transition.combined<A>(with:)>>.0);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScaleTransition and conformance ScaleTransition()
{
  result = lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition;
  if (!lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E890], MEMORY[0x1E697E8A0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition()
{
  result = lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition;
  if (!lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F258], MEMORY[0x1E697F268], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition);
  }

  return result;
}

void type metadata accessor for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>)
  {
    type metadata accessor for <<opaque return type of Transition.combined<A>(with:)>>.0(255);
    lazy protocol witness table accessor for type ScaleTransition and conformance ScaleTransition();
    lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition();
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for FilteredTransition();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for FilteredTransition<<<opaque return type of Transition.combined<A>(with:)>>.0>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>);
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t CirclePlaybackButtonStyleBody.resolvedProgressStroke.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for Date();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PlaybackButton.Specs(0);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CirclePlaybackButtonStyleBody(0);
  v6 = v5 - 8;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v7;
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>(0);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ProgressViewSchedule(0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>, MEMORY[0x1E697F960]);
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v63 = (&v51 - v12);
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>(0);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = v1;
  v25 = v1 + *(v6 + 28);
  outlined init with copy of PlaybackButton.Configuration(v25, v15, type metadata accessor for ClosedRange<Date>?);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    v26 = type metadata accessor for ClosedRange<Date>?;
    v27 = v15;
LABEL_5:
    _sSNy10Foundation4DateVGWOhTm_3(v27, v26);
    v29 = 1;
    v30 = v66;
    return (*(v64 + 56))(v30, v29, 1, v65);
  }

  _sSNy10Foundation4DateVGWObTm_1(v15, v23, type metadata accessor for ClosedRange<Date>);
  v28 = v23;
  if (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)) == 2)
  {
    v26 = type metadata accessor for ClosedRange<Date>;
    v27 = v23;
    goto LABEL_5;
  }

  if (*(v25 + *(type metadata accessor for PlaybackButton.Configuration(0) + 28)) == 2)
  {
    v31 = v51;
    outlined init with copy of PlaybackButton.Configuration(v23, v51, type metadata accessor for ClosedRange<Date>);
    *(v31 + *(v52 + 20)) = 0;
    v32 = v58;
    _sSNy10Foundation4DateVGWObTm_1(v31, v58, type metadata accessor for ProgressViewSchedule);
    v33 = v57;
    outlined init with copy of PlaybackButton.Configuration(v1, v57, type metadata accessor for CirclePlaybackButtonStyleBody);
    outlined init with copy of PlaybackButton.Configuration(v28, v20, type metadata accessor for ClosedRange<Date>);
    v34 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v35 = (v56 + *(v18 + 80) + v34) & ~*(v18 + 80);
    v36 = swift_allocObject();
    _sSNy10Foundation4DateVGWObTm_1(v33, v36 + v34, type metadata accessor for CirclePlaybackButtonStyleBody);
    _sSNy10Foundation4DateVGWObTm_1(v20, v36 + v35, type metadata accessor for ClosedRange<Date>);
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for closure #1 in CirclePlaybackButtonStyleBody.resolvedProgressStroke.getter;
    *(v37 + 24) = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for specialized closure #1 in TimelineView<>.init(_:content:);
    *(v38 + 24) = v37;
    v39 = (v32 + *(v59 + 44));
    *v39 = partial apply for specialized closure #1 in TimelineView<>.init(_:content:);
    v39[1] = v38;
    v40 = v63;
    _sSNy10Foundation4DateVGWObTm_1(v32, v63, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>);
  }

  else
  {
    v41 = v54;
    outlined init with copy of PlaybackButton.Configuration(v25, v54, type metadata accessor for PlaybackButton.Configuration);
    v42 = v55;
    *(v41 + *(v55 + 20)) = 0x4000000000000000;
    *(v41 + *(v42 + 24)) = 0x3FB47AE147AE147BLL;
    *(v41 + *(v42 + 28)) = 0x3FA999999999999ALL;
    v43 = v60;
    PlaybackButton.Specs.resolvedPauseDate.getter(v60);
    _sSNy10Foundation4DateVGWOhTm_3(v41, type metadata accessor for PlaybackButton.Specs);
    v44 = static Alignment.center.getter();
    v46 = v45;
    closure #1 in CirclePlaybackButtonStyleBody.progressStroke(interval:referenceDate:)(v24, v68);
    memcpy(v70, v68, 0x141uLL);
    memcpy(v71, v68, 0x141uLL);
    outlined init with copy of PlaybackButton.Configuration(v70, &v67, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?);
    _sSNy10Foundation4DateVGWOhTm_3(v71, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?);
    memcpy(v69, v70, sizeof(v69));
    (*(v61 + 8))(v43, v62);
    v47 = v63;
    *v63 = v44;
    v47[1] = v46;
    v40 = v47;
    memcpy(v47 + 2, v69, 0x141uLL);
  }

  type metadata accessor for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>.Storage, type metadata accessor for TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, type metadata accessor for ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>, MEMORY[0x1E697F948]);
  swift_storeEnumTagMultiPayload();
  _sSNy10Foundation4DateVGWOhTm_3(v28, type metadata accessor for ClosedRange<Date>);
  v48 = v40;
  v49 = v66;
  outlined init with take of _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>)>?>>(v48, v66);
  v30 = v49;
  v29 = 0;
  return (*(v64 + 56))(v30, v29, 1, v65);
}

uint64_t sub_18C085908()
{
  v1 = (type metadata accessor for CirclePlaybackButtonStyleBody(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v18 = *(*v1 + 64);
  type metadata accessor for ClosedRange<Date>(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 80);
  outlined consume of Environment<Bool>.Content(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v0 + v2 + v1[7];
  if (!(*(v5 + 48))(v7, 1, v4))
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 8);
    v9(v7, v8);
    v9(v7 + *(v4 + 36), v8);
  }

  v10 = type metadata accessor for PlaybackButton.Configuration(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v7 + v11, 2, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = (v2 + v18 + v6) & ~v6;

  v15 = v7 + *(v10 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v15, *(v15 + 8), *(v15 + 16));

  v16 = *(v13 + 8);
  v16(v0 + v14, v12);
  v16(v0 + v14 + *(v4 + 36), v12);

  return swift_deallocObject();
}

uint64_t sub_18C085BAC()
{

  return swift_deallocObject();
}

uint64_t PlaybackButton.Specs.resolvedPauseDate.getter@<X0>(uint64_t a1@<X8>)
{
  _sSNy10Foundation4DateVGSgMaTm_1(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  _sSNy10Foundation4DateVGSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaybackButton.Configuration(0);
  outlined init with copy of PlaybackButton.State(v1 + *(v12 + 20), v11);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v11, 2, v13);
  if (!v16)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  if (v16 != 1)
  {
    return static Date.now.getter();
  }

  outlined init with copy of ClosedRange<Date>?(v1, v5);
  type metadata accessor for ClosedRange<Date>(0);
  if ((*(*(v17 - 8) + 48))(v5, 1, v17) == 1)
  {
    _sSNy10Foundation4DateVGSgWOhTm_0(v5, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    (*(v14 + 56))(v8, 1, 1, v13);
    static Date.now.getter();
    result = v15(v8, 1, v13);
    if (result != 1)
    {
      return _sSNy10Foundation4DateVGSgWOhTm_0(v8, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v14 + 16))(v8, v5, v13);
    outlined destroy of ClosedRange<Date>(v5);
    (*(v14 + 56))(v8, 0, 1, v13);
    return (*(v14 + 32))(a1, v8, v13);
  }

  return result;
}

uint64_t outlined init with copy of PlaybackButton.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackButton.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ClosedRange<Date>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ClosedRange<Date>(uint64_t a1)
{
  type metadata accessor for ClosedRange<Date>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *closure #1 in CirclePlaybackButtonStyleBody.progressStroke(interval:referenceDate:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v55 = a3;
  v4 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaybackButton.Specs(0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = a1 + *(type metadata accessor for CirclePlaybackButtonStyleBody(0) + 20);
  outlined init with copy of PlaybackButton.Configuration(v18, v17, type metadata accessor for PlaybackButton.Configuration);
  *&v17[v7[5]] = 0x4000000000000000;
  *&v17[v7[6]] = 0x3FB47AE147AE147BLL;
  *&v17[v7[7]] = 0x3FA999999999999ALL;
  ClosedRange<>.progress(at:countdown:)();
  v20 = v19;
  _sSNy10Foundation4DateVGWOhTm_3(v17, type metadata accessor for PlaybackButton.Specs);
  v21 = type metadata accessor for PlaybackButton.Configuration(0);
  v22 = *(v21 + 20);
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v6, 1, 2, v23);
  LOBYTE(v22) = specialized static PlaybackButton.State.== infix(_:_:)(v18 + v22, v6);
  _sSNy10Foundation4DateVGWOhTm_3(v6, type metadata accessor for PlaybackButton.State);
  if (v22)
  {
    _s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA011StrokeShapeD0VyAA6CircleV6_InsetVAA5ColorVAA05EmptyD0VGAA15_RotationEffectVGAA06_ScaleN0VG_AEyAEyAEyAEyAEyAGyAA08_TrimmedH0VyAKGAmOGARGAUGAA010_BlendModeN0VGAA18_AnimationModifierVyAA14PlaybackButtonV5PhaseOGGA5_ySbGGtGSgWOi0_(v113);
  }

  else
  {
    CirclePlaybackButtonStyleBody.trackStroke.getter(&v104);
    outlined init with copy of PlaybackButton.Configuration(v18, v17, type metadata accessor for PlaybackButton.Configuration);
    *&v17[v7[5]] = 0x4000000000000000;
    *&v17[v7[6]] = 0x3FB47AE147AE147BLL;
    *&v17[v7[7]] = 0x3FA999999999999ALL;
    _sSNy10Foundation4DateVGWOhTm_3(v17, type metadata accessor for PlaybackButton.Specs);
    static Color.white.getter();
    outlined init with copy of PlaybackButton.Configuration(v18, v14, type metadata accessor for PlaybackButton.Configuration);
    *&v14[v7[5]] = 0x4000000000000000;
    *&v14[v7[6]] = 0x3FB47AE147AE147BLL;
    *&v14[v7[7]] = 0x3FA999999999999ALL;
    v47 = type metadata accessor for PlaybackButton.Specs;
    v48 = v21;
    _sSNy10Foundation4DateVGWOhTm_3(v14, type metadata accessor for PlaybackButton.Specs);
    v53 = Color.opacity(_:)();

    outlined init with copy of PlaybackButton.Configuration(v18, v17, type metadata accessor for PlaybackButton.Configuration);
    *&v17[v7[5]] = 0x4000000000000000;
    *&v17[v7[6]] = 0x3FB47AE147AE147BLL;
    *&v17[v7[7]] = 0x3FA999999999999ALL;
    _sSNy10Foundation4DateVGWOhTm_3(v17, type metadata accessor for PlaybackButton.Specs);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v24 = static Alignment.center.getter();
    v51 = v25;
    v52 = v24;
    static UnitPoint.center.getter();
    v27 = v26;
    v29 = v28;
    outlined init with copy of PlaybackButton.Configuration(v18, v11, type metadata accessor for PlaybackButton.Configuration);
    *&v11[v7[5]] = 0x4000000000000000;
    *&v11[v7[6]] = 0x3FB47AE147AE147BLL;
    *&v11[v7[7]] = 0x3FA999999999999ALL;
    v30 = v48;
    v31 = v11[*(v48 + 32)];
    v32 = v11;
    v33 = v47;
    _sSNy10Foundation4DateVGWOhTm_3(v32, v47);
    if (v31)
    {
      v34 = 0.9;
    }

    else
    {
      v34 = 1.0;
    }

    static UnitPoint.center.getter();
    v36 = v35;
    v38 = v37;
    v39 = outlined init with copy of PlaybackButton.Configuration(v18, v17, type metadata accessor for PlaybackButton.Configuration);
    *&v17[v7[5]] = 0x4000000000000000;
    *&v17[v7[6]] = 0x3FB47AE147AE147BLL;
    *&v17[v7[7]] = 0x3FA999999999999ALL;
    v50 = MEMORY[0x18D00B680](v39, 0.4, 1.0, 0.0);
    _sSNy10Foundation4DateVGWOhTm_3(v17, v33);
    v49 = *(v18 + *(v30 + 28));
    v40 = v54;
    v41 = outlined init with copy of PlaybackButton.Configuration(v18, v54, type metadata accessor for PlaybackButton.Configuration);
    *(v40 + v7[5]) = 0x4000000000000000;
    *(v40 + v7[6]) = 0x3FB47AE147AE147BLL;
    *(v40 + v7[7]) = 0x3FA999999999999ALL;
    v42 = *(v18 + *(v30 + 32));
    v43.n128_u64[0] = 0x3FE3333333333333;
    if (v42)
    {
      v43.n128_f64[0] = 0.01;
    }

    v44 = MEMORY[0x18D00B680](v41, v43, 0.8, 0.0);
    _sSNy10Foundation4DateVGWOhTm_3(v40, v33);
    v63 = v110;
    v64 = v111;
    v59 = v106;
    v60 = v107;
    v61 = v108;
    v62 = v109;
    v57 = v104;
    v58 = v105;
    v66[6] = v110;
    v66[7] = v111;
    v66[2] = v106;
    v66[3] = v107;
    v66[4] = v108;
    v66[5] = v109;
    v66[0] = v104;
    v66[1] = v105;
    v65 = v112;
    v67 = v112;
    v56[6] = v110;
    v56[7] = v111;
    *&v56[8] = v112;
    v56[2] = v106;
    v56[3] = v107;
    *&v69[0] = v20;
    *(v69 + 8) = v101;
    *(&v69[1] + 8) = v102;
    *(&v69[2] + 1) = v103;
    *&v70 = v53;
    WORD4(v70) = 256;
    *&v71 = v52;
    *(&v71 + 1) = v51;
    *&v72 = 0xBFF921FB54442D18;
    *(&v72 + 1) = v27;
    *&v73 = v29;
    *(&v73 + 1) = v34;
    *&v74 = v34;
    *(&v74 + 1) = v36;
    *&v75 = v38;
    BYTE8(v75) = 20;
    *&v76[0] = v50;
    BYTE8(v76[0]) = v49;
    *&v76[1] = v44;
    BYTE8(v76[1]) = v42;
    *(&v56[16] + 8) = v74;
    *(&v56[17] + 8) = v75;
    *(&v56[19] + 1) = *(v76 + 9);
    *(&v56[18] + 8) = v76[0];
    v56[4] = v108;
    v56[5] = v109;
    v56[0] = v104;
    v56[1] = v105;
    v68 = xmmword_18CDA05A0;
    *(&v56[8] + 8) = xmmword_18CDA05A0;
    *(&v56[9] + 8) = v69[0];
    *(&v56[10] + 8) = v69[1];
    *(&v56[11] + 8) = v69[2];
    *(&v56[15] + 8) = v73;
    *(&v56[14] + 8) = v72;
    *(&v56[13] + 8) = v71;
    *(&v56[12] + 8) = v70;
    v77 = xmmword_18CDA05A0;
    v78 = v20;
    v79 = v101;
    v80 = v102;
    v81 = v103;
    v82 = v53;
    v83 = 256;
    v84 = v52;
    v85 = v51;
    v86 = 0xBFF921FB54442D18;
    v87 = v27;
    v88 = v29;
    v89 = v34;
    v90 = v34;
    v91 = v36;
    v92 = v38;
    v93 = 20;
    v94 = v50;
    v95 = v49;
    v96 = v44;
    v97 = v42;
    outlined init with copy of PlaybackButton.Configuration(v66, v113, type metadata accessor for ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>);
    outlined init with copy of PlaybackButton.Configuration(&v68, v113, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>);
    _sSNy10Foundation4DateVGWOhTm_3(&v77, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StrokeShapeView<_TrimmedShape<Circle._Inset>, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>);
    v98[6] = v63;
    v98[7] = v64;
    v99 = v65;
    v98[2] = v59;
    v98[3] = v60;
    v98[5] = v62;
    v98[4] = v61;
    v98[1] = v58;
    v98[0] = v57;
    _sSNy10Foundation4DateVGWOhTm_3(v98, type metadata accessor for ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>);
    memcpy(v100, v56, sizeof(v100));
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    memcpy(v113, v100, 0x141uLL);
  }

  return memcpy(v55, v113, 0x141uLL);
}

uint64_t specialized static PlaybackButton.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (PlaybackButton.State, PlaybackButton.State)(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  outlined init with copy of PlaybackButton.State(a1, v13, type metadata accessor for PlaybackButton.State);
  outlined init with copy of PlaybackButton.State(a2, &v13[v15], type metadata accessor for PlaybackButton.State);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    outlined init with copy of PlaybackButton.State(v13, v10, type metadata accessor for PlaybackButton.State);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v21 = static Date.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v7, v4);
      v23(v10, v4);
      v19 = type metadata accessor for PlaybackButton.State;
      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    v18 = v16(&v13[v15], 2, v4);
    v19 = type metadata accessor for PlaybackButton.State;
    if (v18 == 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v21 = 0;
    v19 = type metadata accessor for (PlaybackButton.State, PlaybackButton.State);
    goto LABEL_10;
  }

  v20 = v16(&v13[v15], 2, v4);
  v19 = type metadata accessor for PlaybackButton.State;
  if (v20 != 2)
  {
    goto LABEL_9;
  }

LABEL_8:
  v21 = 1;
LABEL_10:
  outlined destroy of PlaybackButton.State(v13, v19);
  return v21 & 1;
}

double _s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA011StrokeShapeD0VyAA6CircleV6_InsetVAA5ColorVAA05EmptyD0VGAA15_RotationEffectVGAA06_ScaleN0VG_AEyAEyAEyAEyAEyAGyAA08_TrimmedH0VyAKGAmOGARGAUGAA010_BlendModeN0VGAA18_AnimationModifierVyAA14PlaybackButtonV5PhaseOGGA5_ySbGGtGSgWOi0_(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t specialized View.accessibilityCombinedElement(options:ignoredTraits:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<Mo(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Button<RotatingDisclosureIndicator>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v19);
  type metadata accessor for AccessibilityTableContext?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v11 = swift_allocObject();
  memcpy((v11 + 16), v18, 0x128uLL);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v3, v9, type metadata accessor for ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<ModifiedContent<Mo);
  v12 = &v9[*(v7 + 44)];
  *v12 = v11;
  v12[1] = v10;

  AccessibilityTraitSet.init(traits:)();
  v13 = v17[4];
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v11 + 16, 0, v13);
  outlined init with take of TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>(v9, a2, type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _ScaleEffect>, _BlendModeEffect>, _OpacityEffect>>?)>, IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<StrokeShapeView<Circle._Inset, Color, EmptyView>, _RotationEffect>, _ScaleEffect>, ModifiedContent<Mo);
  v14 = *(a2 + *(v7 + 44));
  result = swift_beginAccess();
  if (*(v14 + 136))
  {
    v16 = 0x4000000040;
  }

  else
  {
    v16 = *(v14 + 128) | 0x4000000040;
  }

  *(v14 + 128) = v16;
  *(v14 + 136) = 0;
  return result;
}

void type metadata accessor for Button<RotatingDisclosureIndicator>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for AccessibilityTableContext?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static Text.Accessibility.playback(for:)(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PlaybackButton.State(a1, v4);
  v5 = type metadata accessor for Date();
  if ((*(*(v5 - 8) + 48))(v4, 2, v5))
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    outlined destroy of PlaybackButton.State(v4);
  }

  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t specialized ModifiedContent<>.accessibilityLabel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for Color?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  a3 &= 1u;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  v16 = *(v7 + *(a5(0) + 36));
  swift_beginAccess();
  *(v16 + 40) = v15;
  *(v16 + 48) = 2;
  outlined copy of Text.Storage(a1, a2, a3);

  return outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v7, a7, a6);
}

double specialized AccessibilityPlaybackButtonModifier.resolvedValue.getter@<D0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, _OWORD *a4@<X8>)
{
  type metadata accessor for ClosedRange<Date>?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ClosedRange<Date>(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AccessibilityPlaybackButtonModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedCon(0, a1, a2, a3, type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration);
  v18 = v17;
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v4 + *(v17 + 40), v11, type metadata accessor for ClosedRange<Date>?);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    _sSNy10Foundation4DateVGWOhTm_0(v11, type metadata accessor for ClosedRange<Date>?);
    LOBYTE(v24[0]) = 0;
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    AccessibilityValueStorage.init<A>(_:description:)();
  }

  else
  {
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<IDView<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _BlendModeEffect>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>, _ScaleEffect>, PlaybackButton.Phase>, _FrameLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<TimelineView<ProgressViewSchedule, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _AnimationModifier<PlaybackButton.Phase>>, _AnimationModifier<Bool>>, _FrameLayout>)>>>, ZStack<TupleView<(ModifiedContent<_ShapeView<Capsule, Color>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent(v11, v16, type metadata accessor for ClosedRange<Date>);
    v20 = v4 + *(v18 + 36);
    v21 = *(v20 + 16);
    if (v21 == 4)
    {
      v23[15] = 0;
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      AccessibilityValueStorage.init<A>(_:description:)();
    }

    else if (v21 == 5)
    {
      specialized AccessibilityPlaybackButtonModifier.percentageValue(interval:)(v16, v24);
    }

    else
    {
      specialized AccessibilityPlaybackButtonModifier.descriptionValue(_:interval:)(*v20, *(v20 + 8), v21, v16, v24);
    }

    _sSNy10Foundation4DateVGWOhTm_0(v16, type metadata accessor for ClosedRange<Date>);
    v22 = v24[1];
    *a4 = v24[0];
    a4[1] = v22;
    result = *&v25;
    a4[2] = v25;
  }

  return result;
}

void *specialized AccessibilityPlaybackButtonModifier.percentageValue(interval:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for _AnimationModifier<PlaybackButton.Phase>(0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Percent, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E58]);
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v2, v22, type metadata accessor for PlaybackButton.State);
  v23 = (*(v14 + 48))(v22, 2, v13);
  if (v23)
  {
    if (v23 == 1)
    {
      LOBYTE(v38) = 0;
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      return AccessibilityValueStorage.init<A>(_:description:)();
    }

    else
    {
      outlined init with copy of _BackgroundModifier<TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _AnimationModifier<Bool>>, _BlendModeEffect>, AppearanceAnimationView<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, ModifiedContent<ModifiedContent<_ShapeView<Capsule, Color>, _BlendModeEffect>, _OpacityEffect>>?)>>(v34, v19, type metadata accessor for ClosedRange<Date>);
      Text.init(progressInterval:countsDown:)();
      return AccessibilityValueStorage.init(description:)();
    }
  }

  else
  {
    (*(v14 + 32))(v16, v22, v13);
    ClosedRange<>.progress(at:countdown:)();
    v36 = v25;
    static Locale.autoupdatingCurrent.getter();
    v34 = lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.Percent.init(locale:)();
    v26 = v31;
    v27 = v32;
    v28 = v33;
    (*(v32 + 104))(v31, *MEMORY[0x1E69E7038], v33);
    MEMORY[0x18D0000D0](v26, 0x3FF0000000000000, 0, v7);
    (*(v27 + 8))(v26, v28);
    v29 = *(v30 + 8);
    v29(v9, v7);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent();
    BinaryFloatingPoint.formatted<A>(_:)();
    v29(v12, v7);
    v36 = v38;
    v37 = v39;
    lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
    AccessibilityValueStorage.init(description:)();
    return (*(v14 + 8))(v16, v13);
  }
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E63B8], MEMORY[0x1E69E63B0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

uint64_t getEnumTag for PlaybackButton.State(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for PlaybackButton.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t getEnumTag for AccessibilityPlaybackButtonModifier.ValueStyle(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = v2 - 3;
  if (v1 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AccessibilityPlaybackButtonModifier.ValueStyle(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = a2 + 3;
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList)>)
  {
    type metadata accessor for (Badge, Spacer)(255, &lazy cache variable for type metadata for (StrongHash, DisplayList), MEMORY[0x1E697DB08], MEMORY[0x1E697DCB0]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList)>);
    }
  }
}

uint64_t DisplayListTransform.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityNodeAttachment();
  v134 = *(v3 - 8);
  v135 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v133 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v108 - v6;
  v112 = *v1;
  v163 = *(v1 + 4);
  v161 = *(v1 + 5);
  v162 = *(v1 + 7);
  v7 = *(v1 + 1);
  v125 = *(v1 + 2);
  v126 = v7;
  v8 = *(v1 + 24);
  v160[0] = *(v1 + 25);
  *(v160 + 3) = v1[7];
  v9 = *(v1 + 4);
  v10 = v1[11];
  LODWORD(v128) = v1[10];
  v117 = v10;
  LODWORD(v7) = v1[12];
  v113 = v1[13];
  v114 = v7;
  v11 = v1[15];
  v137 = v1[14];
  v12 = v1[16];
  v119 = v1[17];
  v13 = *MEMORY[0x1E698D3F8];
  v115 = a1;
  v111 = v11;
  if (v11 == v13)
  {
    DisplayList.init()();
  }

  else
  {
    Value = AGGraphGetValue();
    v15 = *(Value + 8);
    v16 = *(Value + 12);
    v157 = *Value;
    v158 = v15;
    v159 = v16;
  }

  v116 = v8;
  v17 = MEMORY[0x1E69E7CC0];
  if (v119 != v13)
  {
    v17 = *AGGraphGetValue();
  }

  v18 = AGGraphGetValue();
  v20 = *v18;
  v19 = v18[1];
  *&v150[0] = v20;
  *(&v150[0] + 1) = v19;

  LOBYTE(v20) = EnvironmentValues.accessibilityEnabled.getter();

  if ((v20 & 1) == 0)
  {

    v21 = v158;
    v22 = v159;
    v23 = v115;
    *v115 = v157;
    *(v23 + 4) = v21;
    *(v23 + 3) = v22;
    goto LABEL_119;
  }

  v156 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_13;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    v131 = 0;
    goto LABEL_14;
  }

  if (((*(v9 + 120))(v128) & 1) == 0)
  {
    goto LABEL_13;
  }

  v131 = (v158 >> 1) & 1;
LABEL_14:
  v24 = (*(v9 + 80))(v128, v17);
  v120 = v9;
  v121 = v12;
  v110 = v24;
  if ((v24 & 1) != 0 || v131)
  {
    (*(v9 + 88))(v148, v128, v17);

    if (v12 == v13)
    {
      memset(v147, 0, 296);
      LOBYTE(v27) = v116;
    }

    else
    {
      v28 = AGGraphGetValue();
      outlined init with copy of AccessibilityAttachment.Tree(v28, v150);
      AccessibilityAttachment.Tree.attachment.getter(v147);
      outlined destroy of AccessibilityAttachment.Tree(v150);
      LOBYTE(v27) = v116;
      if (*(&v147[17] + 1))
      {
        memcpy(v150, v147, 0x128uLL);
        AccessibilityProperties.merge(with:)(v150);
        v29 = AccessibilityAttachment.platformElement.getter();
        if (v29)
        {
        }

        else if (AccessibilityAttachment.platformElement.getter())
        {
          AccessibilityAttachment.platformElement.setter();
        }

        outlined destroy of AccessibilityAttachment(v150);
LABEL_68:
        outlined init with copy of AccessibilityAttachment(v148, v150);
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v17 = *(v31 + 2);
        v41 = *(v31 + 3);
        v42 = (v17 + 1);
        if (v17 >= v41 >> 1)
        {
          goto LABEL_121;
        }

        goto LABEL_69;
      }
    }

    _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v147, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
    goto LABEL_68;
  }

  result = AGGraphGetCurrentAttribute();
  if (result == v13)
  {
    __break(1u);
    goto LABEL_123;
  }

  AccessibilityAttachmentToken.init<A>(_:)();
  v132 = *&v150[0];
  v130 = BYTE8(v150[0]);
  if (v17 >> 62)
  {
    result = __CocoaSet.count.getter();
    v26 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_123:
    __break(1u);
    return result;
  }

  v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
  if (!v26)
  {

    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_64;
  }

  v30 = 0;
  v124 = *(v9 + 96);
  KeyPath = v9 + 96;
  v31 = MEMORY[0x1E69E7CC0];
  LODWORD(v123) = v13;
  do
  {
    *&v150[0] = v132;
    BYTE8(v150[0]) = v130;
    v124(&v152, v128, v150, v17, v30);
    if (v12 == v13)
    {
      goto LABEL_46;
    }

    v32 = AGGraphGetValue();
    outlined init with copy of AccessibilityAttachment.Tree(v32, v150);
    outlined init with copy of AccessibilityAttachment.Tree(v150, v148);
    if (v149)
    {
      if (v149 != 1)
      {
        outlined destroy of AccessibilityAttachment.Tree(v150);
LABEL_46:
        memset(v151, 0, 296);
LABEL_47:
        _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v151, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
        goto LABEL_56;
      }

      v127 = v31;
      v33 = *(*v148 + 16);
      if (v33)
      {
        v34 = *v148 + 32;
        v35 = MEMORY[0x1E69E7CC0];
        do
        {
          outlined init with copy of AccessibilityAttachment.Tree(v34, v147);
          AccessibilityAttachment.Tree.attachment.getter(v146);
          memcpy(v145, v146, 0x128uLL);
          outlined destroy of AccessibilityAttachment.Tree(v147);
          if (*(&v145[17] + 1))
          {
            memcpy(v146, v145, 0x128uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
            }

            v37 = *(v35 + 2);
            v36 = *(v35 + 3);
            if (v37 >= v36 >> 1)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
            }

            *(v35 + 2) = v37 + 1;
            memcpy(&v35[296 * v37 + 32], v146, 0x128uLL);
          }

          else
          {
            _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v145, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
          }

          v34 += 304;
          --v33;
        }

        while (v33);

        v9 = v120;
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      static AccessibilityAttachment.combine(_:)(v35, v151);

      outlined destroy of AccessibilityAttachment.Tree(v150);
      v12 = v121;
      v31 = v127;
      v13 = v123;
      if (!*(&v151[17] + 1))
      {
        goto LABEL_47;
      }
    }

    else
    {
      outlined destroy of AccessibilityAttachment.Tree(v150);
      memcpy(v151, v148, 0x128uLL);
      if (!*(&v151[17] + 1))
      {
        goto LABEL_47;
      }
    }

    memcpy(v150, v151, 0x128uLL);
    AccessibilityProperties.merge(with:)(v150);
    v38 = AccessibilityAttachment.platformElement.getter();
    if (v38)
    {
    }

    else if (AccessibilityAttachment.platformElement.getter())
    {
      AccessibilityAttachment.platformElement.setter();
    }

    outlined destroy of AccessibilityAttachment(v150);
LABEL_56:
    if (AccessibilityAttachment.isEmpty.getter())
    {
      outlined destroy of AccessibilityAttachment(&v152);
    }

    else
    {
      outlined init with copy of AccessibilityAttachment(&v152, v150);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v40 = *(v31 + 2);
      v39 = *(v31 + 3);
      if (v40 >= v39 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v31);
      }

      outlined destroy of AccessibilityAttachment(&v152);
      *(v31 + 2) = v40 + 1;
      memcpy(&v31[296 * v40 + 32], v150, 0x128uLL);
      v156 = v31;
      v13 = v123;
    }

    ++v30;
  }

  while (v30 != v26);

LABEL_64:
  LOBYTE(v27) = v116;
  while (1)
  {
    type metadata accessor for CGPoint(0);
    v43 = AGGraphGetValue();
    v44 = *v43;
    v45 = v43[1];
    v46 = AGGraphGetValue();
    v47 = *v46;
    v48 = v46[1];
    v49 = AGGraphGetValue();
    v50 = v49[1];
    v150[0] = *v49;
    v150[1] = v50;
    v42 = v150;
    v51 = MEMORY[0x18D00B390]();
    v53 = v52;
    DisplayList.Version.init(forUpdate:)();
    v130 = v163;
    v109 = *&v150[0];
    if (v163 != 1)
    {
      v118 = 0;
      v54 = 1;
      goto LABEL_97;
    }

    v123 = *(v31 + 2);
    if (!v123)
    {
      break;
    }

    v27 = 0;
    v118 = 0;
    v122 = v31 + 32;
    v54 = 1;
    v127 = v31;
    while (1)
    {
      v41 = *(v31 + 2);
      if (v27 >= v41)
      {
        break;
      }

      v132 = v54;
      outlined init with copy of AccessibilityAttachment(&v122[296 * v27], v150);
      outlined init with copy of AccessibilityAttachment(v150, v148);
      v55 = AGGraphGetValue();
      v56 = *v55;
      v57 = v55[1];
      KeyPath = swift_getKeyPath();
      outlined init with copy of AccessibilityProperties(v148, v147);
      lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

      AccessibilityProperties.subscript.getter();
      outlined destroy of AccessibilityProperties(v147);
      v42 = v152;
      v58 = *(v152 + 16);
      if (v58)
      {
        v124 = v152;
        v59 = v152 + 32;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          outlined init with copy of AnyAccessibilityAction(v59, v145);
          v60 = *(&v145[1] + 1);
          v61 = *&v145[2];
          v42 = __swift_project_boxed_opaque_existential_1(v145, *(&v145[1] + 1));
          *&v151[0] = v56;
          *(&v151[0] + 1) = v57;
          (*(v61 + 96))(&v152, v151, v60, v61);
          outlined destroy of AnyAccessibilityAction(v145);
          if (*&v155[0])
          {
            v151[2] = v154;
            v151[3] = v155[0];
            *&v151[4] = *&v155[1];
            v151[1] = v153;
            v151[0] = v152;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
            }

            v63 = *(v17 + 16);
            v62 = *(v17 + 24);
            v42 = (v63 + 1);
            if (v63 >= v62 >> 1)
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v17);
            }

            *&v146[4] = *&v151[4];
            v146[2] = v151[2];
            v146[3] = v151[3];
            v64 = v151[0];
            v146[0] = v151[0];
            v146[1] = v151[1];
            *(v17 + 16) = v42;
            v65 = v17 + 72 * v63;
            *(v65 + 32) = v64;
            v66 = v146[1];
            v67 = v146[2];
            v68 = v146[3];
            *(v65 + 96) = *&v146[4];
            *(v65 + 64) = v67;
            *(v65 + 80) = v68;
            *(v65 + 48) = v66;
          }

          else
          {
            v151[2] = v154;
            v151[3] = v155[0];
            *&v151[4] = *&v155[1];
            v151[1] = v153;
            v151[0] = v152;
            _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v151, &lazy cache variable for type metadata for CodableAccessibilityAction?, &type metadata for CodableAccessibilityAction, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
          }

          v59 += 48;
          --v58;
        }

        while (v58);

        v9 = v120;
        v12 = v121;
      }

      else
      {

        v17 = MEMORY[0x1E69E7CC0];
      }

      outlined destroy of AccessibilityAttachment(v148);
      v54 = v132;
      v31 = v127;
      if (*(v17 + 16))
      {
        if (v132 == 1)
        {
          outlined destroy of AccessibilityAttachment(v150);
          v118 = KeyPath;
          v54 = v17;
        }

        else if (v132)
        {
          *v148 = v132;

          v42 = v148;
          specialized Array.append<A>(contentsOf:)(v17);

          outlined destroy of AccessibilityAttachment(v150);
          v54 = *v148;
        }

        else
        {

          outlined destroy of AccessibilityAttachment(v150);
          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        outlined destroy of AccessibilityAttachment(v150);
      }

      if (++v27 == v123)
      {
        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_121:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42, 1, v31);
LABEL_69:
    outlined destroy of AccessibilityAttachment(v148);
    *(v31 + 2) = v42;
    memcpy(&v31[296 * v17 + 32], v150, 0x128uLL);
    v156 = v31;
  }

  v118 = 0;
  v54 = 1;
LABEL_96:
  LOBYTE(v27) = v116;
LABEL_97:
  v69 = v44 - v47;
  v70 = v45 - v48;
  if (v110)
  {
    v71 = 1;
  }

  else
  {
    LODWORD(v150[0]) = v112;
    BYTE4(v150[0]) = v163;
    *(v150 + 5) = v161;
    BYTE7(v150[0]) = v162;
    *(&v150[0] + 1) = v126;
    *&v150[1] = v125;
    BYTE8(v150[1]) = v27;
    *(&v150[1] + 9) = v160[0];
    HIDWORD(v150[1]) = *(v160 + 3);
    *&v150[2] = v9;
    *(&v150[2] + 1) = __PAIR64__(v117, v128);
    *&v150[3] = __PAIR64__(v113, v114);
    *(&v150[3] + 1) = __PAIR64__(v111, v137);
    *&v150[4] = __PAIR64__(v119, v12);
    v71 = DisplayListTransform.mergeAttachments(list:attachments:frame:)(&v157, &v156, v69, v70, v51, v53);
  }

  v132 = v54;
  v72 = v156;
  v73 = *(v156 + 2);
  if (v73)
  {
    v141 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
    v74 = v141;
    v128 = v72;
    v75 = (v72 + 32);
    LODWORD(KeyPath) = v71;
    do
    {
      outlined init with copy of AccessibilityAttachment(v75, v150);
      outlined init with copy of AccessibilityAttachment(v150, v148);
      outlined init with copy of AccessibilityProperties(v150, &v152);
      lazy protocol witness table accessor for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey();
      AccessibilityProperties.subscript.getter();
      outlined destroy of AccessibilityProperties(&v152);
      v76 = *(&v147[0] + 1);
      v77 = *&v147[0];
      v78 = LOBYTE(v147[1]);
      v79 = AGGraphGetValue();
      v80 = *v79;
      v81 = v79[1];
      if (v130)
      {
        if (v78)
        {
          v76 = 0;
          v77 = 0;
        }

        outlined init with copy of AccessibilityAttachment(v148, v147);
        memset(v151, 0, 32);
        *&v151[2] = v77;
        *(&v151[2] + 1) = v76;
        LOBYTE(v151[3]) = v78;
        *&v146[0] = v80;
        *(&v146[0] + 1) = v81;
        *&v145[0] = v126;
        *(&v145[0] + 1) = v125;

        v82 = v133;
        CodableAccessibilityAttachmentStorage.init(_:platformStorage:in:idiom:)();
        outlined destroy of AccessibilityAttachment(v148);
        outlined destroy of AccessibilityAttachment(v150);
      }

      else
      {

        outlined destroy of AccessibilityAttachment(v150);

        swift_bridgeObjectRelease_n();
        v82 = v133;
        memcpy(v133, v148, 0x128uLL);
      }

      type metadata accessor for AccessibilityNodeAttachment.Storage();
      swift_storeEnumTagMultiPayload();
      v83 = v135;
      v84 = v136;
      v82[*(v135 + 20)] = KeyPath;
      v82[*(v83 + 24)] = v131;
      outlined init with take of AccessibilityNodeAttachment(v82, v84, MEMORY[0x1E6980770]);
      v141 = v74;
      v86 = *(v74 + 16);
      v85 = *(v74 + 24);
      if (v86 >= v85 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
        v84 = v136;
        v74 = v141;
      }

      *(v74 + 16) = v86 + 1;
      outlined init with take of AccessibilityNodeAttachment(v84, v74 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v86, MEMORY[0x1E6980770]);
      v75 += 296;
      --v73;
    }

    while (v73);

    LOBYTE(v27) = v116;
  }

  else
  {

    v74 = MEMORY[0x1E69E7CC0];
  }

  v87 = swift_allocObject();
  *(v87 + 16) = v74;
  v141 = v87;
  v142 = 0xE00000000;
  v143 = v157;
  v144 = v158 | (v159 << 32) | 0x40000000;
  v88 = v132;
  if (v132 == 1)
  {

    v89 = v112;
  }

  else
  {

    v90 = AGGraphGetValue();
    v91 = v90[1];
    v150[0] = *v90;
    v150[1] = v91;
    MEMORY[0x18D00B390]();
    v89 = 0;
  }

  LODWORD(v147[0]) = v89;
  v92 = v109;
  *v148 = v109;
  DisplayList.Item.init(_:frame:identity:version:)();
  v148[0] = v27;
  DisplayList.Item.canonicalize(options:)();
  *&v148[32] = v150[2];
  *&v148[48] = v150[3];
  *&v148[60] = *(&v150[3] + 12);
  *&v148[16] = v150[1];
  *v148 = v150[0];
  v147[2] = v150[2];
  v147[3] = v150[3];
  *(&v147[3] + 12) = *(&v150[3] + 12);
  v147[0] = v150[0];
  v147[1] = v150[1];
  outlined init with copy of DisplayList.Item(v148, &v152);
  DisplayList.init(_:)();
  v93 = v27;
  v94 = v152;
  v95 = WORD4(v152);
  v96 = HIDWORD(v152);

  v157 = v94;
  v158 = v95;
  v159 = v96;
  if (v88 == 1)
  {
    v147[2] = v150[2];
    v147[3] = v150[3];
    *(&v147[3] + 12) = *(&v150[3] + 12);
    v147[0] = v150[0];
    v147[1] = v150[1];
    outlined destroy of DisplayList.Item(v147);
  }

  else
  {
    v97 = swift_allocObject();
    v98 = v118;
    outlined copy of AccessibilityArchivableViewAttachment?(v118, 0, 0, v88);
    outlined copy of Environment<AppIntentExecutor?>.Content(v98, 0, 0);

    v99 = AGGraphGetValue();
    v100 = v99[1];
    v147[0] = *v99;
    v147[1] = v100;
    v101 = MEMORY[0x18D00B390]();
    v103 = v102;
    v97[5] = &type metadata for ArchivableAccessibilityViewModifier.Factory;
    v97[6] = lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory();
    v104 = swift_allocObject();
    v97[2] = v104;
    *(v104 + 16) = v98;
    *(v104 + 24) = 0;
    *(v104 + 32) = 0;
    *(v104 + 40) = v88;
    v105 = v112;
    *(v104 + 48) = v112;
    *(v104 + 56) = v101;
    *(v104 + 64) = v103;
    *&v147[0] = v97;
    *(&v147[0] + 1) = 0xD00000000;
    *&v147[1] = v94;
    *(&v147[1] + 1) = v95 | (v96 << 32) | 0x40000000;
    LODWORD(v151[0]) = v105;
    *&v152 = v92;

    DisplayList.Item.init(_:frame:identity:version:)();
    LOBYTE(v147[0]) = v93;
    DisplayList.Item.canonicalize(options:)();
    v151[2] = v146[2];
    v151[3] = v146[3];
    *(&v151[3] + 12) = *(&v146[3] + 12);
    v151[1] = v146[1];
    v151[0] = v146[0];
    v145[2] = v146[2];
    v145[3] = v146[3];
    *(&v145[3] + 12) = *(&v146[3] + 12);
    v145[0] = v146[0];
    v145[1] = v146[1];
    outlined init with copy of DisplayList.Item(v151, v147);
    DisplayList.init(_:)();

    outlined consume of Environment<AppIntentExecutor?>.Content(v98, 0, 0);

    outlined consume of AccessibilityArchivableViewAttachment?(v98, 0, 0, v88);
    v154 = v146[2];
    v155[0] = v146[3];
    *(v155 + 12) = *(&v146[3] + 12);
    v153 = v146[1];
    v152 = v146[0];
    outlined destroy of DisplayList.Item(&v152);
    v147[2] = v150[2];
    v147[3] = v150[3];
    *(&v147[3] + 12) = *(&v150[3] + 12);
    v147[0] = v150[0];
    v147[1] = v150[1];
    outlined destroy of DisplayList.Item(v147);
    v106 = v138;
    LOWORD(v95) = v139;
    LODWORD(v96) = v140;

    v157 = v106;
    v158 = v95;
    v94 = v106;
    v159 = v96;
  }

  v107 = v115;
  *v115 = v94;
  *(v107 + 4) = v95;
  *(v107 + 3) = v96;
LABEL_119:
}

uint64_t sub_18C0891E0()
{

  return swift_deallocObject();
}

uint64_t sub_18C089218()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C089250()
{
  outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t static AccessibilityViewModifierAccessor.supportsPlaceholders(modifier:)(uint64_t a1)
{
  v2 = *(v1 + 152);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  v7 = (*(*(v1 + 160) + 80))(v2);
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

uint64_t static AccessibilityViewModifierAccessor.willCreateNode(modifier:for:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 152);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, v4);
  LOBYTE(a2) = (*(*(v2 + 160) + 32))(a2, v4);
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

Swift::Bool __swiftcall AccessibilityAttachmentModifier.willCreateNode(for:)(Swift::OpaquePointer a1)
{
  v3 = v1[1];
  if (v3)
  {
    v4 = *(*v3 + 80);

    v5 = v4(a1._rawValue);

    return v5 & 1;
  }

  v7 = *v1;
  if (a1._rawValue >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_7:
    swift_beginAccess();
    outlined init with copy of AccessibilityAttachment(v7 + 16, v10);
    v9 = AccessibilityAttachment.isEmpty.getter();
    outlined destroy of AccessibilityAttachment(v10);
    v8 = v9 ^ 1;
    return v8 & 1;
  }

  if (!*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_5:
  v8 = 0;
  return v8 & 1;
}

uint64_t static AccessibilityViewModifierAccessor.initialAttachment(modifier:for:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 152);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, v4);
  (*(*(v2 + 160) + 40))(a2, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t AccessibilityAttachmentModifier.initialAttachment(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  swift_beginAccess();
  result = outlined init with copy of AccessibilityAttachment(v6 + 16, a2);
  if (v5)
  {
    v8 = *(*v5 + 88);

    v8(v13, a1);
    AccessibilityProperties.merge(with:)(v13);
    v9 = AccessibilityAttachment.platformElement.getter();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = AccessibilityAttachment.platformElement.getter();
      if (v11)
      {
        v12 = v11;
        AccessibilityAttachment.platformElement.setter();
      }
    }

    return outlined destroy of AccessibilityAttachment(v13);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.UIKitTraitsKey, &type metadata for AccessibilityProperties.UIKitTraitsKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.UIKitTraitsKey and conformance AccessibilityProperties.UIKitTraitsKey);
  }

  return result;
}

void protocol witness for static Rule.initialValue.getter in conformance FeedbackLocation(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t outlined init with take of AccessibilityNodeAttachment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PropertiesTransform.updateValue()()
{
  v1 = v0;
  v137[37] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v117 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PropertiesTransform(v0, v132);
  Value = AGGraphGetValue();
  v10 = *Value;
  v11 = Value[1];

  outlined destroy of PropertiesTransform(v132);
  *&v131[0] = v10;
  *(&v131[0] + 1) = v11;
  LOBYTE(v10) = EnvironmentValues.accessibilityEnabled.getter();

  v12 = MEMORY[0x1E698D3F8];
  if ((v10 & 1) == 0)
  {
    outlined init with copy of PropertiesTransform(v1, v132);
    if (LODWORD(v132[8]) != *v12)
    {
      v25 = AGGraphGetValue();
      v23 = *v25;
      v24 = *(v25 + 8);

      outlined destroy of PropertiesTransform(v132);
      goto LABEL_11;
    }

    outlined destroy of PropertiesTransform(v132);
    if (one-time initialization token for defaultValue == -1)
    {
LABEL_9:
      v24 = *(&static AccessibilityNodesKey.defaultValue + 1);
      v23 = static AccessibilityNodesKey.defaultValue;

LABEL_11:
      v132[0] = v23;
      v132[1] = v24;
      AGGraphSetOutputValue();
    }

LABEL_79:
    swift_once();
    goto LABEL_9;
  }

  v114 = v8;
  v115 = v3;
  outlined init with copy of PropertiesTransform(v1, v132);
  v13 = *AGGraphGetValue();
  outlined destroy of PropertiesTransform(v132);
  if (*(v1 + 248) != v13 >> 1)
  {

    *(v1 + 232) = 0;
    swift_unknownObjectWeakAssign();
    outlined init with copy of PropertiesTransform(v1, v132);
    v14 = *AGGraphGetValue();
    outlined destroy of PropertiesTransform(v132);
    *(v1 + 248) = v14 >> 1;
  }

  v15 = AGGraphGetValue();
  v124 = v16;
  v17 = *v15;
  v18 = v15[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v20 = *v12;
  if (CurrentAttribute == v20)
  {
    __break(1u);
    goto LABEL_79;
  }

  v111 = v6;

  AccessibilityAttachmentToken.init<A>(_:)();
  v128 = v132[0];
  v127 = LOBYTE(v132[1]);
  v21._rawValue = MEMORY[0x1E69E7CC0];
  if (*(v1 + 64) == v20)
  {
    v22 = 0;
    v121 = 0;
  }

  else
  {
    v26 = AGGraphGetValue();
    v21._rawValue = *v26;
    v22 = v26[1];
    v121 = v27 & 1;
  }

  rawValue = v21._rawValue;
  v130 = v22;
  v28 = *(v1 + 72);
  v118 = v18;
  v119 = v17;
  v126 = v20;
  v112 = v2;
  v113 = v5;
  if (v28 && *(v1 + 8) == v20)
  {
    v30 = *(v1 + 88);
    v29 = *(v1 + 96);
    v31 = *(v1 + 80);

    AGGraphClearUpdate();
    v32 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v33 = (*(v29 + 8))(v31, v30, v29);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    if (v33 != v20)
    {
      *(v1 + 8) = v33;
    }
  }

  else
  {
  }

  v34 = v131;
  v35 = *v1;
  v36 = *(*v1 + 80);
  v125 = *(v1 + 8);
  v37 = v36();

  v120 = v1;
  if (v37)
  {
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_getObjectType();
      v39 = swift_conformsToProtocol2();
      if (v39)
      {
        v40 = v39;
        goto LABEL_33;
      }

      swift_unknownObjectRelease();
      Strong = 0;
    }

    v40 = 0;
LABEL_33:
    v46 = *(v1 + 232);
    v47 = (*(v35 + 13))(v125, Strong, v40, v46);
    swift_unknownObjectRelease();
    v123 = v47;
    if (v46)
    {
      v48 = v47 == v46;
    }

    else
    {
      v48 = 0;
    }

    LODWORD(v49) = !v48;
    if (v48)
    {
LABEL_53:
      v122 = v46;
      if (v124)
      {
        v61 = v123;
        v62 = (v123 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
        v63 = v118;
        *v62 = v119;
        v62[1] = v63;

        *(v61 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored) = 2;
        LOBYTE(v49) = 1;
      }

      (*(v35 + 11))(v136, v125, v21);
      outlined init with copy of PropertiesTransform(v1, v137);
      if (HIDWORD(v137[7]) == v126)
      {
        outlined destroy of PropertiesTransform(v137);
        memset(v131, 0, 296);
        v35 = v127;
        v64 = v128;
      }

      else
      {
        v65 = AGGraphGetValue();
        outlined init with copy of AccessibilityAttachment.Tree(v65, v132);
        outlined destroy of PropertiesTransform(v137);
        AccessibilityAttachment.Tree.attachment.getter(v131);
        outlined destroy of AccessibilityAttachment.Tree(v132);
        v35 = v127;
        v64 = v128;
        if (*(&v131[17] + 1))
        {
          memcpy(v132, v131, 0x128uLL);
          AccessibilityProperties.merge(with:)(v132);
          v66 = AccessibilityAttachment.platformElement.getter();
          if (v66)
          {
          }

          else if (AccessibilityAttachment.platformElement.getter())
          {
            AccessibilityAttachment.platformElement.setter();
          }

          outlined destroy of AccessibilityAttachment(v132);
LABEL_64:
          v132[0] = v64;
          LOBYTE(v132[1]) = v35;
          v67 = v123;
          AccessibilityNode.hasAttachment(token:)(v132);
          if (v68)
          {
            v132[0] = v64;
            LOBYTE(v132[1]) = v35;
            if ((specialized AccessibilityNode.updateAttachment(_:isInPlatformItemList:token:merge:)(v136, v132, 0) & 1) == 0)
            {
              AccessibilityNode.isPlatformNode.getter();
              v34 = v126;
              v74 = v122;
              if ((v75 & 1) != 0 || (v76 = swift_unknownObjectWeakLoadStrong()) == 0)
              {
                LOBYTE(v49) = 1;
              }

              else
              {
              }

              goto LABEL_73;
            }

            LOBYTE(v49) = 1;
          }

          else
          {
            AccessibilityNode.scheduleNotifyForAttachmentAddition(of:)(v136);
            outlined init with copy of AccessibilityAttachment(v136, v132);
            v132[37] = 0;
            v134 = v64;
            v135 = v35;
            v133 = 0;
            outlined init with copy of AccessibilityAttachmentStorage(v132, v131);
            v69 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
            swift_beginAccess();
            v35 = *(v67 + v69);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v67 + v69) = v35;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
              *(v67 + v69) = v35;
            }

            v72 = *(v35 + 2);
            v71 = *(v35 + 3);
            if (v72 >= v71 >> 1)
            {
              v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v35);
            }

            *(v35 + 2) = v72 + 1;
            memcpy(&v35[320 * v72 + 32], v131, 0x13DuLL);
            *(v67 + v69) = v35;
            swift_endAccess();
            outlined destroy of AccessibilityAttachmentStorage(v132);
            memset(v131, 0, 296);
            v73 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
            swift_beginAccess();
            v49 = MEMORY[0x1E697FFF0];
            outlined assign with copy of AccessibilityAttachment?(v131, v67 + v73, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
            swift_endAccess();
            _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v131, &lazy cache variable for type metadata for AccessibilityAttachment?, v49, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
            LOBYTE(v49) = 1;
            *(v67 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;
          }

          v34 = v126;
          v74 = v122;
LABEL_73:
          AccessibilityNode.updateChildren(_:)(v21);
          type metadata accessor for AccessibilityAttachment?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v1 = swift_allocObject();
          *(v1 + 16) = xmmword_18CD69590;
          *(v1 + 32) = v67;
          outlined destroy of AccessibilityAttachment(v136);

          rawValue = v1;
          goto LABEL_120;
        }
      }

      _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v131, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
      goto LABEL_64;
    }

    if (AGGraphGetOutputValue())
    {
      if (!v46)
      {
        LODWORD(v116) = v49;
        v122 = 0;
        if (!(v21._rawValue >> 62))
        {
          v50 = *((v21._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v50)
          {
            goto LABEL_143;
          }

LABEL_44:
          if (v50 < 1)
          {
            __break(1u);
          }

          v51 = 0;
          do
          {
            if ((v21._rawValue & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x18D00E9C0](v51, v21._rawValue);
            }

            else
            {
              v52 = *(v21._rawValue + v51 + 4);
            }

            v53 = v52;
            ++v51;
            v132[0] = v128;
            LOBYTE(v132[1]) = v127;
            AccessibilityNode.removeAttachments(after:)(v132);
          }

          while (v50 != v51);
LABEL_143:
          LODWORD(v49) = v116;
          v46 = v122;
          if (v124)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

LABEL_142:
        v50 = __CocoaSet.count.getter();
        if (!v50)
        {
          goto LABEL_143;
        }

        goto LABEL_44;
      }
    }

    else if (!(v46 | v124 & 1))
    {
LABEL_51:
      LODWORD(v116) = v49;
      v54 = v123;
      v55 = (v123 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
      v56 = v46;
      v57 = v118;
      *v55 = v119;
      v55[1] = v57;

      v46 = v56;

      LOBYTE(v49) = v116;

      *(v54 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored) = 2;
    }

LABEL_52:
    v58 = v123;
    v59 = v123 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_source;
    *v59 = v125;
    *(v59 + 4) = 0;
    v60 = v58;

    *(v1 + 232) = v60;
    v46 = v60;
    goto LABEL_53;
  }

  v41 = v21._rawValue >> 62;
  if (!*(v1 + 232))
  {
    goto LABEL_82;
  }

  v124 = *(v1 + 232);
  if (v41)
  {
    v42 = __CocoaSet.count.getter();
    if (v42)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v42 = *((v21._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
LABEL_25:
      if (v42 < 1)
      {
        __break(1u);
        goto LABEL_142;
      }

      for (i = 0; i != v42; ++i)
      {
        if ((v21._rawValue & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x18D00E9C0](i, v21._rawValue);
        }

        else
        {
          v44 = *(v21._rawValue + i + 4);
        }

        v45 = v44;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  v1 = v120;
  *(v120 + 232) = 0;
LABEL_82:
  v77 = (v21._rawValue & 0xFFFFFFFFFFFFFF8);
  if (v41)
  {
LABEL_140:
    v124 = v77;
    v78 = __CocoaSet.count.getter();
  }

  else
  {
    v124 = (v21._rawValue & 0xFFFFFFFFFFFFFF8);
    v78 = *((v21._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v116) = v121;
  if (!v78)
  {
    goto LABEL_119;
  }

  v79 = 0;
  v122 = v35 + 96;
  v123 = v21._rawValue & 0xC000000000000001;
  ++v115;
  v109 = (v117 + 1);
  v110 = &v132[2];
  v117 = &v134;
  LODWORD(v116) = v121;
  while (2)
  {
    while (2)
    {
      v80 = v79;
      while (1)
      {
        if (v123)
        {
          v81 = MEMORY[0x18D00E9C0](v80, v21._rawValue);
        }

        else
        {
          v77 = *(v124 + 2);
          if (v80 >= v77)
          {
            goto LABEL_138;
          }

          v81 = *(v21._rawValue + v80 + 4);
        }

        v82 = v81;
        v79 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v132[0] = v128;
        LOBYTE(v132[1]) = v127;
        (*(v35 + 12))(v137, v125, v132, v21, v80);
        outlined init with copy of PropertiesTransform(v1, v136);
        if (HIDWORD(v136[7]) == v126)
        {
          outlined destroy of PropertiesTransform(v136);
          memset(v131, 0, 96);
          *(v34 + 96) = 0u;
          *(v34 + 112) = 0u;
          *(v34 + 128) = 0u;
          *(v34 + 144) = 0u;
          *(v34 + 160) = 0u;
          *(v34 + 176) = 0u;
          *(v34 + 192) = 0u;
          *(v34 + 208) = 0u;
          *(v34 + 224) = 0u;
          *(v34 + 240) = 0u;
          *(v34 + 256) = 0u;
          *(v34 + 272) = 0u;
          *&v131[18] = 0;
LABEL_96:
          _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v131, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
          goto LABEL_100;
        }

        v83 = AGGraphGetValue();
        outlined init with copy of AccessibilityAttachment.Tree(v83, v132);
        outlined destroy of PropertiesTransform(v136);
        AccessibilityAttachment.Tree.attachment.getter(v131);
        outlined destroy of AccessibilityAttachment.Tree(v132);
        if (!*(&v131[17] + 1))
        {
          goto LABEL_96;
        }

        memcpy(v132, v131, 0x128uLL);
        AccessibilityProperties.merge(with:)(v132);
        v84 = AccessibilityAttachment.platformElement.getter();
        if (v84)
        {
        }

        else if (AccessibilityAttachment.platformElement.getter())
        {
          AccessibilityAttachment.platformElement.setter();
        }

        outlined destroy of AccessibilityAttachment(v132);
LABEL_100:
        *&v131[0] = v128;
        BYTE8(v131[0]) = v127;
        AccessibilityNode.modifiedAttachment(attachment:token:)(v137, v131, v132);
        outlined destroy of AccessibilityAttachment(v137);
        if (v132[35])
        {
          break;
        }

        _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v132, &lazy cache variable for type metadata for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)?, type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool), MEMORY[0x1E69E6720], type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)?);
        ++v80;
        if (v79 == v78)
        {
          goto LABEL_119;
        }
      }

      memcpy(v136, v132, 0x12AuLL);
      outlined init with copy of (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)(v136, v132, type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool));
      memcpy(v137, v132, 0x128uLL);
      if ((v136[37] & 1) == 0)
      {
        v86 = BYTE1(v136[37]);
        v87 = v127;
        if ((v137[7] & 1) == 0 && (BYTE1(v137[5]) & 0x40) != 0)
        {
          LOBYTE(v131[0]) = 4;
          AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v131, v132);
          if (LOBYTE(v132[0]) != 3)
          {
            v88 = swift_unknownObjectWeakLoadStrong();
            if (v88)
            {
              v89 = v88;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                type metadata accessor for OS_dispatch_queue();
                v107[2] = v89;
                v116 = static OS_dispatch_queue.main.getter();
                v90 = swift_allocObject();
                *(v90 + 16) = 0;
                *(v90 + 24) = 0;
                v132[4] = partial apply for closure #1 in AccessibilityNode.scheduleNotifyForAttachmentAddition(of:);
                v132[5] = v90;
                v132[0] = MEMORY[0x1E69E9820];
                v132[1] = 1107296256;
                v132[2] = thunk for @escaping @callee_guaranteed () -> ();
                v132[3] = &block_descriptor_34;
                v108 = _Block_copy(v132);

                static DispatchQoS.unspecified.getter();
                v132[0] = MEMORY[0x1E69E7CC0];
                v107[1] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
                type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool)?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
                lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                MEMORY[0x18D00DA20](0, v114, v113, v108);
                swift_unknownObjectRelease();
                _Block_release(v108);

                (*v115)(v113, v112);
                (*v109)(v114, v111);
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        outlined init with copy of AccessibilityAttachment(v137, v132);
        v132[37] = 0;
        *v117 = v128;
        v135 = v87;
        v133 = v86;
        outlined init with copy of AccessibilityAttachmentStorage(v132, v131);
        v91 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
        swift_beginAccess();
        v92 = *&v82[v91];
        v93 = swift_isUniquelyReferenced_nonNull_native();
        *&v82[v91] = v92;
        if ((v93 & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 2) + 1, 1, v92);
          *&v82[v91] = v92;
        }

        v95 = *(v92 + 2);
        v94 = *(v92 + 3);
        v96 = (v95 + 1);
        if (v95 >= v94 >> 1)
        {
          v116 = (v95 + 1);
          v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v92);
          v96 = v116;
          v92 = v99;
        }

        *(v92 + 2) = v96;
        memcpy(&v92[320 * v95 + 32], v131, 0x13DuLL);
        *&v82[v91] = v92;
        swift_endAccess();
        outlined destroy of AccessibilityAttachmentStorage(v132);
        outlined destroy of PlatformItemList.Item(v136, type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool));
        outlined destroy of AccessibilityAttachment(v137);
        *&v131[18] = 0;
        *(v34 + 256) = 0u;
        *(v34 + 272) = 0u;
        *(v34 + 224) = 0u;
        *(v34 + 240) = 0u;
        *(v34 + 192) = 0u;
        *(v34 + 208) = 0u;
        *(v34 + 160) = 0u;
        *(v34 + 176) = 0u;
        *(v34 + 128) = 0u;
        *(v34 + 144) = 0u;
        *(v34 + 96) = 0u;
        *(v34 + 112) = 0u;
        memset(v131, 0, 96);
        v97 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
        swift_beginAccess();
        v98 = MEMORY[0x1E697FFF0];
        outlined assign with copy of AccessibilityAttachment?(v131, &v82[v97], &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
        swift_endAccess();
        _s7SwiftUI23AccessibilityAttachmentVSgWOhTm_0(v131, &lazy cache variable for type metadata for AccessibilityAttachment?, v98, MEMORY[0x1E69E6720], type metadata accessor for AccessibilityAttachment?);
        LODWORD(v116) = 1;
        v82[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;

        v1 = v120;
        if (v79 == v78)
        {
          goto LABEL_119;
        }

        continue;
      }

      break;
    }

    v132[0] = v128;
    LOBYTE(v132[1]) = v127;
    v85 = specialized AccessibilityNode.updateAttachment(_:isInPlatformItemList:token:merge:)(v137, v132, 0);

    outlined destroy of PlatformItemList.Item(v136, type metadata accessor for (AccessibilityAttachment, hasAttachment: Bool, modified: Bool));
    outlined destroy of AccessibilityAttachment(v137);
    LODWORD(v116) = v85 | v116;
    if (v79 != v78)
    {
      continue;
    }

    break;
  }

LABEL_119:

  v74 = 0;
  v34 = v126;
  LOBYTE(v49) = v116;
LABEL_120:
  v100 = AGGraphGetCurrentAttribute();
  if (v100 == v34)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v101 = v100;
  v102 = v120;
  if (*(v120 + 152))
  {
    AccessibilityViewResponderUpdater.updateAccessibilityNodes(list:listChanged:source:)(&rawValue, (v121 | v49) & 1, v100);
  }

  if (*(v102 + 216))
  {
    AccessibilityGeometryUpdater.updateAccessibilityNodes(list:listChanged:source:)(&rawValue, (v121 | v49) & 1, v101);
  }

  if (v49)
  {
    DisplayList.Version.init(forUpdate:)();
    v103 = v132[0];
    goto LABEL_135;
  }

  v104 = v121;
  if (!v74)
  {
    v104 = 0;
  }

  if (v104 == 1)
  {
    LOBYTE(v132[0]) = 17;
    *(swift_allocObject() + 16) = v74;
    v105 = v74;
    static Update.enqueueAction(reason:_:)();
  }

  if (!AGGraphGetOutputValue())
  {
    v103 = v130;
LABEL_135:
    v132[0] = rawValue;
    v132[1] = v103;
    AGGraphSetOutputValue();
  }

  outlined init with copy of PropertiesTransform(v120, v132);
  result = AGGraphGetOutputValue();
  if (result)
  {
    v103 = *(result + 8);
    outlined destroy of PropertiesTransform(v132);
    goto LABEL_135;
  }

  __break(1u);
  return result;
}

uint64_t sub_18C08AF3C()
{

  return swift_deallocObject();
}

uint64_t sub_18C08AF74()
{

  return swift_deallocObject();
}

uint64_t static AccessibilityViewModifierAccessor.createOrUpdateNode(modifier:viewRendererHost:existingNode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 152);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v9 + 16))(v11, Value, v8);
  v13 = (*(*(v4 + 160) + 56))(a2, a3, a4, v8);
  (*(v9 + 8))(v11, v8);
  return v13;
}

id protocol witness for AccessibilityViewModifier.createOrUpdateNode(viewRendererHost:existingNode:) in conformance AccessibilityImageModifier(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    objc_allocWithZone(type metadata accessor for AccessibilityNode());
    v6 = swift_unknownObjectRetain();
    v4 = specialized AccessibilityNode.init(viewRendererHost:isFromDisplayList:)(v6, a2, 0);
    swift_unknownObjectRelease();
  }

  v7 = a3;
  return v4;
}

void AccessibilityNode.hasAttachment(token:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      outlined init with copy of AccessibilityAttachmentStorage(v7, v11);
      v9 = v12;
      v10 = v13;
      outlined destroy of AccessibilityAttachmentStorage(v11);
      if (v10 == 255)
      {
        if (v3 == 255)
        {
          goto LABEL_16;
        }
      }

      else if (v3 != 255)
      {
        if (v10)
        {
          if ((v3 & 1) != 0 && v9 == v2)
          {
            goto LABEL_16;
          }
        }

        else if ((v3 & 1) == 0 && v9 == v2)
        {
LABEL_16:

          return;
        }
      }

      ++v8;
      v7 += 320;
      if (v6 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall AccessibilityNode.updateChildren(_:)(Swift::OpaquePointer a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v39 = v1;
  v40 = v3;
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      *v43 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        return;
      }

      v7 = 0;
      v6 = *v43;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x18D00E9C0](v7, v4);
        }

        else
        {
          v8 = *(v4 + 8 * v7 + 32);
        }

        v2 = *&v8[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];

        *v43 = v6;
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v6 = *v43;
        }

        ++v7;
        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v2;
      }

      while (i != v7);
    }

    v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI8UniqueIDV_SayAFGTt0g5Tf4g_n(v6);

    if (a1._rawValue >> 62)
    {
      rawValue = __CocoaSet.count.getter();
    }

    else
    {
      rawValue = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    if (rawValue)
    {
      *v43 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue & ~(rawValue >> 63), 0);
      if (rawValue < 0)
      {
        goto LABEL_75;
      }

      v12 = *v43;
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        for (j = 0; j != rawValue; ++j)
        {
          v14 = *(MEMORY[0x18D00E9C0](j, a1._rawValue) + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id);
          swift_unknownObjectRelease();
          *v43 = v12;
          v2 = *(v12 + 16);
          v15 = *(v12 + 24);
          if (v2 >= v15 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v2 + 1, 1);
            v12 = *v43;
          }

          *(v12 + 16) = v2 + 1;
          *(v12 + 8 * v2 + 32) = v14;
        }
      }

      else
      {
        v16 = a1._rawValue + 32;
        v17 = *(*v43 + 16);
        v2 = rawValue;
        do
        {
          v18 = *(*v16 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id);
          *v43 = v12;
          v19 = *(v12 + 24);
          if (v17 >= v19 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1);
            v12 = *v43;
          }

          *(v12 + 16) = v17 + 1;
          *(v12 + 8 * v17 + 32) = v18;
          ++v16;
          ++v17;
          --v2;
        }

        while (v2);
      }
    }

    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI8UniqueIDV_SayAFGTt0g5Tf4g_n(v12);

    *v43 = v4;
    specialized Set.formSymmetricDifference(_:)(v20);
    v21 = *(v39 + v40);
    if (v21 >> 62)
    {
      break;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = rawValue + v22;
    if (__OFADD__(rawValue, v22))
    {
      goto LABEL_71;
    }

LABEL_29:
    v38 = *(v4 + 16) == v23 && v22 != 0;
    v2 = v39;
    rawValue = a1._rawValue;
    if (a1._rawValue >> 62)
    {
      v24 = __CocoaSet.count.getter();
      if (!v24)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v24 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_43;
      }
    }

    if (v24 < 1)
    {
      goto LABEL_76;
    }

    if ((a1._rawValue & 0xC000000000000001) != 0)
    {
      for (k = 0; k != v24; ++k)
      {
        MEMORY[0x18D00E9C0](k, a1._rawValue);
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v26 = a1._rawValue + 32;
      do
      {
        v26 += 8;
        swift_unknownObjectWeakAssign();
        --v24;
      }

      while (v24);
    }

LABEL_43:
    v20 = *(v39 + v40);
    if (v20 >> 62)
    {
      goto LABEL_72;
    }

    v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_60;
    }

LABEL_45:
    v2 = v4 + 56;

    v28 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x18D00E9C0](v28, v20);
      }

      else
      {
        if (v28 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v29 = *(v20 + 32 + 8 * v28);
      }

      v30 = v29;
      if (__OFADD__(v28++, 1))
      {
        break;
      }

      if (*(v4 + 16))
      {
        v32 = *&v29[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];
        Hasher.init(_seed:)();
        MEMORY[0x18D00F6F0](v32);
        v33 = Hasher._finalize()();
        v34 = -1 << *(v4 + 32);
        v35 = v33 & ~v34;
        if ((*(v2 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          while (*(*(v4 + 48) + 8 * v35) != v32)
          {
            v35 = (v35 + 1) & v36;
            if (((*(v2 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          swift_unknownObjectWeakAssign();
        }
      }

LABEL_47:

      if (v28 == v27)
      {

        v2 = v39;
        rawValue = a1._rawValue;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v22 = __CocoaSet.count.getter();
  v23 = rawValue + v22;
  if (!__OFADD__(rawValue, v22))
  {
    goto LABEL_29;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  v27 = __CocoaSet.count.getter();
  if (v27)
  {
    goto LABEL_45;
  }

LABEL_60:
  *(v2 + v40) = rawValue;

  v42 = 4;

  AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v42, v43);
  if (v43[0] - 1 > 1)
  {
  }

  else
  {
    v37 = *(v4 + 16);

    if (v37)
    {
      AccessibilityNode.scheduleNotifyForChildrenChange(fullReplacement:)(v38);
    }
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI8UniqueIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type UniqueID and conformance UniqueID();
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E6981D00], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UniqueID and conformance UniqueID()
{
  result = lazy protocol witness table cache variable for type UniqueID and conformance UniqueID;
  if (!lazy protocol witness table cache variable for type UniqueID and conformance UniqueID)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981D08], MEMORY[0x1E6981D00], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UniqueID and conformance UniqueID);
  }

  return result;
}

void specialized Set.formSymmetricDifference(_:)(uint64_t a1)
{
  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(a1 + 48) + ((v3 << 9) | (8 * v10)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x18D00F6F0](v11);
        v13 = Hasher._finalize()();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          break;
        }
      }

LABEL_6:
      specialized Set._Variant.insert(_:)(v17, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v16 = ~v14;
    while (*(*(v12 + 48) + 8 * v15) != v11)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    specialized Set._Variant.remove(_:)(v11, v17);
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

void AccessibilityNode.impliedVisibility(consideringParent:with:)(char a1@<W0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  AccessibilityNode.visibility.getter(v23);
  *v22 = *v23;
  AccessibilityNullableOptionSet<>.resolved.getter();
  v8 = v24;
  if (v24 == 3)
  {
    goto LABEL_2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v7 == 4)
    {
      v22[0] = 4;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(a1 & 1, v22, v23);
      v7 = v23[0];
    }

    if (v7 == 3)
    {

      v9 = 3;
      goto LABEL_28;
    }

    if (v7 || (a1 & 1) == 0)
    {
    }

    else
    {
      AccessibilityNode.isPlatformNode.getter();
      v13 = v12;

      if ((v13 & 1) == 0)
      {
LABEL_2:
        v9 = 3;
        goto LABEL_28;
      }
    }
  }

  v14 = AccessibilityNode.isPlaceholderOrIgnored.getter() & 1;
  if (v14)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if (!v14 && v8 == 4)
  {
    v15 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    swift_beginAccess();
    v16 = *(v4 + v15);
    if (v16 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_20;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      v9 = 2;
      goto LABEL_28;
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
      v19 = v17;
      swift_beginAccess();
      v20 = *&v19[v18];
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    if (v20 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 2 * (v21 != 0);
  }

LABEL_28:
  *a3 = v9;
}

uint64_t AccessibilityNode.visibility.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
  swift_beginAccess();
  outlined init with copy of AnyAccessibilityValue?(v1 + v3, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (__src[35])
  {
    memcpy(__dst, __src, 0x128uLL);
    outlined init with copy of AccessibilityProperties(__dst, __src);
    outlined destroy of AccessibilityAttachment(__dst);
    v4 = HIDWORD(__src[14]);
    v5 = __src[14];
    v6 = LOBYTE(__src[15]);
    result = outlined destroy of AccessibilityProperties(__src);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4;
    }

    *a1 = v8;
    a1[1] = v9;
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    result = swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = *(v11 + 16);
    if (v12)
    {

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = v11 + 320 * v12 - 288;
      while (v12 <= *(v11 + 16))
      {
        outlined init with copy of AccessibilityAttachmentStorage(v16, __dst);
        outlined init with copy of AccessibilityAttachment(__dst, __src);
        outlined destroy of AccessibilityAttachmentStorage(__dst);
        outlined init with copy of AccessibilityProperties(__src, v19);
        outlined destroy of AccessibilityAttachment(__src);
        v17 = v20;
        v18 = v21;
        outlined destroy of AccessibilityProperties(v19);
        if ((v18 & 1) == 0)
        {
          v13 = v15 | HIDWORD(v17);
          v14 = (v15 | ~HIDWORD(v17)) & v14 | v17 & ~v15;
          v15 |= HIDWORD(v17);
        }

        v16 -= 320;
        if (!--v12)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_16:
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *a1 = v14;
    a1[1] = v13;
  }

  return result;
}

uint64_t AccessibilityNode.traits.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
  swift_beginAccess();
  outlined init with copy of AnyAccessibilityValue?(v1 + v3, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (__src[35])
  {
    memcpy(__dst, __src, 0x128uLL);
    outlined init with copy of AccessibilityProperties(__dst, __src);
    outlined destroy of AccessibilityAttachment(__dst);
    v4 = __src[5];
    v5 = __src[6];
    v6 = LOBYTE(__src[7]);
    result = outlined destroy of AccessibilityProperties(__src);
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4;
    }

    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v5;
    }

    *a1 = v8;
    a1[1] = v9;
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    result = swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = *(v11 + 16);
    if (v12)
    {

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = v11 + 320 * v12 - 288;
      while (v12 <= *(v11 + 16))
      {
        outlined init with copy of AccessibilityAttachmentStorage(v16, __dst);
        outlined init with copy of AccessibilityAttachment(__dst, __src);
        outlined destroy of AccessibilityAttachmentStorage(__dst);
        outlined init with copy of AccessibilityProperties(__src, v20);
        outlined destroy of AccessibilityAttachment(__src);
        v18 = v20[5];
        v17 = v20[6];
        v19 = v21;
        outlined destroy of AccessibilityProperties(v20);
        if ((v19 & 1) == 0)
        {
          v13 = v17 | v15;
          v14 = (v15 | ~v17) & v14 | v18 & ~v15;
          v15 |= v17;
        }

        v16 -= 320;
        if (!--v12)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_16:
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *a1 = v14;
    a1[1] = v13;
  }

  return result;
}

uint64_t AccessibilityNode.isPlaceholderOrIgnored.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedIsPlaceholderOrIgnored);
  if (v2 == 2)
  {
    AccessibilityNode.traits.getter(v7);
    v3 = AccessibilityNullableOptionSet<>.subscript.getter();
    AccessibilityNode.traits.getter(v7);
    v6 = v7[0];
    if (AccessibilityNullableOptionSet<>.subscript.getter() & 1) != 0 || (LOBYTE(v2) = 0, (v3))
    {
      v4 = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
      v7[0] = *(v0 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
      v7[1] = v4;

      EnvironmentValues.redactionReasons.getter();

      LOBYTE(v2) = v6 & 1;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

void AccessibilityViewResponderUpdater.updateAccessibilityNodes(list:listChanged:source:)(uint64_t *a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v102) = a3;
  v125 = *MEMORY[0x1E69E9840];
  v98 = type metadata accessor for DispatchWorkItemFlags();
  v101 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v100 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[1];
  v10 = *a1;
  LODWORD(a1) = *MEMORY[0x1E698D3F8];

  if (v9 != a1)
  {
    AGGraphGetValue();
    if ((*AGGraphGetValue() & 0x40) == 0 && (*AGGraphGetValue() & 1) == 0)
    {

      return;
    }
  }

  LODWORD(v104) = a2;
  v11 = v10 >> 62;
  v108 = v10;
  if (v10 >> 62)
  {
    goto LABEL_141;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 != 1)
  {
    *&v114[0] = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
      goto LABEL_143;
    }

LABEL_14:
    v94 = v4;
    v4 = 0;
    v106 = (v10 & 0xFFFFFFFFFFFFFF8);
    v107 = v10 & 0xC000000000000001;
    v105 = v10 + 32;
    v15 = MEMORY[0x1E697FFF0];
    v103 = v12;
    v95 = v11;
    while (1)
    {
      if (v107)
      {
        v16 = MEMORY[0x18D00E9C0](v4, v10);
      }

      else
      {
        if (v4 >= v106[2])
        {
          goto LABEL_140;
        }

        v16 = *(v105 + 8 * v4);
      }

      v13 = v16;
      v17 = __OFADD__(v4++, 1);
      if (v17)
      {
        goto LABEL_139;
      }

      v18 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
      swift_beginAccess();
      outlined init with copy of AnyAccessibilityValue?(&v13[v18], v116, &lazy cache variable for type metadata for AccessibilityAttachment?, v15);
      if (v116[35])
      {
        memcpy(v120, v116, sizeof(v120));
        outlined init with copy of AccessibilityProperties(v120, v116);
        outlined destroy of AccessibilityAttachment(v120);
        v19 = v116[14];
        v20 = BYTE4(v116[14]);
        v21 = LOBYTE(v116[15]);
        outlined destroy of AccessibilityProperties(v116);
        v22 = v21 == 0;
        if (v21)
        {
          v23 = 0;
        }

        else
        {
          v23 = v20;
        }

        if (v22)
        {
          v24 = v19;
        }

        else
        {
          v24 = 0;
        }

        if ((v24 & 4) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        outlined destroy of AnyAccessibilityValue?(v116, &lazy cache variable for type metadata for AccessibilityAttachment?, v15);
        v25 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
        swift_beginAccess();
        v26 = *&v13[v25];
        v11 = *(v26 + 16);
        if (v11)
        {

          v24 = 0;
          v23 = 0;
          v14 = v26 + 320 * v11 - 288;
          do
          {
            if (v11 > *(v26 + 16))
            {
              __break(1u);
              goto LABEL_50;
            }

            outlined init with copy of AccessibilityAttachmentStorage(v14, v120);
            outlined init with copy of AccessibilityAttachment(v120, v116);
            outlined destroy of AccessibilityAttachmentStorage(v120);
            outlined init with copy of AccessibilityProperties(v116, v117);
            outlined destroy of AccessibilityAttachment(v116);
            v10 = v118;
            v27 = v119;
            outlined destroy of AccessibilityProperties(v117);
            if ((v27 & 1) == 0)
            {
              v28 = v10 & ~v23;
              v29 = v23 | ~BYTE4(v10);
              v23 |= BYTE4(v10);
              v24 = v29 & v24 | v28;
            }

            v14 -= 320;
            --v11;
          }

          while (v11);

          v11 = v95;
          if ((v24 & 4) != 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v11 = v95;
        }
      }

      if ((v23 & 4) != 0 || (v24 & 8) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_39;
      }

LABEL_37:

LABEL_39:
      v15 = MEMORY[0x1E697FFF0];
      v10 = v108;
      if (v4 == v103)
      {
        v48 = *&v114[0];
        v4 = v94;
        goto LABEL_144;
      }
    }
  }

LABEL_9:

  while (1)
  {
    Hasher.init()();
    v13 = v11;
    if (v11)
    {
      v14 = __CocoaSet.count.getter();
      if (!v14)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_52;
      }
    }

    if (v14 >= 1)
    {
      break;
    }

LABEL_150:
    __break(1u);
LABEL_151:
    v85 = __CocoaSet.count.getter();
LABEL_147:

    if (v85 != 1)
    {
      return;
    }
  }

  v11 = &OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id;
  if ((v10 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v14; ++i)
    {
      v31 = MEMORY[0x18D00E9C0](i, v10);
      MEMORY[0x18D00F6F0](*(v31 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id));
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_50:
    v32 = (v10 + 32);
    do
    {
      v33 = *v32++;
      MEMORY[0x18D00F6F0](*(v33 + *v11));
      --v14;
    }

    while (v14);
  }

LABEL_52:
  v114[2] = v111;
  v114[3] = v112;
  v115 = v113;
  v114[0] = v109;
  v114[1] = v110;
  v34 = v114;
  v35 = Hasher.finalize()();
  if ((v104 & 1) == 0 || *(v4 + 24) == v35)
  {
    *(v4 + 24) = v35;
    return;
  }

  if (*(v4 + 40) == 1)
  {
    v11 = v35;
    v34 = *(v4 + 48);
    AGGraphClearUpdate();
    v36 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v120[0] = *v4;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityViewResponderUpdater.Responders and conformance AccessibilityViewResponderUpdater.Responders();
    Attribute.init<A>(body:value:flags:update:)();
    v37 = AGCreateWeakAttribute();
    *(v4 + 32) = v37;
    *(v4 + 40) = 0;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v35 = v11;
  }

  else
  {
    v37 = *(v4 + 32);
  }

  v38 = v13;
  LODWORD(v107) = *(v4 + 16);
  if (v107 == 255)
  {
    v34 = v35;
    AccessibilityAttachmentToken.init(_:)();
    v35 = v34;
    v39 = v120[0];
    LODWORD(v107) = LOBYTE(v120[1]);
  }

  else
  {
    v39 = *(v4 + 8);
    v120[0] = v39;
  }

  v103 = v35;
  if (v38)
  {
    if (v10 < 0)
    {
      v34 = v10;
    }

    else
    {
      v34 = (v10 & 0xFFFFFFFFFFFFFF8);
    }

    if (__CocoaSet.count.getter() == 1)
    {
LABEL_68:
      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_154;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v41 = *(v10 + 32);
        goto LABEL_71;
      }

      __break(1u);
LABEL_156:
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
      *(v34 + v10) = v38;
LABEL_73:
      v45 = *(v38 + 2);
      v44 = *(v38 + 3);
      if (v45 >= v44 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v38);
      }

      *(v38 + 2) = v45 + 1;
      memcpy(&v38[320 * v45 + 32], v116, 0x13DuLL);
      *(v34 + v10) = v38;
      swift_endAccess();
      outlined destroy of AccessibilityAttachmentStorage(v120);
      outlined destroy of AccessibilityAttachment(v117);
      memset(v116, 0, 296);
      v46 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
      swift_beginAccess();
      outlined assign with copy of AccessibilityAttachment?(v116, v34 + v46);
      swift_endAccess();
      outlined destroy of AnyAccessibilityValue?(v116, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
      *(v34 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;
LABEL_76:
      v120[0] = v39;
      LOBYTE(v120[1]) = v11;
      AccessibilityNode.updateResponders(_:token:)(v37, v120);

      goto LABEL_137;
    }

    v40 = __CocoaSet.count.getter();
  }

  else
  {
    v40 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40 == 1)
    {
      goto LABEL_68;
    }
  }

  v105 = v39;
  v91 = v37;
  if (!v40)
  {
    goto LABEL_137;
  }

  v39 = 0;
  v104 = v10 & 0xC000000000000001;
  v95 = v10 & 0xFFFFFFFFFFFFFF8;
  v93 = v10 + 32;
  v92 = v107 & 1;
  v106 = &v123;
  v89 = (v101 + 8);
  v90 = &v120[2];
  v88 = (v100 + 8);
  v47 = MEMORY[0x1E697FFF0];
  v101 = v40;
  v94 = v4;
  while (1)
  {
    if (v104)
    {
      v49 = MEMORY[0x18D00E9C0](v39, v10);
    }

    else
    {
      if (v39 >= *(v95 + 16))
      {
        goto LABEL_153;
      }

      v49 = *(v93 + 8 * v39);
    }

    v50 = v49;
    v17 = __OFADD__(v39++, 1);
    if (v17)
    {
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      v41 = MEMORY[0x18D00E9C0](0, v10);
LABEL_71:
      v34 = v41;
      LOBYTE(v11) = v107 & 1;
      v120[0] = v39;
      LOBYTE(v120[1]) = v107 & 1;
      AccessibilityNode.hasAttachment(token:)(v120);
      if ((v42 & 1) == 0)
      {
        AccessibilityProperties.init()();
        static AccessibilityAttachment.properties(_:)();
        outlined destroy of AccessibilityProperties(v120);
        AccessibilityNode.scheduleNotifyForAttachmentAddition(of:)(v117);
        outlined init with copy of AccessibilityAttachment(v117, v120);
        v121 = 0;
        v123 = v39;
        v124 = v11;
        v122 = 0;
        outlined init with copy of AccessibilityAttachmentStorage(v120, v116);
        v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
        swift_beginAccess();
        v38 = *(v34 + v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 + v10) = v38;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_73;
        }

        goto LABEL_156;
      }

      goto LABEL_76;
    }

    v51 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
    swift_beginAccess();
    outlined init with copy of AnyAccessibilityValue?(&v50[v51], v116, &lazy cache variable for type metadata for AccessibilityAttachment?, v47);
    v102 = v51;
    if (v116[35])
    {
      break;
    }

    outlined destroy of AnyAccessibilityValue?(v116, &lazy cache variable for type metadata for AccessibilityAttachment?, v47);
    v56 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v57 = *&v50[v56];
    v4 = *(v57 + 16);
    if (v4)
    {

      v37 = 0;
      v11 = 0;
      v58 = v57 + 320 * v4 - 288;
      while (v4 <= *(v57 + 16))
      {
        outlined init with copy of AccessibilityAttachmentStorage(v58, v120);
        outlined init with copy of AccessibilityAttachment(v120, v116);
        outlined destroy of AccessibilityAttachmentStorage(v120);
        outlined init with copy of AccessibilityProperties(v116, v117);
        outlined destroy of AccessibilityAttachment(v116);
        v10 = v118;
        v59 = v119;
        outlined destroy of AccessibilityProperties(v117);
        if ((v59 & 1) == 0)
        {
          v60 = v10 & ~v11;
          v61 = v11 | ~HIDWORD(v10);
          v11 = v11 | HIDWORD(v10);
          v37 = v61 & v37 | v60;
        }

        v58 -= 320;
        if (!--v4)
        {

          goto LABEL_103;
        }
      }

      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      if (__CocoaSet.count.getter() == 1)
      {
        goto LABEL_9;
      }

      *&v114[0] = MEMORY[0x1E69E7CC0];
      v12 = __CocoaSet.count.getter();
      if (v12)
      {
        goto LABEL_14;
      }

LABEL_143:
      v48 = MEMORY[0x1E69E7CC0];
LABEL_144:
      if ((v48 & 0x8000000000000000) == 0 && (v48 & 0x4000000000000000) == 0)
      {
        v85 = *(v48 + 16);
        goto LABEL_147;
      }

      goto LABEL_151;
    }

    LOBYTE(v11) = 0;
    v37 = 0;
LABEL_103:
    v4 = v94;
    if ((v37 & 4) == 0)
    {
      goto LABEL_104;
    }

LABEL_81:

    v10 = v108;
    v47 = MEMORY[0x1E697FFF0];
    if (v39 == v101)
    {
      goto LABEL_137;
    }
  }

  memcpy(v120, v116, sizeof(v120));
  outlined init with copy of AccessibilityProperties(v120, v116);
  outlined destroy of AccessibilityAttachment(v120);
  v52 = v116[14];
  v53 = BYTE4(v116[14]);
  v54 = LOBYTE(v116[15]);
  outlined destroy of AccessibilityProperties(v116);
  v55 = v54 == 0;
  if (v54)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    LOBYTE(v11) = v53;
  }

  if (v55)
  {
    v37 = v52;
  }

  else
  {
    v37 = 0;
  }

  if ((v37 & 4) != 0)
  {
    goto LABEL_81;
  }

LABEL_104:
  if ((v11 & 4) == 0 && (v37 & 8) != 0)
  {
    goto LABEL_81;
  }

  v37 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v62 = *&v50[v37];
  v11 = *(v62 + 16);
  if (v11)
  {
    v100 = v37;
    v63 = v4;
    v64 = v62 + 32;

    v4 = 0;
    while (v4 < *(v62 + 16))
    {
      outlined init with copy of AccessibilityAttachmentStorage(v64, v120);
      v65 = *v106;
      v10 = v124;
      outlined destroy of AccessibilityAttachmentStorage(v120);
      if (v10 != 255)
      {
        if (v10)
        {
          if ((v107 & (v65 == v105)) != 0)
          {
            goto LABEL_114;
          }
        }

        else if (!(v107 & 1 | (v65 != v105)))
        {
LABEL_114:

          v4 = v63;
          v37 = v100;
          goto LABEL_128;
        }
      }

      ++v4;
      v64 += 320;
      if (v11 == v4)
      {

        v4 = v63;
        v37 = v100;
        goto LABEL_116;
      }
    }

    __break(1u);
    goto LABEL_150;
  }

LABEL_116:
  AccessibilityProperties.init()();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v120);
  if ((v117[56] & 1) == 0 && (v117[41] & 0x40) != 0)
  {
    LOBYTE(v116[0]) = 4;
    AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v116, v120);
    if (LOBYTE(v120[0]) != 3)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for OS_dispatch_queue();
          v100 = static OS_dispatch_queue.main.getter();
          v66 = swift_allocObject();
          *(v66 + 16) = 0;
          *(v66 + 24) = 0;
          v120[4] = partial apply for closure #1 in AccessibilityNode.scheduleNotifyForAttachmentAddition(of:);
          v120[5] = v66;
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 1107296256;
          v120[2] = thunk for @escaping @callee_guaranteed () -> ();
          v120[3] = &block_descriptor_9;
          v87 = _Block_copy(v120);

          v67 = v99;
          static DispatchQoS.unspecified.getter();
          v120[0] = MEMORY[0x1E69E7CC0];
          v86 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
          type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v69 = v97;
          v68 = v98;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v70 = v67;
          v71 = v87;
          v72 = v100;
          MEMORY[0x18D00DA20](0, v70, v69, v87);
          swift_unknownObjectRelease();
          _Block_release(v71);

          (*v89)(v69, v68);
          (*v88)(v99, v96);
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  outlined init with copy of AccessibilityAttachment(v117, v120);
  v121 = 0;
  *v106 = v105;
  v124 = v92;
  v122 = 0;
  outlined init with copy of AccessibilityAttachmentStorage(v120, v116);
  swift_beginAccess();
  v73 = *&v50[v37];
  v74 = swift_isUniquelyReferenced_nonNull_native();
  *&v50[v37] = v73;
  if ((v74 & 1) == 0)
  {
    v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
    *&v50[v37] = v73;
  }

  v76 = *(v73 + 2);
  v75 = *(v73 + 3);
  if (v76 >= v75 >> 1)
  {
    v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
  }

  *(v73 + 2) = v76 + 1;
  memcpy(&v73[320 * v76 + 32], v116, 0x13DuLL);
  *&v50[v37] = v73;
  swift_endAccess();
  outlined destroy of AccessibilityAttachmentStorage(v120);
  outlined destroy of AccessibilityAttachment(v117);
  memset(v116, 0, 296);
  v77 = v102;
  swift_beginAccess();
  outlined assign with copy of AccessibilityAttachment?(v116, &v50[v77]);
  swift_endAccess();
  outlined destroy of AnyAccessibilityValue?(v116, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  v50[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty] = 1;
LABEL_128:
  v120[0] = v105;
  LOBYTE(v120[1]) = v92;
  AccessibilityNode.attachmentIndex(of:)(v120);
  if (v79)
  {
    goto LABEL_81;
  }

  v80 = v78;
  swift_beginAccess();
  v81 = *&v50[v37];
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *&v50[v37] = v81;
  if (v82)
  {
    if ((v80 & 0x8000000000000000) != 0)
    {
      goto LABEL_136;
    }

    goto LABEL_131;
  }

  v81 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
  if ((v80 & 0x8000000000000000) == 0)
  {
LABEL_131:
    if (v80 >= *(v81 + 2))
    {
      __break(1u);
    }

    v83 = &v81[320 * v80];
    v84 = *(v83 + 41);
    if (!v84)
    {
      type metadata accessor for AccessibilityGeometryStorage();
      v84 = swift_allocObject();
      *(v84 + 16) = 0u;
      *(v84 + 32) = 0u;
      *(v84 + 48) = 1;
      *(v84 + 56) = 0u;
      *(v84 + 72) = 0u;
      *(v84 + 88) = -1;
      *(v84 + 92) = 0;
      *(v84 + 100) = 1;
      *(v84 + 104) = 0;
      *(v84 + 112) = 1;
      *(v84 + 120) = 0;
      *(v83 + 41) = v84;
    }

    swift_beginAccess();
    *(v84 + 104) = v91;
    *(v84 + 112) = 0;
    *&v50[v37] = v81;
    swift_endAccess();
    goto LABEL_81;
  }

LABEL_136:
  __break(1u);
LABEL_137:
  *(v4 + 24) = v103;
}

uint64_t sub_18C08D2A4()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type AccessibilityViewResponderUpdater.Responders and conformance AccessibilityViewResponderUpdater.Responders()
{
  result = lazy protocol witness table cache variable for type AccessibilityViewResponderUpdater.Responders and conformance AccessibilityViewResponderUpdater.Responders;
  if (!lazy protocol witness table cache variable for type AccessibilityViewResponderUpdater.Responders and conformance AccessibilityViewResponderUpdater.Responders)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityViewResponderUpdater.Responders, &unk_1EFF9EB88, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityViewResponderUpdater.Responders and conformance AccessibilityViewResponderUpdater.Responders);
  }

  return result;
}

void AccessibilityNode.updateResponders(_:token:)(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  v13 = *a2;
  v14 = v4;
  AccessibilityNode.attachmentIndex(of:)(&v13);
  if (v6)
  {
    return;
  }

  v7 = v5;
  v8 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v9 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v8) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v7 >= *(v9 + 2))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = &v9[320 * v7];
  v12 = *(v11 + 41);
  if (!v12)
  {
    type metadata accessor for AccessibilityGeometryStorage();
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 1;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = -1;
    *(v12 + 92) = 0;
    *(v12 + 100) = 1;
    *(v12 + 104) = 0;
    *(v12 + 112) = 1;
    *(v12 + 120) = 0;
    *(v11 + 41) = v12;
  }

  swift_beginAccess();
  *(v12 + 104) = a1;
  *(v12 + 112) = 0;
  *(v2 + v8) = v9;
  swift_endAccess();
}

void AccessibilityNode.attachmentIndex(of:)(uint64_t *a1)
{
  v2 = *(a1 + 8);
  if (v2 == 255)
  {
    swift_beginAccess();
  }

  else
  {
    v3 = *a1;
    v4 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;

      v8 = 0;
      while (v8 < *(v5 + 16))
      {
        outlined init with copy of AccessibilityAttachmentStorage(v7, v11);
        v9 = v12;
        v10 = v13;
        outlined destroy of AccessibilityAttachmentStorage(v11);
        if (v10 != 255)
        {
          if (v10)
          {
            if ((v2 & 1) != 0 && v9 == v3)
            {
              goto LABEL_13;
            }
          }

          else if ((v2 & 1) == 0 && v9 == v3)
          {
LABEL_13:

            return;
          }
        }

        ++v8;
        v7 += 320;
        if (v6 == v8)
        {

          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance AccessibilityNodesKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  v4 = v7;
  if (v7 <= *(a1 + 8))
  {
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4;
  return specialized Array.append<A>(contentsOf:)(v3);
}

Swift::Bool __swiftcall AccessibilityChildBehavior.Combine.willCreateNode(for:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v3 = a1._rawValue >> 62;
  if (a1._rawValue >> 62)
  {
    goto LABEL_44;
  }

  v4 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = v1;
  if (v4 == 1)
  {
    if ((rawValue & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](0, rawValue);
    }

    else
    {
      if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return a1._rawValue;
      }

      v6 = *(rawValue + 32);
    }

    v7 = v6;
    AccessibilityNode.isPlatformNode.getter();
    v9 = v8;

    if (v9)
    {
      LOBYTE(a1._rawValue) = (v5 & 1) == 0;
      return a1._rawValue;
    }

    if ((v5 & 8) == 0 || ((rawValue & 0xC000000000000001) == 0 ? (v11 = *(rawValue + 32)) : (v11 = MEMORY[0x18D00E9C0](0, rawValue)), (v18 = v11, AccessibilityNode.visibility.getter(v21), v18, (v21[0] & 4) == 0) && ((v21[0] & 0x400000000) != 0 || (v21[0] & 8) == 0)))
    {
LABEL_39:
      LOBYTE(a1._rawValue) = 0;
      return a1._rawValue;
    }

LABEL_40:
    LOBYTE(a1._rawValue) = 1;
    return a1._rawValue;
  }

  LOBYTE(a1._rawValue) = 1;
  if (v4 >= 2 && (v1 & 2) != 0)
  {
    if (v3)
    {
      v10 = __CocoaSet.count.getter();
      if (!v10)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v10 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_40;
      }
    }

    v12 = 0;
    while (1)
    {
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x18D00E9C0](v12, rawValue);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v12 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v13 = *(rawValue + 8 * v12 + 32);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v19 = v1;
          a1._rawValue = __CocoaSet.count.getter();
          v1 = v19;
          v4 = a1._rawValue;
          goto LABEL_3;
        }
      }

      v15 = v13;
      AccessibilityNode.traits.getter(v21);
      if ((v21[0] & 0x80000) != 0)
      {

        goto LABEL_39;
      }

      v3 = *&v15[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope];
      if (v3)
      {

        v16 = AccessibilityRelationshipScope.nodes(for:of:returning:)(0, v15, 1);
        if (v16 >> 62)
        {
          v17 = __CocoaSet.count.getter();
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v17)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }

      ++v12;
      if (v14 == v10)
      {
        goto LABEL_40;
      }
    }
  }

  return a1._rawValue;
}

void AccessibilityNode.isPlatformNode.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = v2 + 320 * v3 - 288;
    while (v3 <= *(v2 + 16))
    {
      outlined init with copy of AccessibilityAttachment(v4, v6);
      v5 = AccessibilityAttachment.platformElement.getter();
      outlined destroy of AccessibilityAttachment(v6);
      if (v5)
      {

        return;
      }

      v4 -= 320;
      if (!--v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t static AccessibilityViewModifierAccessor.updatedAttachment(modifier:for:nodes:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 152);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v13 = *(v11 + 8);
  Value = AGGraphGetValue();
  (*(v8 + 16))(v10, Value, v7);
  v16 = v12;
  v17 = v13;
  (*(*(v4 + 160) + 48))(&v16, a3, a4, v7);
  return (*(v8 + 8))(v10, v7);
}

void AccessibilityAttachmentModifier.updatedAttachment(for:nodes:atIndex:)(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = *v3;
  v8 = v3[1];
  swift_beginAccess();
  outlined init with copy of AccessibilityAttachment(v9 + 16, a3);
  if (!v8)
  {
    return;
  }

  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v27 = v6;
  v28 = v7;
  v10 = *(*v8 + 120);
  swift_retain_n();
  v10(v26, &v27, a2);

  if ((v26[0] & 0x40) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x18D00E9C0](0, a2);
    AccessibilityNode.isPlatformNode.getter();
    v25 = v24;

    if ((v25 & 1) == 0)
    {

      v15 = MEMORY[0x18D00E9C0](0, a2);
      goto LABEL_9;
    }

LABEL_12:
    AccessibilityAttachment.init()();
    goto LABEL_13;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v11 = *(a2 + 32);
  AccessibilityNode.isPlatformNode.getter();
  v13 = v12;

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = *(a2 + 32);

  v15 = v14;
LABEL_9:
  v16 = v15;
  v17 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
  swift_beginAccess();
  v18 = *&v16[v17];

  (*(*v8 + 88))(&v27, v18);

LABEL_13:
  AccessibilityProperties.merge(with:)(&v27);
  v19 = AccessibilityAttachment.platformElement.getter();
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v21 = AccessibilityAttachment.platformElement.getter();
    if (v21)
    {
      v22 = v21;
      AccessibilityAttachment.platformElement.setter();
    }
  }

  outlined destroy of AccessibilityAttachment(&v27);
}

uint64_t AccessibilityChildBehaviorBox.visibility(for:nodes:)(uint64_t *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return (*(*(v3 + 144) + 40))(&v6, a2, *(v3 + 136));
}

void AccessibilityChildBehavior.Combine.visibility(for:nodes:)(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v9 = a2;
  v10 = __CocoaSet.count.getter();
  a2 = v9;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x18D00E9C0](0);
    goto LABEL_6;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(a2 + 32);
LABEL_6:
    v7 = v6;
    v11 = v4;
    v12 = v5;
    AccessibilityNode.visibilityIgnoringAttachment(with:)(&v11, &v13);

    v8 = v13;
LABEL_9:
    *a3 = v8;
    return;
  }

  __break(1u);
}

uint64_t AccessibilityNode.visibilityIgnoringAttachment(with:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v16 = *a1;
  v4 = *(a1 + 8);
  v5 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  v15 = a2;

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7 + 320 * v8 - 288;
  while (v8 <= *(v7 + 16))
  {
    outlined init with copy of AccessibilityAttachmentStorage(v12, v20);
    if (v22 == 255)
    {
      goto LABEL_13;
    }

    if (v4)
    {
      if ((v22 & 1) == 0 || v16 != v21)
      {
        goto LABEL_13;
      }
    }

    else if ((v22 & 1) != 0 || v16 != v21)
    {
LABEL_13:
      outlined init with copy of AccessibilityProperties(v20, v17);
      outlined destroy of AccessibilityAttachmentStorage(v20);
      v13 = v18;
      v14 = v19;
      outlined destroy of AccessibilityProperties(v17);
      if ((v14 & 1) == 0)
      {
        v10 = v11 | HIDWORD(v13);
        v9 = (v11 | ~HIDWORD(v13)) & v9 | v13 & ~v11;
        v11 |= HIDWORD(v13);
      }

      goto LABEL_4;
    }

    outlined destroy of AccessibilityAttachmentStorage(v20);
LABEL_4:
    v12 -= 320;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:

  a2 = v15;
LABEL_17:
  *a2 = v9;
  a2[1] = v10;
  return result;
}

void AccessibilityChildBehavior.Combine.initialAttachment(for:)(unint64_t a1@<X0>, unint64_t a2@<X1>, ValueMetadata *a3@<X8>)
{
  v48 = a1;
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() == 1)
    {
      goto LABEL_3;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_65;
  }

  v9 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_68;
  }

  v10 = *(a1 + 32);

  v11 = v10;
  AccessibilityNode.isPlatformNode.getter();
  v13 = v12;

  if (v13)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(a1 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    do
    {
LABEL_22:
      __dst = a3;
      if (v8)
      {
        v26 = __CocoaSet.count.getter();
      }

      else
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = 0;
      v28 = a1 & 0xC000000000000001;
      a3 = &type metadata for AccessibilityProperties.TemporalStateKey;
      while (1)
      {
        if (v26 == v27)
        {
          static AccessibilityChildBehavior.Combine.combine(children:options:)(v48, a2);
          goto LABEL_35;
        }

        if (v28)
        {
          v29 = MEMORY[0x18D00E9C0](v27, a1);
        }

        else
        {
          if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v29 = *(a1 + 8 * v27 + 32);
        }

        v30 = v29;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        AccessibilityNode.attachment.getter(__src);
        outlined init with copy of AccessibilityProperties(__src, v46);
        outlined destroy of AccessibilityAttachment(__src);
        lazy protocol witness table accessor for type AccessibilityProperties.TemporalStateKey and conformance AccessibilityProperties.TemporalStateKey();
        AccessibilityProperties.subscript.getter();

        outlined destroy of AccessibilityProperties(v46);
        ++v27;
        if ((__src[2] & 0x100000000) == 0)
        {
          LOBYTE(__src[0]) = 0;
          AccessibilityProperties.init<A>(_:_:)();
          AccessibilityAttachment.init(properties:)();
LABEL_35:
          __src[14] = 0x4300000041;
          LOBYTE(__src[15]) = 0;
          if ((a2 & 1) == 0 || !AccessibilityChildBehavior.Combine.willCreateNode(for:)(a1))
          {
LABEL_60:
            memcpy(__dst, __src, 0x128uLL);

            return;
          }

          if (v8)
          {
            a2 = __CocoaSet.count.getter();
          }

          else
          {
            a2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v31 = 0;
          while (a2 != v31)
          {
            if (v28)
            {
              v32 = MEMORY[0x18D00E9C0](v31, a1);
            }

            else
            {
              if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_63;
              }

              v32 = *(a1 + 8 * v31 + 32);
            }

            v33 = v32;
            AccessibilityNode.platformElement.getter();
            v35 = v34;

            if (v35)
            {
              a2 = v31;
              break;
            }

            if (__OFADD__(v31++, 1))
            {
              goto LABEL_64;
            }
          }

          if (v8)
          {
            if (a2 != __CocoaSet.count.getter())
            {
              goto LABEL_53;
            }
          }

          else if (a2 != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_53:
            if (v28)
            {
              goto LABEL_71;
            }

            if (a2 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v37 = *(a1 + 32 + 8 * a2);
              goto LABEL_56;
            }

            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:

      v41 = MEMORY[0x18D00E9C0](0, a1);
      AccessibilityNode.isPlatformNode.getter();
      v43 = v42;
    }

    while ((v43 & 1) == 0);
    v14 = MEMORY[0x18D00E9C0](0, a1);
LABEL_8:
    v15 = v14;
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = &OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
    if (Strong)
    {
      v17 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_children;
      v18 = Strong;
      swift_beginAccess();
      v19 = *&v18[v17];
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    specialized Array.append<A>(contentsOf:)(v19);
    v3 = v48;
    v4 = v48 & 0xC000000000000001;
    if ((v48 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_68:
    v20 = MEMORY[0x18D00E9C0](0, v3);
LABEL_14:
    v21 = v20;
    AccessibilityNode.visibility.getter(__src);

    v46[0] = __src[0];
    AccessibilityNullableOptionSet<>.resolved.getter();
    if (v45)
    {
      if (v4)
      {
        v22 = MEMORY[0x18D00E9C0](0, v3);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v22 = *(v3 + 32);
      }

      v23 = v22;
      v24 = *v9;
      swift_beginAccess();
      v25 = *&v23[v24];

      specialized Array.append<A>(contentsOf:)(v25);
    }
  }

  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v48 + 32);
    goto LABEL_14;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v37 = MEMORY[0x18D00E9C0](a2, a1);
LABEL_56:
  v38 = v37;
  AccessibilityNode.platformElement.getter();
  v40 = v39;

  if (v40)
  {

    AccessibilityAttachment.platformElement.setter();
    goto LABEL_60;
  }

LABEL_74:
  __break(1u);
}

void *static AccessibilityChildBehavior.Combine.combine(children:options:)(unint64_t a1, char a2)
{
  LOBYTE(v4) = a2;
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_114;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v6 = specialized Collection<>.filterVisible(_:)(0, 0, v5);
      v68[0] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI22AccessibilitySortCache33_53F8EA6FDE2098E3B48F956069C295B7LLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v7 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      type metadata accessor for [ObjectIdentifier : AccessibilitySortCache]();
      v5 = v68;
      Dictionary.reserveCapacity(_:)(v7);

      v69[0] = specialized Array._copyToContiguousArray()(v8, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5, specialized Array._copyContents(initializing:));
      specialized MutableCollection<>.sort(by:)(v69, 2, 1, 4, v68);

      v9 = v69[0];

      if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *(v9 + 16);
      }

      v65 = v4;
      v4 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v11 = 0;
        v12 = MEMORY[0x1E69E7CC0];
        do
        {
          v64 = v12;
          v13 = v11;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x18D00E9C0](v13, v9);
            }

            else
            {
              if (v13 >= *(v9 + 16))
              {
                goto LABEL_103;
              }

              v14 = *(v9 + 8 * v13 + 32);
            }

            v5 = v14;
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_102;
            }

            AccessibilityNode.attachment.getter(v68);
            outlined init with copy of AccessibilityProperties(v68, v69);
            outlined destroy of AccessibilityAttachment(v68);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
            }

            v16 = *(v4 + 2);
            v15 = *(v4 + 3);
            if (v16 >= v15 >> 1)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
            }

            *(v4 + 2) = v16 + 1;
            memcpy(&v4[288 * v16 + 32], v69, 0x120uLL);
            if ((v65 & 1) == 0)
            {
              AccessibilityNode.isPlatformNode.getter();
              if (v17)
              {
                break;
              }
            }

            ++v13;
            if (v11 == v10)
            {
              v12 = v64;
              goto LABEL_32;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
          }

          v20 = *(v64 + 2);
          v19 = *(v64 + 3);
          if (v20 >= v19 >> 1)
          {
            v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v64);
          }

          *(v64 + 2) = v20 + 1;
          *&v64[8 * v20 + 32] = v13;
          v12 = v64;
        }

        while (v11 != v10);
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

LABEL_32:
      v21 = *(v12 + 2);
      if (!v21)
      {
        break;
      }

      v22 = (v12 + 32);
      while (1)
      {
        v24 = *v22++;
        v23 = v24;
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_104;
        }

        if (v23 >= *(v4 + 2))
        {
          break;
        }

        outlined init with copy of AccessibilityProperties(&v4[288 * v23 + 32], v68);
        AGGraphClearUpdate();
        lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
        AccessibilityProperties.subscript.getter();
        v5 = v69[0];
        if (v69[0])
        {
          ObjectType = swift_getObjectType();
          PlatformAccessibilityElementProtocol<>.bridgedProperties.getter(ObjectType, v67);
        }

        else
        {
          memset(v67, 0, 288);
        }

        AGGraphSetUpdate();
        if (v67[35])
        {
          memcpy(v69, v67, 0x120uLL);
          v67[0] = 0;
          AccessibilityProperties.subscript.setter();
          v5 = v68;
          AccessibilityProperties.merge(with:)(v69);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          }

          outlined destroy of AccessibilityProperties(v69);
          if (v23 >= *(v4 + 2))
          {
            goto LABEL_107;
          }

          outlined assign with take of AccessibilityProperties(v68, &v4[288 * v23 + 32]);
          if (!--v21)
          {
            goto LABEL_45;
          }
        }

        else
        {
          outlined destroy of AccessibilityProperties(v68);
          _s7SwiftUI25AccessibilityValueStorageVSgWOhTm_0(v67, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
          if (!--v21)
          {
            goto LABEL_45;
          }
        }
      }

LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_115;
      }
    }

LABEL_45:

    static AccessibilityChildBehavior.defaultCombine(childProperties:createsCustomActions:)(v26, 1, v68);
    LOBYTE(v67[0]) = (v65 & 4) != 0;
    MEMORY[0x1EEE9AC00](v27);
    v28 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI23AccessibilityPropertiesVGSayAH0H4NodeCGG_SayAH4TextVG_SayAH03AnyH6ActionVGts5NeverOTg503_s7f4UI23hi6VAA0C4j7CSayAA4k9VGSayAA03l2C6m23VGIgngoo_AC_AEtAH_AKts5N11OIegnrzr_TRAjmrUIgngoo_Tf1cn_nTf4ng_n(v4, v9, partial apply for closure #1 in static AccessibilityChildBehavior.Combine.combine(children:options:));

    v29 = *(v28 + 16);
    v66 = v28;
    v63 = v29;
    if (v29)
    {
      v69[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
      v5 = v69[0];
      v30 = (v28 + 40);
      do
      {
        v31 = *v30;
        v69[0] = v5;
        v33 = v5[2];
        v32 = v5[3];
        v34 = v33 + 1;

        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v5 = v69[0];
        }

        v5[2] = v34;
        v5[v33 + 4] = v31;
        v30 += 2;
        --v29;
      }

      while (v29);
      goto LABEL_52;
    }

    v35 = MEMORY[0x1E69E7CC0];
    v34 = *(MEMORY[0x1E69E7CC0] + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
LABEL_52:
      v36 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v36 >= v5[2])
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v37 = v5[v36 + 4];
        v38 = *(v37 + 16);
        v39 = *(v35 + 2);
        v40 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_100;
        }

        v41 = swift_isUniquelyReferenced_nonNull_native();
        if (v41 && v40 <= *(v35 + 3) >> 1)
        {
          if (!*(v37 + 16))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v39 <= v40)
          {
            v42 = v39 + v38;
          }

          else
          {
            v42 = v39;
          }

          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v42, 1, v35);
          if (!*(v37 + 16))
          {
LABEL_53:

            if (v38)
            {
              goto LABEL_101;
            }

            goto LABEL_54;
          }
        }

        if ((*(v35 + 3) >> 1) - *(v35 + 2) < v38)
        {
          goto LABEL_106;
        }

        swift_arrayInitWithCopy();

        if (v38)
        {
          v43 = *(v35 + 2);
          v44 = __OFADD__(v43, v38);
          v45 = v43 + v38;
          if (v44)
          {
            goto LABEL_108;
          }

          *(v35 + 2) = v45;
        }

LABEL_54:
        ++v36;
      }

      while (v34 != v36);
    }

    v69[0] = v35;
    lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
    AccessibilityProperties.subscript.setter();
    if (*(v4 + 2) < 2uLL)
    {
    }

    else
    {
      v46 = v63;
      if (v63)
      {
        v69[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
        v47 = 32;
        v5 = v69[0];
        do
        {
          v48 = *(v66 + v47);
          v69[0] = v5;
          v50 = v5[2];
          v49 = v5[3];

          if (v50 >= v49 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
            v5 = v69[0];
          }

          v5[2] = v50 + 1;
          v5[v50 + 4] = v48;
          v47 += 16;
          --v46;
        }

        while (v46);

        v51 = v5[2];
        if (v51)
        {
          goto LABEL_78;
        }
      }

      else
      {

        v5 = MEMORY[0x1E69E7CC0];
        v51 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v51)
        {
LABEL_78:
          v52 = 0;
          v53 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v52 >= v5[2])
            {
              goto LABEL_109;
            }

            v54 = v5[v52 + 4];
            v55 = *(v54 + 16);
            v56 = *(v53 + 2);
            v57 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              goto LABEL_110;
            }

            v58 = swift_isUniquelyReferenced_nonNull_native();
            if (v58 && v57 <= *(v53 + 3) >> 1)
            {
              if (!*(v54 + 16))
              {
                goto LABEL_79;
              }
            }

            else
            {
              if (v56 <= v57)
              {
                v59 = v56 + v55;
              }

              else
              {
                v59 = v56;
              }

              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58, v59, 1, v53);
              if (!*(v54 + 16))
              {
LABEL_79:

                if (v55)
                {
                  goto LABEL_111;
                }

                goto LABEL_80;
              }
            }

            if ((*(v53 + 3) >> 1) - *(v53 + 2) < v55)
            {
              goto LABEL_112;
            }

            swift_arrayInitWithCopy();

            if (v55)
            {
              v60 = *(v53 + 2);
              v44 = __OFADD__(v60, v55);
              v61 = v60 + v55;
              if (v44)
              {
                goto LABEL_113;
              }

              *(v53 + 2) = v61;
            }

LABEL_80:
            if (v51 == ++v52)
            {
              goto LABEL_97;
            }
          }
        }
      }

      v53 = MEMORY[0x1E69E7CC0];
LABEL_97:

      specialized Sequence.forEach(_:)(v53);
    }

    outlined init with copy of AccessibilityProperties(v68, v69);
    AccessibilityAttachment.init(properties:platformElement:)();
    outlined destroy of AccessibilityProperties(v68);
  }

  else
  {
LABEL_115:

    return AccessibilityAttachment.init()();
  }
}