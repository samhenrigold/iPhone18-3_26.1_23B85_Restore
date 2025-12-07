void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = type metadata accessor for UUID();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_14;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v25 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v10 = v25;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    if ((*a1)[7])
    {
      *(*(*v1[2] + 56) + 8 * v1[6]) = v2;
    }

    else
    {
      (*(v1[4] + 16))(v1[5], v1[1], v1[3]);
      specialized _NativeDictionary._insert(at:key:value:)();
    }
  }

  else if ((*a1)[7])
  {
    (*(v1[4] + 8))(*(*v1[2] + 48) + *(v1[4] + 72) * v1[6], v1[3]);
    specialized _NativeDictionary._delete(at:)();
  }

  v3 = v1[5];

  free(v3);

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v52 = a1;
  v53 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v54 = v8;
  v55 = 0;
  v56 = v11 & v9;
  v57 = a2;
  v58 = a3;

  specialized LazyMapSequence.Iterator.next()(&v48);
  if (!*(&v49 + 1))
  {
    goto LABEL_25;
  }

  v45 = v48;
  v46 = v49;
  v47 = v50;
  outlined init with take of Any(v51, v44);
  v12 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    specialized _NativeDictionary.copy()();
    result = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = result;
    outlined destroy of AnyHashable(&v45);
    v23 = (v21[7] + 32 * v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    outlined init with take of Any(v44, v23);
    goto LABEL_15;
  }

LABEL_13:
  v21[(result >> 6) + 8] |= 1 << result;
  v25 = v21[6] + 40 * result;
  v26 = v45;
  v27 = v46;
  *(v25 + 32) = v47;
  *v25 = v26;
  *(v25 + 16) = v27;
  result = outlined init with take of Any(v44, (v21[7] + 32 * result));
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v48);
    if (*(&v49 + 1))
    {
      v19 = 1;
      do
      {
        v45 = v48;
        v46 = v49;
        v47 = v50;
        outlined init with take of Any(v51, v44);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v17 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(&v45);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;
          outlined destroy of AnyHashable(&v45);
          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          outlined init with take of Any(v44, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = v38[6] + 40 * result;
          v40 = v45;
          v41 = v46;
          *(v39 + 32) = v47;
          *v39 = v40;
          *(v39 + 16) = v41;
          result = outlined init with take of Any(v44, (v38[7] + 32 * result));
          v42 = v38[2];
          v17 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v38[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v48);
      }

      while (*(&v49 + 1));
    }

LABEL_25:
    outlined consume of Set<String>.Iterator._Variant(v52);
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  specialized LazyMapSequence.Iterator.next()(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  outlined init with take of Any(v44, v42);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    specialized _NativeDictionary.copy()();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    outlined init with take of Any(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = outlined init with take of Any(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        outlined init with take of Any(v44, v42);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          outlined init with take of Any(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = outlined init with take of Any(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        specialized LazyMapSequence.Iterator.next()(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    outlined consume of Set<String>.Iterator._Variant(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  specialized LazyMapSequence.Iterator.next()(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  outlined init with take of Any(v44, v42);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    specialized _NativeDictionary.copy()();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    outlined init with take of Any(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = outlined init with take of Any(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        outlined init with take of Any(v44, v42);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          outlined init with take of Any(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = outlined init with take of Any(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        specialized LazyMapSequence.Iterator.next()(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError()
{
  result = lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError;
  if (!lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError;
  if (!lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError);
  }

  return result;
}

void type metadata completion function for ApplicationLauncher(uint64_t a1)
{
  type metadata accessor for AsyncStream<String>.Continuation?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ApplicationLauncher.revokeBackgroundAuthorization(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
}

uint64_t dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void type metadata accessor for AsyncStream<String>.Continuation?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<String>.Continuation?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<String>.Continuation?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ApplicationLauncher.LaunchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationLauncher.LaunchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in ApplicationLauncher.launchApplication(for:options:)(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t partial apply for closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t Sequence<>.asSet()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  swift_getAssociatedTypeWitness();
  return Set.init<A>(_:)();
}

uint64_t specialized XPCClient.withHost(body:errorHandler:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v14 = a5();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = a6;
  v15 = _Block_copy(aBlock);

  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v18;
    a1(&v20);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BackgroundSessionManagerClient.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BackgroundSessionManagerClient.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for BackgroundSessionManagerClient.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return BackgroundSessionManagerClient.delegate.modify;
}

uint64_t BackgroundSessionManagerClient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for BackgroundSessionManagerClient.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id BackgroundSessionManagerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *BackgroundSessionManagerClient.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[direct field offset for BackgroundSessionManagerClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v8, sel_init);
  v3 = &v2[direct field offset for XPCClient.connectionClosure];
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = closure #1 in BackgroundSessionManagerClient.init();
  v3[1] = 0;
  v6 = v2;
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v4, v5);

  return v6;
}

id closure #1 in BackgroundSessionManagerClient.init()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v1 = MEMORY[0x1B270FF70](0xD000000000000027, 0x80000001AEE2E9D0);
  v2 = [v0 initWithServiceName_];

  return v2;
}

char *@objc BackgroundSessionManagerClient.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  *&a1[direct field offset for BackgroundSessionManagerClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v9.receiver = a1;
  v9.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = &v3[direct field offset for XPCClient.connectionClosure];
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = closure #1 in BackgroundSessionManagerClient.init();
  v4[1] = 0;
  v7 = v3;
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v5, v6);

  return v7;
}

Swift::Void __swiftcall BackgroundSessionManagerClient.handleServerDisconnect()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + direct field offset for XPCClient.queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for client == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Server disconnected", v11, 2u);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  v12 = v1 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v1, &protocol witness table for BackgroundSessionManagerClient, ObjectType, v13);
    swift_unknownObjectRelease();
  }
}

uint64_t BackgroundSessionManagerClient.__ivar_destroyer()
{
  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + direct field offset for BackgroundSessionManagerClient.delegate);
  v1 = direct field offset for BackgroundSessionManagerClient.id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id BackgroundSessionManagerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc BackgroundSessionManagerClient.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak ActivitySessionManagerProtocol?(a1 + direct field offset for BackgroundSessionManagerClient.delegate);
  v2 = direct field offset for BackgroundSessionManagerClient.id;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t protocol witness for Identifiable.id.getter in conformance BackgroundSessionManagerClient@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for BackgroundSessionManagerClient.id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t BackgroundSessionManagerClient.prewarm(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManagerClient.prewarm(completion:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  v17[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t closure #1 in BackgroundSessionManagerClient.prewarm(completion:)(uint64_t a1, uint64_t (*a2)(void *a1), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = specialized XPCClient.connection.getter();
  v16 = partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.prewarm(completion:);
  v17 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v15 = &block_descriptor_98;
  v7 = _Block_copy(&aBlock);

  v8 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v7);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMd, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v16 = a2;
    v17 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v15 = &block_descriptor_101_0;
    v10 = _Block_copy(&aBlock);

    [v11 prewarmWithCompletion_];
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in BackgroundSessionManagerClient.begin(request:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *a1), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = specialized XPCClient.connection.getter();
  v18 = partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.begin(request:completion:);
  v19 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v17 = &block_descriptor_89_1;
  v9 = _Block_copy(&aBlock);

  v10 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMd, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v18 = a3;
    v19 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v17 = &block_descriptor_92;
    v12 = _Block_copy(&aBlock);

    [v13 beginWithRequest:a2 completion:v12];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BackgroundSessionManagerClient.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&v3[direct field offset for XPCClient.queue];
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  (*(v12 + 32))(v17 + v15, v14, v11);
  v18 = (v17 + v16);
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);
  v21 = v3;

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v10, v7, v20);
  _Block_release(v20);
  (*(v29 + 8))(v7, v5);
  (*(v27 + 8))(v10, v28);
}

uint64_t closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  (*(v8 + 16))(&v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a3;
  v12[1] = a4;

  specialized XPCClient.withHost(body:errorHandler:)(partial apply for closure #1 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:), v14, partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:), v11, specialized XPCClient.connection.getter, &block_descriptor_80, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMd, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMR);
}

void closure #1 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v9[3] = &block_descriptor_83_1;
  v8 = _Block_copy(v9);

  [v6 leaveWithIdentifier:isa completion:v8];
  _Block_release(v8);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);
  (*(v9 + 16))(v11, a2, v8);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315394;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a3;
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v31);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v30 = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v31);
    a3 = v29;

    *(v17 + 14) = v26;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Error leaving identifier %s: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return a3(a1);
}

uint64_t BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *&v4[direct field offset for XPCClient.queue];
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  (*(v11 + 32))(v16 + v14, v13, v10);
  v17 = v26;
  *(v16 + v15) = v25;
  v18 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = v27;
  *v18 = v17;
  v18[1] = v19;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_18;
  v20 = _Block_copy(aBlock);
  v21 = v4;

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v7, v20);
  _Block_release(v20);
  (*(v32 + 8))(v7, v22);
  (*(v29 + 8))(v9, v31);
}

uint64_t closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  (*(v10 + 16))(v12, a2, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  *(v15 + v14) = a3;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a4;
  v16[1] = a5;

  specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:), v19, partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:), v15);
}

void closure #1 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v9 = Set._bridgeToObjectiveC()().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v11[3] = &block_descriptor_74;
  v10 = _Block_copy(v11);

  [v7 updateMembersWithIdentifier:isa members:v9 completion:v10];
  _Block_release(v10);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.client);
  (*(v10 + 16))(v12, a2, v9);

  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a5;
    v18 = v17;
    v33 = swift_slowAlloc();
    v37 = v33;
    *v18 = 136315650;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = a4;
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v37);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v23 = Set.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v37);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2080;
    a4 = v35;
    v36 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v37);

    *(v18 + 24) = v29;
    _os_log_impl(&dword_1AEB26000, v15, v16, "Error updating members identifier %s: with members: %s error: %s", v18, 0x20u);
    v30 = v33;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  return a4(a1);
}

uint64_t BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *&v4[direct field offset for XPCClient.queue];
  (*(v13 + 16))(v15, a2, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = a1;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24;
  v21 = _Block_copy(aBlock);
  v22 = v4;
  v23 = a1;

  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v24 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v8, v21);
  _Block_release(v21);
  (*(v32 + 8))(v8, v24);
  (*(v30 + 8))(v11, v31);
}

uint64_t closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;

  specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:), v9, partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:), v7);
}

void closure #1 in closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v11[3] = &block_descriptor_68;
  v10 = _Block_copy(v11);

  [v8 updateShare:a2 activityID:isa completion:v10];
  _Block_release(v10);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManagerClient.prewarm(completion:)(void *a1, uint64_t (*a2)(void *), uint64_t a3, const char *a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.client);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  return a2(a1);
}

uint64_t protocol witness for BackgroundSessionManagerClientProtocol.delegate.setter in conformance BackgroundSessionManagerClient(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*protocol witness for BackgroundSessionManagerClientProtocol.delegate.modify in conformance BackgroundSessionManagerClient(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for BackgroundSessionManagerClient.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for BackgroundSessionManagerClientProtocol.delegate.modify in conformance BackgroundSessionManagerClient;
}

uint64_t BackgroundSessionManagerClient.begin(request:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v6[direct field offset for XPCClient.queue];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = v23;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v24;
  v18 = _Block_copy(aBlock);
  v19 = v6;
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v26);
}

uint64_t closure #1 in BackgroundSessionManagerClient.createPresenceSession(with:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *a1), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = specialized XPCClient.connection.getter();
  v18 = partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.createPresenceSession(with:completion:);
  v19 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v17 = &block_descriptor_59;
  v9 = _Block_copy(&aBlock);

  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMd, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v18 = a3;
    v19 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed (@guaranteed PresenceSessionConnectionInfo?, @guaranteed Error?) -> ();
    v17 = &block_descriptor_62;
    v12 = _Block_copy(&aBlock);

    [v13 createPresenceSessionWith:a2 completion:v12];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in BackgroundSessionManagerClient.createPresenceSession(with:completion:)(void *a1, uint64_t (*a2)(void, void *))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Error creating presence session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  return a2(0, a1);
}

uint64_t @objc BackgroundSessionManagerClient.begin(request:completion:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

Swift::Void __swiftcall BackgroundSessionManagerClient.update(activitySessions:)(Swift::OpaquePointer activitySessions)
{
  v3 = v1 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(v1, &protocol witness table for BackgroundSessionManagerClient, activitySessions._rawValue, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

uint64_t BackgroundSessionManagerClient.sessionDidRejectKeyRecoveryRequest(sessionID:)(uint64_t a1)
{
  v3 = v1 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BackgroundSessionManagerClient.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a1, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(v3, v0 + v2, v5, v6);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(v4, v0 + v2, v5, v7, v8);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(v3, v4, v0 + v2, v6, v7);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t type metadata accessor for BackgroundSessionManagerClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for BackgroundSessionManagerClient;
  if (!type metadata singleton initialization cache for BackgroundSessionManagerClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for BackgroundSessionManagerClient(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TUHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUHandle and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #2 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(a1, v1 + v4, v6, v8, v9);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return closure #2 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(a1, v1 + v4, v6, v7);
}

uint64_t type metadata completion function for PresenceStatus(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for PresenceStatus(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for PresenceStatus(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void specialized FastSyncAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v9 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, aBlock);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Logged coreanalytics event %s %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v14 = MEMORY[0x1B270FF70](a1, a2);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  aBlock[4] = partial apply for closure #1 in ActivitySession.logDurationMetric(_:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_7;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t specialized FastSyncAnalyticsReporter.collectPresentParticipants(_:_:_:maxAllowedParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  *(inited + 32) = 0x5F6E6F6973736573;
  *(inited + 40) = 0xEA00000000006469;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v13 = MEMORY[0x1B270FF70](a1, a2);
  v14 = [v12 initWithString_];

  *(inited + 48) = v14;
  *(inited + 56) = 0x695F656C646E7562;
  *(inited + 64) = 0xE900000000000064;
  v15 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v16 = a4;
  v17 = MEMORY[0x1B270FF70](a3, a4);
  v18 = [v15 initWithString_];

  *(inited + 72) = v18;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001AEE323D0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 104) = 0xD000000000000019;
  *(inited + 112) = 0x80000001AEE323F0;
  if (a6)
  {
    v19 = 7562585;
  }

  else
  {
    v19 = 28494;
  }

  if (a6)
  {
    v20 = 0xE300000000000000;
  }

  else
  {
    v20 = 0xE200000000000000;
  }

  v21 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v22 = MEMORY[0x1B270FF70](v19, v20);

  v23 = [v21 initWithString_];

  *(inited + 120) = v23;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  specialized FastSyncAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(a3, v16, v24);
}

uint64_t specialized FastSyncAnalyticsReporter.collectInvitedMembers(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a5 + 16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE09B00;
  *(inited + 32) = 0x5F6E6F6973736573;
  *(inited + 40) = 0xEA00000000006469;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v12 = MEMORY[0x1B270FF70](a1, a2);
  v13 = [v11 initWithString_];

  *(inited + 48) = v13;
  *(inited + 56) = 0x695F656C646E7562;
  *(inited + 64) = 0xE900000000000064;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v15 = MEMORY[0x1B270FF70](a3, a4);
  v16 = [v14 initWithString_];

  *(inited + 72) = v16;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001AEE323B0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  specialized FastSyncAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(a3, a4, v17);
}

BOOL static PluginAttachmentLedgerTopic.State.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 < v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 < v10;
}

uint64_t PluginAttachmentLedgerTopic.Configuration.init(proto:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = 1.0;
  if (v3)
  {
    v5 = v3 / 1000.0;
  }

  v6 = a1[2];
  v7 = a1[3];
  result = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  v9 = v7;
  if (!v7)
  {
    v9 = 1.0;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = 3;
  }

  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = 2;
  }

  *a2 = v11;
  *(a2 + 8) = v5;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0x4024000000000000;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.description.getter()
{
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x1B2710020](0xD000000000000022, 0x80000001AEE32410);
  v12 = v0;
  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v1);

  v2 = MEMORY[0x1B2710020](0x3D6574617473202CLL, 0xE800000000000000);
  (*(*v0 + 288))(&v12, v2);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = PluginAttachmentLedgerTopic.State.description.getter();
  MEMORY[0x1B2710020](v10);
  outlined consume of PluginAttachmentLedgerTopic.State(v3, v4, v5, v6, v7, v8, v9);

  MEMORY[0x1B2710020](0x3D656D616E202CLL, 0xE700000000000000);
  MEMORY[0x1B2710020](v0[14], v0[15]);
  return v19;
}

void __swiftcall PluginAttachmentLedgerTopic.Configuration.init(maxSubscribeRetries:subscribeRetryInterval:maxDataCryptorRetries:dataCryptorRetryInterval:gracefulShutdownWindowInterval:)(CopresenceCore::PluginAttachmentLedgerTopic::Configuration *__return_ptr retstr, Swift::Int maxSubscribeRetries, Swift::Double subscribeRetryInterval, Swift::Int maxDataCryptorRetries, Swift::Double dataCryptorRetryInterval, Swift::Double gracefulShutdownWindowInterval)
{
  retstr->maxSubscribeRetries = maxSubscribeRetries;
  retstr->subscribeRetryInterval = subscribeRetryInterval;
  retstr->maxDataCryptorRetries = maxDataCryptorRetries;
  retstr->dataCryptorRetryInterval = dataCryptorRetryInterval;
  retstr->gracefulShutdownWindowInterval = gracefulShutdownWindowInterval;
}

uint64_t PluginAttachmentLedgerTopic.__allocating_init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t UploadToken.token.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UploadToken.storageLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UploadToken(0) + 24);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UploadToken.accountID.getter()
{
  v1 = *(v0 + *(type metadata accessor for UploadToken(0) + 28));

  return v1;
}

uint64_t UploadToken.init(token:expirationDate:storageLocation:accountID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for UploadToken(0);
  v13 = v12[5];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 32))(&a7[v13], a3, v14);
  v15 = v12[6];
  v16 = type metadata accessor for URL();
  result = (*(*(v16 - 8) + 32))(&a7[v15], a4, v16);
  v18 = &a7[v12[7]];
  *v18 = a5;
  *(v18 + 1) = a6;
  return result;
}

uint64_t protocol witness for Token.accountID.getter in conformance UploadToken(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t UploadToken.expirationDate.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DownloadToken.accountID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DownloadToken(0) + 24));

  return v1;
}

uint64_t DownloadToken.init(token:expirationDate:accountID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for DownloadToken(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Date();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t protocol witness for Token.expirationDate.getter in conformance UploadToken@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Token.accountID.getter in conformance DownloadToken(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t UploadToken.init(from:requestTime:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v47 = a2;
  v4 = type metadata accessor for Date();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v35 - v17;
  v18 = a1;
  URL.init(string:)();
  v19 = *(v13 + 48);
  v40 = v12;
  if (v19(v11, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    (*(v45 + 8))(v47, v46);
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  else
  {
    v22 = a1[3];
    v39 = a1[2];
    v48 = v39;
    v49 = v22;
    v23 = v41;
    (*(v6 + 104))(v8, *MEMORY[0x1E6968F70], v41);
    lazy protocol witness table accessor for type String and conformance String();
    v38 = v22;
    swift_bridgeObjectRetain_n();
    URL.appending<A>(component:directoryHint:)();
    (*(v6 + 8))(v8, v23);

    v24 = v11;
    v25 = v40;
    (*(v13 + 8))(v24, v40);
    v37 = *(v13 + 32);
    v37(v44, v16, v25);
    v26 = a1[1];
    v41 = *a1;
    v36 = v26;
    v27 = v45;
    v28 = v46;
    v29 = v47;
    (*(v45 + 16))(v42, v47, v46);
    v30 = type metadata accessor for UploadToken(0);

    v31 = v43;
    Date.init(timeInterval:since:)();
    (*(v27 + 8))(v29, v28);
    v37(v31 + *(v30 + 24), v44, v25);
    v32 = v36;
    *v31 = v41;
    v31[1] = v32;
    v33 = (v31 + *(v30 + 28));
    v34 = v38;
    *v33 = v39;
    v33[1] = v34;
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v18, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }
}

uint64_t DownloadToken.init(from:requestTime:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = a1[2];
  v9 = a1[3];
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = type metadata accessor for DownloadToken(0);

  Date.init(timeInterval:since:)();
  (*(v7 + 8))(a2, v6);
  v13 = a1[4];
  v12 = a1[5];

  result = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
  *a3 = v10;
  a3[1] = v9;
  v15 = (a3 + *(v11 + 24));
  *v15 = v13;
  v15[1] = v12;
  return result;
}

uint64_t Attachment.attachment.getter()
{
  type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
  return static Message.with(_:)();
}

void *closure #1 in Attachment.attachment.getter(uint64_t *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnencryptedAttachment(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = UUID.uuid.getter();
  v26 = v10;
  v11 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(&v25, &v27);
  v13 = v12;
  outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v11;
  a1[1] = v13;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v24 - 2) = v15;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata);
    static Message.with(_:)();
    v16 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
    outlined destroy of NSObject?(a1 + v16, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v6, a1 + v16, type metadata accessor for AttachmentLedger_MMCSMetadata);
    (*(v24 + 56))(a1 + v16, 0, 1, v4);
    v17 = &v9[*(v7 + 20)];
    v19 = v17[1];
    v25 = *v17;
    v18 = v25;
    v26 = v19;
    outlined copy of Data?(v25, v19);
    v20 = Attachment.Metadata.sealedMetadata(with:)(v9);
    v22 = v21;
    outlined consume of Data?(v18, v19);
    outlined consume of Data._Representation(a1[5], a1[6]);
    a1[5] = v20;
    a1[6] = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v23 = v25;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for UnencryptedAttachment);

    a1[2] = v23;
  }

  return result;
}

uint64_t Attachment.MMCSMetadata.metadata.getter()
{
  type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata);
  return static Message.with(_:)();
}

char *Attachment.Metadata.sealedMetadata(with:)(unint64_t a1)
{
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v55 - v8;
  v9 = type metadata accessor for AES.GCM.SealedBox();
  v62 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v55 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  v21 = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *v1;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedgerMetadata_AttachmentMetadata);
  static Message.with(_:)();
  v24 = Message.serializedData(partial:)();
  v26 = v25;
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v23, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  if (!v2)
  {
    v58 = v12;
    v59 = v15;
    v60 = v18;
    v27 = v24;
    v29 = v62;
    v28 = v63;
    v66[0] = v27;
    v66[1] = v26;
    v30 = type metadata accessor for AES.GCM.Nonce();
    v31 = v64;
    (*(*(v30 - 8) + 56))(v64, 1, 1, v30);
    lazy protocol witness table accessor for type Data and conformance Data();
    static AES.GCM.seal<A>(_:using:nonce:)();
    outlined destroy of NSObject?(v31, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    v64 = v27;
    v67 = v26;
    v32 = AES.GCM.SealedBox.combined.getter();
    if (v33 >> 60 == 15)
    {
      v57 = v20;
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Log.attachmentLedgerTopic);
      v35 = v29;
      v36 = *(v29 + 16);
      v37 = v60;
      v36(v60, v57, v9);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v56 = v39;
        v40 = v37;
        v41 = v9;
        v42 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v66[0] = v55;
        *v42 = 136315138;
        v43 = v28;
        v36(v28, v40, v41);
        (*(v35 + 56))(v28, 0, 1, v41);
        v44 = v28;
        v45 = v61;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v44, v61, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
        if ((*(v35 + 48))(v45, 1, v41) == 1)
        {
          v46 = 0xE300000000000000;
          v47 = 7104878;
        }

        else
        {
          v49 = v59;
          (*(v35 + 32))(v59, v45, v41);
          v36(v58, v49, v41);
          v47 = String.init<A>(reflecting:)();
          v46 = v50;
          (*(v35 + 8))(v49, v41);
        }

        outlined destroy of NSObject?(v43, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
        v48 = *(v35 + 8);
        v12 = ((v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v48(v60, v41);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, v66);

        *(v42 + 4) = v51;
        _os_log_impl(&dword_1AEB26000, v38, v56, "Failed to get combined data from serializedMetadata SealedBox %s", v42, 0xCu);
        v52 = v55;
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x1B27120C0](v52, -1, -1);
        MEMORY[0x1B27120C0](v42, -1, -1);

        v9 = v41;
      }

      else
      {

        v48 = *(v29 + 8);
        v12 = ((v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v48(v37, v9);
      }

      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v53 = 3;
      swift_willThrow();
      outlined consume of Data._Representation(v64, v67);
      v48(v57, v9);
    }

    else
    {
      v12 = v32;
      (*(v29 + 8))(v20, v9);
      outlined consume of Data._Representation(v64, v67);
    }
  }

  return v12;
}

uint64_t closure #1 in Attachment.MMCSMetadata.metadata.getter(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v47 = a2;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData, &protocol conformance descriptor for AttachmentLedger_MMCSMetadata.BlobData);
  result = static Message.with(_:)();
  if (!v2)
  {
    v48 = 0;
    v45 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    v13 = *(v45 + 36);
    outlined destroy of NSObject?(&a1[v13], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v11, &a1[v13], type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    v15 = *(v6 + 56);
    v14 = v6 + 56;
    v46 = v15;
    v15(&a1[v13], 0, 1, v5);
    v16 = type metadata accessor for Attachment.MMCSMetadata(0);
    v17 = v16;
    v18 = (a2 + *(v16 + 24));
    v19 = v18[2];
    if (v19 >> 60 != 15 && (v19 & 0xF000000000000000) != 0xB000000000000000)
    {
      v21 = v18[1];
      v42 = *v18;
      v43 = &v41;
      MEMORY[0x1EEE9AC00](v16);
      v44 = v14;
      *(&v41 - 4) = v22;
      *(&v41 - 3) = v21;
      *(&v41 - 2) = v19;
      outlined copy of Data._Representation(v21, v19);
      v23 = v48;
      static Message.with(_:)();
      v48 = v23;
      outlined consume of Attachment.MMCSMetadata.UploadStatus(v42, v21, v19);
      v24 = *(v45 + 40);
      outlined destroy of NSObject?(&a1[v24], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v9, &a1[v24], type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      v46(&a1[v24], 0, 1, v5);
    }

    v25 = (a2 + v17[7]);
    v27 = *v25;
    v26 = v25[1];

    *a1 = v27;
    *(a1 + 1) = v26;
    v28 = URL.absoluteString.getter();
    v30 = v29;

    *(a1 + 2) = v28;
    *(a1 + 3) = v30;
    v31 = (a2 + v17[9]);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(a1 + 4);
    v35 = *(a1 + 5);
    outlined copy of Data._Representation(*v31, v33);
    outlined consume of Data._Representation(v34, v35);
    *(a1 + 4) = v32;
    *(a1 + 5) = v33;
    v36 = (a2 + v17[10]);
    v37 = *v36;
    v38 = v36[1];
    v39 = *(a1 + 6);
    v40 = *(a1 + 7);
    outlined copy of Data._Representation(*v36, v38);
    result = outlined consume of Data._Representation(v39, v40);
    *(a1 + 6) = v37;
    *(a1 + 7) = v38;
  }

  return result;
}

uint64_t closure #1 in closure #1 in Attachment.MMCSMetadata.metadata.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AES.GCM.SealedBox();
  v44 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v38[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38[-v12];
  v14 = type metadata accessor for Attachment.MMCSMetadata(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = AES.GCM.SealedBox.combined.getter();
  if (v18 >> 60 == 15)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.attachmentLedgerTopic);
    outlined init with copy of Attachment.MMCSMetadata(a2, v16, type metadata accessor for Attachment.MMCSMetadata);
    v20 = Logger.logObject.getter();
    LODWORD(v21) = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v44;
    if (v22)
    {
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      v41 = v24;
      *v24 = 136315138;
      v25 = *(v23 + 16);
      v25(v13, v16, v4);
      (*(v23 + 56))(v13, 0, 1, v4);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v11, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
      if ((*(v23 + 48))(v11, 1, v4) == 1)
      {
        v26 = 0xE300000000000000;
        v27 = 7104878;
      }

      else
      {
        v31 = *(v23 + 32);
        v39 = v21;
        v21 = v43;
        v31(v43, v11, v4);
        v25(v42, v21, v4);
        v27 = String.init<A>(reflecting:)();
        v26 = v32;
        v33 = v21;
        LOBYTE(v21) = v39;
        (*(v23 + 8))(v33, v4);
      }

      outlined destroy of NSObject?(v13, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for Attachment.MMCSMetadata);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v45);

      v35 = v41;
      *(v41 + 1) = v34;
      _os_log_impl(&dword_1AEB26000, v20, v21, "Failed to get combined data from encryptedAssetSkeleton SealedBox %s", v35, 0xCu);
      v36 = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1B27120C0](v36, -1, -1);
      MEMORY[0x1B27120C0](v35, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for Attachment.MMCSMetadata);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v37 = 3;
    return swift_willThrow();
  }

  else
  {
    v28 = v17;
    v29 = v18;
    result = outlined consume of Data._Representation(*(a1 + 8), *(a1 + 16));
    *(a1 + 8) = v28;
    *(a1 + 16) = v29;
  }

  return result;
}

uint64_t Attachment.MMCSMetadata.UploadStatus.status.getter()
{
  v1 = 2;
  if (*(v0 + 16) >> 60 == 11)
  {
    v1 = 3;
  }

  if (*(v0 + 16) >> 60 == 15)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

Swift::Int PluginAttachmentLedgerTopic.RetryErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t PluginAttachmentLedgerTopic.ServerError.reason.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t PluginAttachmentLedgerTopic.ServerError.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(23);

  MEMORY[0x1B2710020](a1, a2);
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0xD000000000000014;
}

Swift::Int PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

__n128 PluginAttachmentLedgerTopic.State.ShutdownInfo.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

void __swiftcall PluginAttachmentLedgerTopic.State.ShutdownInfo.init(reason:pendingAttachments:config:)(CopresenceCore::PluginAttachmentLedgerTopic::State::ShutdownInfo *__return_ptr retstr, CopresenceCore::PluginAttachmentLedgerTopic::State::ShutdownInfo::Reason reason, Swift::OpaquePointer pendingAttachments, CopresenceCore::PluginAttachmentLedgerTopic::Configuration *config)
{
  maxSubscribeRetries = config->maxSubscribeRetries;
  subscribeRetryInterval = config->subscribeRetryInterval;
  maxDataCryptorRetries = config->maxDataCryptorRetries;
  retstr->reason = *reason;
  retstr->pendingAttachments = pendingAttachments;
  retstr->config.maxSubscribeRetries = maxSubscribeRetries;
  retstr->config.subscribeRetryInterval = subscribeRetryInterval;
  retstr->config.maxDataCryptorRetries = maxDataCryptorRetries;
  *&retstr->config.dataCryptorRetryInterval = *&config->dataCryptorRetryInterval;
}

uint64_t PluginAttachmentLedgerTopic.State.RetryInfo.retryTask.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.State.RetryInfo.init(attempt:retryTask:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.State.comparativeResult.getter()
{
  v1 = v0[5];
  if (!(v1 >> 62))
  {
    return 1;
  }

  if (v1 >> 62 == 1)
  {
    return 4;
  }

  v3 = v0[3];
  v4 = v0[4] | v0[6];
  v5 = v0[2] | v0[1];
  if (v1 == 0x8000000000000000 && (v4 | *v0 | v3 | v5) == 0)
  {
    return 0;
  }

  if (v4 | v3 | v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v0 == 1;
  }

  if (v7 && v1 == 0x8000000000000000)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

BOOL static PluginAttachmentLedgerTopic.State.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 == v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 == v10;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 < v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 < v10;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      v4 = 4;
      v5 = v2 >> 62;
      if (!(v2 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a2;
      v7 = a2[3];
      v8 = a2[4] | a2[6];
      v9 = a2[2] | a2[1];
      if (v3 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v3 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v2 >> 62;
        if (!(v2 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v2 >> 62;
        if (!(v2 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 >= v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v2 >> 62;
    if (!(v2 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a1;
    v14 = a1[3];
    v15 = a1[2] | a1[1];
    v16 = a1[4] | a1[6];
    if (v2 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v2 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 >= v10;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 >= v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 >= v10;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      v4 = 4;
      v5 = v2 >> 62;
      if (!(v2 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a2;
      v7 = a2[3];
      v8 = a2[4] | a2[6];
      v9 = a2[2] | a2[1];
      if (v3 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v3 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v2 >> 62;
        if (!(v2 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v2 >> 62;
        if (!(v2 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 < v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v2 >> 62;
    if (!(v2 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a1;
    v14 = a1[3];
    v15 = a1[2] | a1[1];
    v16 = a1[4] | a1[6];
    if (v2 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v2 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 < v10;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 == v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 == v10;
}

uint64_t PluginAttachmentLedgerTopic.participants.getter()
{

  CurrentValueSubject.value.getter();

  return v1;
}

uint64_t PluginAttachmentLedgerTopic.participants.setter(uint64_t a1)
{

  CurrentValueSubject.send(_:)();
}

uint64_t (*PluginAttachmentLedgerTopic.participants.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + 16);

  CurrentValueSubject.value.getter();
  return PersonalPresenceDataSource.presentDevices.modify;
}

uint64_t key path setter for PluginAttachmentLedgerTopic.state : PluginAttachmentLedgerTopic(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v9 = *(*v8 + 296);
  outlined copy of PluginAttachmentLedgerTopic.State(v11[0], v2, v3, v4, v5, v6, v7);
  return v9(v11);
}

uint64_t PluginAttachmentLedgerTopic.state.getter()
{

  CurrentValueSubject.value.getter();
}

uint64_t PluginAttachmentLedgerTopic.state.setter(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 6);

  CurrentValueSubject.send(_:)();
  outlined consume of PluginAttachmentLedgerTopic.State(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
}

void (*PluginAttachmentLedgerTopic.state.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  *a1 = v3;
  *(v3 + 112) = *(v1 + 24);

  CurrentValueSubject.value.getter();
  return PluginAttachmentLedgerTopic.state.modify;
}

void PluginAttachmentLedgerTopic.state.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[7] = v4;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v7;
  v3[11] = v8;
  v3[12] = v9;
  v3[13] = v10;
  if (a2)
  {
    outlined copy of PluginAttachmentLedgerTopic.State(v4, v5, v6, v7, v8, v9, v10);
    CurrentValueSubject.send(_:)();
    outlined consume of PluginAttachmentLedgerTopic.State(v3[7], v3[8], v3[9], v3[10], v3[11], v3[12], v3[13]);

    outlined consume of PluginAttachmentLedgerTopic.State(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6]);
  }

  else
  {
    CurrentValueSubject.send(_:)();
    outlined consume of PluginAttachmentLedgerTopic.State(v3[7], v3[8], v3[9], v3[10], v3[11], v3[12], v3[13]);
  }

  free(v3);
}

void *PluginAttachmentLedgerTopic.shutdownReason.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void PluginAttachmentLedgerTopic.shutdownReason.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t key path setter for PluginAttachmentLedgerTopic.internalState : PluginAttachmentLedgerTopic(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v9 = *(*v8 + 352);
  outlined copy of PluginAttachmentLedgerTopic.State(v11[0], v2, v3, v4, v5, v6, v7);
  return v9(v11);
}

uint64_t PluginAttachmentLedgerTopic.internalState.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v40 = v10;
    v12 = v11;
    v41 = swift_slowAlloc();
    v49[0] = v41;
    *v12 = 136315394;
    v39 = v9;
    v13 = PluginAttachmentLedgerTopic.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v49);

    v38 = v12;
    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    swift_beginAccess();
    v16 = v1[5];
    v17 = v1[6];
    v18 = v1[7];
    v19 = v1[8];
    v21 = v1[9];
    v20 = v1[10];
    v22 = v1[11];
    v42 = v16;
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v21;
    v47 = v20;
    v48 = v22;
    outlined copy of PluginAttachmentLedgerTopic.State(v16, v17, v18, v19, v21, v20, v22);
    v23 = PluginAttachmentLedgerTopic.State.description.getter();
    v25 = v24;
    outlined consume of PluginAttachmentLedgerTopic.State(v16, v17, v18, v19, v21, v20, v22);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v49);

    v27 = v38;
    *(v38 + 14) = v26;
    v9 = v39;
    _os_log_impl(&dword_1AEB26000, v39, v40, "%s updated state new-state=%s", v27, 0x16u);
    v28 = v41;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v28, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  swift_beginAccess();
  v29 = v1[10];
  if (v29 >> 62 == 1)
  {
    PluginAttachmentLedgerTopic.handleShutdown()();
    v29 = v1[10];
  }

  v30 = v1[6];
  v31 = v1[7];
  v32 = v1[8];
  v33 = v1[9];
  v34 = v1[11];
  v42 = v1[5];
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v47 = v29;
  v48 = v34;
  v35 = *(*v1 + 296);
  outlined copy of PluginAttachmentLedgerTopic.State(v42, v30, v31, v32, v33, v29, v34);
  return v35(&v42);
}

void PluginAttachmentLedgerTopic.handleShutdown()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315138;
    v13 = PluginAttachmentLedgerTopic.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEB26000, v9, v10, "%s handling shutdown", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  LOBYTE(v22[0]) = 1;

  PassthroughSubject.send(completion:)();

  *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable) = 0;

  v17 = (*(*v1 + 368))(v16);
  if (v17)
  {
    v18 = v17;
    v19 = type metadata accessor for UploadToken(0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B2710400](v18, v19, v20, MEMORY[0x1E69E7288]);
  }

  swift_beginAccess();
  v1[12] = 0;

  PluginAttachmentLedgerTopic.uploadToken.didset();
}

uint64_t PluginAttachmentLedgerTopic.internalState.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return outlined copy of PluginAttachmentLedgerTopic.State(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t PluginAttachmentLedgerTopic.internalState.setter(uint64_t a1)
{
  v13 = *(a1 + 32);
  v3 = *(a1 + 48);
  swift_beginAccess();
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = *(a1 + 16);
  *(v1 + 5) = *a1;
  *(v1 + 7) = v11;
  *(v1 + 9) = v13;
  v1[11] = v3;
  outlined consume of PluginAttachmentLedgerTopic.State(v4, v5, v6, v7, v8, v9, v10);
  return PluginAttachmentLedgerTopic.internalState.didset();
}

uint64_t (*PluginAttachmentLedgerTopic.internalState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PluginAttachmentLedgerTopic.internalState.modify;
}

uint64_t PluginAttachmentLedgerTopic.internalState.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return PluginAttachmentLedgerTopic.internalState.didset();
  }

  return result;
}

void key path setter for PluginAttachmentLedgerTopic.uploadToken : PluginAttachmentLedgerTopic(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;

  PluginAttachmentLedgerTopic.uploadToken.didset();
}

void PluginAttachmentLedgerTopic.uploadToken.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v1;
    v17 = v12;
    *v11 = 136315394;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 112), *(v1 + 120), &v17);
    _os_log_impl(&dword_1AEB26000, v9, v10, "Topic %s name==%s updated its uploadToken task", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }
}

uint64_t PluginAttachmentLedgerTopic.name.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

__n128 PluginAttachmentLedgerTopic.config.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  result = *(v1 + 152);
  *(a1 + 24) = result;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.config.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = swift_beginAccess();
  v1[16] = v2;
  v1[17] = v3;
  v1[18] = v4;
  v1[19] = v5;
  v1[20] = v6;
  return result;
}

void PluginAttachmentLedgerTopic.subscribeStreamInput.willset(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput) == a1)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.attachmentLedgerTopic);

    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = PluginAttachmentLedgerTopic.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1AEB26000, oslog, v17, "%s trying to update the same value twice.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136315650;
      v7 = PluginAttachmentLedgerTopic.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v24);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v24);

      *(v5 + 14) = v12;
      *(v5 + 22) = 2080;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

      *(v5 + 24) = v15;
      _os_log_impl(&dword_1AEB26000, v3, v4, "%s updating subscribeStream input from %s to %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v6, -1, -1);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    LOBYTE(v24) = 1;

    PassthroughSubject.send(completion:)();
  }
}

uint64_t PluginAttachmentLedgerTopic.pendingAttachments.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_pendingAttachments;
  swift_beginAccess();
  *(v1 + v7) = a1;

  v8 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*PluginAttachmentLedgerTopic.pendingAttachments.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  swift_beginAccess();
  return PluginAttachmentLedgerTopic.pendingAttachments.modify;
}

void PluginAttachmentLedgerTopic.pendingAttachments.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = *(v3[3] + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
    *v4 = v7;
    v8 = v4;
    (*(v6 + 104))();
    v9 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v8, v5);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v3[6];
  }

  free(v4);

  free(v3);
}

uint64_t PluginAttachmentLedgerTopic.attachmentStatusACKHandlers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentStatusACKHandlers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PluginAttachmentLedgerTopic.attachments.getter()
{
  swift_beginAccess();

  CurrentValueSubject.value.getter();

  return v1;
}

uint64_t PluginAttachmentLedgerTopic.attachments.setter(uint64_t a1)
{
  swift_beginAccess();

  CurrentValueSubject.send(_:)();
}

void (*PluginAttachmentLedgerTopic.attachments.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);

  CurrentValueSubject.value.getter();
  return PluginAttachmentLedgerTopic.attachments.modify;
}

void PluginAttachmentLedgerTopic.attachments.modify(void **a1, char a2)
{
  v2 = *a1;
  *(*a1 + 4) = *(*a1 + 3);
  if (a2)
  {

    CurrentValueSubject.send(_:)();
  }

  else
  {
    CurrentValueSubject.send(_:)();
  }

  free(v2);
}

uint64_t PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, void *a6, void *a7)
{
  v8 = v7;
  v83 = a7;
  v79 = a6;
  v88 = a4;
  v78 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v63 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v63 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMR);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore023AttachmentLedger_UpdateF7RequestV_ScCyAE0fg1_hF8ResponseVs5Error_pGt__GMd, &_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore023AttachmentLedger_UpdateF7RequestV_ScCyAE0fg1_hF8ResponseVs5Error_pGt__GMR);
  v84 = *(v16 - 8);
  v85 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  v86 = *(v18 - 8);
  v87 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v63 - v23;
  v76 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v27 = *a5;
  v28 = a5[1];
  v29 = a5[2];
  v30 = a5[3];
  v31 = a5[4];
  v32 = MEMORY[0x1E69E7CC8];
  *&aBlock = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDys6UInt64V14CopresenceCore27PluginAttachmentLedgerTopicC11ParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V14CopresenceCore27PluginAttachmentLedgerTopicC11ParticipantVGs5NeverOGMR);
  swift_allocObject();
  *(v8 + 16) = CurrentValueSubject.init(_:)();
  v93 = 0;
  aBlock = 0u;
  v92 = 0u;
  v94 = xmmword_1AEE0C1F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
  swift_allocObject();
  *(v8 + 24) = CurrentValueSubject.init(_:)();
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 80) = 0x8000000000000000;
  v33 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMR);
  swift_allocObject();
  *(v8 + v33) = PassthroughSubject.init()();
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable) = 0;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamRetryAttempts) = 0;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_currentKnownSeqNo) = 0;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentListeners) = v32;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_cancellables) = MEMORY[0x1E69E7CD0];
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_pendingAttachments) = v32;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentStatusACKHandlers) = v32;
  v34 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  v71 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  v35 = MEMORY[0x1E69E7CC0];
  *&aBlock = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  swift_allocObject();
  *(v8 + v34) = CurrentValueSubject.init(_:)();
  *(v8 + 120) = a2;
  *(v8 + 128) = v27;
  *(v8 + 136) = v28;
  *(v8 + 144) = v29;
  *(v8 + 152) = v30;
  *(v8 + 160) = v31;
  v36 = v78;
  *(v8 + 104) = v79;
  *(v8 + 112) = v36;
  v79 = a3;
  outlined init with copy of UserNotificationCenter(a3, v8 + 168);
  outlined init with copy of UserNotificationCenter(v88, v8 + 208);
  v37 = type metadata accessor for OS_dispatch_queue();
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(30);

  *&aBlock = 0xD00000000000001CLL;
  *(&aBlock + 1) = 0x80000001AEE32460;
  v78 = a2;
  MEMORY[0x1B2710020](v36, a2);
  static DispatchQoS.unspecified.getter();
  *&aBlock = v35;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  v38 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v75 + 104))(v74, *MEMORY[0x1E69E8090], v76);
  v39 = v77;
  v76 = v37;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v40 = v71;
  swift_beginAccess();

  v90 = v38;
  swift_allocObject();
  *(v8 + v40) = CurrentValueSubject.init(_:)();
  v41 = v80;
  swift_endAccess();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  v43 = *(v42 - 8);
  (*(v43 + 56))(v39, 1, 1, v42);
  (*(v84 + 104))(v82, *MEMORY[0x1E69E8650], v85);
  v89 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMR);
  v44 = v81;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v86 + 32))(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationStream, v44, v87);
  v45 = v39;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v39, v41, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMR);
  result = (*(v43 + 48))(v41, 1, v42);
  if (result != 1)
  {

    (*(v43 + 32))(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationListener, v41, v42);
    v47 = *(v8 + 232);
    v48 = *(v8 + 240);
    __swift_project_boxed_opaque_existential_1((v8 + 208), v47);
    v49 = (*(v48 + 16))(v47, v48);
    v50 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue;
    v90 = *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
    v51 = v90;
    *&aBlock = v49;
    v52 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v53 = v64;
    (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
    v54 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UUID, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
    v55 = v65;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v53, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
    v56 = v68;
    v57 = v67;
    Publisher.dropFirst(_:)();
    (*(v66 + 8))(v55, v57);
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Drop<Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMR, MEMORY[0x1E695BD78]);
    v58 = v70;
    Publisher<>.sink(receiveValue:)();

    (*(v69 + 8))(v56, v58);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v59 = *(v8 + v50);
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for closure #3 in PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:);
    *(v60 + 24) = v8;
    v93 = _sIg_Ieg_TRTA_0;
    *&v94 = v60;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v92 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v92 + 1) = &block_descriptor_8;
    v61 = _Block_copy(&aBlock);
    v62 = v59;

    dispatch_sync(v62, v61);
    _Block_release(v61);

    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if ((v61 & 1) == 0)
    {
      outlined destroy of NSObject?(v45, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMR);

      return v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of NSObject?(a2, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.attachmentLedgerTopic);
  (*(v8 + 16))(v10, a1, v7);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 136315394;
    v22 = PluginAttachmentLedgerTopic.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v34);
    v33 = v6;
    v25 = v24;

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v8 + 8))(v10, v7);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v34);
    v6 = v33;

    *(v20 + 14) = v29;
    _os_log_impl(&dword_1AEB26000, v18, v19, "[Cryptor] %s notified of local encryptionID update. encryptionID=%s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v21, -1, -1);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v6, &async function pointer to partial apply for closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:), v31, MEMORY[0x1E69E7CA8] + 8);
}

void closure #3 in PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1)
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 136315394;
    v8 = PluginAttachmentLedgerTopic.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    v11 = *(a1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
    *(v5 + 14) = v11;
    *v6 = v11;
    v12 = v11;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%s initialized on queue=%@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  PluginAttachmentLedgerTopic.bootstrap()();
}

void PluginAttachmentLedgerTopic.bootstrap()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315394;
    v13 = PluginAttachmentLedgerTopic.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v20 = (*(*v1 + 632))(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Bootstrapping %s with initialAttachments: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  PluginAttachmentLedgerTopic.subscribe()();
}

uint64_t PluginAttachmentLedgerTopic.deinit()
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = PluginAttachmentLedgerTopic.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Deinit %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v15 = 1;

  PassthroughSubject.send(completion:)();

  *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable) = 0;

  outlined consume of PluginAttachmentLedgerTopic.State(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
  v9 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationListener;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationStream;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  return v0;
}

uint64_t PluginAttachmentLedgerTopic.__deallocating_deinit()
{
  PluginAttachmentLedgerTopic.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PluginAttachmentLedgerTopic.unsubscribe()()
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315138;
    v6 = PluginAttachmentLedgerTopic.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Received request to unsubscribe on %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in PluginAttachmentLedgerTopic.unsubscribe();
  *(v10 + 24) = v0;
  v13[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> ();
  v13[3] = &block_descriptor_18_0;
  v11 = _Block_copy(v13);

  v12 = v9;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }
}

void closure #1 in PluginAttachmentLedgerTopic.unsubscribe()(uint64_t a1)
{
  (*(*a1 + 344))(&v15);
  if (!(v20 >> 62))
  {
    goto LABEL_19;
  }

  if (v20 >> 62 != 1)
  {
    v8 = v17 | v16;
    v9 = v19 | v21;
    if (v20 != 0x8000000000000000 || (v17 | v16 | v15 | v18 | v19 | v21) != 0)
    {
      v11 = v15;
      v12 = v18;
      v13 = v20;
      outlined consume of PluginAttachmentLedgerTopic.State(v15, v16, v17, v18, v19, v20, v21);
      if (v13 != 0x8000000000000000 || v11 != 1 || v8 | v12 | v9)
      {
        goto LABEL_4;
      }

LABEL_20:
      PluginAttachmentLedgerTopic.shutdown(reason:)(0);
      return;
    }

LABEL_19:
    outlined consume of PluginAttachmentLedgerTopic.State(v15, v16, v17, v18, v19, v20, v21);
    goto LABEL_20;
  }

  outlined consume of PluginAttachmentLedgerTopic.State(v15, v16, v17, v18, v19, v20, v21);
LABEL_4:
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    v5 = PluginAttachmentLedgerTopic.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v15);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEB26000, oslog, v2, "Already shutting down, ignoring request on %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1B27120C0](v4, -1, -1);
    MEMORY[0x1B27120C0](v3, -1, -1);
  }
}

uint64_t PluginAttachmentLedgerTopic.shutdown(reason:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
LABEL_25:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.attachmentLedgerTopic);

  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41[0] = v15;
    *v14 = 136315394;
    v16 = PluginAttachmentLedgerTopic.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v41);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    if (a1)
    {
      v40[1] = a1;
      v19 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v20 = String.init<A>(reflecting:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v41);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_1AEB26000, v12, v13, "%s Processing request to shutdown, reason: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  (*(*v2 + 288))(v41);
  if (!(v43 >> 62))
  {
    goto LABEL_13;
  }

  if (v43 >> 62 == 1)
  {
    return outlined consume of PluginAttachmentLedgerTopic.State(v41[0], v41[1], v41[2], v42, *(&v42 + 1), v43, *(&v43 + 1));
  }

  v25 = v41[2] | v41[1];
  v26 = *(&v42 + 1) | *(&v43 + 1);
  if (v43 == 0x8000000000000000 && !(v25 | v41[0] | v42 | v26))
  {
LABEL_13:
    outlined consume of PluginAttachmentLedgerTopic.State(v41[0], v41[1], v41[2], v42, *(&v42 + 1), v43, *(&v43 + 1));
    goto LABEL_14;
  }

  v37 = v41[0];
  v38 = v42;
  v39 = v43;
  result = outlined consume of PluginAttachmentLedgerTopic.State(v41[0], v41[1], v41[2], v42, *(&v42 + 1), v43, *(&v43 + 1));
  if (v39 == 0x8000000000000000 && v37 == 1 && !(v25 | v38 | v26))
  {
LABEL_14:
    v41[0] = 2;
    *&v41[1] = 0u;
    v42 = 0u;
    v43 = xmmword_1AEE0C1F0;
    v27 = (*v2 + 352);
    v28 = *v27;
    (*v27)(v41);
    v29 = *(*v2 + 328);
    v30 = a1;
    v31 = v29(a1);
    v32 = (*(*v2 + 584))(v31);
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5();
      v35 = specialized Sequence._copySequenceContents(initializing:)(v41, (v34 + 32), v33, v32);
      v36 = outlined consume of Set<String>.Iterator._Variant(v41[0]);
      if (v35 == v33)
      {
LABEL_18:
        (*(*v2 + 392))(v41, v36);
        *&v43 = 0x4000000000000005;
        *(&v43 + 1) = v34;
        return (v28)(v41);
      }

      __break(1u);
    }

    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  return result;
}

Swift::Void __swiftcall PluginAttachmentLedgerTopic.subscribe()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v8 = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  (*(*v1 + 288))(&v23, v8);
  if (!(v28 >> 62))
  {
    goto LABEL_11;
  }

  if (v28 >> 62 == 1)
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_5;
  }

  v17 = v25 | v24;
  v18 = v27 | v29;
  if (v28 == 0x8000000000000000 && !(v17 | v23 | v26 | v18))
  {
LABEL_11:
    outlined consume of PluginAttachmentLedgerTopic.State(v23, v24, v25, v26, v27, v28, v29);
LABEL_12:
    PluginAttachmentLedgerTopic.setupSubscribeStream()();
    PluginAttachmentLedgerTopic.sendSubscribeRequest()();
    return;
  }

  v19 = v23;
  v20 = v26;
  v21 = v28;
  outlined consume of PluginAttachmentLedgerTopic.State(v23, v24, v25, v26, v27, v28, v29);
  if (v21 == 0x8000000000000000 && v19 == 1 && !(v17 | v20 | v18))
  {
    goto LABEL_12;
  }

LABEL_5:
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
LABEL_18:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = PluginAttachmentLedgerTopic.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Skipping subscribe handling for %s since we're in a terminal state", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMR);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore023AttachmentLedger_UpdateF7RequestV_ScCyAE0fg1_hF8ResponseVs5Error_pGt__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore023AttachmentLedger_UpdateF7RequestV_ScCyAE0fg1_hF8ResponseVs5Error_pGt__GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v6 + 56);
  outlined init with copy of Attachment.MMCSMetadata(a3, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMd, &_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMR);
  (*(*(v14 - 8) + 16))(&v8[v13], a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 256) = v16;
  *(v9 + 264) = v8;
  *(v9 + 240) = v15;
  *(v9 + 224) = a7;
  *(v9 + 232) = a8;
  *(v9 + 208) = a5;
  *(v9 + 216) = a6;
  *(v9 + 192) = a3;
  *(v9 + 200) = a4;
  *(v9 + 176) = a1;
  *(v9 + 184) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  *(v9 + 312) = swift_task_alloc();
  v10 = type metadata accessor for SymmetricKey();
  *(v9 + 320) = v10;
  *(v9 + 328) = *(v10 - 8);
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v9 + 368) = v11;
  *(v9 + 376) = *(v11 - 8);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = type metadata accessor for Attachment.MMCSMetadata(0);
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = type metadata accessor for UploadToken(0);
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0);
  *(v9 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  *(v9 + 464) = swift_task_alloc();
  v12 = type metadata accessor for AES.GCM.SealedBox();
  *(v9 + 472) = v12;
  *(v9 + 480) = *(v12 - 8);
  *(v9 + 488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)()
{
  v95 = v0;
  (*(**(v0 + 264) + 288))(&v88);
  if ((v93 & 0x8000000000000000) == 0 || ((v1 = v90 | v89, v2 = v92 | v94, v93 == 0x8000000000000000) ? (v3 = (v90 | v89 | v88 | v91 | v92 | v94) == 0) : (v3 = 0), v3))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v88, v89, v90, v91, v92, v93, v94);
LABEL_11:
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 392);
    v10 = *(v0 + 368);
    v11 = *(v0 + 376);
    v12 = *(v0 + 176);
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.attachmentLedgerTopic);
    (*(v11 + 16))(v9, v12, v10);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 392);
    v19 = *(v0 + 368);
    v18 = *(v0 + 376);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v88 = v21;
      *v20 = 136315394;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v88);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = PluginAttachmentLedgerTopic.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v88);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Dropping request to upload attachment %s because state of PluginAttachmentLedgerTopic is invalid %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v21, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();
    goto LABEL_17;
  }

  v4 = v88;
  v5 = v91;
  v6 = v93;
  outlined consume of PluginAttachmentLedgerTopic.State(v88, v89, v90, v91, v92, v93, v94);
  if (v6 != 0x8000000000000000 || v4 != 1 || v1 | v5 | v2)
  {
    goto LABEL_11;
  }

  v7 = *(v0 + 464);
  *(v0 + 152) = *(v0 + 192);
  v8 = type metadata accessor for AES.GCM.Nonce();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  lazy protocol witness table accessor for type Data and conformance Data();
  static AES.GCM.seal<A>(_:using:nonce:)();
  outlined destroy of NSObject?(*(v0 + 464), &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v32 = AES.GCM.SealedBox.combined.getter();
  if (v33 >> 60 == 15)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 352);
    v35 = *(v0 + 320);
    v36 = *(v0 + 328);
    v37 = *(v0 + 184);
    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Log.attachmentLedgerTopic);
    v39 = v35;
    v40 = *(v36 + 16);
    v40(v34, v37, v39);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 352);
    v46 = *(v0 + 320);
    v45 = *(v0 + 328);
    if (v43)
    {
      v86 = v42;
      v48 = *(v0 + 272);
      v47 = *(v0 + 280);
      v49 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = v87;
      *v49 = 136315138;
      v40(v47, v44, v46);
      (*(v45 + 56))(v47, 0, 1, v46);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v47, v48, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      if ((*(v45 + 48))(v48, 1, v46) == 1)
      {
        v50 = 0xE300000000000000;
        v51 = 7104878;
      }

      else
      {
        v73 = *(v0 + 336);
        v74 = *(v0 + 344);
        v76 = *(v0 + 320);
        v75 = *(v0 + 328);
        (*(v75 + 32))(v74, *(v0 + 272), v76);
        v40(v73, v74, v76);
        v51 = String.init<A>(reflecting:)();
        v50 = v77;
        (*(v75 + 8))(v74, v76);
      }

      v78 = *(v0 + 352);
      v80 = *(v0 + 320);
      v79 = *(v0 + 328);
      outlined destroy of NSObject?(*(v0 + 280), &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      (*(v79 + 8))(v78, v80);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, &v88);

      *(v49 + 4) = v81;
      _os_log_impl(&dword_1AEB26000, v41, v86, "Failed to fetch the combined representation of the assetSkeleton encrypted w/ SymmetricKey %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      MEMORY[0x1B27120C0](v87, -1, -1);
      MEMORY[0x1B27120C0](v49, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
    }

    v82 = *(v0 + 480);
    v83 = *(v0 + 488);
    v84 = *(v0 + 472);
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v85 = 3;
    swift_willThrow();
    (*(v82 + 8))(v83, v84);
LABEL_17:

    v30 = *(v0 + 8);

    return v30();
  }

  v52 = *(v0 + 264);
  v54 = *(v0 + 208);
  v53 = *(v0 + 216);
  outlined consume of Data?(v32, v33);
  v55 = swift_task_alloc();
  *(v55 + 16) = v54;
  *(v55 + 24) = v53;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedgerMetadata_AttachmentMetadata);
  static Message.with(_:)();

  v57 = (*(*v52 + 368))(v56);
  *(v0 + 496) = v57;
  if (!v57)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Log.attachmentLedgerTopic);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1AEB26000, v65, v66, "UploadToken task was never started", v67, 2u);
      MEMORY[0x1B27120C0](v67, -1, -1);
    }

    v68 = *(v0 + 480);
    v69 = *(v0 + 488);
    v70 = *(v0 + 472);
    v71 = *(v0 + 456);

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v72 = 1;
    swift_willThrow();
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v71, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
    (*(v68 + 8))(v69, v70);
    goto LABEL_17;
  }

  v58 = v57;
  v59 = swift_task_alloc();
  *(v0 + 504) = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 512) = v60;
  *v59 = v0;
  v59[1] = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  v62 = *(v0 + 432);
  v61 = *(v0 + 440);
  v63 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v61, v58, v62, v60, v63);
}

{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  }

  else
  {
    v2 = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v77 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v67 = v0[52];
  v68 = v0[65];
  v4 = v0[51];
  v5 = v0[47];
  v70 = v0[45];
  v71 = v0[50];
  v62 = v0[46];
  v63 = v0[41];
  v64 = v0[40];
  v6 = v0[33];
  v69 = v0[30];
  v7 = v0[29];
  v57 = v0[31];
  v58 = v7;
  v56 = v0[28];
  v65 = v0[26];
  v66 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v60 = v0[32];
  v61 = v0[23];
  v59 = v0[22];
  (*(v0[60] + 16))(v3, v0[61], v0[59]);
  v10 = (v1 + *(v2 + 28));
  v11 = v10[1];
  v55 = *v10;
  v12 = v4[8];
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 16))(v3 + v12, v56, v13);
  v14 = (v3 + v4[5]);
  *v14 = v9;
  v14[1] = v8;
  v15 = (v3 + v4[6]);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0xF000000000000000;
  v16 = (v3 + v4[7]);
  *v16 = v55;
  v16[1] = v11;
  v17 = (v3 + v4[9]);
  *v17 = v7;
  v17[1] = v69;
  v18 = (v3 + v4[10]);
  *v18 = v57;
  v18[1] = v60;
  v19 = *(v5 + 16);
  v0[66] = v19;
  v0[67] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v71, v59, v62);
  (*(v63 + 16))(v70, v61, v64);
  outlined init with copy of Attachment.MMCSMetadata(v3, v67, type metadata accessor for Attachment.MMCSMetadata);
  v72[0] = v65;
  v72[1] = v66;
  outlined init with copy of UserNotificationCenter((v6 + 26), (v0 + 14));
  v20 = v6[13];
  v21 = *(*v6 + 392);

  outlined copy of Data._Representation(v9, v8);
  outlined copy of Data._Representation(v58, v69);
  outlined copy of Data._Representation(v57, v60);
  v22 = outlined copy of Data?(v65, v66);
  v21(v73, v22);
  v75[0] = v73[0];
  v75[1] = v73[1];
  v75[2] = v73[2];
  v76 = v74;
  type metadata accessor for Attachment(0);
  swift_allocObject();
  v23 = Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(v71, v70, v67, v72, v0 + 14, v20, v75);
  v0[68] = v23;
  if (v68)
  {
    v24 = v0[61];
    v25 = v0[59];
    v26 = v0[60];
    v27 = v0[57];
    v28 = v0[55];
    v29 = v0[53];

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v29, type metadata accessor for Attachment.MMCSMetadata);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v28, type metadata accessor for UploadToken);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v27, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
    (*(v26 + 8))(v24, v25);

    v33 = v0[1];

    return v33();
  }

  else
  {
    v30 = v23;
    v31 = v0[33];
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);
    static Message.with(_:)();
    v35 = v0[33];

    v36 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue;
    v0[69] = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue;
    v37 = *(v35 + v36);
    v38 = swift_allocObject();
    v0[70] = v38;
    *(v38 + 16) = v35;
    *(v38 + 24) = v30;
    v39 = swift_allocObject();
    *(v39 + 16) = partial apply for closure #3 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
    *(v39 + 24) = v38;
    v0[6] = thunk for @callee_guaranteed () -> ()partial apply;
    v0[7] = v39;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed () -> ();
    v0[5] = &block_descriptor_29_0;
    v40 = _Block_copy(v0 + 2);
    v41 = v37;

    dispatch_sync(v41, v40);

    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v51 = v0[39];
      v52 = v0[33];
      v53 = swift_task_alloc();
      v0[71] = v53;
      *(v53 + 16) = v52;
      *(v53 + 24) = v51;
      v54 = swift_task_alloc();
      v0[72] = v54;
      *v54 = v0;
      v54[1] = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
      v50 = v0[36];
      v43 = v0[37];
      v48 = partial apply for closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:);
      v47 = 0x80000001AEE32480;
      v44 = 0;
      v45 = 0;
      v46 = 0xD000000000000018;
      v49 = v53;
    }

    return MEMORY[0x1EEE6DE38](v43, v44, v45, v46, v47, v48, v49, v50);
  }
}

{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  }

  else
  {
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v2 + 296), type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    v3 = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[57];
  v5 = v0[55];
  v6 = v0[53];
  v7 = v0[39];

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, type metadata accessor for Attachment.MMCSMetadata);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for UploadToken);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  (*(v3 + 8))(v1, v2);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  v8 = v0[1];

  return v8();
}

{
  v43 = v0;
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[33];

  v4 = *(v3 + v1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #4 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  *(v6 + 24) = v5;
  v0[12] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[13] = v6;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = thunk for @escaping @callee_guaranteed () -> ();
  v0[11] = &block_descriptor_40;
  v7 = _Block_copy(v0 + 8);

  v8 = v4;

  dispatch_sync(v8, v7);

  _Block_release(v7);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else if (one-time initialization token for attachmentLedgerTopic == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v9 = v0[73];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.attachmentLedgerTopic);

  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v40 = v0[73];
    v38 = v0[68];
    v39 = v0[66];
    v14 = v0[47];
    v15 = v0[48];
    v16 = v0[46];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42[0] = v18;
    *v17 = 136315650;
    v19 = PluginAttachmentLedgerTopic.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v42);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v39(v15, v38 + OBJC_IVAR____TtC14CopresenceCore10Attachment_id, v16);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v14 + 8))(v15, v16);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v42);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2080;
    v0[21] = v40;
    v26 = v40;
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v42);

    *(v17 + 24) = v29;
    _os_log_impl(&dword_1AEB26000, v12, v13, "%s Failed to upload attachment %s, reason: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  v30 = v0[61];
  v32 = v0[59];
  v31 = v0[60];
  v33 = v0[57];
  v34 = v0[55];
  v35 = v0[53];
  v41 = v0[39];
  swift_willThrow();

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v35, type metadata accessor for Attachment.MMCSMetadata);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v34, type metadata accessor for UploadToken);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v33, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  (*(v31 + 8))(v30, v32);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v41, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  v36 = v0[1];

  return v36();
}

{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[57];

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in Attachment.Metadata.sealedMetadata(with:)(uint64_t result, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  if (a3 >> 60 != 15)
  {
    v7 = (result + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0) + 20));
    v8 = *v7;
    v9 = v7[1];
    a4(a2, a3);
    result = outlined consume of Data?(v8, v9);
    *v7 = a2;
    v7[1] = a3;
  }

  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12[-v8];
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v13 = a2;
  v14 = a3;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  result = static Message.with(_:)();
  if (!v3)
  {
    updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
    swift_storeEnumTagMultiPayload();
    (*(*(updated - 8) + 56))(v9, 0, 1, updated);
    return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v9, a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  return result;
}

uint64_t closure #1 in closure #2 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 112);
  v10 = *(a2 + 120);

  *a1 = v11;
  *(a1 + 1) = v10;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
  result = static Message.with(_:)();
  if (!v3)
  {
    v13 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
    outlined destroy of NSObject?(&a1[v13], &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v9, &a1[v13], type metadata accessor for AttachmentLedger_AttachmentMetadata);
    return (*(v7 + 56))(&a1[v13], 0, 1, v6);
  }

  return result;
}

uint64_t closure #3 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v4 = *(*a1 + 600);

  v5 = v4(v11);
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v7;
  *v7 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a2 + v3, isUniquelyReferenced_nonNull_native);
  *v7 = v10;
  return v5(v11, 0);
}

uint64_t closure #4 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v4 = (*(*a1 + 600))(v6);
  specialized Dictionary.removeValue(forKey:)(a2 + v3);

  return v4(v6, 0);
}

uint64_t PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = *a2;
  *(v3 + 104) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.updateStatus(id:status:), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.updateStatus(id:status:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v4 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v1;
  v8 = v6;
  OS_dispatch_queue.sync<A>(execute:)();

  v9 = v0[10];
  v10 = v0[5];
  v11 = v0[3];
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[9], v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  *(swift_task_alloc() + 16) = v9;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);
  static Message.with(_:)();

  v12 = swift_task_alloc();
  v0[14] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = PluginAttachmentLedgerTopic.updateStatus(id:status:);
  v15 = v0[6];
  v14 = v0[7];

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD000000000000018, 0x80000001AEE32480, closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:)partial apply, v12, v15);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = PluginAttachmentLedgerTopic.updateStatus(id:status:);
  }

  else
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 40);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    v3 = PluginAttachmentLedgerTopic.updateStatus(id:status:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v0 + 80), type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[10];
  v2 = v0[5];

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v85 = a3;
  v86 = a4;
  v81 = a6;
  v10 = type metadata accessor for UUID();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v75 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  v15 = MEMORY[0x1EEE9AC00](v80);
  v79 = (&v75 - v16);
  v17 = (*(*a1 + 584))(v15);
  if (*(v17 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      goto LABEL_6;
    }
  }

  v22 = (*(*a1 + 632))(v21);
  MEMORY[0x1EEE9AC00](v22);
  *(&v75 - 2) = a2;
  v23 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:), (&v75 - 4), v22);

  if (v23)
  {
    v20 = v23;
LABEL_6:
    if (a5 >> 60 == 15)
    {
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
    }

    else
    {
      updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
      v78 = v20;
      MEMORY[0x1EEE9AC00](updated);
      if (a5 >> 60 == 11)
      {
        *(&v75 - 2) = a1;
        *(&v75 - 1) = v20;
      }

      else
      {
        *(&v75 - 6) = a1;
        *(&v75 - 5) = v20;
        v48 = v86;
        *(&v75 - 4) = v85;
        *(&v75 - 3) = v48;
        *(&v75 - 2) = a5;
      }

      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      v49 = static Message.with(_:)();
      v50 = (*(*a1 + 608))(v49);
      if (*(v50 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v52 & 1) != 0))
      {
        v76 = a5;
        v53 = *(*(v50 + 56) + 16 * v51);

        lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
        v54 = swift_allocError();
        *v55 = 5;
        v56 = v79;
        *v79 = v54;
        swift_storeEnumTagMultiPayload();
        v53(v56);
        if (v6)
        {
          v57 = a2;

          outlined destroy of NSObject?(v56, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
          v81 = 0;
        }

        else
        {
          v81 = 0;
          v57 = a2;

          outlined destroy of NSObject?(v56, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
        }

        a5 = v76;
      }

      else
      {
        v81 = v6;
        v57 = a2;
      }

      v58 = v84;
      v59 = swift_allocObject();
      swift_weakInit();
      v60 = v82;
      v61 = v83;
      v62 = *(v83 + 16);
      v77 = v57;
      v62(v82, v57, v58);
      v63 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v64 = (v11 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      *(v65 + 16) = v59;
      (*(v61 + 32))(v65 + v63, v60, v58);
      v66 = (v65 + v64);
      v67 = v85;
      v68 = v86;
      *v66 = v85;
      v66[1] = v68;
      v66[2] = a5;
      v69 = *(*a1 + 624);

      outlined copy of Attachment.MMCSMetadata.UploadStatus(v67, v68, a5);
      v70 = v69(v87);
      v72 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *v72;
      *v72 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:), v65, v77, isUniquelyReferenced_nonNull_native);
      *v72 = v88;
      v70(v87, 0);
    }
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.attachmentLedgerTopic);
  v29 = v83;
  v28 = v84;
  v30 = v13;
  (*(v83 + 16))(v13, a2, v84);
  v31 = v85;
  v32 = v86;
  outlined copy of Attachment.MMCSMetadata.UploadStatus(v85, v86, a5);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  outlined consume of Attachment.MMCSMetadata.UploadStatus(v31, v32, a5);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v29;
    v36 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v88 = v82;
    *v36 = 136315650;
    LODWORD(v81) = v34;
    v37 = PluginAttachmentLedgerTopic.description.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v88);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    (*(v35 + 8))(v30, v28);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v88);

    *(v36 + 14) = v43;
    *(v36 + 22) = 2080;
    v87[0] = v31;
    v87[1] = v86;
    v87[2] = a5;
    outlined copy of Attachment.MMCSMetadata.UploadStatus(v31, v86, a5);
    v44 = String.init<A>(reflecting:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v88);

    *(v36 + 24) = v46;
    _os_log_impl(&dword_1AEB26000, v33, v81, "%s Couldn't find attachment %s when trying to update its status to %s", v36, 0x20u);
    v47 = v82;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v47, -1, -1);
    MEMORY[0x1B27120C0](v36, -1, -1);
  }

  else
  {

    (*(v29 + 8))(v30, v28);
  }

  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
  swift_allocError();
  *v74 = 4;
  return swift_willThrow();
}

uint64_t closure #2 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v12 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);

  *a1 = v15;
  *(a1 + 1) = v16;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = v20;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  static Message.with(_:)();
  v17 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  outlined destroy of NSObject?(&a1[v17], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v14, &a1[v17], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  return (*(v12 + 56))(&a1[v17], 0, 1, updated);
}

uint64_t closure #1 in closure #2 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v15[0] = UUID.uuid.getter();
  v15[1] = v8;
  v9 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v15, &v16);
  v11 = v10;
  outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 2;
  *(a1 + 24) = 1;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  outlined copy of Data._Representation(a4, a5);
  result = outlined consume of Data._Representation(v12, v13);
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  return result;
}

uint64_t closure #3 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(char *a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v6 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 112);
  v9 = *(a2 + 120);

  *a1 = v10;
  *(a1 + 1) = v9;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  static Message.with(_:)();
  v11 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  outlined destroy of NSObject?(&a1[v11], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v8, &a1[v11], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  return (*(v6 + 56))(&a1[v11], 0, 1, updated);
}

uint64_t closure #1 in closure #3 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7[0] = UUID.uuid.getter();
  v7[1] = v2;
  v3 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v7, &v8);
  v5 = v4;
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 3;
  *(a1 + 24) = 1;
  return result;
}

void closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v107 = a1;
  v104 = a6;
  v105 = a3;
  v98 = a5;
  v6 = type metadata accessor for UUID();
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v97 - v12;
  v99 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v14 = MEMORY[0x1EEE9AC00](v99);
  v100 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v97 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v106 = Strong;
  v26 = *(Strong + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v24 = v26;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
LABEL_11:
    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Log.attachmentLedgerTopic);
    v107 = v13;
    outlined init with copy of Attachment.MMCSMetadata(v13, v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v110 = v45;
      *v44 = 136315138;
      v46 = v18[24];
      *&v108 = *(v18 + 2);
      BYTE8(v108) = v46;
      v47 = String.init<A>(reflecting:)();
      v49 = v48;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v110);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_1AEB26000, v42, v43, "Received message ACK. Updating status to %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1B27120C0](v45, -1, -1);
      MEMORY[0x1B27120C0](v44, -1, -1);
    }

    else
    {

      Topic = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    }

    v52 = v105;
    v53 = (*v106 + 632);
    v54 = *v53;
    v55 = (*v53)(Topic);
    v56 = &v97;
    MEMORY[0x1EEE9AC00](v55);
    *(&v97 - 2) = v52;
    v57 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:), (&v97 - 4), v55);
    v59 = v58;

    if (v59)
    {
      v61 = v101;
      v62 = v102;
      v63 = v52;
      v64 = v103;
      (*(v102 + 16))(v101, v63, v103);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v108 = v68;
        *v67 = 136315138;
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v61;
        v72 = v71;
        (*(v62 + 8))(v70, v64);
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v72, &v108);

        *(v67 + 4) = v73;
        _os_log_impl(&dword_1AEB26000, v65, v66, "Can't find attachment with id: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x1B27120C0](v68, -1, -1);
        MEMORY[0x1B27120C0](v67, -1, -1);
      }

      else
      {

        (*(v62 + 8))(v61, v64);
      }

      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v78 = 4;
      swift_willThrow();
      v74 = v107;
      goto LABEL_31;
    }

    v74 = v107;
    v75 = *(v107 + 2);
    if (v107[24] == 1 && v75 == 1)
    {
      if (v104 >> 60 == 15)
      {
LABEL_21:
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v107, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

        return;
      }

LABEL_38:
      v80 = v100;
      outlined init with copy of Attachment.MMCSMetadata(v107, v100, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = v80;
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v108 = v85;
        *v84 = 136315138;
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
        v86 = Message.debugDescription.getter();
        v87 = v74;
        v89 = v88;
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v83, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v89, &v108);

        *(v84 + 4) = v90;
        _os_log_impl(&dword_1AEB26000, v81, v82, "Dropping ack response %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        MEMORY[0x1B27120C0](v85, -1, -1);
        MEMORY[0x1B27120C0](v84, -1, -1);

        v79 = v87;
      }

      else
      {

        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v80, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
        v79 = v74;
      }

      goto LABEL_33;
    }

    v76 = v104 & 0xF000000000000000;
    if (v104 >> 60 == 15)
    {
      if (v75 != 1)
      {
        goto LABEL_38;
      }
    }

    else if (v76 == 0xB000000000000000)
    {
      if (v75 != 3)
      {
        goto LABEL_38;
      }
    }

    else if (v75 != 2)
    {
      goto LABEL_38;
    }

    if (!v107[24])
    {
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v77 = 1;
      swift_willThrow();
      goto LABEL_31;
    }

    if (v75 <= 1)
    {
      goto LABEL_21;
    }

    if (v75 == 2)
    {
      if (v104 >> 60 != 15 && v76 != 0xB000000000000000)
      {
        v56 = *(v107 + 4);
        v91 = outlined copy of Data._Representation(v98, v104);
        v92 = v54(v91);
        v93 = v92;
        if ((v92 & 0xC000000000000001) == 0)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v57 < *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

LABEL_48:

            v94 = v98;
            *&v108 = v56;
            *(&v108 + 1) = v98;
            v95 = v104;
            v109 = v104;
            outlined copy of Data._Representation(v98, v104);
            Attachment.update(_:)(&v108);

            outlined consume of Attachment.MMCSMetadata.UploadStatus(v108, *(&v108 + 1), v109);
            outlined consume of Data._Representation(v94, v95);
            goto LABEL_32;
          }

          __break(1u);
          return;
        }

LABEL_59:
        MEMORY[0x1B2710B10](v57, v93);
        goto LABEL_48;
      }

LABEL_31:

LABEL_32:
      v79 = v74;
LABEL_33:
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v79, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      return;
    }

    v96 = v54(v60);
    v93 = v96;
    if ((v96 & 0xC000000000000001) == 0)
    {
      if ((v57 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v57 < *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_53:

        v108 = 0uLL;
        v109 = 0xB000000000000000;
        Attachment.update(_:)(&v108);
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v74, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

        return;
      }

      __break(1u);
      goto LABEL_59;
    }

    MEMORY[0x1B2710B10](v57, v96);
    goto LABEL_53;
  }

  v28 = v107;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v107, v13, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = v13;
    v13 = v20;
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v40, v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

  outlined destroy of NSObject?(v13, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v28, v11, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v11;
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.attachmentLedgerTopic);
    v31 = v29;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v108 = v35;
      *v34 = 136315138;
      v110 = v29;
      v36 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v37 = String.init<A>(reflecting:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v108);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1AEB26000, v32, v33, "ACK message wasn't received for reason: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of NSObject?(v11, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  }
}

unint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2710B10](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of NSObject?(a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with copy of Attachment.MMCSMetadata(a2, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(updated - 8) + 56))(a1, 0, 1, updated);
}

uint64_t PluginAttachmentLedgerTopic.remove(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.remove(id:), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.remove(id:)()
{
  v45 = v0;
  (*(**(v0 + 24) + 288))(&v38);
  if ((v43 & 0x8000000000000000) == 0 || ((v1 = v40 | v39, v2 = v42 | v44, v43 == 0x8000000000000000) ? (v3 = (v40 | v39 | v38 | v41 | v42 | v44) == 0) : (v3 = 0), v3))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v38, v39, v40, v41, v42, v43, v44);
  }

  else
  {
    v4 = v38;
    v5 = v41;
    v6 = v43;
    outlined consume of PluginAttachmentLedgerTopic.State(v38, v39, v40, v41, v42, v43, v44);
    if (v6 == 0x8000000000000000 && v4 == 1 && !(v1 | v5 | v2))
    {
      v7 = *(v0 + 80);
      v8 = *(v0 + 16);
      v9 = *(v0 + 24);
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);
      static Message.with(_:)();

      v11 = swift_task_alloc();
      *(v0 + 88) = v11;
      *(v11 + 16) = v9;
      *(v11 + 24) = v7;
      v12 = swift_task_alloc();
      *(v0 + 96) = v12;
      *v12 = v0;
      v12[1] = PluginAttachmentLedgerTopic.remove(id:);
      v14 = *(v0 + 56);
      v13 = *(v0 + 64);

      return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000018, 0x80000001AEE32480, closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:)partial apply, v11, v14);
    }
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.attachmentLedgerTopic);
  (*(v16 + 16))(v15, v18, v17);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  v22 = os_log_type_enabled(v20, v21);
  v24 = *(v0 + 40);
  v23 = *(v0 + 48);
  v25 = *(v0 + 32);
  if (v22)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = 136315394;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v24 + 8))(v23, v25);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v38);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = PluginAttachmentLedgerTopic.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v38);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_1AEB26000, v20, v21, "Dropping request to remove attachment %s because state of PluginAttachmentLedgerTopic is invalid %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v27, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    (*(v24 + 8))(v23, v25);
  }

  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
  swift_allocError();
  *v35 = 3;
  swift_willThrow();

  v36 = *(v0 + 8);

  return v36();
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = PluginAttachmentLedgerTopic.remove(id:);
  }

  else
  {
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v2 + 64), type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    v3 = PluginAttachmentLedgerTopic.remove(id:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v0 + 80), type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 80);

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.remove(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11[-v7];
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  v12 = a2;
  v13 = a3;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  static Message.with(_:)();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(updated - 8) + 56))(v8, 0, 1, updated);
  return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v8, a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.remove(id:)(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 112);
  v3 = *(a2 + 120);

  *a1 = v4;
  a1[1] = v3;
  v10[0] = UUID.uuid.getter();
  v10[1] = v5;
  v6 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v10, &v11);
  v8 = v7;
  result = outlined consume of Data._Representation(a1[2], a1[3]);
  a1[2] = v6;
  a1[3] = v8;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.setupSubscribeStream()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = &v38 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v40 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v38 - v5;
  v6 = type metadata accessor for Publishers.PrefetchStrategy();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGGMR);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v38 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue;
  v16 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMR);
    swift_allocObject();
    v19 = PassthroughSubject.init()();
    v38 = v0;
    PluginAttachmentLedgerTopic.subscribeStreamInput.willset(v19);
    *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput) = v19;

    v51 = v19;
    v20 = v6;
    (*(v7 + 104))(v9, *MEMORY[0x1E695BD28], v6);
    v22 = v40;
    v21 = v41;
    v23 = v45;
    (*(v40 + 104))(v41, *MEMORY[0x1E695BD40], v45);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<AttachmentLedger_SubscribeRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMR, MEMORY[0x1E695BF88]);
    v24 = v39;
    Publisher.buffer(size:prefetch:whenFull:)();
    (*(v22 + 8))(v21, v23);
    (*(v7 + 8))(v9, v20);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<PassthroughSubject<AttachmentLedger_SubscribeRequest, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGGMR, MEMORY[0x1E695BDD8]);
    v25 = v44;
    v26 = Publisher.eraseToAnyPublisher()();
    (*(v43 + 8))(v24, v25);
    v27 = v38;
    v28 = v38[24];
    v29 = v38[25];
    __swift_project_boxed_opaque_existential_1(v38 + 21, v28);
    v30 = (*(v29 + 32))(v26, v28, v29);
    v50 = *(v27 + v42);
    v31 = v50;
    v51 = v30;
    v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v33 = v46;
    (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAD14PluginRpcErrorOGMR);
    type metadata accessor for OS_dispatch_queue();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AttachmentLedger_SubscribeResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
    v35 = v47;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v33, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<AttachmentLedger_SubscribeResponse, PluginRpcError>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
    v36 = v49;
    v37 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v48 + 8))(v35, v36);
    *(v27 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable) = v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t PluginAttachmentLedgerTopic.handleSubscribeStreamClosed(completedWith:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.attachmentLedgerTopic);
  v51 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v16, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53[0] = v47;
    *v26 = 136315394;
    v27 = PluginAttachmentLedgerTopic.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v53);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v8, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    (*(v10 + 56))(v8, 0, 1, v9);
    v30 = v50;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v8, v50, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMR);
    if ((*(v10 + 48))(v30, 1, v9) == 1)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v34 = v49;
      outlined init with take of UUID?(v30, v49, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v34, v48, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
      v32 = String.init<A>(reflecting:)();
      v31 = v35;
      outlined destroy of NSObject?(v34, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    }

    outlined destroy of NSObject?(v8, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMR);
    outlined destroy of NSObject?(v16, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, v53);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_1AEB26000, v24, v25, "%s Subscribe stream closed for reason: %s", v26, 0x16u);
    v37 = v47;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    v33 = outlined destroy of NSObject?(v16, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  }

  (*(*v2 + 288))(v53, v33);
  v38 = v54;
  result = outlined consume of PluginAttachmentLedgerTopic.State(v53[0], v53[1], v53[2], v53[3], v53[4], v54, v55);
  if (v38 >> 62 != 1)
  {
    v40 = Subscribers.Completion<>.pluginShutdownReason.getter(&v52);
    v41 = v52;
    v42 = (*(*v2 + 584))(v40);
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5();
      v45 = specialized Sequence._copySequenceContents(initializing:)(v53, (v44 + 32), v43, v42);
      v46 = outlined consume of Set<String>.Iterator._Variant(v53[0]);
      if (v45 == v43)
      {
LABEL_14:
        (*(*v2 + 392))(v53, v46);
        v54 = v41 | 0x4000000000000000;
        v55 = v44;
        return (*(*v2 + 352))(v53);
      }

      __break(1u);
    }

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.setupSubscribeStream()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56[6] = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v56[5] = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56[4] = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchTime();
  v56[3] = *(v61 - 8);
  v6 = MEMORY[0x1EEE9AC00](v61);
  v56[2] = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v56 - v8;
  v63 = type metadata accessor for AttachmentLedger_SubscribeResponse(0);
  MEMORY[0x1EEE9AC00](v63);
  v66 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v10 = MEMORY[0x1EEE9AC00](v62);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = v56 - v13;
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v67 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v56 - v17;
  v19 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v56 - v24;
  v65 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v18, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return outlined destroy of NSObject?(v18, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v18, v25, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v32 = v25;
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  v28 = Strong;
  outlined init with copy of Attachment.MMCSMetadata(v25, v23, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = v64;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v23, v64, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
      PluginAttachmentLedgerTopic.processAttachmentUpdate(_:)(v30);
      v33 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_currentKnownSeqNo;
      v34 = *(v28 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_currentKnownSeqNo);
      if (!v34)
      {
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
        v35 = v62;
LABEL_22:
        v55 = *(v30 + *(v35 + 20));
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v30, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
        *(v28 + v33) = v55;
      }

      v35 = v62;
      v36 = *(v30 + *(v62 + 20));
      v37 = v36 >= v34;
      v38 = v36 - v34;
      if (v37)
      {
        if (v38 == 1)
        {
          goto LABEL_20;
        }

        if (one-time initialization token for attachmentLedgerTopic == -1)
        {
LABEL_14:
          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, static Log.attachmentLedgerTopic);
          outlined init with copy of Attachment.MMCSMetadata(v30, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = v28;
            v44 = swift_slowAlloc();
            aBlock = v44;
            *v42 = 136315394;

            v45 = PluginAttachmentLedgerTopic.description.getter();
            v67 = v25;
            v47 = v46;

            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &aBlock);

            *(v42 + 4) = v48;
            *(v42 + 12) = 2080;
            lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
            v49 = Message.debugDescription.getter();
            v51 = v50;
            outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
            v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &aBlock);

            *(v42 + 14) = v52;
            _os_log_impl(&dword_1AEB26000, v40, v41, "Detected an out of order sequence number for topic %s on attachment update %s", v42, 0x16u);
            swift_arrayDestroy();
            v53 = v44;
            v28 = v43;
            v30 = v64;
            MEMORY[0x1B27120C0](v53, -1, -1);
            MEMORY[0x1B27120C0](v42, -1, -1);

            v54 = v67;
LABEL_21:
            outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v54, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
            goto LABEL_22;
          }

          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
LABEL_20:
          v54 = v25;
          goto LABEL_21;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_14;
    }

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);

    v32 = v23;
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  v31 = v67;
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v23, v67, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  PluginAttachmentLedgerTopic.processInitializeAck(_:)(v31);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  *(v28 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_currentKnownSeqNo) = 0;
}

void PluginAttachmentLedgerTopic.processInitializeAck(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v67 - v6;
  v7 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v72 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v74 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v73 = (&v67 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.attachmentLedgerTopic);
  v75 = a1;
  outlined init with copy of Attachment.MMCSMetadata(a1, v15, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v68 = v2;
    v26 = v25;
    v67 = swift_slowAlloc();
    v76 = v67;
    *v26 = 136315394;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck);
    v27 = Message.debugDescription.getter();
    v28 = v9;
    v30 = v29;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, &v76);
    v9 = v28;

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = PluginAttachmentLedgerTopic.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v76);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_1AEB26000, v23, v24, "[Subscribe] Received InitializeAck response=%s, %s", v26, 0x16u);
    v35 = v67;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    Topic = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  }

  (*(*v3 + 344))(&v76, Topic);
  v37 = v75;
  if (!(v81 >> 62))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v76, v77, v78, v79, v80, v81, v82);
    goto LABEL_14;
  }

  if (v81 >> 62 == 2 && v81 == 0x8000000000000000 && !(v77 | v76 | v78 | v79 | v80 | v82))
  {
LABEL_14:
    if (*(v37 + 8) == 1)
    {
      v45 = *v37;
      if (*v37 <= 3)
      {
        if ((v45 - 2) >= 2 && v45)
        {
          PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(v37);
          return;
        }
      }

      else
      {
        if (v45 <= 5)
        {
          if (v45 == 4)
          {
            lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
            swift_allocError();
            *v66 = 0;
            goto LABEL_30;
          }

          lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
          swift_allocError();
          v65 = 1;
LABEL_29:
          *v64 = v65;
LABEL_30:
          swift_willThrow();
          return;
        }

        if ((v45 - 6) >= 2)
        {
          PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(v37);
          return;
        }
      }
    }

    v46 = v73;
    outlined init with copy of Attachment.MMCSMetadata(v37, v73, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    v47 = v74;
    outlined init with copy of Attachment.MMCSMetadata(v37, v74, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      LODWORD(v75) = v49;
      v50 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v76 = v68;
      *v50 = 134218498;
      v51 = *v46;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v46, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      *(v50 + 4) = v51;
      *(v50 + 12) = 2080;
      v52 = v71;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v47 + *(v9 + 36), v71, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
      v53 = v47;
      v54 = v70;
      v55 = *(v69 + 48);
      if (v55(v52, 1, v70) == 1)
      {
        v56 = v72;
        *v72 = 0;
        v56[1] = 0xE000000000000000;
        v56[2] = 0;
        v56[3] = 0;
        UnknownStorage.init()();
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v53, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
        if (v55(v52, 1, v54) != 1)
        {
          outlined destroy of NSObject?(v52, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
        }
      }

      else
      {
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v47, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
        v56 = v72;
        outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v52, v72, type metadata accessor for AttachmentLedger_ErrorResponse);
      }

      v57 = *v56;
      v58 = v56[1];

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v56, type metadata accessor for AttachmentLedger_ErrorResponse);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v76);

      *(v50 + 14) = v59;
      *(v50 + 22) = 2080;
      v60 = PluginAttachmentLedgerTopic.description.getter();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v76);

      *(v50 + 24) = v62;
      _os_log_impl(&dword_1AEB26000, v48, v75, "[Subscribe] InitializeAck failed, unexpected response-status, code=%ld error=%s, %s", v50, 0x20u);
      v63 = v68;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v63, -1, -1);
      MEMORY[0x1B27120C0](v50, -1, -1);
    }

    else
    {
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v46, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v47, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
    swift_allocError();
    v65 = 2;
    goto LABEL_29;
  }

  outlined consume of PluginAttachmentLedgerTopic.State(v76, v77, v78, v79, v80, v81, v82);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v83 = v41;
    *v40 = 136315138;
    v42 = PluginAttachmentLedgerTopic.description.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v83);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1AEB26000, v38, v39, "[Subscribe] Ignoring InitializeAck because of invalid state=%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1B27120C0](v41, -1, -1);
    MEMORY[0x1B27120C0](v40, -1, -1);
  }
}

uint64_t closure #1 in closure #2 in PluginAttachmentLedgerTopic.setupSubscribeStream()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PluginAttachmentLedgerTopic.sendSubscribeRequest()();
  }

  return result;
}

Swift::Void __swiftcall PluginAttachmentLedgerTopic.sendSubscribeRequest()()
{
  v1 = v0;
  v2 = type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v34 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest);
    static Message.with(_:)();
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.attachmentLedgerTopic);
    outlined init with copy of Attachment.MMCSMetadata(v7, v5, type metadata accessor for AttachmentLedger_SubscribeRequest);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35[0] = v29;
      *v28 = 136315138;
      v30 = Message.debugDescription.getter();
      v32 = v31;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedger_SubscribeRequest);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v35);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1AEB26000, v26, v27, "[Subscribe] Sending Initialize requeset=%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedger_SubscribeRequest);
    }

    PassthroughSubject.send(_:)();

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedger_SubscribeRequest);
  }

  else
  {
    __break(1u);
    swift_once();
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.attachmentLedgerTopic);
    v15 = v11;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[1] = v11;
      v35[0] = v19;
      *v18 = 136315138;
      v20 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v21 = String.init<A>(reflecting:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v35);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1AEB26000, v16, v17, "[Subscribe] Failed to create subscribeRequest, reason: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v24 = v11;
    PluginAttachmentLedgerTopic.shutdown(reason:)(v11);
  }
}

uint64_t PluginAttachmentLedgerTopic.processAttachmentUpdate(_:)(uint64_t a1)
{
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v36 - v6;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0) + 20));
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v15, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v22 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
LABEL_4:
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Log.attachmentLedgerTopic);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1AEB26000, v24, v25, "Unknown attachmentUpdate event received", v26, 2u);
        MEMORY[0x1B27120C0](v26, -1, -1);
      }

      v27 = type metadata accessor for UUID();
      v28 = v37;
      (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
      PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v28, v16);
      return outlined destroy of NSObject?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = type metadata accessor for UUID();
      v34 = v37;
      (*(*(v33 - 8) + 56))(v37, 1, 1, v33);
      PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v34, v16);
      outlined destroy of NSObject?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v15, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    }

    v35 = v36;
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v15, v36, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    PluginAttachmentLedgerTopic.processAttachmentStatusChanged(_:_:)(v35, v16);
    v31 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged;
    v32 = v35;
  }

  else if (EnumCaseMultiPayload)
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v15, v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    PluginAttachmentLedgerTopic.processAttachmentUpdateRemove(_:_:)(v9, v16);
    v31 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed;
    v32 = v9;
  }

  else
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v15, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    PluginAttachmentLedgerTopic.processAttachmentUpdateAdd(_:_:)(v12, v16);
    v31 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added;
    v32 = v12;
  }

  return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, v31);
}

uint64_t PluginAttachmentLedgerTopic.subscribeRequest.getter()
{
  type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest);
  return static Message.with(_:)();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.subscribeRequest.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.Initialize);
  result = static Message.with(_:)();
  if (!v2)
  {
    outlined destroy of NSObject?(a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v6, a1, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.subscribeRequest.getter(void *a1, void *a2)
{
  v61 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v59 = *(v61 - 8);
  v5 = MEMORY[0x1EEE9AC00](v61);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v54 - v9;
  v70 = type metadata accessor for UUID();
  v65 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v18 = a2[14];
  v17 = a2[15];

  *a1 = v18;
  a1[1] = v17;
  a1[3] = a2[13];
  v66 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  static Message.with(_:)();
  v19 = v2;
  v20 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  outlined destroy of NSObject?(a1 + v20, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v16, a1 + v20, type metadata accessor for AttachmentLedger_EncryptionID);
  v67 = v12;
  v68 = v11;
  v21 = *(v12 + 56);
  v57 = a1;
  v21(a1 + v20, 0, 1, v11);
  v22 = a2[29];
  v23 = a2[30];
  __swift_project_boxed_opaque_existential_1(a2 + 26, v22);
  v24 = (*(v23 + 24))(v22, v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v71 = v2;
    v55 = a2;
    v72 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = v72;
    v27 = v65 + 16;
    v28 = *(v65 + 16);
    v29 = *(v65 + 80);
    v54 = v24;
    v30 = v24 + ((v29 + 32) & ~v29);
    v64 = *(v65 + 72);
    v65 = v28;
    v63 = (v27 - 8);
    v31 = v27;
    v32 = v56;
    v33 = v69;
    do
    {
      v34 = v70;
      v35 = v31;
      v36 = (v65)(v33, v30, v70);
      MEMORY[0x1EEE9AC00](v36);
      *(&v54 - 2) = v33;
      v37 = v71;
      static Message.with(_:)();
      v71 = v37;
      (*v63)(v33, v34);
      v72 = v26;
      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v26 = v72;
      }

      *(v26 + 16) = v39 + 1;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v32, v26 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v39, type metadata accessor for AttachmentLedger_EncryptionID);
      v30 += v64;
      --v25;
      v31 = v35;
    }

    while (v25);

    a2 = v55;
    v19 = v71;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v40 = v57;

  v40[2] = v26;
  v42 = (*(*a2 + 632))(v41);
  v43 = v42;
  if (v42 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v45 = 0;
    v70 = v43 & 0xFFFFFFFFFFFFFF8;
    v71 = v43 & 0xC000000000000001;
    v46 = MEMORY[0x1E69E7CC0];
    while (v71)
    {
      MEMORY[0x1B2710B10](v45, v43);
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_25;
      }

LABEL_14:
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
      v48 = v60;
      static Message.with(_:)();
      if (v19)
      {
      }

      v49 = v58;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v48, v58, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v49, v62, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
      }

      v51 = v46[2];
      v50 = v46[3];
      if (v51 >= v50 >> 1)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v46);
      }

      v46[2] = v51 + 1;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v62, v46 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v51, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      ++v45;
      if (v47 == i)
      {
        goto LABEL_29;
      }
    }

    if (v45 >= *(v70 + 16))
    {
      goto LABEL_26;
    }

    v47 = v45 + 1;
    if (!__OFADD__(v45, 1))
    {
      goto LABEL_14;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v53 = v57;

  v53[4] = v46;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.subscribeRequest.getter(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7[0] = UUID.uuid.getter();
  v7[1] = v2;
  v3 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v7, &v8);
  v5 = v4;
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(void *a1)
{
  v102 = a1;
  v101 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  v97 = *(v4 - 8);
  v98 = v4;
  v94 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v82 - v7;
  v91 = type metadata accessor for UUID();
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v100 = *(v93 - 8);
  v9 = MEMORY[0x1EEE9AC00](v93);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v86 = (&v82 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v82 - v15;
  v16 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = v1;
  v24 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v23 = v24;
  (*(v21 + 104))(v23, *MEMORY[0x1E69E8020], v20);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = v102;
  if (*v102 != 1)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
LABEL_16:
      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Log.attachmentLedgerTopic);
      v38 = v99;
      outlined init with copy of Attachment.MMCSMetadata(v24, v99, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v104 = v42;
        *v41 = 136315138;
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck);
        v43 = Message.debugDescription.getter();
        v45 = v44;
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v104);

        *(v41 + 4) = v46;
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1B27120C0](v42, -1, -1);
        MEMORY[0x1B27120C0](v41, -1, -1);
      }

      else
      {

        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      }

      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v47 = 1;
      return swift_willThrow();
    }

LABEL_31:
    swift_once();
    goto LABEL_16;
  }

  v27 = AttachmentLedger_SubscribeResponse.InitializeAck.otherParticipants.getter();
  v28 = v103;
  v29 = v103[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = v27;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v29, isUniquelyReferenced_nonNull_native);
  v31 = *(*v28 + 264);

  v31();
  v24 = v24[4];
  v104 = MEMORY[0x1E69E7CC0];
  v32 = v24[2];
  if (v32)
  {
    v33 = 0;
    v83 = v32 - 1;
    v99 = MEMORY[0x1E69E7CC0];
    do
    {
      v34 = v33;
      v35 = v103;
      while (1)
      {
        if (v34 >= v24[2])
        {
          __break(1u);
          goto LABEL_30;
        }

        outlined init with copy of Attachment.MMCSMetadata(v24 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v34, v19, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
        closure #1 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(v19, v35, &v108);
        if (v2)
        {

          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);

          __break(1u);
          return result;
        }

        Topic = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
        if (v108)
        {
          break;
        }

        if (v32 == ++v34)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x1B2710150](Topic);
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v33 = v34 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v99 = v104;
    }

    while (v83 != v34);
  }

  else
  {
    v99 = MEMORY[0x1E69E7CC0];
  }

LABEL_21:

  v49 = v103;
  (*(*v103 + 640))(v99);
  v104 = 1;
  v105 = 0u;
  v106 = 0u;
  v107 = xmmword_1AEE0C1F0;
  (*(*v49 + 352))(&v104);
  v50 = v102;
  v51 = *(v101 + 40);
  v52 = v92;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v102 + v51, v92, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v53 = v93;
  v101 = *(v100 + 48);
  v54 = (v101)(v52, 1, v93);
  outlined destroy of NSObject?(v52, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if (v54 == 1)
  {
    v55 = type metadata accessor for TaskPriority();
    v56 = v96;
    (*(*(v55 - 8) + 56))(v96, 1, 1, v55);
    v57 = swift_allocObject();
    swift_weakInit();
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = v57;
    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ14CopresenceCore11UploadTokenVSg_Tt2g5(0, 0, v56, &async function pointer to partial apply for closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), v58);

    outlined destroy of NSObject?(v56, &_sScPSgMd, &_sScPSgMR);
    v60 = v97;
    v59 = v98;
  }

  else
  {
    v61 = v89;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v50 + v51, v89, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    v62 = v101;
    v63 = (v101)(v61, 1, v53);
    v60 = v97;
    if (v63 == 1)
    {
      v64 = v86;
      *v86 = 0;
      v64[1] = 0xE000000000000000;
      v64[2] = 0;
      v64[3] = 0xE000000000000000;
      v64[4] = 0;
      v64[5] = 0xE000000000000000;
      v64[6] = 0;
      UnknownStorage.init()();
      v65 = v62(v61, 1, v53);
      v66 = v88;
      v67 = v87;
      if (v65 != 1)
      {
        outlined destroy of NSObject?(v61, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
      }
    }

    else
    {
      v64 = v86;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v61, v86, type metadata accessor for AttachmentLedger_AuthPutMaterials);
      v66 = v88;
      v67 = v87;
    }

    v68 = v90;
    outlined init with copy of Attachment.MMCSMetadata(v64, v90, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v69 = (*(v100 + 80) + 16) & ~*(v100 + 80);
    v70 = v64;
    v71 = swift_allocObject();
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v68, v71 + v69, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    UUID.init()();
    PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(v67, &async function pointer to partial apply for closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), v71);

    (*(v66 + 8))(v67, v91);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v70, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v56 = v96;
    v59 = v98;
  }

  v72 = v94;
  static TaskPriority.userInitiated.getter();
  v73 = type metadata accessor for TaskPriority();
  (*(*(v73 - 8) + 56))(v56, 0, 1, v73);
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = v95;
  (*(v60 + 16))(v95, v49 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationStream, v59);
  outlined init with copy of UserNotificationCenter((v49 + 21), &v104);
  v76 = v56;
  v77 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v78 = (v72 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v59;
  v81 = v79;
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  (*(v60 + 32))(v79 + v77, v75, v80);
  *(v81 + v78) = v74;
  outlined init with take of ContiguousBytes(&v104, v81 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8));
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v76, &async function pointer to partial apply for closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), v81);

  return outlined destroy of NSObject?(v76, &_sScPSgMd, &_sScPSgMR);
}

uint64_t PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1)
{
  v2 = v1;
  v105 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v105);
  v110 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = v101 - v6;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v112 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  v111 = *(v108 - 8);
  v10 = MEMORY[0x1EEE9AC00](v108);
  v107 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v106 = v101 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v101 - v14);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  v23 = (*(v17 + 8))(v19, v16);
  if ((v22 & 1) == 0)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
LABEL_18:
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.attachmentLedgerTopic);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v119 = v38;
      *v37 = 136315138;
      v39 = PluginAttachmentLedgerTopic.description.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v119);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1AEB26000, v35, v36, "Received & tried processing initializeACK while not in the starting||retrying state. %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1B27120C0](v38, -1, -1);
      MEMORY[0x1B27120C0](v37, -1, -1);
    }

    goto LABEL_20;
  }

  (*(*v2 + 344))(&v113, v23);
  v25 = *(&v113 + 1);
  v24 = v113;
  if (*(&v115 + 1) >> 62)
  {
    if (*(&v115 + 1) >> 62 != 2 || *(&v115 + 1) != 0x8000000000000000 || *(&v113 + 1) | v113 | v114 | *(&v114 + 1) | v115 | v116)
    {
      outlined consume of PluginAttachmentLedgerTopic.State(v113, *(&v113 + 1), v114, *(&v114 + 1), v115, *(&v115 + 1), v116);
      if (one-time initialization token for attachmentLedgerTopic == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_57;
    }

    v25 = 0;
    v24 = 0;
  }

  v26 = *a1;
  if (*(a1 + 8) == 1)
  {
    if (v26 >= 8)
    {
      goto LABEL_9;
    }

LABEL_22:
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.attachmentLedgerTopic);
    v43 = v110;
    outlined init with copy of Attachment.MMCSMetadata(a1, v110, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v113 = v47;
      *v46 = 136315138;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v48 = Message.debugDescription.getter();
      v50 = v49;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v43, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v113);

      *(v46 + 4) = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1B27120C0](v47, -1, -1);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v43, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    v53 = 1;
    goto LABEL_45;
  }

  if (v26 != 8)
  {
    goto LABEL_22;
  }

LABEL_9:
  v102 = v24;
  v105 = v25;
  v103 = v2;
  v27 = *(a1 + 24);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    *&v113 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v30 = 0;
    v29 = v113;
    v110 = v27 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
    v31 = v109;
    while (v30 < *(v27 + 16))
    {
      outlined init with copy of Attachment.MMCSMetadata(v110 + *(v112 + 72) * v30, v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      closure #1 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(v9, &v119, v15);
      if (v31)
      {
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      }

      v31 = 0;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      *&v113 = v29;
      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v31 = 0;
        v29 = v113;
      }

      ++v30;
      *(v29 + 16) = v33 + 1;
      outlined init with take of UUID?(v15, v29 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v33, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
      if (v28 == v30)
      {
        v109 = 0;
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_29:
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Log.attachment);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v113 = v58;
    *v57 = 136315138;
    v59 = MEMORY[0x1B2710180](v29, v108);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v113);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_1AEB26000, v55, v56, "[Subscribe] Missing encryptionIDs: %s, performing recovery!", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1B27120C0](v58, -1, -1);
    MEMORY[0x1B27120C0](v57, -1, -1);
  }

  v62 = v103;
  v63 = (*v103 + 392);
  v64 = *v63;
  (*v63)(&v113);
  if (v102 >= v114)
  {

    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v54, static Log.attachmentLedgerTopic);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v113 = v74;
      *v73 = 136315138;
      v75 = PluginAttachmentLedgerTopic.description.getter();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v113);

      *(v73 + 4) = v77;
      _os_log_impl(&dword_1AEB26000, v71, v72, "Exceeded retry attempts. Failing %s.", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x1B27120C0](v74, -1, -1);
      MEMORY[0x1B27120C0](v73, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    v53 = 3;
LABEL_45:
    *v52 = v53;
    swift_willThrow();
  }

  if (v105)
  {

    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v54, static Log.attachmentLedgerTopic);

    v35 = Logger.logObject.getter();
    v65 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v35, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v113 = v67;
      *v66 = 136315138;
      v68 = PluginAttachmentLedgerTopic.description.getter();
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v113);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_1AEB26000, v35, v65, "%s reached invalid state where we have an ongoing task while we receiving back missingEncryptionIDs.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x1B27120C0](v67, -1, -1);
      MEMORY[0x1B27120C0](v66, -1, -1);
    }

LABEL_20:
  }

  v110 = v102 + 1;
  v79 = type metadata accessor for TaskPriority();
  v80 = v104;
  (*(*(v79 - 8) + 56))(v104, 1, 1, v79);
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = v62[29];
  v83 = v62[30];
  __swift_project_boxed_opaque_existential_1(v62 + 26, v82);
  v84 = (*(v83 + 24))(v82, v83);
  v64(v117);
  outlined init with copy of UserNotificationCenter((v62 + 26), &v113);
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  *(v85 + 24) = 0;
  v86 = v117[1];
  *(v85 + 32) = v117[0];
  *(v85 + 48) = v86;
  *(v85 + 64) = v118;
  outlined init with take of ContiguousBytes(&v113, v85 + 72);
  *(v85 + 112) = v84;
  *(v85 + 120) = v81;
  v105 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v80, &async function pointer to partial apply for closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:), v85, MEMORY[0x1E69E7CA8] + 8);
  outlined init with copy of UserNotificationCenter((v62 + 26), &v113);
  v87 = *(&v114 + 1);
  v88 = v115;
  v89 = __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
  v90 = *(v29 + 16);
  if (v90)
  {
    v101[1] = v89;
    v102 = v88;
    v104 = v87;
    v119 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
    v91 = v119;
    v92 = v29 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v112 = *(v111 + 72);
    do
    {
      v93 = v106;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v92, v106, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
      v94 = v107;
      outlined init with take of UUID?(v93, v107, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
      v95 = *v94;
      v96 = *(v108 + 48);
      v97 = type metadata accessor for UUID();
      (*(*(v97 - 8) + 8))(&v94[v96], v97);
      v119 = v91;
      v99 = *(v91 + 16);
      v98 = *(v91 + 24);
      if (v99 >= v98 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
        v91 = v119;
      }

      *(v91 + 16) = v99 + 1;
      *(v91 + 8 * v99 + 32) = v95;
      v92 += v112;
      --v90;
    }

    while (v90);

    v62 = v103;
    v87 = v104;
    v88 = v102;
  }

  else
  {

    v91 = MEMORY[0x1E69E7CC0];
  }

  (*(v88 + 72))(v91, v87, v88);

  __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  *&v113 = v110;
  *(&v113 + 1) = v105;
  v114 = 0u;
  v115 = 0u;
  v116 = 0;
  v100 = *(*v62 + 352);

  v100(&v113);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v91 = a3;
  v115 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v81 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v106 = (&v81 - v11);
  v12 = type metadata accessor for UUID();
  v103 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v101);
  v15 = &v81 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v107 = &v81 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v81 - v26;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v81 - v26, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v28 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) != 1)
  {
    v85 = v27;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v27, v25, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v106;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v25, v106, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined init with copy of Attachment.MMCSMetadata(v32, v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v33 = outlined init with copy of UserNotificationCenter((a2 + 26), v114);
      v34 = a2[13];
      (*(*a2 + 392))(&v110, v33);
      v108[0] = v110;
      v108[1] = v111;
      v108[2] = v112;
      v109 = v113;
      v35 = v90;
      v36 = specialized Attachment.__allocating_init(attachment:dataCryptor:localEncryptionID:config:)(v10, v114, v34, v108);
      if (v35)
      {
        if (one-time initialization token for attachmentLedgerTopic != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Log.attachmentLedgerTopic);
        v38 = v105;
        outlined init with copy of Attachment.MMCSMetadata(v32, v105, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v39 = v35;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v114[0] = v43;
          *v42 = 136315394;
          v44 = Data.description.getter();
          v46 = v45;
          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, type metadata accessor for AttachmentLedger_AttachmentMetadata);
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v114);

          *(v42 + 4) = v47;
          *(v42 + 12) = 2080;
          v110 = v35;
          v48 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v49 = String.init<A>(reflecting:)();
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v114);

          *(v42 + 14) = v51;
          _os_log_impl(&dword_1AEB26000, v40, v41, "Failed to get attachment %s, reason: %s", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v43, -1, -1);
          MEMORY[0x1B27120C0](v42, -1, -1);
        }

        else
        {

          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        }

        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v29 = 0;
      }

      else
      {
        v29 = v36;
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      }

      v30 = v91;
LABEL_48:
      v31 = v85;
      goto LABEL_49;
    }

    v52 = v25[1];
    v104 = *v25;
    v102 = v52;
    v100 = (*(*a2 + 632))();
    if (v100 >> 62)
    {
      goto LABEL_53;
    }

    v53 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
    v54 = v93;
    if (!v53)
    {
LABEL_40:

      v29 = 0;
LABEL_47:
      outlined consume of Data._Representation(v104, v102);
      v30 = v91;
      goto LABEL_48;
    }

    v55 = 0;
    v99 = v100 & 0xC000000000000001;
    v98 = v100 & 0xFFFFFFFFFFFFFF8;
    v97 = (v103 + 16);
    v106 = (v103 + 56);
    v96 = v102 >> 62;
    v56 = __OFSUB__(HIDWORD(v104), v104);
    v84 = v56;
    v83 = HIDWORD(v104) - v104;
    v88 = BYTE6(v102);
    v82 = (v103 + 32);
    v87 = (v103 + 8);
    v57 = &_s10Foundation4UUIDVSgMR;
    v94 = v53;
    v95 = (v103 + 48);
    while (1)
    {
      if (v99)
      {
        v59 = MEMORY[0x1B2710B10](v55, v100);
        v60 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
        if (v55 >= *(v98 + 16))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v53 = __CocoaSet.count.getter();
          goto LABEL_11;
        }

        v60 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_39;
        }
      }

      v61 = *v97;
      v105 = v59;
      v61(v54, v59 + OBJC_IVAR____TtC14CopresenceCore10Attachment_id, v12);
      v62 = *v106;
      (*v106)(v54, 0, 1, v12);
      v103 = v60;
      if (v96 > 1)
      {
        if (v96 != 2)
        {
          goto LABEL_31;
        }

        v65 = *(v104 + 16);
        v64 = *(v104 + 24);
        v63 = v64 - v65;
        if (__OFSUB__(v64, v65))
        {
          goto LABEL_52;
        }
      }

      else
      {
        v63 = v88;
        if (!v96)
        {
          goto LABEL_29;
        }

        v63 = v83;
        if (v84)
        {
          goto LABEL_51;
        }
      }

      outlined copy of Data._Representation(v104, v102);
LABEL_29:
      if (v63 == 16)
      {
        v114[0] = 0;
        v114[1] = 0;
        v66 = v54;
        v67 = v104;
        v68 = v57;
        v69 = v102;
        v110 = v104;
        v111 = v102;
        lazy protocol witness table accessor for type Data and conformance Data();
        DataProtocol.copyBytes(to:)();
        UUID.init(uuid:)();
        v70 = v67;
        v54 = v66;
        v71 = v69;
        v57 = v68;
        outlined consume of Data._Representation(v70, v71);
        v72 = 0;
        goto LABEL_32;
      }

LABEL_31:
      outlined consume of Data._Representation(v104, v102);
      v72 = 1;
LABEL_32:
      v73 = v107;
      v62(v107, v72, 1, v12);
      v74 = *(v101 + 48);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v54, v15, &_s10Foundation4UUIDVSgMd, v57);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v73, &v15[v74], &_s10Foundation4UUIDVSgMd, v57);
      v75 = v57;
      v76 = *v95;
      if ((*v95)(v15, 1, v12) == 1)
      {
        outlined destroy of NSObject?(v107, &_s10Foundation4UUIDVSgMd, v57);
        outlined destroy of NSObject?(v54, &_s10Foundation4UUIDVSgMd, v57);
        v58 = v76(&v15[v74], 1, v12);
        v29 = v105;
        if (v58 == 1)
        {
          outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_46:

          goto LABEL_47;
        }

        goto LABEL_17;
      }

      v77 = v92;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15, v92, &_s10Foundation4UUIDVSgMd, v57);
      if (v76(&v15[v74], 1, v12) == 1)
      {
        outlined destroy of NSObject?(v107, &_s10Foundation4UUIDVSgMd, v57);
        v54 = v93;
        outlined destroy of NSObject?(v93, &_s10Foundation4UUIDVSgMd, v57);
        (*v87)(v77, v12);
LABEL_17:
        outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
        goto LABEL_18;
      }

      v78 = v89;
      (*v82)(v89, &v15[v74], v12);
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v86 = dispatch thunk of static Equatable.== infix(_:_:)();
      v79 = *v87;
      (*v87)(v78, v12);
      outlined destroy of NSObject?(v107, &_s10Foundation4UUIDVSgMd, v75);
      v54 = v93;
      outlined destroy of NSObject?(v93, &_s10Foundation4UUIDVSgMd, v75);
      v79(v77, v12);
      outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, v75);
      v29 = v105;
      v57 = v75;
      if (v86)
      {
        goto LABEL_46;
      }

LABEL_18:

      ++v55;
      if (v103 == v94)
      {
        goto LABEL_40;
      }
    }
  }

  v29 = 0;
  v30 = v91;
  v31 = v27;
LABEL_49:
  *v30 = v29;
  return outlined destroy of NSObject?(v31, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)()
{
  outlined init with copy of Attachment.MMCSMetadata(v0[3], v0[2], type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v1 = v0[1];

  return v1();
}

void PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v75 = a3;
  v73 = a2;
  v89 = a1;
  v5 = type metadata accessor for UUID();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v70 - v11;
  v12 = type metadata accessor for ContinuousClock.Instant();
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v78 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v70 - v15;
  v86 = type metadata accessor for ContinuousClock();
  v74 = *(v86 - 8);
  v16 = *(v74 + 64);
  v17 = MEMORY[0x1EEE9AC00](v86);
  v77 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v70 - v18;
  v83 = type metadata accessor for Date();
  v81 = *(v83 - 8);
  v19 = *(v81 + 64);
  v20 = MEMORY[0x1EEE9AC00](v83);
  v76 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v70 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v4 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v25 = v26;
  (*(v23 + 104))(v25, *MEMORY[0x1E69E8020], v22);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v28 = (*(v23 + 8))(v25, v22);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  (*(*v4 + 288))(&v92, v28);
  if ((v97 & 0x8000000000000000) != 0 && ((v29 = v94 | v93, v30 = v96 | v98, v97 != 0x8000000000000000) || v29 | v92 | v95 | v30))
  {
    v72 = v92;
    v71 = v95;
    v45 = v97;
    outlined consume of PluginAttachmentLedgerTopic.State(v92, v93, v94, v95, v96, v97, v98);
    if (v45 == 0x8000000000000000 && v72 == 1 && !(v29 | v71 | v30))
    {
      v46 = v79;
      static Date.now.getter();
      v47 = v82;
      ContinuousClock.init()();
      v48 = v85;
      ContinuousClock.now.getter();
      v49 = type metadata accessor for TaskPriority();
      (*(*(v49 - 8) + 56))(v84, 1, 1, v49);
      v50 = v90;
      (*(v90 + 16))(v80, v89, v91);
      v51 = v87;
      (*(v87 + 16))(v78, v48, v88);
      v52 = v74;
      (*(v74 + 16))(v77, v47, v86);
      v53 = v81;
      (*(v81 + 16))(v76, v46, v83);
      v54 = (*(v50 + 80) + 48) & ~*(v50 + 80);
      v89 = (v6 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (*(v51 + 80) + v89 + 8) & ~*(v51 + 80);
      v56 = (v13 + *(v52 + 80) + v55) & ~*(v52 + 80);
      v57 = (v16 + *(v53 + 80) + v56) & ~*(v53 + 80);
      v58 = swift_allocObject();
      *(v58 + 2) = 0;
      *(v58 + 3) = 0;
      v59 = v75;
      *(v58 + 4) = v73;
      *(v58 + 5) = v59;
      (*(v50 + 32))(&v58[v54], v80, v91);
      *&v58[v89] = v4;
      v60 = v87;
      v61 = &v58[v55];
      v62 = v88;
      (*(v87 + 32))(v61, v78, v88);
      v63 = v52;
      v64 = &v58[v56];
      v65 = v86;
      (*(v52 + 32))(v64, v77, v86);
      v66 = v81;
      v67 = &v58[v57];
      v68 = v83;
      (*(v81 + 32))(v67, v76, v83);

      v69 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14CopresenceCore11UploadTokenV_Tt2g5Tm(0, 0, v84, &async function pointer to partial apply for closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:), v58, type metadata accessor for UploadToken);
      swift_beginAccess();
      v4[12] = v69;

      PluginAttachmentLedgerTopic.uploadToken.didset();

      (*(v60 + 8))(v85, v62);
      (*(v63 + 8))(v82, v65);
      (*(v66 + 8))(v79, v68);
      return;
    }
  }

  else
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v92, v93, v94, v95, v96, v97, v98);
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    goto LABEL_15;
  }

LABEL_7:
  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.attachmentLedgerTopic);
  v32 = v90;
  v33 = v91;
  (*(v90 + 16))(v8, v89, v91);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v92 = v37;
    *v36 = 136315394;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    (*(v32 + 8))(v8, v33);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v92);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    v42 = PluginAttachmentLedgerTopic.description.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v92);

    *(v36 + 14) = v44;
    _os_log_impl(&dword_1AEB26000, v34, v35, "[%s] Received request to refresh uploadToken without being subscribed on %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v36, -1, -1);
  }

  else
  {

    (*(v32 + 8))(v8, v33);
  }
}

uint64_t closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

uint64_t closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
    v3 = v0[5];

    return PluginAttachmentLedgerTopic.requestUploadToken()(v3);
  }

  else
  {
    v5 = v0[5];
    v6 = type metadata accessor for UploadToken(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {

    v2 = closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for UploadToken(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PluginAttachmentLedgerTopic.requestUploadToken()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.requestUploadToken(), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.requestUploadToken()()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy14CopresenceCore11UploadTokenVs5Error_pGSgMd, &_sScTy14CopresenceCore11UploadTokenVs5Error_pGSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v2 = v0[2];
  v0[5] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[6] = v3;
    v4 = type metadata accessor for UploadToken(0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v3 = v0;
    v3[1] = PluginAttachmentLedgerTopic.requestUploadToken();
    v6 = v0[3];
    v7 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v6, v2, v4, v5, v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[8] = v8;
    v9 = type metadata accessor for UploadToken(0);
    *v8 = v0;
    v8[1] = PluginAttachmentLedgerTopic.requestUploadToken();
    v10 = v0[3];
    v11 = v0[4];

    return MEMORY[0x1EEE6DE38](v10, 0, 0, 0xD000000000000014, 0x80000001AEE324A0, partial apply for closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken(), v11, v9);
  }
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = PluginAttachmentLedgerTopic.requestUploadToken();
  }

  else
  {
    v2 = PluginAttachmentLedgerTopic.requestUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.requestUploadToken(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ14CopresenceCore11UploadTokenVSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}