uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined destroy of ActivitySession.DomainAssertionWrapper(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySession.DomainAssertionWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized ActivitySession.assertion(_:didInvalidateWithError:)(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v8 = String.init<A>(reflecting:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, oslog, v4, "[Assertion] DomainAssertionObserver didInvalidateWithError for app with error:%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type ActivitySessionErrors and conformance ActivitySessionErrors()
{
  result = lazy protocol witness table cache variable for type ActivitySessionErrors and conformance ActivitySessionErrors;
  if (!lazy protocol witness table cache variable for type ActivitySessionErrors and conformance ActivitySessionErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySessionErrors and conformance ActivitySessionErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySessionErrors and conformance ActivitySessionErrors;
  if (!lazy protocol witness table cache variable for type ActivitySessionErrors and conformance ActivitySessionErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySessionErrors and conformance ActivitySessionErrors);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v42 & 1, &_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of Set<String>.Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v42 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of Set<String>.Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ActivitySession.Errors and conformance ActivitySession.Errors()
{
  result = lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors;
  if (!lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors;
  if (!lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Errors and conformance ActivitySession.Errors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities()
{
  result = lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities;
  if (!lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities;
  if (!lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities;
  if (!lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities;
  if (!lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivitySession.Capabilities and conformance ActivitySession.Capabilities);
  }

  return result;
}

void type metadata completion function for ActivitySession(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ActivitySession.DomainAssertionWrapper?(319, &lazy cache variable for type metadata for ActivitySession.DomainAssertionWrapper?, type metadata accessor for ActivitySession.DomainAssertionWrapper);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TUConversationActivityLifetimePolicy(319, &lazy cache variable for type metadata for Published<ActivitySession.State>, &type metadata for ActivitySession.State, MEMORY[0x1E695C070]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v5 <= 0x3F)
          {
            type metadata accessor for ActivitySession.DomainAssertionWrapper?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for ActivitySession.DomainAssertionWrapper?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ActivitySession.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivitySession.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t get_enum_tag_for_layout_string_14CopresenceCore15ActivitySessionC5StateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for ActivitySession.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ActivitySession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ActivitySession.State(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivitySession.State.InvalidationReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivitySession.State.InvalidationReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ActivitySession.State.InvalidationReason(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for ActivitySession.State.InvalidationReason(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivitySession.Capabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivitySession.Capabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata completion function for ActivitySession.DomainAssertionWrapper(uint64_t a1)
{
  result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t outlined consume of Set<TUConversationActivitySession>.Iterator?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return outlined consume of Set<String>.Iterator._Variant(a1);
  }

  return a1;
}

uint64_t outlined init with copy of ActivitySession.DomainAssertionWrapper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of ActivitySession.DomainAssertionWrapper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant()
{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.Participant and conformance IDSGroupSessionProvider.Participant);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of UserNotificationCenter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #2 in ActivitySession.listener(_:shouldAcceptNewConnection:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410);
  v4 = v2;
  return v3(v2);
}

uint64_t outlined assign with take of ActivitySession.DomainAssertionWrapper?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ActivitySession.DomainAssertionWrapper?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_94Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void type metadata accessor for TUConversationActivityLifetimePolicy(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OneShotCancellationBox.__deallocating_deinit()
{
  MEMORY[0x1B27120C0](*(v0 + 16), -1, -1);
  outlined consume of OneShotCancellationBox.State(*(v0 + 24));

  return swift_deallocClassInstance();
}

void OneShotCancellationBox.store(_:)(uint64_t a1)
{
  os_unfair_lock_lock(*(v1 + 16));
  v3 = *(v1 + 24);
  if (v3 != 1)
  {
    if (v3)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    *(v1 + 24) = a1;
  }

  v4 = *(v1 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t OneShotCancellationBox.cancel()()
{
  os_unfair_lock_lock(*(v0 + 16));
  v1 = *(v0 + 24);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0;
    }

    else
    {

      AnyCancellable.cancel()();
      outlined consume of OneShotCancellationBox.State(v1);
      v3 = *(v0 + 24);
      v2 = 1;
      *(v0 + 24) = 1;
      outlined consume of OneShotCancellationBox.State(v3);
    }
  }

  else
  {
    v2 = 1;
    *(v0 + 24) = 1;
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v2;
}

uint64_t Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for OneShotCancellationBox();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = v12;
  v15[5] = a1;
  v15[6] = a2;
  swift_retain_n();

  v16 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v16);
}

uint64_t closure #1 in Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Subscribers.Completion();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v18 - v15;
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
  if (OneShotCancellationBox.cancel()())
  {
    a3(v16);
  }

  return (*(v14 + 8))(v16, AssociatedTypeWitness);
}

uint64_t Publisher<>.sinkOnce(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = a2;

  v11 = Publisher<>.sink(receiveValue:)();

  OneShotCancellationBox.store(_:)(v11);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t partial apply for closure #2 in Publisher.sinkOnce(_:onError:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  result = OneShotCancellationBox.cancel()();
  if (result)
  {
    return v3(a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CopresenceCore22OneShotCancellationBox33_F7658F7EEB60D7C4F9F7227BD41B3782LLC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for OneShotCancellationBox.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OneShotCancellationBox.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for OneShotCancellationBox.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t outlined consume of OneShotCancellationBox.State(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id PresenceSessionConnectionInfo.__allocating_init(endpoint:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PresenceSessionConnectionInfo.init(endpoint:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PresenceSessionConnectionInfo();
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t PresenceSessionConnectionInfo.description.getter()
{
  _StringGuts.grow(_:)(43);

  v1 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x1B2710020](v2, v4);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0xD000000000000028;
}

Swift::Void __swiftcall PresenceSessionConnectionInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint);
  v4 = MEMORY[0x1B270FF70](0x746E696F70646E65, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id PresenceSessionConnectionInfo.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSXPCListenerEndpoint();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    *&v4[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = v5;
    v8.receiver = v4;
    v8.super_class = v2;
    v6 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id PresenceSessionConnectionInfo.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSXPCListenerEndpoint();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for PresenceSessionConnectionInfo();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for PresenceSessionConnectionInfo();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

unint64_t type metadata accessor for NSXPCListenerEndpoint()
{
  result = lazy cache variable for type metadata for NSXPCListenerEndpoint;
  if (!lazy cache variable for type metadata for NSXPCListenerEndpoint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSXPCListenerEndpoint);
  }

  return result;
}

id PresenceSessionConnectionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceSessionConnectionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceSessionConnectionInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PresenceSessionParticipant.__allocating_init(id:handle:isCurrentDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = UUID._bridgeToObjectiveC()();
  v11 = MEMORY[0x1B270FF70](a2, a3);

  *&v10[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v11;
  v10[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = a4;
  v15.receiver = v10;
  v15.super_class = v5;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id PresenceSessionParticipant.init(id:handle:isCurrentDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  *&v5[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = UUID._bridgeToObjectiveC()();
  v10 = MEMORY[0x1B270FF70](a2, a3);

  *&v5[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v10;
  v5[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = a4;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for PresenceSessionParticipant();
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

uint64_t PresenceSessionParticipant.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(67);
  MEMORY[0x1B2710020](0xD00000000000001FLL, 0x80000001AEE30390);
  v2 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B2710020](v3, v5);

  MEMORY[0x1B2710020](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  v6 = [*(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle) description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x1B2710020](v7, v9);

  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE303B0);
  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v10, v11);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall PresenceSessionParticipant.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id);
  v4 = MEMORY[0x1B270FF70](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle);
  v6 = MEMORY[0x1B270FF70](0x656C646E6168, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice);
  v8 = MEMORY[0x1B270FF70](0x6E65727275437369, 0xEF65636976654474);
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

id PresenceSessionParticipant.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v7 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v7)
    {
      v8 = v7;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v9 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v9)
      {
        *&v4[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = v6;
        *&v4[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v8;
        v10 = v9;
        v11 = [v9 BOOLValue];

        v4[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = v11;
        v14.receiver = v4;
        v14.super_class = v2;
        v12 = objc_msgSendSuper2(&v14, sel_init);

        return v12;
      }

      v6 = v8;
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id PresenceSessionParticipant.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v6 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v8 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v8)
      {
        *&v2[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = v5;
        *&v2[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v7;
        v9 = v8;
        v10 = [v8 BOOLValue];

        v2[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = v10;
        v13.receiver = v2;
        v13.super_class = type metadata accessor for PresenceSessionParticipant();
        v11 = objc_msgSendSuper2(&v13, sel_init);

        return v11;
      }

      v5 = v7;
    }
  }

  type metadata accessor for PresenceSessionParticipant();
  swift_deallocPartialClassInstance();
  return 0;
}

id PresenceSessionParticipant.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceSessionParticipant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceSessionParticipant();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AttachmentLedgerClient.Config.participantIDSalt.getter()
{
  v1 = *v0;

  return v1;
}

CopresenceCore::AttachmentLedgerClient::Config __swiftcall AttachmentLedgerClient.Config.init(participantIDSalt:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:)(Swift::String participantIDSalt, Swift::Int createTopicMaxAttempts, Swift::Double createTopicRpcRetryIntervalSeconds)
{
  *v3 = participantIDSalt;
  *(v3 + 16) = createTopicMaxAttempts;
  *(v3 + 24) = createTopicRpcRetryIntervalSeconds;
  result.participantIDSalt = participantIDSalt;
  result.createTopicRpcRetryIntervalSeconds = createTopicRpcRetryIntervalSeconds;
  result.createTopicMaxAttempts = createTopicMaxAttempts;
  return result;
}

uint64_t AttachmentLedgerClient.config.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t AttachmentLedgerClient.__allocating_init(serviceProvider:config:localParticipantID:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v10 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of ContiguousBytes(a1, v6 + 56);
  *(v6 + 24) = v10;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 96) = a3;
  return v6;
}

uint64_t AttachmentLedgerClient.init(serviceProvider:config:localParticipantID:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v8 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of ContiguousBytes(a1, v3 + 56);
  *(v3 + 24) = v8;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  *(v3 + 96) = a3;
  return v3;
}

uint64_t AttachmentLedgerClient.__allocating_init(client:config:localParticipantID:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = type metadata accessor for PluginAttachmentLedgerServiceProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v15[3] = v8;
  v15[4] = &protocol witness table for PluginAttachmentLedgerServiceProvider;
  v15[0] = v9;
  v12 = v11;
  v13 = v6;
  v14 = v7;
  return (*(v3 + 136))(v15, &v12, a3);
}

uint64_t AttachmentLedgerClient.updateVirtualParticipant(_:localParticipantID:)(void *a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  return (*(v6 + 56))([a1 identifier], a2, v5, v6);
}

uint64_t AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = a1;
  v18 = a2;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v5 = *(TopicRequest - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v2[10];
  v11 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v12);
  *v10 = (*(v11 + 8))(v12, v11);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v13)
  {
    outlined init with copy of AttachmentLedger_CreateTopicRequest(v17, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentLedger_CreateTopicRequest);
    v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    outlined init with take of AttachmentLedger_CreateTopicRequest(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AttachmentLedger_CreateTopicRequest);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicC13ConfigurationVSgs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicC13ConfigurationVSgs5Error_pGMR);
    swift_allocObject();

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(void (*a1)(__int128 *), void (*a2)(__int128 *), void *a3, uint64_t *a4, uint64_t a5)
{
  v40 = a5;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v10 = *(TopicRequest - 8);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v12 = v11;
  v13 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  v14 = a4[1];
  swift_beginAccess();
  v16 = a3[2];
  if (!*(v16 + 16))
  {
    goto LABEL_8;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
  if ((v18 & 1) == 0)
  {

    goto LABEL_8;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  (*(*v19 + 288))(&v41, v20);
  if (!(v44 >> 62))
  {
    goto LABEL_12;
  }

  if (v44 >> 62 != 1)
  {
    v35 = v42 | *(&v41 + 1);
    if (v44 != 0x8000000000000000 || v35 | v41 | *(&v42 + 1) | v43 | v45)
    {
      v37 = v43 | v45;
      v38 = *(&v42 + 1);
      v39 = v41;
      v36 = v44;
      outlined consume of PluginAttachmentLedgerTopic.State(v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45);
      if (v36 != 0x8000000000000000 || v39 != 1 || v35 | v38 | v37)
      {
        goto LABEL_6;
      }

LABEL_13:
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      LOWORD(v44) = 1;
      a1(&v41);
    }

LABEL_12:
    outlined consume of PluginAttachmentLedgerTopic.State(v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45);
    goto LABEL_13;
  }

  outlined consume of PluginAttachmentLedgerTopic.State(v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45);
LABEL_6:

LABEL_8:
  v21 = a3[10];
  v22 = a3[11];
  __swift_project_boxed_opaque_existential_1(a3 + 7, v21);
  v39 = (*(v22 + 24))(a4, v21, v22);
  outlined init with copy of AttachmentLedger_CreateTopicRequest(a4, v13, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v23 = a1;
  v24 = *(v10 + 80);
  v37 = a4;
  v38 = a3;
  v25 = a2;
  v26 = (v24 + 16) & ~v24;
  v27 = v13;
  v28 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  outlined init with take of AttachmentLedger_CreateTopicRequest(v27, v29 + v26, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v30 = (v29 + v28);
  *v30 = v23;
  v30[1] = v25;
  outlined init with copy of AttachmentLedger_CreateTopicRequest(v37, v27, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v31 = (v24 + 48) & ~v24;
  v32 = swift_allocObject();
  v33 = v38;
  v32[2] = v40;
  v32[3] = v33;
  v32[4] = v23;
  v32[5] = v25;
  outlined init with take of AttachmentLedger_CreateTopicRequest(v27, v32 + v31, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  swift_retain_n();

  specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:), v29, partial apply for closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:), v32);
}

void closure #1 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v84 = a2;
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  MEMORY[0x1EEE9AC00](TopicResponse);
  v9 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMd, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v80 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v73 - v13;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v79 = *(TopicRequest - 8);
  v14 = MEMORY[0x1EEE9AC00](TopicRequest);
  v77 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v78 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v73 - v18;
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v20 = *(Topic - 8);
  v21 = MEMORY[0x1EEE9AC00](Topic);
  v86 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v83 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v73 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v73 - v31;
  if (*(a1 + 8) == 1 && (*a1 - 1) <= 1)
  {
    v75 = a3;
    v76 = a4;
    v33 = *(TopicResponse + 28);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v33, &v73 - v31, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    v34 = *(v20 + 48);
    v35 = v34(v32, 1, Topic);
    outlined destroy of NSObject?(v32, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    if (v35 == 1)
    {
      v36 = 0;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = v75;
    }

    else
    {
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v33, v30, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
      if (v34(v30, 1, Topic) == 1)
      {
        v47 = v26;
        *v26 = 0;
        *(v26 + 1) = 0;
        *(v26 + 4) = 0;
        UnknownStorage.init()();
        v48 = v34(v30, 1, Topic);
        v39 = v75;
        if (v48 != 1)
        {
          outlined destroy of NSObject?(v30, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
        }
      }

      else
      {
        v47 = v26;
        outlined init with take of AttachmentLedger_CreateTopicRequest(v30, v26, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
        v39 = v75;
      }

      v49 = v83;
      if (one-time initialization token for attachmentLedgerService != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Log.attachmentLedgerService);
      outlined init with copy of AttachmentLedger_CreateTopicRequest(v47, v49, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
      v51 = v85;
      outlined init with copy of AttachmentLedger_CreateTopicRequest(v84, v85, type metadata accessor for AttachmentLedger_CreateTopicRequest);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        LODWORD(v75) = v53;
        LODWORD(v84) = v35;
        v54 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v87 = v74;
        *v54 = 136315394;
        lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse.ClientTopicConfig and conformance AttachmentLedger_CreateTopicResponse.ClientTopicConfig, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
        v55 = Message.debugDescription.getter();
        v57 = v56;
        outlined destroy of AttachmentLedger_CreateTopicRequest(v49, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v87);

        *(v54 + 4) = v58;
        *(v54 + 12) = 2080;
        v59 = v82;
        outlined init with copy of AttachmentLedger_CreateTopicRequest(v51, v82, type metadata accessor for AttachmentLedger_CreateTopicRequest);
        v60 = v79;
        v61 = TopicRequest;
        (*(v79 + 56))(v59, 0, 1, TopicRequest);
        v62 = v80;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v59, v80, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMd, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMR);
        if ((*(v60 + 48))(v62, 1, v61) == 1)
        {
          v63 = 0xE300000000000000;
          v64 = 7104878;
        }

        else
        {
          v65 = v39;
          v66 = v52;
          v67 = v78;
          outlined init with take of AttachmentLedger_CreateTopicRequest(v62, v78, type metadata accessor for AttachmentLedger_CreateTopicRequest);
          outlined init with copy of AttachmentLedger_CreateTopicRequest(v67, v77, type metadata accessor for AttachmentLedger_CreateTopicRequest);
          v64 = String.init<A>(reflecting:)();
          v63 = v68;
          v69 = v67;
          v52 = v66;
          v39 = v65;
          outlined destroy of AttachmentLedger_CreateTopicRequest(v69, type metadata accessor for AttachmentLedger_CreateTopicRequest);
        }

        outlined destroy of NSObject?(v59, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMd, &_s14CopresenceCore35AttachmentLedger_CreateTopicRequestVSgMR);
        outlined destroy of AttachmentLedger_CreateTopicRequest(v51, type metadata accessor for AttachmentLedger_CreateTopicRequest);
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, v87);

        *(v54 + 14) = v70;
        _os_log_impl(&dword_1AEB26000, v52, v75, "[CreateTopic] Received server-specified topic-config, config=%s for request=%s", v54, 0x16u);
        v71 = v74;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v71, -1, -1);
        MEMORY[0x1B27120C0](v54, -1, -1);

        v35 = v84;
      }

      else
      {

        outlined destroy of AttachmentLedger_CreateTopicRequest(v51, type metadata accessor for AttachmentLedger_CreateTopicRequest);
        outlined destroy of AttachmentLedger_CreateTopicRequest(v49, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
      }

      v72 = v86;
      outlined init with copy of AttachmentLedger_CreateTopicRequest(v47, v86, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
      PluginAttachmentLedgerTopic.Configuration.init(proto:)(v72, v87);
      outlined destroy of AttachmentLedger_CreateTopicRequest(v47, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
      v37 = *v87;
      v38 = *&v87[16];
      v36 = *&v87[32];
    }

    *v87 = v37;
    *&v87[16] = v38;
    *&v87[32] = v36;
    v88 = v35 == 1;
    v39(v87);
  }

  else
  {
    if (one-time initialization token for attachmentLedgerService != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Log.attachmentLedgerService);
    outlined init with copy of AttachmentLedger_CreateTopicRequest(a1, v9, type metadata accessor for AttachmentLedger_CreateTopicResponse);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      v44 = *v9;
      outlined destroy of AttachmentLedger_CreateTopicRequest(v9, type metadata accessor for AttachmentLedger_CreateTopicResponse);
      *(v43 + 4) = v44;
      _os_log_impl(&dword_1AEB26000, v41, v42, "[CreateTopic] Failed, unexpected response-status, code=%ld", v43, 0xCu);
      MEMORY[0x1B27120C0](v43, -1, -1);
    }

    else
    {
      outlined destroy of AttachmentLedger_CreateTopicRequest(v9, type metadata accessor for AttachmentLedger_CreateTopicResponse);
    }

    type metadata accessor for AttachmentLedgerTopicError(0);
    lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type AttachmentLedgerTopicError and conformance AttachmentLedgerTopicError, type metadata accessor for AttachmentLedgerTopicError, &protocol conformance descriptor for AttachmentLedgerTopicError);
    v45 = swift_allocError();
    *v46 = 0xD000000000000017;
    v46[1] = 0x80000001AEE304C0;
    swift_storeEnumTagMultiPayload();
    *v87 = v45;
    memset(&v87[8], 0, 32);
    v88 = 256;
    a3(v87);
    outlined consume of Result<PluginAttachmentLedgerTopic.Configuration?, Error>(*v87, *&v87[8], *&v87[16], *&v87[24], *&v87[32], v88, SHIBYTE(v88));
  }
}

void closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id *), uint64_t a5, uint64_t a6)
{
  v80 = a6;
  v92 = a4;
  v93 = a5;
  v95 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v77 = *(TopicRequest - 8);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v78 = v12;
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchTimeInterval();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DispatchTime();
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v90 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v24 = type metadata accessor for PluginRpcError(0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v72 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v72 - v32;
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Log.attachmentLedgerService);
  v94 = a1;
  outlined init with copy of AttachmentLedger_CreateTopicRequest(a1, v33, type metadata accessor for PluginRpcError);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v37 = os_log_type_enabled(v35, v36);
  v91 = a2;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock = v73;
    *v38 = 136315138;
    outlined init with copy of AttachmentLedger_CreateTopicRequest(v33, v23, type metadata accessor for PluginRpcError);
    (*(v25 + 56))(v23, 0, 1, v24);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v23, v21, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    if ((*(v25 + 48))(v21, 1, v24) == 1)
    {
      v39 = 0xE300000000000000;
      v40 = 7104878;
    }

    else
    {
      outlined init with take of AttachmentLedger_CreateTopicRequest(v21, v31, type metadata accessor for PluginRpcError);
      outlined init with copy of AttachmentLedger_CreateTopicRequest(v31, v28, type metadata accessor for PluginRpcError);
      v40 = String.init<A>(reflecting:)();
      v39 = v42;
      outlined destroy of AttachmentLedger_CreateTopicRequest(v31, type metadata accessor for PluginRpcError);
    }

    v41 = v95;
    outlined destroy of NSObject?(v23, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    outlined destroy of AttachmentLedger_CreateTopicRequest(v33, type metadata accessor for PluginRpcError);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &aBlock);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_1AEB26000, v35, v36, "Failed to CreateTopic due to error: %s", v38, 0xCu);
    v44 = v73;
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x1B27120C0](v44, -1, -1);
    MEMORY[0x1B27120C0](v38, -1, -1);

    a2 = v91;
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicRequest(v33, type metadata accessor for PluginRpcError);
    v41 = v95;
  }

  v45 = v94;
  if (*(v41 + 5) == a2)
  {
    type metadata accessor for AttachmentLedgerTopicError(0);
    lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type AttachmentLedgerTopicError and conformance AttachmentLedgerTopicError, type metadata accessor for AttachmentLedgerTopicError, &protocol conformance descriptor for AttachmentLedgerTopicError);
    v46 = swift_allocError();
    outlined init with copy of AttachmentLedger_CreateTopicRequest(v45, v47, type metadata accessor for PluginRpcError);
    swift_storeEnumTagMultiPayload();
    aBlock = v46;
    v98 = 0u;
    v99 = 0u;
    LOWORD(v100) = 256;
    v92(&aBlock);
    outlined consume of Result<PluginAttachmentLedgerTopic.Configuration?, Error>(aBlock, v98, *(&v98 + 1), v99, *(&v99 + 1), v100, SBYTE1(v100));
    return;
  }

  v48 = *(v41 + 10);
  v49 = *(v41 + 11);
  __swift_project_boxed_opaque_existential_1(v41 + 7, v48);
  v50 = (*(v49 + 8))(v48, v49);
  static DispatchTime.now()();
  v51 = *(v41 + 6);
  if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v51 < 9.22337204e18)
  {
    v52 = v74;
    *v74 = v51;
    v53 = *MEMORY[0x1E69E7F48];
    v95 = v50;
    v54 = v75;
    v55 = v76;
    (*(v75 + 104))(v52, v53, v76);
    v56 = v81;
    v57 = v90;
    MEMORY[0x1B270FBE0](v90, v52);
    (*(v54 + 8))(v52, v55);
    v58 = v83;
    v59 = *(v82 + 8);
    v59(v57, v83);
    v60 = v79;
    outlined init with copy of AttachmentLedger_CreateTopicRequest(v80, v79, type metadata accessor for AttachmentLedger_CreateTopicRequest);
    v61 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v62 = (v78 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v41;
    outlined init with take of AttachmentLedger_CreateTopicRequest(v60, v63 + v61, type metadata accessor for AttachmentLedger_CreateTopicRequest);
    v64 = v92;
    *(v63 + v62) = v91;
    v65 = (v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8));
    v66 = v93;
    *v65 = v64;
    v65[1] = v66;
    *(&v99 + 1) = partial apply for closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:);
    v100 = v63;
    aBlock = MEMORY[0x1E69E9820];
    *&v98 = 1107296256;
    *(&v98 + 1) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *&v99 = &block_descriptor_0;
    v67 = _Block_copy(&aBlock);

    v68 = v84;
    static DispatchQoS.unspecified.getter();
    v96 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v69 = v86;
    v70 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v71 = v95;
    MEMORY[0x1B2710670](v56, v68, v69, v67);
    _Block_release(v67);

    (*(v88 + 8))(v69, v70);
    (*(v85 + 8))(v68, v87);
    v59(v56, v58);

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    (*(*result + 152))(a2, a3 + 1);
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a5;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    swift_retain_n();
    specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:), v8, partial apply for closure #2 in closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:), v9);
  }

  return result;
}

void closure #2 in closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(id *a1, void (*a2)(id *))
{
  v9 = *a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 256;
  v3 = v9;
  a2(&v9);
  v4 = v9;
  v5 = v10;
  v6 = v11;
  v7 = HIBYTE(v12);
  v8 = v12;

  outlined consume of Result<PluginAttachmentLedgerTopic.Configuration?, Error>(v4, v5, *(&v5 + 1), v6, *(&v6 + 1), v8, v7);
}

uint64_t AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  MEMORY[0x1EEE9AC00](TopicRequest);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a1;
  v26 = a2;
  lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest, &protocol conformance descriptor for AttachmentLedger_CreateTopicRequest);
  static Message.with(_:)();
  v13 = *(v4 + 80);
  v14 = *(v4 + 88);
  __swift_project_boxed_opaque_existential_1((v5 + 56), *(v5 + 80));
  v15 = (*(v14 + 8))(v13, v14);
  v19 = v5;
  v20 = a1;
  v21 = a2;
  v22 = v12;
  v23 = a3;
  v24 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v16 = v27;
  outlined destroy of AttachmentLedger_CreateTopicRequest(v12, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  return v16;
}

uint64_t closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v21 = a7;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v14 = *(TopicRequest - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_CreateTopicRequest(a4, v16, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  outlined init with copy of UserNotificationCenter(a5, v22);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  outlined init with take of AttachmentLedger_CreateTopicRequest(v16, v19 + v17, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  outlined init with take of ContiguousBytes(v22, v19 + v18);
  *(v19 + ((v18 + 47) & 0xFFFFFFFFFFFFFFF8)) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicCs5Error_pGMR);
  swift_allocObject();

  result = Future.init(_:)();
  *v21 = result;
  return result;
}

uint64_t closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(void (*a1)(__int128 *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v39 = a1;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_beginAccess();
  v17 = a3[2];
  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  if ((v20 & 1) == 0)
  {

    goto LABEL_8;
  }

  v21 = *(*(v17 + 56) + 8 * v19);

  (*(*v21 + 288))(&v40, v22);
  if (!(v44 >> 62))
  {
    goto LABEL_11;
  }

  if (v44 >> 62 == 1)
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v40, *(&v40 + 1), v41, v42, v43, v44, v45);
LABEL_6:

LABEL_8:
    (*(*a3 + 152))(a6, 0);
    outlined init with copy of UserNotificationCenter(a7, &v40);
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v23[5] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<PluginAttachmentLedgerTopic, Error>) -> ();
    v23[6] = v16;
    outlined init with take of ContiguousBytes(&v40, (v23 + 7));
    v23[12] = a8;
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<PluginAttachmentLedgerTopic, Error>) -> ();
    *(v24 + 24) = v16;

    specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:), v23, partial apply for closure #2 in closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:), v24);
  }

  if (v44 != 0x8000000000000000 || v41 | *(&v40 + 1) | v40 | v42 | v43 | v45)
  {
    v35 = v43 | v45;
    v36 = v41 | *(&v40 + 1);
    v37 = v42;
    v38 = v40;
    v34 = v44;
    outlined consume of PluginAttachmentLedgerTopic.State(v40, *(&v40 + 1), v41, v42, v43, v44, v45);
    if (v34 != 0x8000000000000000 || v38 != 1 || v36 | v37 | v35)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_11:
    outlined consume of PluginAttachmentLedgerTopic.State(v40, *(&v40 + 1), v41, v42, v43, v44, v45);
  }

  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.attachmentLedgerService);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v40 = v30;
    *v29 = 136315138;
    v31 = PluginAttachmentLedgerTopic.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v40);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1AEB26000, v27, v28, "[CreateTopic] Topic already exists. Returning %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  *&v40 = v21;
  BYTE8(v40) = 0;

  v39(&v40);
}

uint64_t closure #1 in closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  v18 = *(a1 + 40);
  swift_beginAccess();
  v19 = *(a2 + 16);
  if (!*(v19 + 16))
  {
LABEL_8:
    if (v18)
    {
      v13 = 2;
      v14 = 1.0;
      v24 = 3;
    }

    else
    {
      v24 = v15;
    }

    if (v18)
    {
      v17 = 1.0;
      v16 = 10.0;
    }

    outlined init with copy of UserNotificationCenter(a2 + 56, &v43);
    outlined init with copy of UserNotificationCenter(a7, v51);
    v50[0] = v13;
    *&v50[1] = v14;
    v50[2] = v24;
    *&v50[3] = v17;
    *&v50[4] = v16;
    v25 = *(a2 + 96);
    type metadata accessor for PluginAttachmentLedgerTopic(0);
    swift_allocObject();

    v22 = PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(a3, a4, &v43, v51, v50, v25, a8);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, a3, a4, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v51[0];
    swift_endAccess();

    v27 = a5;
    goto LABEL_14;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v21 & 1) == 0)
  {

    goto LABEL_8;
  }

  v22 = *(*(v19 + 56) + 8 * v20);

  (*(*v22 + 288))(&v43, v23);
  if (!(v48 >> 62))
  {
    goto LABEL_17;
  }

  if (v48 >> 62 == 1)
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v43, v44, v45, v46, v47, v48, v49);
LABEL_6:

    goto LABEL_8;
  }

  if (v48 != 0x8000000000000000 || v45 | v44 | v43 | v46 | v47 | v49)
  {
    v38 = v47 | v49;
    v39 = v45 | v44;
    v40 = v46;
    v41 = v43;
    v37 = v48;
    outlined consume of PluginAttachmentLedgerTopic.State(v43, v44, v45, v46, v47, v48, v49);
    if (v37 != 0x8000000000000000 || v41 != 1 || v39 | v40 | v38)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_17:
    outlined consume of PluginAttachmentLedgerTopic.State(v43, v44, v45, v46, v47, v48, v49);
  }

  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Log.attachmentLedgerService);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v27 = a5;
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136315138;
    v34 = PluginAttachmentLedgerTopic.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v43);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1AEB26000, v30, v31, "[CreateTopic] Topic already exists. Returning %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1B27120C0](v33, -1, -1);
    MEMORY[0x1B27120C0](v32, -1, -1);
  }

LABEL_14:
  v27(v22, 0);
}

void *AttachmentLedgerClient.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t AttachmentLedgerClient.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(void (*a1)(__int128 *), void (*a2)(__int128 *))
{
  v5 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(a1, a2, v8, (v2 + v6), v7);
}

uint64_t partial apply for closure #1 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
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

uint64_t getEnumTagSinglePayload for AttachmentLedgerClient.Config(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AttachmentLedgerClient.Config(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(void (*a1)(__int128 *), uint64_t a2)
{
  v5 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #2 in AttachmentLedgerClient.createTopic(name:dataCryptorProvider:initialAttachments:)(a1, a2, v8, v9, v10, v2 + v6, v2 + v7, v11);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<PluginAttachmentLedgerTopic, Error>) -> ()(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t outlined consume of PluginAttachmentLedgerTopic.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a6 >> 62 == 1)
  {
  }

  if (!(a6 >> 62))
  {
  }

  return result;
}

void partial apply for closure #1 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  closure #1 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(a1, v1 + v4, v6, v7);
}

void partial apply for closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)()
{
  v1 = *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(v4, v0 + v2, v5, v7, v8);
}

void outlined consume of Result<PluginAttachmentLedgerTopic.Configuration?, Error>(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in AttachmentLedgerClient.sendCreateServerTopic(request:attempt:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v3;
  v9 = v4;
  v10 = 0;
  return v2(v7);
}

uint64_t outlined init with copy of AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of AttachmentLedger_CreateTopicRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t one-time initialization function for $traceID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy10Foundation4UUIDVSgGMd, &_ss9TaskLocalCy10Foundation4UUIDVSgGMR);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static AsyncSerialQueue.$traceID = result;
  return result;
}

uint64_t *AsyncSerialQueue.$traceID.unsafeMutableAddressor()
{
  if (one-time initialization token for $traceID != -1)
  {
    swift_once();
  }

  return &static AsyncSerialQueue.$traceID;
}

uint64_t static AsyncSerialQueue.$traceID.getter()
{
  if (one-time initialization token for $traceID != -1)
  {
    swift_once();
  }
}

uint64_t static AsyncSerialQueue.traceID.getter()
{
  if (one-time initialization token for $traceID != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t AsyncSerialQueue.traceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v53 = a1;
  v51 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v40 - v4;
  v50 = type metadata accessor for UUID();
  v54 = *(v50 - 8);
  v5 = MEMORY[0x1EEE9AC00](v50);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYaYbcGMd, &_sScSyyyYaYbcGMR);
  v44 = *(v46 - 8);
  v13 = *(v44 + 64);
  v14 = MEMORY[0x1EEE9AC00](v46);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GSgMd, &_sScS12ContinuationVyyyYaYbc_GSgMR);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  v24 = *(v23 - 8);
  (*(v24 + 56))(v22, 1, 1, v23);
  v47 = v10;
  v48 = v9;
  (*(v10 + 16))(v12, v55, v9);
  v56 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syyYaYbcMd, &_syyYaYbcMR);
  v52 = v16;
  AsyncStream.init(_:bufferingPolicy:_:)();
  UUID.init()();
  v25 = *(v54 + 16);
  v26 = v51;
  v27 = v8;
  v28 = v50;
  v25();
  v42 = v22;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v22, v20, &_sScS12ContinuationVyyyYaYbc_GSgMd, &_sScS12ContinuationVyyyYaYbc_GSgMR);
  result = (*(v24 + 48))(v20, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = type metadata accessor for AsyncSerialQueue(0);
    (*(v24 + 32))(v26 + *(v30 + 20), v20, v23);
    v31 = v49;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v53, v49, &_sScPSgMd, &_sScPSgMR);
    v32 = v45;
    v40 = v27;
    (v25)(v45, v27, v28);
    v33 = v44;
    v34 = v41;
    v35 = v46;
    (*(v44 + 16))(v41, v52, v46);
    v36 = v54;
    v37 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v38 = (v43 + *(v33 + 80) + v37) & ~*(v33 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    (*(v36 + 32))(v39 + v37, v32, v28);
    (*(v33 + 32))(v39 + v38, v34, v35);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), v39);

    (*(v47 + 8))(v55, v48);
    outlined destroy of NSObject?(v53, &_sScPSgMd, &_sScPSgMR);
    (*(v36 + 8))(v40, v28);
    (*(v33 + 8))(v52, v35);
    return outlined destroy of NSObject?(v42, &_sScS12ContinuationVyyyYaYbc_GSgMd, &_sScS12ContinuationVyyyYaYbc_GSgMR);
  }

  return result;
}

uint64_t closure #1 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of NSObject?(a2, &_sScS12ContinuationVyyyYaYbc_GSgMd, &_sScS12ContinuationVyyyYaYbc_GSgMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t type metadata accessor for AsyncSerialQueue(uint64_t a1)
{
  result = type metadata singleton initialization cache for AsyncSerialQueue;
  if (!type metadata singleton initialization cache for AsyncSerialQueue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), 0, 0);
}

uint64_t closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)()
{
  if (one-time initialization token for $traceID != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:);
  v8 = v0[5];
  v9 = v0[2];

  return MEMORY[0x1EEE6DE98](v9, v8, &async function pointer to partial apply for closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), v6, 0, 0, 0xD000000000000025, 0x80000001AEE304E0);
}

void closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    outlined destroy of NSObject?(*(v2 + 40), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t partial apply for closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYaYbcGMd, &_sScSyyyYaYbcGMR) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyyyYaYbc_GMd, &_sScS8IteratorVyyyYaYbc_GMR);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), 0, 0);
}

uint64_t closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyyyYaYbcGMd, &_sScSyyyYaYbcGMR);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:), 0, 0);
}

{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:);

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:);
  v6 = *(v1 + 40);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v6);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  type metadata accessor for AsyncSerialQueue(0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[0] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  v10[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v4);
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = AsyncSerialQueue.performAndWaitFor<A>(_:);
  v4 = *(v0 + 16);

  return withUnsafeContinuation<A>(isolation:_:)(v4, 0, 0, partial apply for closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), v1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = AsyncSerialQueue.performAndWaitFor<A>(_:);
  v4 = *(v0 + 16);

  return withUnsafeThrowingContinuation<A>(isolation:_:)(v4, 0, 0, partial apply for closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), v1);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1)
{
  return closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(a1, v1[3], v1[4], v1[5], v1[2], &unk_1F249EE60, &unk_1F249EE88, &async function pointer to partial apply for closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply);
}

{
  return closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(a1, v1[3], v1[4], v1[5], v1[2], &unk_1F249EE10, &unk_1F249EE38, &async function pointer to partial apply for closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply);
}

uint64_t closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);

  return v9(v6);
}

{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = *(a4 - 8);
  v6 = swift_task_alloc();
  v4[6] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[7] = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);

  return v9(v6);
}

uint64_t closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)()
{

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
}

{
  (*(*(v0[3] - 8) + 32))(*(*(v0[2] + 64) + 40), v0[4]);
  swift_continuation_resume();

  v1 = v0[1];

  return v1();
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  else
  {
    v2 = closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0[5] + 32))(*(*(v0[3] + 64) + 40), v0[6]);
  swift_continuation_throwingResume();

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  UnsafeContinuation.resume(throwing:)((v0 + 2), v1, v2, v3, MEMORY[0x1E69E7288]);

  v4 = v0[1];

  return v4();
}

uint64_t withUnsafeContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](withUnsafeContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeContinuation<A>(isolation:_:)()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = withUnsafeContinuation<A>(isolation:_:);
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a8;
  v20[1] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  type metadata accessor for AsyncSerialQueue(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v20[0];
  *(v18 + 24) = v17;
  v20[2] = a9;
  v20[3] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v14 + 8))(v16, v13);
}

uint64_t UnsafeContinuation.resume(throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](withUnsafeThrowingContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = withUnsafeThrowingContinuation<A>(isolation:_:);
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

Swift::Int AsyncSerialQueue.Condition.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

Swift::Void __swiftcall AsyncSerialQueue.precondition(_:)(CopresenceCore::AsyncSerialQueue::Condition a1)
{
  v1 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v37 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v26 = (&v37 - v25);
  v27 = one-time initialization token for $traceID;
  if (*v1)
  {
    v38 = v23;
    if (one-time initialization token for $traceID != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    (*(v3 + 16))(v15, v40, v2);
    (*(v3 + 56))(v15, 0, 1, v2);
    v10 = *(v5 + 12);
    v5 = &_s10Foundation4UUIDVSgMR;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v18, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15, v8 + v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v22 = (v3 + 48);
    v26 = *(v3 + 48);
    if (v26(v8, 1, v2) == 1)
    {
      outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v26(v8 + v10, 1, v2) == 1)
      {
        outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        __break(1u);
        goto LABEL_7;
      }
    }

    else
    {
      v31 = v38;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v8, v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v26(v8 + v10, 1, v2) != 1)
      {
        goto LABEL_18;
      }

      outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v3 + 8))(v31, v2);
    }

    outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return;
  }

LABEL_7:
  v38 = v24;
  if (v27 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  (*(v3 + 16))(v22, v40, v2);
  (*(v3 + 56))(v22, 0, 1, v2);
  v28 = *(v5 + 12);
  v29 = &_s10Foundation4UUIDVSgMR;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v22, v10 + v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = *(v3 + 48);
  if (v30(v10, 1, v2) == 1)
  {
    outlined destroy of NSObject?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v30(v10 + v28, 1, v2) == 1)
    {
      outlined destroy of NSObject?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return;
    }

    goto LABEL_22;
  }

  v32 = v38;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v10, v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v30(v10 + v28, 1, v2) == 1)
  {
LABEL_21:
    outlined destroy of NSObject?(v22, &_s10Foundation4UUIDVSgMd, v29);
    outlined destroy of NSObject?(v26, &_s10Foundation4UUIDVSgMd, v29);
    (*(v3 + 8))(v32, v2);
LABEL_22:
    outlined destroy of NSObject?(v10, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    __break(1u);
    return;
  }

  v33 = v39;
  (*(v3 + 32))(v39, v10 + v28, v2);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v15 = v32;
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v3 + 8);
  v3 += 8;
  v18 = v34;
  (v34)(v33, v2);
  v8 = &_s10Foundation4UUIDVSgMR;
  outlined destroy of NSObject?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (v34)(v15, v2);
  outlined destroy of NSObject?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v31)
  {
    return;
  }

  __break(1u);
LABEL_18:
  v35 = v39;
  (*(v3 + 32))(v39, v8 + v10, v2);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v26 = v31;
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v3 + 8);
  v3 += 8;
  v22 = v36;
  (v36)(v35, v2);
  v29 = &_s10Foundation4UUIDVSgMd;
  v10 = &_s10Foundation4UUIDVSgMR;
  outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (v36)(v26, v2);
  outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v32)
  {
    __break(1u);
    goto LABEL_21;
  }
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AsyncSerialQueue.Condition and conformance AsyncSerialQueue.Condition()
{
  result = lazy protocol witness table cache variable for type AsyncSerialQueue.Condition and conformance AsyncSerialQueue.Condition;
  if (!lazy protocol witness table cache variable for type AsyncSerialQueue.Condition and conformance AsyncSerialQueue.Condition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncSerialQueue.Condition and conformance AsyncSerialQueue.Condition);
  }

  return result;
}

void type metadata completion function for AsyncSerialQueue(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<@Sendable ()>.Continuation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<@Sendable ()>.Continuation(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<@Sendable ()>.Continuation)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syyYaYbcMd, &_syyYaYbcMR);
    v1 = type metadata accessor for AsyncStream.Continuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<@Sendable ()>.Continuation);
    }
  }
}

uint64_t getEnumTagSinglePayload for AsyncSerialQueue.Condition(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AsyncSerialQueue.Condition(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v3, v5, v4, v2);
}

{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v3, v5, v4, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in AsyncSerialQueue.init(priority:bufferingPolicy:)(a1, v4);
}

uint64_t specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);

  return v5();
}

{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);

  return v5(v2 + 16);
}

uint64_t specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_allocError();
  *v2 = v1;
  swift_continuation_throwingResumeWithError();
  v3 = *(v0 + 8);

  return v3();
}

{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  **(*(v0[3] + 64) + 40) = v0[2];
  swift_continuation_throwingResume();
  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_allocError();
  *v2 = v1;
  swift_continuation_throwingResumeWithError();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PresenceDataSource.assertPresence()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v3[6] = *(AssociatedTypeWitness - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceDataSource.assertPresence(), 0, 0);
}

uint64_t PresenceDataSource.assertPresence()()
{
  v1 = v0[5];
  v9 = v0[3];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v1, AssociatedConformanceWitness);
  v8 = (*(v9 + 64) + **(v9 + 64));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = PresenceDataSource.assertPresence();
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[2];

  return v8(v4, v6, v5);
}

{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t PresenceConfiguration.presenceIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PresenceConfiguration.presenceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PresenceConfiguration.clientIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PresenceConfiguration.clientIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall PresenceConfiguration.init(presenceIdentifier:isPersonal:clientIdentifier:)(CopresenceCore::PresenceConfiguration *__return_ptr retstr, Swift::String presenceIdentifier, Swift::Bool isPersonal, Swift::String clientIdentifier)
{
  retstr->isPersonal = isPersonal;
  retstr->presenceIdentifier = presenceIdentifier;
  retstr->clientIdentifier = clientIdentifier;
}

uint64_t static PresenceConfiguration.meToMe(clientIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _StringGuts.grow(_:)(16);

  MEMORY[0x1B2710020](0x43654D6F54654D2ELL, 0xEE006C656E6E6168);
  *a3 = 1;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

uint64_t SKPresenceDataSource.members.didset(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v8 = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in SKPresenceDataSource.members.didset, v7);
}

uint64_t closure #1 in SKPresenceDataSource.members.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in SKPresenceDataSource.members.didset, 0, 0);
}

uint64_t closure #1 in SKPresenceDataSource.members.didset()
{
  v56 = v0;
  v1 = *(v0 + 48);
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 40)) + 0x88))();
  *(v0 + 56) = v3;

  v4 = specialized Set.subtracting(_:)(v3, v1);
  v5 = v4;
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 40);
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.service);

      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 40);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v55[0] = v13;
        *v12 = 136315394;
        *(v0 + 32) = v5;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
        v14 = String.init<A>(reflecting:)();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v55);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v17 = v11 + direct field offset for SKPresenceDataSource.presenceIdentifier;
        v2 = MEMORY[0x1E69E7D40];
        *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v17, *(v17 + 8), v55);
        _os_log_impl(&dword_1AEB26000, v9, v10, "Removing members: %s from presence for identifier: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v13, -1, -1);
        MEMORY[0x1B27120C0](v12, -1, -1);
      }

      v18 = *(v0 + 40);
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_SSs5NeverOTg504_s14d42Core20SKPresenceDataSourceC7membersShyAA17fG21CGvWyyYacfU_SSAFXEfU_Tf1cn_nTm(v5);
      v20 = v19;
      *(v0 + 64) = v19;

      v21 = *((*v2 & *v18) + 0xF8);
      v53 = (v21 + *v21);
      v22 = swift_task_alloc();
      *(v0 + 72) = v22;
      *v22 = v0;
      v22[1] = closure #1 in SKPresenceDataSource.members.didset;
      v23 = v20;
      v24 = v53;

      return v24(v23);
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_3;
  }

  v26 = specialized Set.subtracting(_:)(*(v0 + 48), *(v0 + 56));
  v27 = v26;
  if ((v26 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_13:
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v28 = *(v0 + 40);
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Log.service);
      v30 = v28;

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 40);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v55[0] = v35;
        *v34 = 136315394;
        *(v0 + 24) = v27;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
        v36 = String.init<A>(reflecting:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v55);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v33 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v33 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), v55);
        _os_log_impl(&dword_1AEB26000, v31, v32, "Adding members: %s to presence for identifier: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v35, -1, -1);
        MEMORY[0x1B27120C0](v34, -1, -1);
      }

      v39 = *(v0 + 40);
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_SSs5NeverOTg504_s14d42Core20SKPresenceDataSourceC7membersShyAA17fG21CGvWyyYacfU_SSAFXEfU_Tf1cn_nTm(v27);
      v41 = v40;
      *(v0 + 88) = v40;

      v42 = *((*v2 & *v39) + 0xE8);
      v54 = (v42 + *v42);
      v43 = swift_task_alloc();
      *(v0 + 96) = v43;
      *v43 = v0;
      v43[1] = closure #1 in SKPresenceDataSource.members.didset;
      v23 = v41;
      v24 = v54;

      return v24(v23);
    }
  }

  else if (*(v26 + 16))
  {
    goto LABEL_13;
  }

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 40);
  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Log.service);
  v46 = v44;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 40);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55[0] = v51;
    *v50 = 136315138;
    *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v49 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v49 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), v55);
    _os_log_impl(&dword_1AEB26000, v47, v48, "Successfully updated members for identifier: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1B27120C0](v51, -1, -1);
    MEMORY[0x1B27120C0](v50, -1, -1);
  }

  v52 = *(v0 + 8);

  return v52();
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in SKPresenceDataSource.members.didset;
  }

  else
  {

    v2 = closure #1 in SKPresenceDataSource.members.didset;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v31 = v0;
  v1 = specialized Set.subtracting(_:)(v0[6], v0[7]);
  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v3 = v0[5];
      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Log.service);
      v5 = v3;

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v0[5];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v30[0] = v10;
        *v9 = 136315394;
        v0[3] = v2;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
        v11 = String.init<A>(reflecting:)();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v30);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2080;
        *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v8 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v8 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), v30);
        _os_log_impl(&dword_1AEB26000, v6, v7, "Adding members: %s to presence for identifier: %s", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v10, -1, -1);
        MEMORY[0x1B27120C0](v9, -1, -1);
      }

      v14 = v0[5];
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_SSs5NeverOTg504_s14d42Core20SKPresenceDataSourceC7membersShyAA17fG21CGvWyyYacfU_SSAFXEfU_Tf1cn_nTm(v2);
      v16 = v15;
      v0[11] = v15;

      v17 = *((*MEMORY[0x1E69E7D40] & *v14) + 0xE8);
      v29 = (v17 + *v17);
      v18 = swift_task_alloc();
      v0[12] = v18;
      *v18 = v0;
      v18[1] = closure #1 in SKPresenceDataSource.members.didset;

      return v29(v16);
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_3;
  }

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v20 = v0[5];
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.service);
  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[5];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v25 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v25 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), v30);
    _os_log_impl(&dword_1AEB26000, v23, v24, "Successfully updated members for identifier: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1B27120C0](v27, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  v28 = v0[1];

  return v28();
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = closure #1 in SKPresenceDataSource.members.didset;
  }

  else
  {

    v2 = closure #1 in SKPresenceDataSource.members.didset;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v12 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v6 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v6 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), &v11);
    _os_log_impl(&dword_1AEB26000, v4, v5, "Successfully updated members for identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

{
  v18 = v0;

  v1 = v0[10];

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.service);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v8 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v8 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), &v17);
    *(v9 + 12) = 2080;
    v0[2] = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Failed to update members for identifier: %s with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

{
  v18 = v0;
  v1 = v0[13];

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.service);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v8 + direct field offset for SKPresenceDataSource.presenceIdentifier), *(v8 + direct field offset for SKPresenceDataSource.presenceIdentifier + 8), &v17);
    *(v9 + 12) = 2080;
    v0[2] = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Failed to update members for identifier: %s with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_SSs5NeverOTg504_s14d42Core20SKPresenceDataSourceC7membersShyAA17fG21CGvWyyYacfU_SSAFXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v38 = v43;
    if (v36)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v40 = v3;
    v41 = v4;
    v42 = v36 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_37;
        }

        v8 = v40;
        v9 = v42;
        v37 = v41;
        v10 = v1;
        specialized Set.subscript.getter(v40, v41, v42, v1);
        v12 = v11;
        v13 = OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle;
        v14 = [*&v11[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle] normalizedValue];
        if (!v14)
        {
          v14 = [*&v12[v13] value];
        }

        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = v38;
        v43 = v38;
        v21 = *(v38 + 16);
        v20 = *(v38 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v21 + 1;
        v22 = v19 + 16 * v21;
        *(v22 + 32) = v16;
        *(v22 + 40) = v18;
        v38 = v19;
        if (v36)
        {
          if (!v9)
          {
            goto LABEL_42;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14CopresenceCore17AddressableMemberC_GMd, &_sSh5IndexVy14CopresenceCore17AddressableMemberC_GMR);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v39, 0);
          if (v5 == v35)
          {
LABEL_34:
            outlined consume of Set<AddressableMember>.Index._Variant(v40, v41, v42);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_43;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v1 = v10;
          v23 = 1 << *(v10 + 32);
          if (v8 >= v23)
          {
            goto LABEL_38;
          }

          v24 = v8 >> 6;
          v25 = *(v34 + 8 * (v8 >> 6));
          if (((v25 >> v8) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v10 + 36) != v37)
          {
            goto LABEL_40;
          }

          v26 = v25 & (-2 << (v8 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v35;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v33 + 8 * v24);
            v2 = v35;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                outlined consume of Set<AddressableMember>.Index._Variant(v8, v37, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_33;
              }
            }

            outlined consume of Set<AddressableMember>.Index._Variant(v8, v37, 0);
          }

LABEL_33:
          v32 = *(v10 + 36);
          v40 = v23;
          v41 = v32;
          v42 = 0;
          if (v5 == v2)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t SKPresenceDataSource.members.setter(uint64_t a1)
{
  v3 = direct field offset for SKPresenceDataSource.members;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  SKPresenceDataSource.members.didset(v4);
}

void (*SKPresenceDataSource.members.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = direct field offset for SKPresenceDataSource.members;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return SKPresenceDataSource.members.modify;
}

void SKPresenceDataSource.members.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    SKPresenceDataSource.members.setter(v4);
  }

  else
  {
    SKPresenceDataSource.members.setter(v3);
  }

  free(v2);
}

uint64_t property wrapper backing initializer of SKPresenceDataSource.presentDevices@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = a1;
  swift_getExtendedExistentialTypeMetadata();
  v4 = type metadata accessor for Array();
  return CurrentSubject.init(wrappedValue:)(&v6, v4, a3);
}

uint64_t SKPresenceDataSource.presentDevices.getter()
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  swift_getExtendedExistentialTypeMetadata();
  v1 = type metadata accessor for Array();
  type metadata accessor for CurrentSubject(0, v1, v2, v3);
  CurrentSubject.wrappedValue.getter();
  return v5;
}

uint64_t SKPresenceDataSource.presentDevices.setter(uint64_t a1)
{

  swift_getExtendedExistentialTypeMetadata();
  v1 = type metadata accessor for Array();
  type metadata accessor for CurrentSubject(0, v1, v2, v3);
  specialized CurrentSubject.wrappedValue.setter();
}

uint64_t SKPresenceDataSource.$presentDevices.getter()
{
  swift_getExtendedExistentialTypeMetadata();
  v0 = type metadata accessor for Array();
  type metadata accessor for CurrentSubject(0, v0, v1, v2);
  protocol witness for FastSyncAnalyticsReporterProtocol.maxPartcipantsInSession.getter in conformance FastSyncAnalyticsReporter();
}

uint64_t SKPresenceDataSource.presentDevicesPublisher.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for Array();
  type metadata accessor for CurrentValueSubject();
  swift_getWitnessTable();
  v1 = Publisher.eraseToAnyPublisher()();

  return v1;
}

char *specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(unsigned __int8 *a1, void *a2)
{
  return specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(a1, a2, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR);
}

{
  return specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(a1, a2, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0L0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0L0AdEPRts_XPGs5NeverOGMR, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA27ActivityListPresenceContextVGMR);
}

char *specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(unsigned __int8 *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v47 = a5;
  v48 = a6;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v44 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v41);
  v40 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v14 - 8);
  *&v6[direct field offset for SKPresenceDataSource.members] = MEMORY[0x1E69E7CD0];
  v15 = direct field offset for SKPresenceDataSource._presentDevices;
  v16 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_allocObject();
  v17 = CurrentValueSubject.init(_:)();
  v39 = v6;
  *&v6[v15] = v17;
  v18 = *(a1 + 2);
  v42 = *(a1 + 1);
  v19 = &v6[direct field offset for SKPresenceDataSource.presenceIdentifier];
  *v19 = v42;
  v19[1] = v18;
  v38[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v50 = 0;
  v51 = 0xE000000000000000;

  _StringGuts.grow(_:)(21);

  v50 = 0xD000000000000013;
  v51 = 0x80000001AEE30510;
  v20 = *v19;
  v21 = v19[1];

  MEMORY[0x1B2710020](v20, v21);

  v43 = a2;
  static DispatchQoS.unspecified.getter();
  v50 = v16;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v45 + 104))(v44, *MEMORY[0x1E69E8090], v46);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = v39;
  *&v39[direct field offset for SKPresenceDataSource.queue] = v22;
  v25 = *(a1 + 3);
  v24 = *(a1 + 4);
  v26 = objc_allocWithZone(MEMORY[0x1E69D45F8]);
  v27 = MEMORY[0x1B270FF70](v25, v24);
  v28 = [v26 initWithServiceIdentifier_];

  [v28 setIsPersonal_];
  v29 = objc_allocWithZone(MEMORY[0x1E69D45F0]);
  v30 = MEMORY[0x1B270FF70](v42, v18);
  v31 = [v29 initWithPresenceIdentifier:v30 options:v28];

  *&v23[direct field offset for SKPresenceDataSource.presence] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  v49.receiver = v23;
  v49.super_class = v32;
  v33 = objc_msgSendSuper2(&v49, sel_init);
  v34 = *&v33[direct field offset for SKPresenceDataSource.presence];
  v35 = *&v33[direct field offset for SKPresenceDataSource.queue];
  v36 = v33;
  [v34 addDelegate:v36 queue:v35];

  return v36;
}

char *SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v38);
  v36 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v11 - 8);
  *&v3[direct field offset for SKPresenceDataSource.members] = MEMORY[0x1E69E7CD0];
  v12 = direct field offset for SKPresenceDataSource._presentDevices;
  v46 = *((v7 & v6) + 0x50);
  v43 = v46;
  swift_getExtendedExistentialTypeMetadata();
  v13 = static Array._allocateUninitialized(_:)();
  v44 = *((v7 & v6) + 0x58);
  property wrapper backing initializer of SKPresenceDataSource.presentDevices(v13, &v46);
  *&v3[v12] = v46;
  v35 = a1;
  v14 = *(a1 + 16);
  v37 = *(a1 + 8);
  v15 = &v3[direct field offset for SKPresenceDataSource.presenceIdentifier];
  *v15 = v37;
  *(v15 + 1) = v14;
  v34[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v46 = 0;
  v47 = 0xE000000000000000;

  _StringGuts.grow(_:)(21);

  v46 = 0xD000000000000013;
  v47 = 0x80000001AEE30510;
  v16 = *v15;
  v17 = *(v15 + 1);

  MEMORY[0x1B2710020](v16, v17);

  v39 = a2;
  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v41 + 104))(v40, *MEMORY[0x1E69E8090], v42);
  *&v3[direct field offset for SKPresenceDataSource.queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = *(v35 + 24);
  v18 = *(v35 + 32);
  v20 = v35;
  v21 = objc_allocWithZone(MEMORY[0x1E69D45F8]);
  v22 = MEMORY[0x1B270FF70](v19, v18);
  v23 = [v21 initWithServiceIdentifier_];

  [v23 setIsPersonal_];
  v24 = objc_allocWithZone(MEMORY[0x1E69D45F0]);
  v25 = MEMORY[0x1B270FF70](v37, v14);
  v26 = [v24 initWithPresenceIdentifier:v25 options:v23];

  *&v3[direct field offset for SKPresenceDataSource.presence] = v26;
  v28 = type metadata accessor for SKPresenceDataSource(0, v43, v44, v27);
  v45.receiver = v3;
  v45.super_class = v28;
  v29 = objc_msgSendSuper2(&v45, sel_init);
  v30 = *&v29[direct field offset for SKPresenceDataSource.presence];
  v31 = *&v29[direct field offset for SKPresenceDataSource.queue];
  v32 = v29;
  [v30 addDelegate:v32 queue:v31];

  return v32;
}

id PresenceConfiguration.options.getter()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = objc_allocWithZone(MEMORY[0x1E69D45F8]);
  v4 = MEMORY[0x1B270FF70](v1, v2);
  v5 = [v3 initWithServiceIdentifier_];

  [v5 setIsPersonal_];
  return v5;
}

uint64_t SKPresenceDataSource.assertPresence(using:)(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v2[52] = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *((v4 & v3) + 0x50);
  v2[53] = v5;
  v6 = type metadata accessor for Optional();
  v2[54] = v6;
  v2[55] = *(v6 - 8);
  v2[56] = swift_task_alloc();
  v2[57] = *(v5 - 8);
  v2[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.assertPresence(using:), 0, 0);
}

{
  v2 = v1[59];
  static Task<>.checkCancellation()();
  if (v2)
  {
    v3 = v1 + 10;
    v1[65] = v2;
    v4 = v1[60];
    v5 = v1[61];
    v1[10] = v1;
    v1[11] = SKPresenceDataSource.assertPresence(using:);
    v6 = swift_continuation_init();
    v1[41] = v5;
    v1[34] = MEMORY[0x1E69E9820];
    v1[35] = 1107296256;
    v1[36] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v1[37] = &block_descriptor_6;
    v1[38] = v6;
    [v4 releaseTransientSubscriptionAssertionWithCompletion_];
  }

  else
  {
    v3 = v1 + 18;
    v7 = v1[60];
    v8 = v1[61];
    (*(*(*(v1[52] + 88) + 8) + 16))(v1[53]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v1[63] = isa;

    v1[18] = v1;
    v1[19] = SKPresenceDataSource.assertPresence(using:);
    v10 = swift_continuation_init();
    v1[49] = v8;
    v1[42] = MEMORY[0x1E69E9820];
    v1[43] = 1107296256;
    v1[44] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v1[45] = &block_descriptor_9;
    v1[46] = v10;
    [v7 assertPresenceWithPresencePayloadDictionary:isa completion:v1 + 42];
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

{
  v2 = v1[63];
  swift_willThrow();

  v1[65] = v1[64];
  v3 = v1[60];
  v4 = v1[61];
  v1[10] = v1;
  v1[11] = SKPresenceDataSource.assertPresence(using:);
  v5 = swift_continuation_init();
  v1[41] = v4;
  v1[34] = MEMORY[0x1E69E9820];
  v1[35] = 1107296256;
  v1[36] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v1[37] = &block_descriptor_6;
  v1[38] = v5;
  [v3 releaseTransientSubscriptionAssertionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v1 + 10);
}

{
  v2 = *(v1 + 528);
  swift_willThrow();

  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t SKPresenceDataSource.assertPresence(using:)()
{
  v40 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);
  v7 = *(v2 + 16);
  v7(v1, v4, v3);
  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[57];
  v13 = v0[58];
  if (v11)
  {
    v34 = v7;
    v38 = v10;
    v14 = v0[55];
    v15 = v0[56];
    v16 = v0[53];
    v35 = v0[54];
    log = v9;
    v17 = v0[51];
    v33 = v0[58];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39[0] = v36;
    *v18 = 136315394;
    v19 = [*(v17 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v39);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v34(v15, v33, v16);
    (*(v12 + 56))(v15, 0, 1, v16);
    v24 = >> prefix<A>(_:)(v15, v16);
    v26 = v25;
    (*(v14 + 8))(v15, v35);
    (*(v12 + 8))(v33, v16);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v39);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1AEB26000, log, v38, "Asserting presence for identifier: %s using context: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  else
  {
    v28 = v0[53];

    (*(v12 + 8))(v13, v28);
  }

  static Task<>.checkCancellation()();
  v0[59] = 0;
  v29 = *(v0[51] + direct field offset for SKPresenceDataSource.presence);
  v0[60] = v29;
  v0[2] = v0;
  v0[3] = SKPresenceDataSource.assertPresence(using:);
  v30 = swift_continuation_init();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[61] = v31;
  v0[33] = v31;
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[29] = &block_descriptor_1;
  v0[30] = v30;
  [v29 retainTransientSubscriptionAssertionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 496) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.assertPresence(using:);
  }

  else
  {
    v2 = SKPresenceDataSource.assertPresence(using:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(*v0 + 176);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.assertPresence(using:);
  }

  else
  {
    v2 = SKPresenceDataSource.assertPresence(using:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 528) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.assertPresence(using:);
  }

  else
  {
    v2 = SKPresenceDataSource.assertPresence(using:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t SKPresenceDataSource.releasePresence()()
{
  *(v1 + 208) = v0;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.releasePresence(), 0, 0);
}

{
  v19 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [*(v6 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Releasing presence for identifier: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v14 = *(v0[26] + direct field offset for SKPresenceDataSource.presence);
  v0[27] = v14;
  v0[2] = v0;
  v0[3] = SKPresenceDataSource.releasePresence();
  v15 = swift_continuation_init();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[28] = v16;
  v0[25] = v16;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[21] = &block_descriptor_13;
  v0[22] = v15;
  [v14 releasePresenceWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.releasePresence();
  }

  else
  {
    v2 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28];
  v0[10] = v0;
  v0[11] = SKPresenceDataSource.releasePresence();
  v3 = swift_continuation_init();
  v0[25] = v2;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[21] = &block_descriptor_16;
  v0[22] = v3;
  [v1 releaseTransientSubscriptionAssertionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.releasePresence();
  }

  else
  {
    v2 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t SKPresenceDataSource.releasePresence()(uint64_t a1)
{
  v2 = v1[29];
  swift_willThrow();

  v3 = v1[27];
  v4 = v1[28];
  v1[10] = v1;
  v1[11] = SKPresenceDataSource.releasePresence();
  v5 = swift_continuation_init();
  v1[25] = v4;
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v1[21] = &block_descriptor_16;
  v1[22] = v5;
  [v3 releaseTransientSubscriptionAssertionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v1 + 10);
}

{
  v2 = *(v1 + 240);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t SKPresenceDataSource.inviteHandle(_:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.inviteHandle(_:), 0, 0);
}

uint64_t SKPresenceDataSource.inviteHandle(_:)()
{
  v25 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v6, &v24);
    *(v9 + 12) = 2080;
    v11 = [*(v7 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v24);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Inviting handle %s to presence for identifier: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v16 = v0[19];
  v17 = v0[18];
  v18 = *(v0[20] + direct field offset for SKPresenceDataSource.presence);
  v19 = objc_allocWithZone(MEMORY[0x1E69D45E8]);
  v20 = MEMORY[0x1B270FF70](v17, v16);
  v21 = [v19 initWithString_];
  v0[21] = v21;

  v0[2] = v0;
  v0[3] = SKPresenceDataSource.inviteHandle(_:);
  v22 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_19;
  v0[14] = v22;
  [v18 inviteHandleFromPrimaryAccountHandle:v21 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.inviteHandle(_:);
  }

  else
  {
    v2 = SKPresenceDataSource.inviteHandle(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SKPresenceDataSource.inviteHandle(_:)(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t SKPresenceDataSource.inviteHandles(_:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.inviteHandles(_:), 0, 0);
}

{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t SKPresenceDataSource.inviteHandles(_:)()
{
  v30 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v2, static Log.host);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;
    v10 = MEMORY[0x1B2710180](v6, MEMORY[0x1E69E6158]);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v29);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = [*(v7 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v29);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Inviting handles %s to presence for identifier: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v18 = v0[18];
  v19 = *(v0[19] + direct field offset for SKPresenceDataSource.presence);
  v0[21] = v19;
  v20 = *(v18 + 16);
  if (v20)
  {
    v29 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = (v18 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = objc_allocWithZone(MEMORY[0x1E69D45E8]);

      v25 = MEMORY[0x1B270FF70](v22, v23);

      [v24 initWithString_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 += 2;
      --v20;
    }

    while (v20);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SKHandle, 0x1E69D45E8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;

  v0[2] = v0;
  v0[3] = SKPresenceDataSource.inviteHandles(_:);
  v27 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_23;
  v0[14] = v27;
  [v19 inviteHandlesFromPrimaryAccountHandle:isa completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.inviteHandles(_:);
  }

  else
  {
    v2 = SKPresenceDataSource.inviteHandles(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v20 = v0;
  v1 = *(v0 + 152);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x1B2710180](v6, MEMORY[0x1E69E6158]);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = [v5 presenceIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Successfully invited handles %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t SKPresenceDataSource.removeHandle(_:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.removeHandle(_:), 0, 0);
}

uint64_t SKPresenceDataSource.removeHandle(_:)()
{
  v25 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v6, &v24);
    *(v9 + 12) = 2080;
    v11 = [*(v7 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v24);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Removing handle %s from presence for identifier:  %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v16 = v0[19];
  v17 = v0[18];
  v18 = *(v0[20] + direct field offset for SKPresenceDataSource.presence);
  v19 = objc_allocWithZone(MEMORY[0x1E69D45E8]);
  v20 = MEMORY[0x1B270FF70](v17, v16);
  v21 = [v19 initWithString_];
  v0[21] = v21;

  v0[2] = v0;
  v0[3] = SKPresenceDataSource.removeHandle(_:);
  v22 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_27;
  v0[14] = v22;
  [v18 removeInvitedHandle:v21 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.removeHandle(_:);
  }

  else
  {
    v2 = SKPresenceDataSource.removeHandle(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t SKPresenceDataSource.removeHandles(_:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](SKPresenceDataSource.removeHandles(_:), 0, 0);
}

uint64_t SKPresenceDataSource.removeHandles(_:)()
{
  v30 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v2, static Log.host);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;
    v10 = MEMORY[0x1B2710180](v6, MEMORY[0x1E69E6158]);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v29);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = [*(v7 + direct field offset for SKPresenceDataSource.presence) presenceIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v29);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Removing handles %s from presence for identifier:  %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v18 = v0[18];
  v19 = *(v0[19] + direct field offset for SKPresenceDataSource.presence);
  v0[21] = v19;
  v20 = *(v18 + 16);
  if (v20)
  {
    v29 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = (v18 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = objc_allocWithZone(MEMORY[0x1E69D45E8]);

      v25 = MEMORY[0x1B270FF70](v22, v23);

      [v24 initWithString_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 += 2;
      --v20;
    }

    while (v20);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SKHandle, 0x1E69D45E8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;

  v0[2] = v0;
  v0[3] = SKPresenceDataSource.removeHandles(_:);
  v27 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_31;
  v0[14] = v27;
  [v19 removeInvitedHandles:isa completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = SKPresenceDataSource.removeHandles(_:);
  }

  else
  {
    v2 = SKPresenceDataSource.removeHandles(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v20 = v0;
  v1 = *(v0 + 152);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x1B2710180](v6, MEMORY[0x1E69E6158]);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = [v5 presenceIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v19);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Successfully removed handles %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t SKPresenceDataSource.presentDevicesChanged(for:)(void *a1)
{
  v1 = [a1 presentDevices];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SKPresentDevice, 0x1E69D4608);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15SKPresentDeviceCGMd, &_sSaySo15SKPresentDeviceCGMR);
  swift_getExtendedExistentialTypeMetadata();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [SKPresentDevice] and conformance [A], &_sSaySo15SKPresentDeviceCGMd, &_sSaySo15SKPresentDeviceCGMR, MEMORY[0x1E69E6328]);
  Sequence.compactMap<A>(_:)();

  type metadata accessor for Array();
  swift_getWitnessTable();
  v2 = Sequence.sorted(by:)();

  return SKPresenceDataSource.presentDevices.setter(v2);
}

uint64_t closure #2 in SKPresenceDataSource.presentDevicesChanged(for:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v33 - v9;
  v12 = a1[3];
  v11 = a1[4];
  v34 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v11 + 40);
  v37 = v13;
  v38 = v14;
  v39 = v11;
  v40 = v12;
  v35 = v11 + 40;
  v14(v12, v11);
  v16 = a2[3];
  v15 = a2[4];
  v41 = a2;
  v17 = __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = *(v15 + 40);
  v33[1] = v17;
  v36 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v18;
  v18(v19, v20);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v10, v4);
  if (a1)
  {
    v23 = v34[3];
    v24 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v23);
    v25 = (*(v24 + 24))(v23, v24);
    v27 = v26;
    v28 = v41[3];
    v29 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v28);
    if (v25 == (*(v29 + 24))(v28, v29) && v27 == v30)
    {

      v31 = 0;
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v38(v40, v39);
    v21(v36, v20);
    v31 = static Date.< infix(_:_:)();
    v22(v8, v4);
    v22(v10, v4);
  }

  return v31 & 1;
}

void @objc SKPresenceDataSource.presentDevicesChanged(for:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SKPresenceDataSource.presentDevicesChanged(for:)(v4);
}

void SKPresenceDataSource.invitedHandlesChanged(for:)(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);
  v4 = a1;
  v5 = v1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    v9 = [v4 invitedHandles];
    v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SKHandle, 0x1E69D45E8);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = MEMORY[0x1B2710180](v11, v10);
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v7 + 4) = v15;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v5[direct field offset for SKPresenceDataSource.presenceIdentifier], *&v5[direct field offset for SKPresenceDataSource.presenceIdentifier + 8], &v17);
    _os_log_impl(&dword_1AEB26000, oslog, v6, "Presence updated invited handles: %s for identifier: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }
}

void @objc SKPresenceDataSource.invitedHandlesChanged(for:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SKPresenceDataSource.invitedHandlesChanged(for:)(v4);
}

void @objc SKPresenceDataSource.presenceDaemonDisconnected(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized SKPresenceDataSource.presenceDaemonDisconnected(_:)();
}

id SKPresenceDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SKPresenceDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SKPresenceDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t @objc SKPresenceDataSource.__ivar_destroyer(uint64_t a1)
{
}

uint64_t (*protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t protocol witness for PresenceDataSource.assertPresence(using:) in conformance SKPresenceDataSource<A>(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v7(a1);
}

uint64_t protocol witness for PresenceDataSource.releasePresence() in conformance SKPresenceDataSource<A>()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v5();
}

uint64_t SKPresenceDataSource<>.init(personalPresenceDataSourceUsingClientIdentifier:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(16);

  v8[0] = a1;

  MEMORY[0x1B2710020](0x43654D6F54654D2ELL, 0xEE006C656E6E6168);
  LOBYTE(v8[0]) = 1;
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a1;
  v8[4] = a2;
  return (*(v3 + 200))(v8, a3);
}

uint64_t PresenceController.__allocating_init(config:targetQueue:)(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR));
  v7 = a2;
  v8 = specialized SKPresenceDataSource.init(presenceConfiguration:targetQueue:)(a1, a2, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR);
  v9 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SKPresenceDataSource<EmptyPresenceContext> and conformance SKPresenceDataSource<A>, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR, &protocol conformance descriptor for SKPresenceDataSource<A>);
  v10 = *(v3 + 184);
  v11 = lazy protocol witness table accessor for type EmptyPresenceContext and conformance EmptyPresenceContext();
  v12 = v10(v8, v9, &type metadata for EmptyPresenceContext, v11);

  return v12;
}

uint64_t PersonalPresenceController.__allocating_init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  PersonalPresenceController.init<A>(dataSource:)(a1, v6, a3);
  return v5;
}

uint64_t PersonalPresenceController.init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for AsyncSerialQueue(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8650], v6);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v12, v9, v15);
  outlined init with take of AsyncSerialQueue(v15, v3 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue);
  v17 = (v3 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource);
  *v17 = a1;
  v17[1] = a3;
  *(v3 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs) = MEMORY[0x1E69E7CD0];
  return v3;
}

uint64_t PersonalPresenceController.updatePersonalPresenceDataSource()()
{
  *(v1 + 80) = v0;
  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.updatePersonalPresenceDataSource(), 0, 0);
}

{
  v24 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v7 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs;
    swift_beginAccess();
    v0[9] = *(v4 + v7);

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v23);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Update personal presence data source with current activity IDs: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v11 = v0[10];
  v12 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs;
  swift_beginAccess();
  v13 = *(v11 + v12);
  v0[11] = v13;
  v14 = *(v13 + 16);
  v15 = *(v11 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource + 8);
  ObjectType = swift_getObjectType();
  if (v14)
  {
    v0[8] = v13;
    v17 = *(v15 + 64);

    v21 = (v17 + *v17);
    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = PersonalPresenceController.updatePersonalPresenceDataSource();

    return (v21)(v0 + 8, ObjectType, v15);
  }

  else
  {
    v22 = (*(v15 + 72) + **(v15 + 72));
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = PersonalPresenceController.updatePersonalPresenceDataSource();

    return v22(ObjectType, v15);
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PersonalPresenceController.updatePersonalPresenceDataSource(), 0, 0);
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

uint64_t PersonalPresenceController.presentDevicePublisher(for:)(uint64_t a1)
{
  v29 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = v5;
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH27ActivityListPresenceContextV0N0AhIPRts_XPGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH27ActivityListPresenceContextV0N0AhIPRts_XPGs5NeverOGGMR);
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAJ27ActivityListPresenceContextV0O0AjKPRts_XPGs5NeverOGGSayAjK_pAJ05EmptynO0VAPRS_XPGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAJ27ActivityListPresenceContextV0O0AjKPRts_XPGs5NeverOGGSayAjK_pAJ05EmptynO0VAPRS_XPGGMR);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v23 - v10;
  v11 = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_personalPresenceDataSource + 8);
  ObjectType = swift_getObjectType();
  v26 = (*(v11 + 24))(ObjectType, v11);
  v36 = v26;
  v28 = *(v4 + 16);
  v24 = v3;
  v28(v6, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v25 = *(v4 + 32);
  v25(v14 + v13, v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0K0AdEPRts_XPGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == ActivityListPresenceContext>], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD27ActivityListPresenceContextV0K0AdEPRts_XPGs5NeverOGMR, MEMORY[0x1E695BED8]);
  v15 = v30;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v16 = v24;
  v28(v6, v29, v24);
  v17 = swift_allocObject();
  v25(v17 + v13, v6, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore13PresentDevice_pAA20EmptyPresenceContextV0G0AaBPRts_XPGMd, &_sSay14CopresenceCore13PresentDevice_pAA20EmptyPresenceContextV0G0AaBPRts_XPGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == ActivityListPresenceContext>], Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH27ActivityListPresenceContextV0N0AhIPRts_XPGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH27ActivityListPresenceContextV0N0AhIPRts_XPGs5NeverOGGMR, MEMORY[0x1E695BCC0]);
  v19 = v31;
  v18 = v32;
  Publisher.map<A>(_:)();

  (*(v35 + 8))(v15, v18);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Publishers.HandleEvents<AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == ActivityListPresenceContext>], Never>>, [any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAJ27ActivityListPresenceContextV0O0AjKPRts_XPGs5NeverOGGSayAjK_pAJ05EmptynO0VAPRS_XPGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAJ27ActivityListPresenceContextV0O0AjKPRts_XPGs5NeverOGGSayAjK_pAJ05EmptynO0VAPRS_XPGGMR, MEMORY[0x1E695BD60]);
  v20 = v33;
  v21 = Publisher.eraseToAnyPublisher()();
  (*(v34 + 8))(v19, v20);
  return v21;
}

void closure #1 in PersonalPresenceController.presentDevicePublisher(for:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  (*(v5 + 16))(v7, a2, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13PresentDevice_pAA27ActivityListPresenceContextV0H0AaBPRts_XPMd, &_s14CopresenceCore13PresentDevice_pAA27ActivityListPresenceContextV0H0AaBPRts_XPMR);
    v15 = MEMORY[0x1B2710180](v8, v14);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v5 + 8))(v7, v4);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v23);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Filtering multiplexed devices: %s for presence identifier: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t closure #2 in PersonalPresenceController.presentDevicePublisher(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v14[2] = a2;

  v5 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #2 in PersonalPresenceController.presentDevicePublisher(for:), v14, v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v19;
    v8 = v5 + 32;
    do
    {
      outlined init with copy of UserNotificationCenter(v8, v15);
      v9 = v16;
      v10 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      PresentDevice.withoutContext()(v9, v10, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v19 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v12 + 1;
      outlined init with take of ContiguousBytes(v18, v7 + 40 * v12 + 32);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v7;
  return result;
}

uint64_t closure #1 in closure #2 in PersonalPresenceController.presentDevicePublisher(for:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 48))(&v8, v3, v4);
  v7[2] = a2;
  v5 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v7, v8);

  return v5 & 1;
}

uint64_t (*specialized _ArrayProtocol.filter(_:)(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      outlined init with copy of UserNotificationCenter(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        outlined init with take of ContiguousBytes(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = outlined init with take of ContiguousBytes(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t PersonalPresenceController.assertPresence(for:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v2[19] = *(v5 + 64);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.assertPresence(for:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](PersonalPresenceController.assertPresence(for:), 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t PersonalPresenceController.assertPresence(for:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[13];
  v0[21] = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue;
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[22] = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.assertPresence(for:), 0, 0);
}

{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v0[2] = v0;
  v0[3] = PersonalPresenceController.assertPresence(for:);
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &async function pointer to partial apply for closure #1 in PersonalPresenceController.assertPresence(for:);
  v6[4] = v1;
  type metadata accessor for AsyncSerialQueue(0);
  v7 = swift_allocObject();
  *(v7 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  *(v7 + 24) = v6;
  v0[10] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  v0[11] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PersonalPresenceController.assertPresence(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PersonalPresenceController.assertPresence(for:), 0, 0);
}

uint64_t closure #1 in PersonalPresenceController.assertPresence(for:)()
{
  v40 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v37 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v37, static Log.host);
  v5 = *(v2 + 16);
  v0[19] = v5;
  v0[20] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36 = v5;
  v5(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v10 = v0[12];
  v11 = v0[13];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v12 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v34 = v7;
    v16 = *(v11 + 8);
    v17 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v10);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v39);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v6, v34, "Asserting presence for activity ID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  else
  {

    v16 = *(v11 + 8);
    v17 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v10);
  }

  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[10];
  v24 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs;
  v0[21] = v16;
  v0[22] = v24;
  swift_beginAccess();
  v36(v20, v22, v21);
  v38 = *(v23 + v24);

  specialized Set._Variant.insert(_:)(v19, v20);
  v0[23] = v17;
  v16(v19, v21);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v0[24] = __swift_project_value_buffer(v37, static Log.service);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v29 = Set.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v39);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Updating activity list context to current activities: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1B27120C0](v28, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  *(v23 + v24) = v38;
  swift_endAccess();
  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  v32[1] = closure #1 in PersonalPresenceController.assertPresence(for:);

  return PersonalPresenceController.updatePersonalPresenceDataSource()();
}

{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PersonalPresenceController.assertPresence(for:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v37 = v0;
  v1 = *(v0 + 208);
  (*(v0 + 152))(*(v0 + 112), *(v0 + 72), *(v0 + 96));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v34 = *(v0 + 168);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36[0] = v9;
    *v8 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v34(v6, v7);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v36);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v0 + 64) = v5;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v36);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Error asserting presence for activity ID: %s error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
    v18 = *(v0 + 168);
    v19 = *(v0 + 112);
    v20 = *(v0 + 96);

    v18(v19, v20);
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 80);
  v23 = *(v0 + 88);
  v24 = *(v0 + 72);
  swift_beginAccess();
  v35 = *(v22 + v21);

  specialized Set._Variant.remove(_:)(v24, v23);
  outlined destroy of UUID?(v23);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36[0] = v28;
    *v27 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v29 = Set.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v36);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Updating activity list context to current activities: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1B27120C0](v28, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  *(*(v0 + 80) + *(v0 + 176)) = v35;
  swift_endAccess();
  swift_willThrow();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t PersonalPresenceController.releasePresence(for:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v2[19] = *(v5 + 64);
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.releasePresence(for:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 184) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](PersonalPresenceController.releasePresence(for:), 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t PersonalPresenceController.releasePresence(for:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[13];
  v0[21] = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue;
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[22] = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  return MEMORY[0x1EEE6DFA0](PersonalPresenceController.releasePresence(for:), 0, 0);
}

{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v0[2] = v0;
  v0[3] = PersonalPresenceController.releasePresence(for:);
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &async function pointer to partial apply for closure #1 in PersonalPresenceController.releasePresence(for:);
  v6[4] = v1;
  type metadata accessor for AsyncSerialQueue(0);
  v7 = swift_allocObject();
  *(v7 + 16) = &closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)specialized partial apply;
  *(v7 + 24) = v6;
  v0[10] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v0[11] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t closure #1 in PersonalPresenceController.releasePresence(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PersonalPresenceController.releasePresence(for:), 0, 0);
}

uint64_t closure #1 in PersonalPresenceController.releasePresence(for:)()
{
  v39 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v35 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v35, static Log.host);
  v5 = *(v2 + 16);
  v0[19] = v5;
  v0[20] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v10 = &OBJC_INSTANCE_METHODS_TUContactsDataSource_0;
  v12 = v0[12];
  v11 = v0[13];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v13 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v9, v12);
    v18 = v14;
    v10 = &OBJC_INSTANCE_METHODS_TUContactsDataSource_0;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v16, &v38);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Releasing presence for activity ID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1B27120C0](v34, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v9, v12);
  }

  v21 = v0[10];
  v20 = v0[11];
  v22 = v0[9];
  v23 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_currentActivityIDs;
  v0[21] = v17;
  v0[22] = v23;
  swift_beginAccess();
  v37 = *(v21 + v23);

  specialized Set._Variant.remove(_:)(v22, v20);
  outlined destroy of UUID?(v20);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v0[23] = __swift_project_value_buffer(v35, static Log.service);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = v21;
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = v10[337];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v28 = Set.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v38);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1AEB26000, v24, v25, "Updating activity list context to current activities: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v31 = v27;
    v21 = v36;
    MEMORY[0x1B27120C0](v31, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  *(v21 + v23) = v37;
  swift_endAccess();
  v32 = swift_task_alloc();
  v0[24] = v32;
  *v32 = v0;
  v32[1] = closure #1 in PersonalPresenceController.releasePresence(for:);

  return PersonalPresenceController.updatePersonalPresenceDataSource()();
}

{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PersonalPresenceController.releasePresence(for:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v41 = v0;
  v1 = *(v0 + 200);
  (*(v0 + 152))(*(v0 + 128), *(v0 + 72), *(v0 + 96));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v37 = *(v0 + 168);
    v6 = *(v0 + 128);
    v7 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v8 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v37(v6, v7);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v40);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 64) = v5;
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v40);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Error releasing presence for activity ID: %s error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v38, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 128);
    v19 = *(v0 + 96);

    v17(v18, v19);
  }

  v20 = *(v0 + 176);
  v21 = *(v0 + 168);
  v22 = *(v0 + 152);
  v24 = *(v0 + 112);
  v23 = *(v0 + 120);
  v25 = *(v0 + 96);
  v26 = *(v0 + 72);
  v27 = *(v0 + 80);
  swift_beginAccess();
  v22(v24, v26, v25);
  v39 = *(v27 + v20);

  specialized Set._Variant.insert(_:)(v23, v24);
  v21(v23, v25);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40[0] = v31;
    *v30 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v32 = Set.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v40);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1AEB26000, v28, v29, "Updating activity list context to current activities: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1B27120C0](v31, -1, -1);
    MEMORY[0x1B27120C0](v30, -1, -1);
  }

  *(*(v0 + 80) + *(v0 + 176)) = v39;
  swift_endAccess();
  swift_willThrow();

  v35 = *(v0 + 8);

  return v35();
}

uint64_t PersonalPresenceController.deinit()
{
  outlined destroy of AsyncSerialQueue(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PersonalPresenceController.__deallocating_deinit()
{
  outlined destroy of AsyncSerialQueue(v0 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceController_workQueue);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void PersonalPresenceDataSource.members.getter()
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo21TUExternalParticipantC_Tt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMd, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMR, type metadata accessor for AddressableMember);
    }
  }
}

void (*PersonalPresenceDataSource.members.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo21TUExternalParticipantC_Tt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMd, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMR, type metadata accessor for AddressableMember);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *a1 = v2;
  return PersonalPresenceDataSource.members.modify;
}

void PersonalPresenceDataSource.members.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    specialized PersonalPresenceDataSource.members.setter(v2);
  }

  else
  {
    v3 = *a1;

    specialized PersonalPresenceDataSource.members.setter(v3);
  }
}

uint64_t PersonalPresenceDataSource.presentDevices.getter()
{

  CurrentValueSubject.value.getter();

  return v1;
}

uint64_t PersonalPresenceDataSource.presentDevices.setter(uint64_t a1)
{

  CurrentValueSubject.send(_:)();
}

uint64_t (*PersonalPresenceDataSource.presentDevices.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource__presentDevices);

  CurrentValueSubject.value.getter();
  return PersonalPresenceDataSource.presentDevices.modify;
}

uint64_t PersonalPresenceDataSource.presentDevices.modify(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    CurrentValueSubject.send(_:)();
  }

  else
  {
    CurrentValueSubject.send(_:)();
  }
}

uint64_t PersonalPresenceDataSource.presentDevicesPublisher.getter()
{
  (*(*v0 + 160))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  v1 = Publisher.eraseToAnyPublisher()();

  return v1;
}

uint64_t PersonalPresenceDataSource.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_cancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PersonalPresenceDataSource.__allocating_init(activityID:personalPresenceController:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized PersonalPresenceDataSource.init(activityID:personalPresenceController:)(a1, a2);

  return v4;
}

uint64_t PersonalPresenceDataSource.init(activityID:personalPresenceController:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized PersonalPresenceDataSource.init(activityID:personalPresenceController:)(a1, a2);

  return v2;
}

uint64_t PersonalPresenceDataSource.assertPresence(using:)()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PersonalPresenceDataSource.assertPresence(using:), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = PersonalPresenceDataSource.assertPresence(using:);

  return PersonalPresenceController.assertPresence(for:)(v1 + v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PersonalPresenceDataSource.releasePresence()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PersonalPresenceDataSource.releasePresence(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = PersonalPresenceDataSource.releasePresence();

  return PersonalPresenceController.releasePresence(for:)(v1 + v2);
}

uint64_t PersonalPresenceDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PersonalPresenceDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 128))();
  return protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource;
}

void protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for PresenceDataSource.assertPresence(using:) in conformance PersonalPresenceDataSource()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

uint64_t protocol witness for PresenceDataSource.releasePresence() in conformance PersonalPresenceDataSource()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

unint64_t specialized PresenceConfiguration.description.getter(char a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(38);

  MEMORY[0x1B2710020](a2, a3);
  MEMORY[0x1B2710020](0x737265507369202CLL, 0xEE00203A6C616E6FLL);
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v6, v7);

  return 0xD000000000000014;
}

void specialized SKPresenceDataSource.presenceDaemonDisconnected(_:)()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v2[direct field offset for SKPresenceDataSource.presenceIdentifier], *&v2[direct field offset for SKPresenceDataSource.presenceIdentifier + 8], &v7);
    _os_log_impl(&dword_1AEB26000, oslog, v3, "Presence daemon disconnected for identifier: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type EmptyPresenceContext and conformance EmptyPresenceContext()
{
  result = lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext;
  if (!lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext;
  if (!lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext;
  if (!lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyPresenceContext and conformance EmptyPresenceContext);
  }

  return result;
}

uint64_t outlined init with take of AsyncSerialQueue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in PersonalPresenceController.presentDevicePublisher(for:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #1 in PersonalPresenceController.presentDevicePublisher(for:)(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in PersonalPresenceController.presentDevicePublisher(for:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #2 in PersonalPresenceController.presentDevicePublisher(for:)(a1, v6, a2);
}

uint64_t partial apply for closure #1 in PersonalPresenceController.assertPresence(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PersonalPresenceController.assertPresence(for:)(a1, v1 + v5, v6);
}

uint64_t partial apply for specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v2, v3);
}

{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v2, v3);
}

uint64_t objectdestroy_37Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in PersonalPresenceController.releasePresence(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PersonalPresenceController.releasePresence(for:)(a1, v1 + v5, v6);
}

uint64_t closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)specialized partial apply()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)(v2, v3);
}

uint64_t outlined destroy of AsyncSerialQueue(uint64_t a1)
{
  v2 = type metadata accessor for AsyncSerialQueue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo21TUExternalParticipantC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = __CocoaSet.count.getter();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v45 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v42 = v4;
    while (1)
    {
      v14 = MEMORY[0x1B2710B10](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v12 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        a4(0);
        while (1)
        {
          v24 = *(*(v6 + 48) + 8 * v19);
          v25 = static NSObject.== infix(_:_:)();

          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v12 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          if (((1 << v19) & v21) == 0)
          {
            v8 = v45;
            v4 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v45;
        v4 = v42;
        if (v13 == v45)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v20) = v22 | v21;
        *(*(v6 + 48) + 8 * v19) = v16;
        v26 = *(v6 + 16);
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v27;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v28 = 0;
    v43 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v28 != v43)
    {
      v29 = *(v6 + 40);
      v30 = *(v4 + 32 + 8 * v28);
      v31 = NSObject._rawHashValue(seed:)(v29);
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v12 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        a4(0);
        while (1)
        {
          v38 = *(*(v6 + 48) + 8 * v33);
          v39 = static NSObject.== infix(_:_:)();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v12 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v34) = v36 | v35;
        *(*(v6 + 48) + 8 * v33) = v30;
        v40 = *(v6 + 16);
        v15 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v41;
      }

      if (++v28 == v45)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void specialized PersonalPresenceDataSource.members.setter(uint64_t a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);
    v5 = Set.description.getter();
    v7 = v6;

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, oslog, v2, "Not adding additional remote members to personal presence data source: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1B27120C0](v4, -1, -1);
    MEMORY[0x1B27120C0](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized PersonalPresenceDataSource.init(activityID:personalPresenceController:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource__presentDevices;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0K0AdEPRts_XPGs5NeverOGMR);
  swift_allocObject();
  *(v2 + v6) = CurrentValueSubject.init(_:)();
  *(v2 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_cancellables) = MEMORY[0x1E69E7CD0];
  v7 = OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_activityID;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC14CopresenceCore26PersonalPresenceDataSource_personalPresenceController) = a2;

  PersonalPresenceController.presentDevicePublisher(for:)(a1);
  (*(*v3 + 160))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v9 + 8))(a1, v8);
  return v3;
}

uint64_t dispatch thunk of PresenceDataSource.assertPresence(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PresenceDataSource.releasePresence()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v7(a1, a2);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PresenceConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PresenceConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of SKPresenceDataSource.__allocating_init(presenceConfiguration:targetQueue:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(v1 + 200);
  v7[0] = *a1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  return v5(v7);
}

uint64_t dispatch thunk of SKPresenceDataSource.assertPresence(using:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v7(a1);
}

uint64_t dispatch thunk of SKPresenceDataSource.releasePresence()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v5();
}

uint64_t dispatch thunk of SKPresenceDataSource.inviteHandle(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2);
}

uint64_t dispatch thunk of SKPresenceDataSource.inviteHandles(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v7(a1);
}

uint64_t dispatch thunk of SKPresenceDataSource.removeHandle(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2);
}

uint64_t dispatch thunk of SKPresenceDataSource.removeHandles(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v7(a1);
}

uint64_t type metadata completion function for PersonalPresenceController(uint64_t a1)
{
  result = type metadata accessor for AsyncSerialQueue(319);
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

uint64_t type metadata completion function for PersonalPresenceDataSource(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t dispatch thunk of PersonalPresenceDataSource.assertPresence(using:)()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

uint64_t dispatch thunk of PersonalPresenceDataSource.releasePresence()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20RBSProcessIdentifierC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = __CocoaSet.count.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v47 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v43 = v5;
    while (1)
    {
      v15 = MEMORY[0x1B2710B10](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        type metadata accessor for NSObject(0, a4, a5);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v47;
            v5 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v47;
        v5 = v43;
        if (v14 == v47)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v7 + 40);
      v31 = *(v5 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v13 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        type metadata accessor for NSObject(0, a4, a5);
        while (1)
        {
          v39 = *(*(v7 + 48) + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v13 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v35) = v37 | v36;
        *(*(v7 + 48) + 8 * v34) = v31;
        v41 = *(v7 + 16);
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v42;
      }

      if (++v29 == v47)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in SKPresenceDataSource.members.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SKPresenceDataSource.members.didset(a1, v4, v5, v7, v6);
}

uint64_t outlined consume of Set<AddressableMember>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t ActivitySession.SceneAssociationCoordinator.associatedScenes.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = atomic_load((v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch));
  if (v3 == -1)
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = [*(v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager) scenesInBranchWithIndex_];
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  a1[3] = v6;
  a1[4] = result;
  *a1 = v5;
  return result;
}

char *ActivitySession.SceneAssociationCoordinator.associatedBranchAppProvidedAssociation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v3 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch;
    v15 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager;

    if (!i)
    {
      break;
    }

    v4 = 0;
    v5 = (v16 + v3);
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2710B10](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = atomic_load(v5);
      if (v9 == -1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = [*(v16 + v15) scenesInBranchWithIndex_];
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v19 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
      *&v17 = v11;
      outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(&v17, v20);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v12 = *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8];
      *&v17 = *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
      *(&v17 + 1) = v12;
      v13 = Sequence<>.contains(_:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      if (v13)
      {

        return v7;
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:

  return 0;
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.disassociateAllScenes()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene;
  swift_beginAccess();
  v1[v8] = 0;
  v9 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch;
  v10 = atomic_load(&v1[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
  if (v10 == -1)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = [*&v1[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] scenesInBranchWithIndex_];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v14 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
  v44 = v13;
  v45 = v14;
  v43[0] = v12;
  __swift_project_boxed_opaque_existential_1(v43, v13);
  v15 = dispatch thunk of Collection.isEmpty.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  if (v15)
  {
    if (one-time initialization token for sceneAssociation == -1)
    {
LABEL_7:
      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Log.sceneAssociation);
      v17 = v1;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v43[0] = v21;
        *v20 = 136315138;
        type metadata accessor for UUID();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v43);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1AEB26000, v18, v19, "Tried to disassociate all scenes but no scenes are associated with %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1B27120C0](v21, -1, -1);
        MEMORY[0x1B27120C0](v20, -1, -1);
      }

      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  if (one-time initialization token for sceneAssociation != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.sceneAssociation);
  v26 = v1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315394;
    v31 = atomic_load(&v1[v9]);
    if (v31 == -1)
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v32 = [*&v26[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] scenesInBranchWithIndex_];
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v45 = v14;
    v43[0] = v33;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v42);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v42);

    *(v29 + 14) = v40;
    _os_log_impl(&dword_1AEB26000, v27, v28, "Disassociating scenes: [%s] from %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  atomic_store(0xFFFFFFFFFFFFFFFFLL, &v1[v9]);
  ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();
}

id ActivitySession.SceneAssociationCoordinator.__allocating_init(sessionID:sceneAssociationBehavior:sceneObservationManager:queue:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged];
  *v11 = 0;
  v11[1] = 0;
  v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene] = 0;
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch] = -1;
  v12 = &v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
  *v12 = 0;
  v12[8] = 1;
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sessionID;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v10[v13], a1, v14);
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue] = a4;
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneAssociationBehavior] = a2;
  *&v10[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] = a3;
  v20.receiver = v10;
  v20.super_class = v5;
  v16 = a4;
  v17 = a2;
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  [a3 addDelegate_];

  swift_unknownObjectRelease();
  (*(v15 + 8))(a1, v14);
  return v18;
}

uint64_t ActivitySession.SceneAssociationCoordinator.setAssociatedScenesChangedHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for sceneAssociation != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.sceneAssociation);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE306C0, &v15);
    _os_log_impl(&dword_1AEB26000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v11 = (v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged);
  v12 = *(v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged);
  v13 = *(v3 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged + 8);
  *v11 = a1;
  v11[1] = a2;

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v12, v13);
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.setSystemAssociatedScene(to:)(Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for sceneAssociation == -1)
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
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.sceneAssociation);

  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446722;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001AEE306F0, &v29);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v29);
    *(v14 + 22) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

    *(v14 + 24) = v18;
    _os_log_impl(&dword_1AEB26000, v12, v13, "%{public}s: %s on %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v19 = *&v11[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager];
  v20 = MEMORY[0x1B270FF70](countAndFlagsBits, object);
  v21 = [v19 branchIndexForSceneID_];

  v22 = &v11[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
  *v22 = v21;
  v22[8] = 0;
  v23 = ActivitySession.SceneAssociationCoordinator.associatedBranchAppProvidedAssociation.getter();
  if (v23)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v26 = 136446210;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001AEE306F0, &v29);
      _os_log_impl(&dword_1AEB26000, v24, v25, "%{public}s: Associated scene has an app provided association. Ignoring system association.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }
  }

  else
  {
    atomic_store(v21, &v11[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
    ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();
  }
}

uint64_t ActivitySession.SceneAssociationCoordinator.didAssociateScene.getter()
{
  v1 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene;
  swift_beginAccess();
  return *(v0 + v1);
}

id ActivitySession.SceneAssociationCoordinator.init(sessionID:sceneAssociationBehavior:sceneObservationManager:queue:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = &v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene] = 0;
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch] = -1;
  v10 = &v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations] = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sessionID;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v4[v11], a1, v12);
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue] = a4;
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneAssociationBehavior] = a2;
  *&v4[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] = a3;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ActivitySession.SceneAssociationCoordinator(0);
  v14 = a4;
  v15 = a2;
  swift_unknownObjectRetain();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  [a3 addDelegate_];

  swift_unknownObjectRelease();
  (*(v13 + 8))(a1, v12);
  return v16;
}

id ActivitySession.SceneAssociationCoordinator.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] removeDelegate_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySession.SceneAssociationCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ActivitySession.SceneAssociationCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(result);
    if ((result & 1) == 0)
    {
      v9 = atomic_load((v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch));
      if (v9 == -1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = [*(v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager) scenesInBranchWithIndex_];
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v13 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
      v21[3] = v12;
      v21[4] = v13;
      v21[0] = v11;
      __swift_project_boxed_opaque_existential_1(v21, v12);
      v14 = dispatch thunk of Collection.isEmpty.getter();
      result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
      if ((v14 & 1) == 0)
      {
        v15 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene;
        result = swift_beginAccess();
        *(v1 + v15) = 1;
      }
    }

    v16 = v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged;
    v17 = *(v1 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged);
    if (v17)
    {
      v18 = *(v16 + 1);

      v17(v19);
      return _sxRi_zRi0_zlyytIseghHr_SgWOe(v17, v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.setGroupActivityAssociations(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (one-time initialization token for sceneAssociation == -1)
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
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.sceneAssociation);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v89 = v15;
    *v14 = 136446466;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v89);
    *(v14 + 12) = 2080;
    v16 = type metadata accessor for GroupActivityAssociation();
    v17 = MEMORY[0x1B2710180](a1._rawValue, v16);
    v2 = v18;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v89);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1AEB26000, v12, v13, "%{public}s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v20 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations;
  v21 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations];

  v22 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore24GroupActivityAssociationC_Tt1g5(a1._rawValue, v21);

  if ((v22 & 1) == 0)
  {
    v23 = *&v3[v20];
    if (v23 >> 62)
    {
      v24 = __CocoaSet.count.getter();
      if (v24)
      {
LABEL_8:
        v25 = v24 - 1;
        if (__OFSUB__(v24, 1))
        {
          __break(1u);
        }

        else if ((v23 & 0xC000000000000001) == 0)
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v2 = *(v23 + 8 * v25 + 32);
LABEL_17:
          *&v3[v20] = a1;

          if (a1._rawValue >> 62)
          {
            v26 = __CocoaSet.count.getter();
            if (v26)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v26 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v26)
            {
LABEL_19:
              v23 = v26 - 1;
              if (!__OFSUB__(v26, 1))
              {
                if ((a1._rawValue & 0xC000000000000001) == 0)
                {
                  if ((v23 & 0x8000000000000000) == 0)
                  {
                    if (v23 < *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v27 = *(a1._rawValue + v23 + 4);

                      v28 = v27;
                      goto LABEL_24;
                    }

LABEL_59:
                    __break(1u);
                    return;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_56:

                v28 = MEMORY[0x1B2710B10](v23, a1._rawValue);
LABEL_24:
                v29 = v28;
                v30 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager];
                v31 = *&v28[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
                v32 = *&v28[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8];

                v33 = MEMORY[0x1B270FF70](v31, v32);

                v34 = [v30 branchIndexForSceneID_];

                v35 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch;
                v36 = atomic_load(&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
                if (v36 != -1 && v34 == v36)
                {
                  if (v2)
                  {
                    type metadata accessor for GroupActivityAssociation();
                    v37 = v29;
                    v38 = v2;
                    v39 = static NSObject.== infix(_:_:)();

                    if (v39)
                    {

                      return;
                    }
                  }
                }

                v40 = v29;
                v41 = v3;
                v42 = Logger.logObject.getter();
                v43 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  v88 = v2;
                  v45 = v44;
                  v46 = swift_slowAlloc();
                  v85 = v46;
                  v86 = swift_slowAlloc();
                  v89 = v86;
                  *v45 = 136446722;
                  *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v89);
                  *(v45 + 12) = 2112;
                  *(v45 + 14) = v40;
                  *v46 = v40;
                  *(v45 + 22) = 2080;
                  type metadata accessor for UUID();
                  v87 = v34;
                  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                  v47 = v40;
                  v48 = dispatch thunk of CustomStringConvertible.description.getter();
                  v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v89);

                  *(v45 + 24) = v50;
                  v34 = v87;
                  _os_log_impl(&dword_1AEB26000, v42, v43, "%{public}s: Associating new anchor: %@ with %s", v45, 0x20u);
                  v51 = v85;
                  outlined destroy of NSObject?(v85, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x1B27120C0](v51, -1, -1);
                  v52 = v86;
                  swift_arrayDestroy();
                  MEMORY[0x1B27120C0](v52, -1, -1);
                  v53 = v45;
                  v2 = v88;
                  MEMORY[0x1B27120C0](v53, -1, -1);
                }

                atomic_store(v34, &v3[v35]);
                ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();

                goto LABEL_50;
              }

              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }
          }

          if (v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch + 8] == 1)
          {
          }

          else
          {
            v54 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
            v55 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch;
            v56 = atomic_load(&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);

            if ((v56 == -1 || v54 != v56) && ([*&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] isBranchEmptyWithIndex_] & 1) == 0)
            {
              v74 = v3;
              v75 = Logger.logObject.getter();
              v76 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v75, v76))
              {
                v77 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                v88 = v2;
                v89 = v78;
                v79 = v78;
                *v77 = 136446466;
                *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v89);
                *(v77 + 12) = 2080;
                type metadata accessor for UUID();
                lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                v80 = dispatch thunk of CustomStringConvertible.description.getter();
                v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v89);

                *(v77 + 14) = v82;
                _os_log_impl(&dword_1AEB26000, v75, v76, "%{public}s: Associating system-associated scene with activity %s", v77, 0x16u);
                swift_arrayDestroy();
                v83 = v79;
                v2 = v88;
                MEMORY[0x1B27120C0](v83, -1, -1);
                MEMORY[0x1B27120C0](v77, -1, -1);
              }

              atomic_store(v54, &v3[v55]);
              goto LABEL_49;
            }
          }

          v57 = *&v3[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneAssociationBehavior];
          if (!v57 || ([v57 shouldAssociateScene] & 1) != 0)
          {
            v58 = v3;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v89 = v62;
              *v61 = 136446466;
              *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v89);
              *(v61 + 12) = 2080;
              type metadata accessor for UUID();
              lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v63 = dispatch thunk of CustomStringConvertible.description.getter();
              v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v89);

              *(v61 + 14) = v65;
              _os_log_impl(&dword_1AEB26000, v59, v60, "%{public}s: Persisting association from removed spatial template anchor for activity: %s", v61, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1B27120C0](v62, -1, -1);
              MEMORY[0x1B27120C0](v61, -1, -1);
            }

            goto LABEL_50;
          }

          v66 = v3;
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v89 = v70;
            *v69 = 136446466;
            *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001AEE30740, &v89);
            *(v69 + 12) = 2080;
            type metadata accessor for UUID();
            lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v71 = dispatch thunk of CustomStringConvertible.description.getter();
            v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v89);

            *(v69 + 14) = v73;
            _os_log_impl(&dword_1AEB26000, v67, v68, "%{public}s: Clearing associated scene for activity %s", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B27120C0](v70, -1, -1);
            MEMORY[0x1B27120C0](v69, -1, -1);
          }

          atomic_store(0xFFFFFFFFFFFFFFFFLL, &v66[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
LABEL_49:
          ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();
LABEL_50:

          return;
        }

        v2 = MEMORY[0x1B2710B10](v25, v23);

        goto LABEL_17;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_8;
      }
    }

    v2 = 0;
    goto LABEL_17;
  }
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator._sceneWasDiscarded(_:effectedBranch:)(Swift::String _, Swift::Int effectedBranch)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (one-time initialization token for sceneAssociation == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_86;
  }

  while (1)
  {
    __break(1u);
LABEL_86:
    swift_once();
LABEL_3:
    v12 = type metadata accessor for Logger();
    v13 = __swift_project_value_buffer(v12, static Log.sceneAssociation);

    v14 = v2;
    v72 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v74 = v18;
      *v17 = 136446722;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE30770, &v74);
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v74);
      *(v17 + 22) = 2080;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v74);

      *(v17 + 24) = v21;
      _os_log_impl(&dword_1AEB26000, v15, v16, "%{public}s: discarded tracked and associated scene %s on %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v70 = *&v14[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager];
    v22 = [v70 isBranchEmptyWithIndex_];
    v73 = v14;
    if (v22)
    {
      break;
    }

    v2 = *&v14[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations];
    if (v2 >> 62)
    {
      effectedBranch = __CocoaSet.count.getter();
    }

    else
    {
      effectedBranch = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = 0;
    while (1)
    {
      if (effectedBranch == v23)
      {

        goto LABEL_78;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1B2710B10](v23, v2);
      }

      else
      {
        if (v23 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v24 = *(v2 + 8 * v23 + 32);
      }

      v25 = v24;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (*&v24[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID] == countAndFlagsBits && *&v24[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8] == object)
      {

        goto LABEL_23;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v23;
      if (v27)
      {

LABEL_23:
        v14 = v73;
        goto LABEL_24;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

LABEL_24:
  v2 = *&v14[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations];
  v71 = v2 >> 62;
  if (v2 >> 62)
  {
    effectedBranch = __CocoaSet.count.getter();
  }

  else
  {
    effectedBranch = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v2 & 0xC000000000000001;
  v29 = v2 + 32;
  swift_bridgeObjectRetain_n();

  v30 = 0;
  while (1)
  {
    if (effectedBranch == v30)
    {
      goto LABEL_40;
    }

    if (v28)
    {
      v32 = MEMORY[0x1B2710B10](v30, v2);
    }

    else
    {
      if (v30 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v32 = *(v2 + 8 * v30 + 32);
    }

    v33 = v32;
    if (*&v32[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID] != countAndFlagsBits || *&v32[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8] != object)
    {
      break;
    }

LABEL_28:
    v31 = __OFADD__(v30++, 1);
    if (v31)
    {
      goto LABEL_80;
    }
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_28;
  }

  effectedBranch = v30;
LABEL_40:
  if (v71)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      v30 = v2;
    }

    else
    {
      v30 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    if (effectedBranch != __CocoaSet.count.getter())
    {
      v36 = __CocoaSet.count.getter();
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (effectedBranch == v36)
  {
LABEL_47:
    swift_bridgeObjectRelease_n();

    v37 = v73;
    if (v73[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch + 8])
    {
      v38 = -1;
    }

    else
    {
      v38 = *&v73[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
    }

    atomic_store(v38, &v73[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
    v43 = v37;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74 = v47;
      *v46 = 136446466;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE30770, &v74);
      *(v46 + 12) = 2080;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v74);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_1AEB26000, v44, v45, "SceneMonitorDelegate.%{public}s: No remaining anchors, attempting to associate originally auto-associated scene with %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v47, -1, -1);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }

    goto LABEL_78;
  }

LABEL_50:
  if (!v36)
  {
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  effectedBranch = v36 - 1;
  if (__OFSUB__(v36, 1))
  {
    do
    {
      __break(1u);
LABEL_54:

LABEL_55:
      v31 = __OFSUB__(effectedBranch--, 1);
    }

    while (v31);
  }

  if (v28)
  {
    v39 = MEMORY[0x1B2710B10](effectedBranch, v2);
    goto LABEL_61;
  }

  if (effectedBranch < 0)
  {
    goto LABEL_81;
  }

  if (effectedBranch >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v39 = *(v29 + 8 * effectedBranch);
LABEL_61:
  v30 = v39;
  if (*&v39[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID] == countAndFlagsBits && *&v39[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8] == object)
  {
    goto LABEL_54;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_55;
  }

  if (v28)
  {
    v42 = MEMORY[0x1B2710B10](effectedBranch, v2);
    goto LABEL_75;
  }

  if (effectedBranch < 0)
  {
    goto LABEL_90;
  }

  if (effectedBranch >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_91:
    __break(1u);
    return;
  }

  v42 = *(v29 + 8 * effectedBranch);
LABEL_75:
  v51 = v42;

  swift_bridgeObjectRelease_n();
  v52 = v51;
  v53 = v73;
  v54 = v52;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v74 = v59;
    *v57 = 136446722;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001AEE30770, &v74);
    *(v57 + 12) = 2112;
    *(v57 + 14) = v54;
    *v58 = v54;
    *(v57 + 22) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v60 = v54;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v74);

    *(v57 + 24) = v63;
    _os_log_impl(&dword_1AEB26000, v55, v56, "SceneMonitorDelegate.%{public}s: Associating branch with next spatial template anchor %@ on %s", v57, 0x20u);
    outlined destroy of NSObject?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v58, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v59, -1, -1);
    MEMORY[0x1B27120C0](v57, -1, -1);
  }

  v64 = v70;
  v65 = *&v54[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
  v66 = *&v54[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8];

  v67 = MEMORY[0x1B270FF70](v65, v66);

  v68 = [v64 branchIndexForSceneID_];

  atomic_store(v68, &v53[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
LABEL_78:
  ActivitySession.SceneAssociationCoordinator.recalculateAssociatedScenes()();
}

Swift::Void __swiftcall ActivitySession.SceneAssociationCoordinator.sceneWasDiscarded(_:branchIndex:)(Swift::String _, Swift::Int branchIndex)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = atomic_load(&v2[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch]);
  if (v15 != -1 && v15 == branchIndex)
  {
    v20[1] = *&v2[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue];
    v21 = v12;
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = countAndFlagsBits;
    v17[4] = object;
    v17[5] = branchIndex;
    aBlock[4] = partial apply for closure #1 in ActivitySession.SceneAssociationCoordinator.sceneWasDiscarded(_:branchIndex:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_2;
    v18 = _Block_copy(aBlock);
    v19 = v2;

    static DispatchQoS.unspecified.getter();
    v22 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v14, v9, v18);
    _Block_release(v18);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v14, v21);
  }
}