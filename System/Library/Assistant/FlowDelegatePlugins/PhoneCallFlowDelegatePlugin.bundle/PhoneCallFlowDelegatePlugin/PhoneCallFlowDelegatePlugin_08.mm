uint64_t CallControlUsoIdentifiers.hasAnyVolumeIdentifier.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_42BF20;
  *(inited + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 32) = 1;
  *(inited + 96) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 104) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 72) = 4;
  *(inited + 136) = &type metadata for CallControlUsoIdentifiers.FloatSettingName;
  *(inited + 144) = &protocol witness table for CallControlUsoIdentifiers.FloatSettingName;
  *(inited + 112) = 0;
  *(inited + 176) = &type metadata for CallControlUsoIdentifiers.FloatSettingName;
  *(inited + 184) = &protocol witness table for CallControlUsoIdentifiers.FloatSettingName;
  *(inited + 152) = 1;
  *(inited + 216) = &type metadata for CallControlUsoIdentifiers.FloatSettingName;
  *(inited + 224) = &protocol witness table for CallControlUsoIdentifiers.FloatSettingName;
  *(inited + 192) = 2;
  LOBYTE(a1) = CallControlUsoIdentifiers.contains(anyOf:)(inited, a1);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return a1 & 1;
}

BOOL CallControlUsoIdentifiers.contains(anyOf:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (v3 != v4)
  {
    outlined init with copy of SignalProviding(v5 + 40 * v3, v24);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    swift_getDynamicType();
    v6 = (*(v26 + 8))();
    if (*(a2 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v9)
      {
        v10 = *(*(a2 + 56) + 8 * v8);

        v11 = v25;
        v12 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v13 = (*(v12 + 16))(v11, v12);
        v15 = v14;
        if (*(v10 + 16))
        {
          v16 = v13;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v17 = Hasher._finalize()();
          v18 = ~(-1 << *(v10 + 32));
          do
          {
            v19 = v17 & v18;
            if (((*(v10 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {

              goto LABEL_15;
            }

            v20 = (*(v10 + 48) + 16 * v19);
            if (*v20 == v16 && v20[1] == v15)
            {
              break;
            }

            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v17 = v19 + 1;
          }

          while ((v22 & 1) == 0);

          __swift_destroy_boxed_opaque_existential_1(v24);
          return v3 != v4;
        }
      }
    }

LABEL_15:
    ++v3;
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return v3 != v4;
}

BOOL CallControlUsoIdentifiers.hasUnmuteCallIdentifier.getter(uint64_t a1, char a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FF0;
  *(inited + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 32) = a2;
  *(inited + 96) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 104) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 72) = a3;
  v7 = CallControlUsoIdentifiers.contains(anyOf:)(inited, a1);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v7;
}

uint64_t CallControlUsoIdentifiers.hasMicrophoneIdentifiers.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  LOBYTE(a3) = CallControlUsoIdentifiers.contains(anyOf:)(inited, a1);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return a3 & 1;
}

BOOL CallControlUsoIdentifiers.hasCameraSettingIdentifier.getter(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 56) = &type metadata for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 64) = &protocol witness table for CallControlUsoIdentifiers.PhoneSetting;
  *(inited + 32) = a2;
  v5 = CallControlUsoIdentifiers.contains(anyOf:)(inited, a1);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v5;
}

unint64_t lazy protocol witness table accessor for type CallControlUsoIdentifiers.PhoneSetting and conformance CallControlUsoIdentifiers.PhoneSetting()
{
  result = lazy protocol witness table cache variable for type CallControlUsoIdentifiers.PhoneSetting and conformance CallControlUsoIdentifiers.PhoneSetting;
  if (!lazy protocol witness table cache variable for type CallControlUsoIdentifiers.PhoneSetting and conformance CallControlUsoIdentifiers.PhoneSetting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallControlUsoIdentifiers.PhoneSetting and conformance CallControlUsoIdentifiers.PhoneSetting);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallControlUsoIdentifiers.AppName and conformance CallControlUsoIdentifiers.AppName()
{
  result = lazy protocol witness table cache variable for type CallControlUsoIdentifiers.AppName and conformance CallControlUsoIdentifiers.AppName;
  if (!lazy protocol witness table cache variable for type CallControlUsoIdentifiers.AppName and conformance CallControlUsoIdentifiers.AppName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallControlUsoIdentifiers.AppName and conformance CallControlUsoIdentifiers.AppName);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallControlUsoIdentifiers.FloatSettingName and conformance CallControlUsoIdentifiers.FloatSettingName()
{
  result = lazy protocol witness table cache variable for type CallControlUsoIdentifiers.FloatSettingName and conformance CallControlUsoIdentifiers.FloatSettingName;
  if (!lazy protocol witness table cache variable for type CallControlUsoIdentifiers.FloatSettingName and conformance CallControlUsoIdentifiers.FloatSettingName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallControlUsoIdentifiers.FloatSettingName and conformance CallControlUsoIdentifiers.FloatSettingName);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallControlUsoIdentifiers.BoolSettingName and conformance CallControlUsoIdentifiers.BoolSettingName()
{
  result = lazy protocol witness table cache variable for type CallControlUsoIdentifiers.BoolSettingName and conformance CallControlUsoIdentifiers.BoolSettingName;
  if (!lazy protocol witness table cache variable for type CallControlUsoIdentifiers.BoolSettingName and conformance CallControlUsoIdentifiers.BoolSettingName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallControlUsoIdentifiers.BoolSettingName and conformance CallControlUsoIdentifiers.BoolSettingName);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallControlUsoIdentifiers.PhoneSetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CallControlUsoIdentifiers.PhoneSetting(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CallControlUsoIdentifiers.FloatSettingName(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CallControlUsoIdentifiers.AppName(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static Transformer<>.transformer(callGroupTransformer:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29INCallGroupConversationFilterCSgMd, &_sSo29INCallGroupConversationFilterCSgMR);
  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(callGroupTransformer:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v68 = a1;
  v66 = a3;
  v67 = a2;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(v4 + 24);
  v71 = v5;
  v72 = v6;
  v74 = v4;
  v75 = v3;
  v73 = v4 + 24;
  v7 = v6(v3, v4);
  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_9:

    isa = 0;
LABEL_11:
    v8 = v72(v75, v74);
    v10 = 0;
    v9 = v8[2];
    v16 = (v8 + 4);
    v17 = _swiftEmptyArrayStorage;
    while (v9 != v10)
    {
      if (v10 >= v8[2])
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      outlined init with copy of SignalProviding(v16, &v79);
      v18 = v80;
      v19 = v81;
      __swift_project_boxed_opaque_existential_1(&v79, v80);
      v20 = (*(v19 + 46))(v18, v19);
      if ((v20 & 0xFF00) != 0x200 && v20 == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v79);
      }

      else
      {
        outlined init with take of SPHConversation(&v79, &v76);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1);
          v17 = v82;
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        }

        v25 = v77;
        v26 = v78;
        v27 = __swift_mutable_project_boxed_opaque_existential_1(&v76, v77);
        v28 = __chkstk_darwin(v27);
        v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v31 + 16))(v30, v28);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v24, v30, &v82, v25, v26);
        __swift_destroy_boxed_opaque_existential_1(&v76);
        v17 = v82;
      }

      v16 += 40;
      v10 = (v10 + 1);
    }

    v32 = v17[2];
    if (v32)
    {
      *&v76 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v33 = (v17 + 4);
      do
      {
        outlined init with copy of SignalProviding(v33, &v79);
        __swift_project_boxed_opaque_existential_1(&v79, v80);
        SiriPhoneContact.toINPerson()();
        __swift_destroy_boxed_opaque_existential_1(&v79);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v33 += 40;
        --v32;
      }

      while (v32);

      v8 = v76;
    }

    else
    {

      v8 = _swiftEmptyArrayStorage;
    }

    v34 = v72(v75, v74);
    v35 = v34;
    v9 = *(v34 + 16);
    if (v9)
    {
      v36 = 0;
      v37 = v34 + 32;
      while (v36 < *(v35 + 16))
      {
        outlined init with copy of SignalProviding(v37, &v79);
        v38 = v80;
        v10 = v81;
        __swift_project_boxed_opaque_existential_1(&v79, v80);
        v39 = (*(v10 + 46))(v38, v10);
        if ((v39 & 0xFF00) == 0x200)
        {
          __swift_destroy_boxed_opaque_existential_1(&v79);
        }

        else
        {
          v40 = v39;
          __swift_destroy_boxed_opaque_existential_1(&v79);
          if ((v40 & 0x100) != 0)
          {
            v41 = 1;
            goto LABEL_39;
          }
        }

        v36 = (v36 + 1);
        v37 += 40;
        if (v9 == v36)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_58;
    }

LABEL_37:
    v41 = 0;
LABEL_39:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
    v42 = Transformer.transform.getter();
    v43 = v68[3];
    v44 = v68[4];
    __swift_project_boxed_opaque_existential_1(v68, v43);
    *&v79 = (*(v44 + 136))(v43, v44);
    v45 = v69;
    v42(&v76, &v79);
    if (v45)
    {

      return;
    }

    v46 = v76;
    v10 = isa;
    if (v76)
    {
      if (specialized Array.count.getter(v76))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v46 & 0xC000000000000001) == 0, v46);
        if ((v46 & 0xC000000000000001) != 0)
        {
          v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v47 = *(v46 + 32);
        }

        v9 = v47;

        if (v10)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (!(specialized Array.count.getter(v8) | v9))
        {

          v8 = 0;
          goto LABEL_52;
        }

LABEL_51:
        v48 = objc_allocWithZone(NSNumber);
        v49 = v10;
        v50 = [v48 initWithBool:v41];
        objc_allocWithZone(INCallGroupConversationFilter);
        v51 = v9;
        v8 = @nonobjc INCallGroupConversationFilter.init(__caller:participants:matchCallerAndParticipantsExactly:callGroup:)(v10, v8, v50, v9);
        v52 = v8;
LABEL_52:
        if (one-time initialization token for siriPhone != -1)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      }
    }

    v9 = 0;
    if (v10)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v10 = 0;
  v11 = v7 + 32;
  while (v10 < v8[2])
  {
    outlined init with copy of SignalProviding(v11, &v76);
    v12 = v77;
    v13 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    v14 = (*(v13 + 368))(v12, v13);
    if ((v14 & 0xFF00) != 0x200 && v14 == 0)
    {

      outlined init with take of SPHConversation(&v76, &v79);
      __swift_project_boxed_opaque_existential_1(&v79, v80);
      isa = SiriPhoneContact.toINPerson()().super.isa;
      __swift_destroy_boxed_opaque_existential_1(&v79);
      goto LABEL_11;
    }

    v10 = (v10 + 1);
    __swift_destroy_boxed_opaque_existential_1(&v76);
    v11 += 40;
    if (v9 == v10)
    {
      goto LABEL_9;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  swift_once();
LABEL_53:
  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.siriPhone);
  v54 = v8;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    isa = v10;
    *&v79 = v58;
    *v57 = 136315394;
    *&v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGmMR);
    v59 = String.init<A>(describing:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v79);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    *&v76 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29INCallGroupConversationFilterCSgMd, &_sSo29INCallGroupConversationFilterCSgMR);
    v62 = String.init<A>(describing:)();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v79);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_0, v55, v56, "%s --> %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *v66 = v8;
}

id @nonobjc INCallGroupConversationFilter.init(__caller:participants:matchCallerAndParticipantsExactly:callGroup:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    type metadata accessor for INPerson();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v5 initWithCaller:a1 participants:v9.super.isa matchCallerAndParticipantsExactly:a3 callGroup:a4];

  return v10;
}

uint64_t static Transformer<>.transformer(device:groupResolver:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v6);
  outlined init with copy of SignalProviding(a2, v5);
  v3 = swift_allocObject();
  outlined init with take of SPHConversation(v6, v3 + 16);
  outlined init with take of SPHConversation(v5, v3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(device:groupResolver:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  v5 = _swiftEmptyArrayStorage;
  v76 = _swiftEmptyArrayStorage;
  v6 = *(v4 + 16);
  if (!v6)
  {
LABEL_44:
    v23 = static Transformer<>.normalizeFirstPartyMessagesGroups(_:)(v5);

    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  v7 = a3;
  v8 = a2;
  v9 = 0;
  v71 = v4 + 32;
  v63 = *(v4 + 16);
  while (1)
  {
    outlined init with copy of SignalProviding(v71 + 40 * v9, v73);
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v10 = OUTLINED_FUNCTION_0_30();
    v12 = v11(v10);
    if (v13)
    {
      v14 = v12;
      v15 = v13;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        goto LABEL_17;
      }
    }

    __swift_project_boxed_opaque_existential_1(v73, v74);
    v17 = OUTLINED_FUNCTION_0_30();
    v19 = v18(v17);
    if (!v20)
    {
LABEL_17:
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v28 = OUTLINED_FUNCTION_0_30();
      v30 = v29(v28);
      v32 = v31;
      v33 = v74;
      v34 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v35 = (*(v34 + 16))(v33, v34);
      v37 = v36;
      v38 = objc_allocWithZone(INCallGroup);
      @nonobjc INCallGroup.init(groupName:groupId:)(v30, v32, v35, v37);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v76 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v76;
      goto LABEL_40;
    }

    v21 = static Transformer<>.resolveGroupNameIdentifier(groupName:device:groupResolver:)(v19, v20, v8, v7);

    v22 = v21 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 >> 62;
    v24 = v5 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    v70 = v22;
    v25 = __OFADD__(v24, v22);
    v26 = v24 + v22;
    if (v25)
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v23)
      {
        goto LABEL_23;
      }

LABEL_22:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_23;
    }

    if (v23)
    {
      goto LABEL_22;
    }

    v27 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v26 <= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v69 = v5;
      goto LABEL_24;
    }

LABEL_23:
    v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v27 = v69 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v39 = *(v27 + 16);
    v40 = (*(v27 + 24) >> 1) - v39;
    v23 = v27 + 8 * v39;
    v68 = v27;
    if (v21 >> 62)
    {
      v42 = _CocoaArrayWrapper.endIndex.getter();
      if (!v42)
      {
LABEL_38:

        v5 = v69;
        if (v70 > 0)
        {
          goto LABEL_49;
        }

        goto LABEL_39;
      }

      v43 = v42;
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (v40 < v44)
      {
        goto LABEL_52;
      }

      if (v43 < 1)
      {
        goto LABEL_53;
      }

      v66 = v44;
      v67 = v9;
      v45 = v23 + 32;
      v23 = lazy protocol witness table accessor for type [INCallGroup] and conformance [A]();
      for (i = 0; i != v43; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGMd, &_sSaySo11INCallGroupCGMR);
        v47 = specialized protocol witness for Collection.subscript.read in conformance [A](v72, i, v21);
        v49 = *v48;
        v47(v72, 0);
        *(v45 + 8 * i) = v49;
      }

      v8 = a2;
      v6 = v63;
      v41 = v66;
      v9 = v67;
      v7 = a3;
    }

    else
    {
      v41 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (!v41)
      {
        goto LABEL_38;
      }

      if (v40 < v41)
      {
        goto LABEL_51;
      }

      type metadata accessor for INCallGroup();
      swift_arrayInitWithCopy();
    }

    v5 = v69;
    if (v41 < v70)
    {
      goto LABEL_49;
    }

    if (v41 > 0)
    {
      v50 = *(v68 + 16);
      v25 = __OFADD__(v50, v41);
      v51 = v50 + v41;
      if (v25)
      {
        goto LABEL_50;
      }

      *(v68 + 16) = v51;
    }

LABEL_39:
    v76 = v5;
LABEL_40:
    ++v9;
    __swift_destroy_boxed_opaque_existential_1(v73);
    if (v9 == v6)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_45:
  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.siriPhone);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v73[0] = swift_slowAlloc();
    *v55 = 136315394;
    v72[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMR);
    v56 = String.init<A>(describing:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v73);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    type metadata accessor for INCallGroup();
    v59 = Array.description.getter();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v73);

    *(v55 + 14) = v61;
    _os_log_impl(&dword_0, v53, v54, "#%s --> %s", v55, 0x16u);
    swift_arrayDestroy();
  }

  *a4 = v23;
}

void *static Transformer<>.resolveGroupNameIdentifier(groupName:device:groupResolver:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = a1;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ContactGroupResolverConfig();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ContactGroupQuery();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriPhone);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v31 = v15;
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v15 = 136315138;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMR);
      v16 = String.init<A>(describing:)();
      v30 = v14;
      v18 = a3;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v38);

      v20 = v31;
      *(v31 + 1) = v19;
      a3 = v18;
      _os_log_impl(&dword_0, v13, v30, "#%s Calling ContactGroupResolver.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    v21 = a4[3];
    v22 = a4[4];
    a4 = __swift_project_boxed_opaque_existential_1(a4, v21);

    v23 = v33;
    ContactGroupQuery.init(name:)();
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    ContactGroupResolverConfig.init(locale:bundleIds:)();
    v24 = (*(v22 + 8))(v23, v9, v21, v22);
    (*(v36 + 8))(v9, v37);
    (*(v35 + 8))(v23, v10);
    v25 = *(v24 + 16);
    if (!v25)
    {
      break;
    }

    v40 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v26 = 0;
    a3 = 0;
    v27 = v24 + 32;
    while (v26 < *(v24 + 16))
    {
      outlined init with copy of SignalProviding(v27, v38);
      closure #1 in static Transformer<>.resolveGroupNameIdentifier(groupName:device:groupResolver:)(v38, &v39);
      __swift_destroy_boxed_opaque_existential_1(v38);
      ++v26;
      a4 = v39;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v27 += 40;
      if (v25 == v26)
      {

        return v40;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  return _swiftEmptyArrayStorage;
}

void *static Transformer<>.normalizeFirstPartyMessagesGroups(_:)(uint64_t a1)
{
  v1 = a1;
  v29 = static Transformer<>.findSmsChatIdsToRemove(_:)(a1);
  v28 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
  v2 = specialized Array.count.getter(v1);
  v3 = 0;
  v30 = v1 & 0xC000000000000001;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v2 != v3)
  {
    if (v30)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v4 + 16))
      {
        goto LABEL_29;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v7 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v5);
    if (!v8)
    {
      goto LABEL_19;
    }

    FirstPartyChatGUID.init(_:)(v7, v8, &v32);
    v9 = v33;
    if (!v33)
    {
      goto LABEL_19;
    }

    v10 = v1;
    v12 = v35;
    v11 = v36;
    v13 = v32;

    LOBYTE(v12) = specialized Set.contains(_:)(v12, v11, v29);

    if ((v12 & 1) == 0)
    {
      v39[0] = v13;
      v39[1] = v9;
      outlined destroy of String(v39);
      v40 = v34;
      outlined destroy of String(&v40);

      v1 = v10;
      goto LABEL_19;
    }

    v37[0] = v13;
    v37[1] = v9;
    if (v13 == 5459283 && v9 == 0xE300000000000000)
    {
      outlined destroy of String(v37);
      v41 = v34;
      outlined destroy of String(&v41);

      v1 = v10;
LABEL_17:
      ++v3;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of String(v37);
      v38 = v34;
      outlined destroy of String(&v38);

      v1 = v10;
      if (v15)
      {

        goto LABEL_17;
      }

LABEL_19:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v31 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v28 = v31;
      ++v3;
    }
  }

  if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_24;
  }

LABEL_30:
  swift_once();
LABEL_24:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  swift_bridgeObjectRetain_n();
  v17 = v28;
  swift_bridgeObjectRetain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v31);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    v25 = specialized Array.count.getter(v1);

    *(v20 + 14) = v25;

    *(v20 + 22) = 2048;
    v26 = specialized Array.count.getter(v28);

    *(v20 + 24) = v26;

    _os_log_impl(&dword_0, v18, v19, "#%s normalizeFirstPartyMessagesGroups: Before deduping: %ld, After deduping: %ld", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);

    v17 = v28;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v17;
}

id closure #1 in static Transformer<>.resolveGroupNameIdentifier(groupName:device:groupResolver:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  outlined init with copy of SignalProviding(a1, v47);
  outlined init with copy of SignalProviding(a1, v44);
  outlined init with copy of SignalProviding(a1, v41);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v7 = 136315906;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGmMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v50);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v12 = v48;
    v11 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v13 = (*(v11 + 16))(v12, v11);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v47);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v50);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2080;
    v17 = v45;
    v18 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v19 = (*(v18 + 8))(v17, v18);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v50);

    *(v7 + 24) = v22;
    *(v7 + 32) = 2080;
    v23 = v42;
    v24 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v25 = (*(v24 + 24))(v23, v24);
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v50);

    *(v7 + 34) = v28;
    _os_log_impl(&dword_0, v5, v6, "#%s Found group: [name=%s, id=%s, bundleId=%s]", v7, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = (*(v30 + 16))(v29, v30);
  v33 = v32;
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = (*(v35 + 8))(v34, v35);
  v38 = v37;
  v39 = objc_allocWithZone(INCallGroup);
  result = @nonobjc INCallGroup.init(groupName:groupId:)(v31, v33, v36, v38);
  *a2 = result;
  return result;
}

uint64_t static Transformer<>.findSmsChatIdsToRemove(_:)(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v8 = _swiftEmptySetSingleton;

  specialized Sequence.filter(_:)(v2, &v8, KeyPath);
  v4 = v3;

  v5 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_SaySo11INCallGroupCGTt1g5069_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginSayAD8Smse6_pGRszp4So06D105J0CGSgRs_rlE32groupFirstPartyChatsByIdentifier33_1DF85DF06AE2240D0AAD0827B3513709LLySDySSAIGAIFZSSAHXEfU_Tf1nc_n(v4);
  v6 = specialized _NativeDictionary.filter(_:)(v5);

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSaySo11INCallGroupCG_GTt0g5(v6);
}

void FirstPartyChatGUID.init(_:)(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a1;
  v38 = a2;
  v35 = 5459283;
  v36 = 0xE300000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v6 = BidirectionalCollection<>.starts<A>(with:)();
  if ((v6 & 1) == 0)
  {
    v37 = a1;
    v38 = a2;
    v35 = 0x6567617373654D69;
    v36 = 0xE800000000000000;
    v6 = BidirectionalCollection<>.starts<A>(with:)();
    if ((v6 & 1) == 0)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.siriPhone);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_26;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "#FirstPartyChatGUID Unrecognized 1P chat group prefix.";
      goto LABEL_25;
    }
  }

  v37 = (&stru_20 + 27);
  v38 = 0xE100000000000000;
  __chkstk_darwin(v6);
  v34[2] = &v37;
  v7 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v34, a1, a2);
  v8 = v7[2];
  if (v8)
  {
    v37 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = 0;
    v10 = v37;
    v11 = v7 + 7;
    while (v9 < v7[2])
    {

      v12 = static String._fromSubstring(_:)();
      v14 = v13;

      v37 = v10;
      v15 = v10[2];
      if (v15 >= v10[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v37;
      }

      ++v9;
      v10[2] = v15 + 1;
      v16 = &v10[2 * v15];
      v16[4] = v12;
      v16[5] = v14;
      v11 += 4;
      if (v8 == v9)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_11:
  if (v10[2] != 3)
  {
LABEL_18:

    if (one-time initialization token for siriPhone == -1)
    {
LABEL_19:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.siriPhone);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v23, v24))
      {
LABEL_26:

        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        goto LABEL_27;
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "#FirstPartyChatGUID Invalid parse for 1P chat group.";
LABEL_25:
      _os_log_impl(&dword_0, v23, v24, v26, v25, 2u);

      goto LABEL_26;
    }

LABEL_30:
    swift_once();
    goto LABEL_19;
  }

  v17 = 0;
  while (1)
  {
    v18 = v17 + 16;
    if (v17 == 48)
    {
      break;
    }

    v19 = *(v10 + v17 + 40);
    v20 = *(v10 + v17 + 32) & 0xFFFFFFFFFFFFLL;
    if ((v19 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v19) & 0xF;
    }

    else
    {
      v21 = v20;
    }

    v17 = v18;
    if (!v21)
    {
      goto LABEL_18;
    }
  }

  v28 = v10[4];
  v29 = v10[5];
  v30 = v10[6];
  v31 = v10[7];
  v32 = v10[8];
  v33 = v10[9];

LABEL_27:
  *a3 = v28;
  a3[1] = v29;
  a3[2] = v30;
  a3[3] = v31;
  a3[4] = v32;
  a3[5] = v33;
}

void key path getter for INCallGroup.groupId : INCallGroup(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groupId];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

BOOL closure #1 in static Transformer<>.findSmsChatIdsToRemove(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_33:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4 == 2)
  {
    v5 = specialized Array.count.getter(a3);
    v6 = 0;
    v7 = a3 & 0xC000000000000001;
    while (v5 != v6)
    {
      if (v7)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v8 = *(a3 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v8);
      if (v10)
      {
        v11._countAndFlagsBits = 5459283;
        v11._object = 0xE300000000000000;
        v12 = String.hasPrefix(_:)(v11);

        if (v12)
        {
          for (i = 0; ; ++i)
          {
            v13 = v5 != i;
            if (v5 == i)
            {
              break;
            }

            if (v7)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (i >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_32;
              }

              v16 = *(a3 + 8 * i + 32);
            }

            v17 = v16;
            if (__OFADD__(i, 1))
            {
              goto LABEL_31;
            }

            outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v16);
            if (v18)
            {
              v19._countAndFlagsBits = 0x6567617373654D69;
              v19._object = 0xE800000000000000;
              v20 = String.hasPrefix(_:)(v19);

              if (v20)
              {
                return v13;
              }
            }

            else
            {
            }
          }

          return v13;
        }
      }

      else
      {
      }

      ++v6;
    }
  }

  return 0;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_SaySo11INCallGroupCGTt1g5069_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginSayAD8Smse6_pGRszp4So06D105J0CGSgRs_rlE32groupFirstPartyChatsByIdentifier33_1DF85DF06AE2240D0AAD0827B3513709LLySDySSAIGAIFZSSAHXEfU_Tf1nc_n(uint64_t a1)
{
  v33 = type metadata accessor for UUID();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &_swiftEmptyDictionarySingleton;
  v45 = &_swiftEmptyDictionarySingleton;
  v6 = specialized Array.count.getter(a1);
  v36 = a1;
  v37 = v6;
  v7 = 0;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v8 = (v2 + 8);
  v32 = xmmword_426260;
  while (1)
  {
    if (v37 == v7)
    {

      return v5;
    }

    if (v35)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v34 + 16))
      {
        goto LABEL_25;
      }

      v9 = *(v36 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v11 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v9);
    if (v12 && (FirstPartyChatGUID.init(_:)(v11, v12, &v38), v39))
    {
      v14 = v41;
      v13 = v42;
      v43[0] = v38;
      v43[1] = v39;

      outlined destroy of String(v43);
      v44 = v40;
      outlined destroy of String(&v44);
    }

    else
    {
      UUID.init()();
      v14 = UUID.uuidString.getter();
      v13 = v15;
      (*v8)(v4, v33);
    }

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    v18 = v5[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_26;
    }

    v21 = v16;
    if (v5[3] < v20)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, 1);
      v5 = v45;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_28;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = (v5[7] + 8 * v17);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (*v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v25 = swift_allocObject();
      *(v25 + 16) = v32;
      *(v25 + 32) = v10;
      v5[(v17 >> 6) + 8] |= 1 << v17;
      v26 = (v5[6] + 16 * v17);
      *v26 = v14;
      v26[1] = v13;
      *(v5[7] + 8 * v17) = v25;
      v27 = v5[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_27;
      }

      v5[2] = v29;
    }

    ++v7;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = specialized Array.count.getter(a1);
  v5 = 0;
  v9 = v4;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    swift_getAtKeyPath();
    v8 = specialized Set._Variant.insert(_:)();

    if (v8)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v4 = v9;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v5;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

{
  v4 = specialized Array.count.getter(a1);
  v5 = 0;
  v9 = v4;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    swift_getAtKeyPath();
    v8 = specialized Set._Variant.insert(_:)();

    if (v8)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v4 = v9;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v5;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v6 = String.subscript.getter();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = _swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = String.subscript.getter();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = String.index(after:)();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = String.subscript.getter();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v47 = v27;
    }

    v12 = v47[2];
    v11 = v12 + 1;
    if (v12 >= v47[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v47 = v28;
    }

    v47[2] = v11;
    v26 = &v47[4 * v12];
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && v47[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for INCallGroup()
{
  result = lazy cache variable for type metadata for INCallGroup;
  if (!lazy cache variable for type metadata for INCallGroup)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INCallGroup);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo11INCallGroupCGGMd, &_ss18_DictionaryStorageCySSSaySo11INCallGroupCGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSaySo11INCallGroupCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab17VKXEfU_SS_SaySo11iJ5CGTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n07_sSSSaytij18CGSbIgggd_SSACSbs5v76_pIegnndzo_TR069_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePlugins109AD8Smsb6_pGRszn4So06A97J0CGSgRs_rlE04findI15ChatIdsToRemove33_1DF85DF06AE2240D0AAD0827B3513709LLyShySSGAIFZSbR18_AItXEfU_Tf3nnpf_nTf1nnc_n(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v4, v5);
  specialized closure #1 in _NativeDictionary.filter(_:)(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = closure #1 in static Transformer<>.findSmsChatIdsToRemove(_:)(v15, v16, v17);

    if (v18)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSaySo11INCallGroupCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab17VKXEfU_SS_SaySo11iJ5CGTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n07_sSSSaytij18CGSbIgggd_SSACSbs5v76_pIegnndzo_TR069_s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePlugins109AD8Smsb6_pGRszn4So06A97J0CGSgRs_rlE04findI15ChatIdsToRemove33_1DF85DF06AE2240D0AAD0827B3513709LLyShySSGAIFZSbR18_AItXEfU_Tf3nnpf_nTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [INCallGroup] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [INCallGroup] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INCallGroup] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo11INCallGroupCGMd, &_sSaySo11INCallGroupCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [INCallGroup] and conformance [A]);
  }

  return result;
}

uint64_t *CallHistoryImage.videoCallImage.unsafeMutableAddressor()
{
  if (one-time initialization token for videoCallImage != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.videoCallImage;
}

uint64_t *CallHistoryImage.outgoingCallImage.unsafeMutableAddressor()
{
  if (one-time initialization token for outgoingCallImage != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.outgoingCallImage;
}

uint64_t *CallHistoryImage.emptyImage.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyImage != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.emptyImage;
}

id one-time initialization function for videoCallImage(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [objc_allocWithZone(SFLocalImage) init];
  [v9 setLocalImageType:a4];
  result = [v9 setSize:{a1, a2}];
  *a5 = v9;
  return result;
}

uint64_t *CallHistoryImage.unreadImage.unsafeMutableAddressor()
{
  if (one-time initialization token for unreadImage != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.unreadImage;
}

id one-time initialization function for emptyImage(double a1, double a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(SFLocalImage) init];
  result = [v7 setSize:{a1, a2}];
  *a4 = v7;
  return result;
}

uint64_t *CallHistoryImage.emptyImageVoicemail.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyImageVoicemail != -1)
  {
    swift_once();
  }

  return &static CallHistoryImage.emptyImageVoicemail;
}

id static CallHistoryImage.videoCallImage.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:)(uint64_t a1, char a2)
{
  *(v3 + 256) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  *(v3 + 152) = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for AceOutput();
  *(v3 + 160) = v4;
  *(v3 + 168) = *(v4 - 8);
  *(v3 + 176) = OUTLINED_FUNCTION_45();
  type metadata accessor for DialogPhase();
  *(v3 + 184) = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for OutputGenerationManifest();
  *(v3 + 192) = v5;
  *(v3 + 200) = *(v5 - 8);
  *(v3 + 208) = OUTLINED_FUNCTION_45();

  return _swift_task_switch(CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:), 0, 0);
}

uint64_t CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:)()
{
  v1 = *(v0 + 136);
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  outlined init with copy of SignalProviding(v1 + 80, v0 + 16);
  v5 = (**(v1 + 184) + class metadata base offset for SearchCallHistoryCATsSimple + 592);
  v6 = (*v5 + **v5);
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:);
  v3 = *(v0 + 256);

  return v6(v3);
}

{
  v1 = v0[28];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v0[30] = v4;
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = v1;
  v5 = v1;
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:);
  v10 = v0[26];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v0 + 7, v4, v10, v2, v3, v6, v7, v8);
}

{

  return _swift_task_switch(CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:), 0, 0);
}

{
  v27 = v0;
  outlined init with copy of SignalProviding(v0 + 56, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 224);
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    (*(v3 + 32))(v2, v4, v5);
    v6 = AceOutput.commands.getter();

    (*(v3 + 8))(v2, v5);
  }

  else
  {
    v7 = *(v0 + 152);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, *(v0 + 160));
    outlined destroy of AceOutput?(v7);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 144);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      v25 = 0;
      *v12 = 136315138;
      v14 = v11[2];
      v15 = v11[3];
      v16 = v11[4];
      v17 = v11[5];
      v26 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v14, v15, v16, v17);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, 0xE000000000000000, &v24);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_0, v9, v10, "%s can't generate voicemail prompt dialog to an Ace Command", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    v6 = _swiftEmptyArrayStorage;
  }

  v20 = *(v0 + 200);
  v19 = *(v0 + 208);
  v21 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  (*(v20 + 8))(v19, v21);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v22 = *(v0 + 8);

  return v22(v6);
}

{
  (*(v0[25] + 8))(v0[26], v0[24]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:);
  }

  else
  {
    v4 = CallHistoryPromptDialogProvider.getAceCommandForVoicemail(searchCallHistorySharedGlobals:isLastPage:);
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t SeasContactInSingleAppRule.deinit()
{

  return v0;
}

uint64_t SeasContactInSingleAppRule.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CallHistoryPromptDialogProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  CallHistoryPromptDialogProvider.init()(v0);
  return v0;
}

void *CallHistoryPromptDialogProvider.init()(uint64_t a1)
{
  v1[2] = type metadata accessor for CallHistoryPromptDialogProvider();
  v1[3] = &outlined read-only object #0 of CallHistoryPromptDialogProvider.init();
  v1[4] = 0;
  v1[5] = 0;
  return v1;
}

uint64_t outlined destroy of AceOutput?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow9AceOutputVSgMd, &_s11SiriKitFlow9AceOutputVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id VoicemailRowCardSectionComponents.init(callRecord:deviceState:phoneCallDisplayTextCats:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, (a4 + 2));
  a4[7] = a3;

  return a1;
}

uint64_t CallHistoryRowCardSectionComponents.callerName.getter()
{
  [*v0 callRecordType];
  CallRecordDisplayTextComponents.callerNameText.getter();
  v1 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v1;
}

uint64_t CallHistoryRowCardSectionComponents.callerHandleLabel.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + 8) caller];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 personHandle];

    if (v8)
    {
      v9 = [v8 label];

      if (v9)
      {
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        dispatch thunk of DeviceState.siriLocale.getter();
        v13[4] = Locale.identifier.getter();
        v13[5] = v10;
        v13[2] = 45;
        v13[3] = 0xE100000000000000;
        v13[0] = 95;
        v13[1] = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        (*(v2 + 8))(v5, v1);

        static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      }
    }
  }

  v11 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v11;
}

uint64_t CallHistoryRowCardSectionComponents.callDate.getter()
{
  CallRecordDisplayTextComponents.callDateText.getter();
  v0 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v0;
}

id CallHistoryRowCardSectionComponents.image.getter()
{
  v1 = *v0;
  if ([*v0 callRecordType] == &dword_0 + 1)
  {
    if ([v1 callCapability] == &dword_0 + 2)
    {
      if (one-time initialization token for videoCallImage != -1)
      {
        swift_once();
      }

      v2 = &static CallHistoryImage.videoCallImage;
    }

    else
    {
      if (one-time initialization token for outgoingCallImage != -1)
      {
        swift_once();
      }

      v2 = &static CallHistoryImage.outgoingCallImage;
    }
  }

  else
  {
    if (one-time initialization token for emptyImage != -1)
    {
      swift_once();
    }

    v2 = &static CallHistoryImage.emptyImage;
  }

  v3 = *v2;

  return v3;
}

uint64_t static Transformer<>.callIdentifierTransformer(previousIntentResponse:)(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);

  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.callIdentifierTransformer(previousIntentResponse:)(void *a1@<X1>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  ObjectType = swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for IncomingCallIntentResponse))
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = swift_getObjectType();
  v8 = *(v6 + 24);
  v9 = a1;
  v10 = v8(v7, v6);
  if (FollowUpOfferType.rawValue.getter(v10) == 0xD000000000000013 && 0x8000000000452820 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {

LABEL_9:
      v14 = 0;
      v15 = 0;
      goto LABEL_20;
    }
  }

  v16 = (*(v6 + 16))(v7, v6);
  if (v16)
  {
    v17 = v16;
    if (specialized Array.count.getter(v16))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v17 & 0xC000000000000001) == 0, v17);
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v17 + 32);
      }

      v19 = v18;

      v20 = [v19 identifier];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v21;

      goto LABEL_19;
    }
  }

  else
  {
  }

  v14 = 0;
  v15 = 0;
LABEL_19:

LABEL_20:
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v25 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGmMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v32);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    if (v15)
    {
      v29 = v14;
    }

    else
    {
      v29 = 7104878;
    }

    if (v15)
    {
      v30 = v15;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v32);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_0, v23, v24, "#%s --> %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *a2 = v14;
  a2[1] = v15;
}

uint64_t CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2_0();
  *(v4 + *(v6 + 288)) = v7;
  OUTLINED_FUNCTION_2_0();
  v9 = (v4 + *(v8 + 296));
  *v9 = v10;
  v9[1] = v11;
  v12 = one-time initialization token for siriPhone;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_42();
    v17 = OUTLINED_FUNCTION_36();
    *&v23[0] = v17;
    *v16 = 136315138;
    v18 = *v9;
    v19 = v9[1];

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v14, v15, "%s.initialize", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_26_0(v17);
    OUTLINED_FUNCTION_26_0(v16);
  }

  else
  {
  }

  outlined init with copy of SignalProviding(a4, v23);
  v21 = PhoneFlow.init(sharedGlobals:)(v23);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

void CallingFlowAbstraction.__allocating_init(state:app:flowName:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  OUTLINED_FUNCTION_19_7();
  CallingFlowAbstraction.init(state:app:flowName:sharedGlobals:)();
}

void CallingFlowAbstraction.init(state:app:flowName:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *v0;
  v12 = type metadata accessor for PhoneCallFlowState(0, *(*v0 + 256), *(*v0 + 264), v3);
  OUTLINED_FUNCTION_7();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  *(v0 + *(v11 + 288)) = v8;
  OUTLINED_FUNCTION_2_0();
  v19 = (v0 + *(v18 + 296));
  *v19 = v6;
  v19[1] = v4;
  (*(v14 + 16))(v17, v10, v12);
  outlined init with copy of SignalProviding(v2, v21);
  PhoneFlow.init(state:sharedGlobals:)(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(v2);
  (*(v14 + 8))(v10, v12);
  OUTLINED_FUNCTION_65();
}

void CallingFlowAbstraction.on(input:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = type metadata accessor for PhoneCallFlowState(0, *(*v1 + 256), *(*v1 + 264), v4);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v85 = v9 - v10;
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  v14 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  v20 = (v19 - v18);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.siriPhone);
  v23 = *(v16 + 16);
  v83 = v3;
  v80 = v23;
  v81 = v16 + 16;
  v23(v20, v3, v14);

  v84 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v86 = v13;
  v82 = v14;
  if (v26)
  {
    v27 = OUTLINED_FUNCTION_36();
    v87 = v5;
    v28 = v27;
    v79 = swift_slowAlloc();
    v88[0] = v79;
    *v28 = 136315650;
    OUTLINED_FUNCTION_41_0();
    v30 = OUTLINED_FUNCTION_11_21(*(v29 + 296));
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v88);
    *(v28 + 12) = 2080;
    OUTLINED_FUNCTION_41_0();
    (*(v32 + 128))();
    v33 = PhoneCallFlowState.description.getter(v87);
    v78 = v25;
    v34 = v7;
    v35 = v14;
    v37 = v36;

    (*(v34 + 8))(v13, v87);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v37, v88);
    OUTLINED_FUNCTION_19_7();

    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = v35;
    v7 = v34;
    (*(v16 + 8))(v20, v41);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v88);

    *(v28 + 24) = v42;
    _os_log_impl(&dword_0, v24, v78, "%s.On for state:%s input:%s", v28, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_8();
    v43 = v28;
    v5 = v87;
    OUTLINED_FUNCTION_26_0(v43);
  }

  else
  {

    (*(v16 + 8))(v20, v14);
  }

  OUTLINED_FUNCTION_41_0();
  v45 = *(v44 + 128);
  v46 = v85;
  v45();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = *(v7 + 8);
  v85 = v7 + 8;
  v48(v46, v5);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v51 = v50;
  if (EnumCaseMultiPayload == 5)
  {

    if (os_log_type_enabled(v49, v51))
    {
      v52 = OUTLINED_FUNCTION_42();
      v53 = OUTLINED_FUNCTION_36();
      v88[0] = v53;
      *v52 = 136315138;
      OUTLINED_FUNCTION_41_0();
      v55 = OUTLINED_FUNCTION_11_21(*(v54 + 296));
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v88);
      _os_log_impl(&dword_0, v49, v51, "%s.On, updating state to runIntentConversion", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_26_0(v53);
      OUTLINED_FUNCTION_1_8();
    }

    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR) + 48);
    v58 = v86;
    v80(v86, v83, v82);
    v59 = *v1;
    *&v58[v57] = *(v1 + *(*v1 + 288));
    v60 = *(v59 + 152);

    v60(v88, v61);
    v62 = v89;
    v63 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    (*(v63 + 8))(v62, v63);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_0();
    (*(v64 + 136))(v58);
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    if (os_log_type_enabled(v49, v50))
    {
      v65 = OUTLINED_FUNCTION_86_1();
      LODWORD(v84) = EnumCaseMultiPayload;
      v66 = v65;
      v67 = OUTLINED_FUNCTION_16_13();
      v87 = v5;
      v88[0] = v67;
      v68 = v67;
      *v66 = 136315394;
      OUTLINED_FUNCTION_41_0();
      v70 = OUTLINED_FUNCTION_11_21(*(v69 + 296));
      *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v88);
      *(v66 + 12) = 2080;
      v72 = v86;
      v45();
      v73 = PhoneCallFlowState.description.getter(v87);
      v75 = v74;

      v48(v72, v87);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v88);
      OUTLINED_FUNCTION_19_7();

      *(v66 + 14) = v73;
      _os_log_impl(&dword_0, v49, v51, "%s.on is stopped, state: %s", v66, 0x16u);
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_26_0(v68);
      OUTLINED_FUNCTION_26_0(v66);
    }

    else
    {

      v72 = v86;
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_0();
    (*(v76 + 136))(v72);
  }

  OUTLINED_FUNCTION_65();
}

void CallingFlowAbstraction.prepare(completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v100 = v3;
  v101 = v2;
  v92 = *v0;
  v4 = v92;
  v96 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v94 = v5;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_12_5();
  v91 = v7 - v8;
  __chkstk_darwin(v9);
  v95 = &v89 - v10;
  v11 = type metadata accessor for PrepareResponse();
  OUTLINED_FUNCTION_7();
  v102 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v99 = v15 - v14;
  v16 = *(v4 + 256);
  v89 = *(v4 + 264);
  v90 = v16;
  v18 = type metadata accessor for PhoneCallFlowState(0, v16, v89, v17);
  OUTLINED_FUNCTION_7();
  v98 = v19;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_12_5();
  v23 = (v21 - v22);
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriPhone);
  OUTLINED_FUNCTION_19_7();

  v93 = v0;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_86_1();
    v31 = OUTLINED_FUNCTION_16_13();
    v97 = v11;
    v32 = v31;
    *&v103 = v31;
    *v30 = 136315394;
    OUTLINED_FUNCTION_10_20();
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + *(v33 + 296)), *(v0 + *(v33 + 296) + 8), &v103);
    *(v30 + 12) = 2080;
    OUTLINED_FUNCTION_10_20();
    (*(v34 + 128))();
    v35 = PhoneCallFlowState.description.getter(v18);
    v37 = v36;

    (*(v98 + 8))(v26, v18);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v103);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_0, v28, v29, "%s.prepare, state: %s", v30, 0x16u);
    OUTLINED_FUNCTION_15_20();
    v39 = v32;
    v11 = v97;
    OUTLINED_FUNCTION_26_0(v39);
    OUTLINED_FUNCTION_26_0(v30);
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_20();
  v41 = *(v40 + 128);
  v41();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v56 = *(v23 + *(v55 + 48));
      v98 = *(v55 + 64);
      v58 = v94;
      v57 = v95;
      v59 = v96;
      (*(v94 + 32))(v95, v23, v96);
      v60 = v90;
      type metadata accessor for IntentConversionFlow(0, v90, v61, v62);
      v63 = v91;
      (*(v58 + 16))(v91, v57, v59);
      v64 = *v1;
      v97 = v11;
      v65 = *(v64 + 152);

      v65(&v103, v66);
      *&v103 = IntentConversionFlow.__allocating_init(input:app:sharedGlobals:)(v63, v56, &v103);
      v67 = implicit closure #5 in CallingFlowAbstraction.prepare(completion:)(v1);
      v69 = v68;
      v70 = swift_allocObject();
      v71 = v89;
      v70[2] = v60;
      v70[3] = v71;
      v72 = v92;
      v70[4] = *(v92 + 272);
      v70[5] = *(v72 + 280);
      v70[6] = v67;
      v70[7] = v69;
      swift_getWitnessTable();
      v73 = v99;
      static PrepareResponse.ongoing<A>(next:childCompletion:)();

      v101(v73);

      (*(v102 + 8))(v73, v97);
      (*(v58 + 8))(v95, v96);
      v53 = (v23 + v98);
      goto LABEL_13;
    case 2u:
      (*(v98 + 8))(v23, v18);
      goto LABEL_9;
    case 3u:
      (*(v98 + 8))(v23, v18);
      goto LABEL_15;
    case 4u:
      *&v103 = *v23;
      type metadata accessor for SimpleOutputFlowAsync();
      v88 = v99;
      static PrepareResponse.complete<A>(next:)();
      v101(v88);

      (*(v102 + 8))(v88, v11);
      break;
    case 5u:
LABEL_15:

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_86_1();
        v77 = OUTLINED_FUNCTION_16_13();
        v97 = v11;
        v78 = v77;
        *&v103 = v77;
        *v76 = 136315394;
        OUTLINED_FUNCTION_10_20();
        *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + *(v79 + 296)), *(v1 + *(v79 + 296) + 8), &v103);
        *(v76 + 12) = 2080;
        v41();
        v80 = PhoneCallFlowState.description.getter(v18);
        v82 = v81;

        (*(v98 + 8))(v26, v18);
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &v103);

        *(v76 + 14) = v83;
        _os_log_impl(&dword_0, v74, v75, "%s.prepare unexpected state: %s", v76, 0x16u);
        OUTLINED_FUNCTION_15_20();
        v84 = v78;
        v11 = v97;
        OUTLINED_FUNCTION_26_0(v84);
        OUTLINED_FUNCTION_26_0(v76);
      }

      else
      {
      }

      v86 = v101;
      v85 = v102;
      v87 = v99;
      static PrepareResponse.complete()();
      v86(v87);
      (*(v85 + 8))(v87, v11);
      break;
    case 6u:
LABEL_9:
      v54 = v99;
      static PrepareResponse.ongoing(needsExecute:)();
      goto LABEL_11;
    case 7u:
      v54 = v99;
      static PrepareResponse.complete()();
LABEL_11:
      v101(v54);
      (*(v102 + 8))(v54, v11);
      break;
    default:
      v42 = v94;
      v43 = v95;
      v44 = v96;
      (*(v94 + 32))(v95, v23, v96);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR) + 48);
      (*(v42 + 16))(v26, v43, v44);
      v46 = *v1;
      *&v26[v45] = *(v1 + *(*v1 + 288));
      v47 = *(v46 + 152);

      v47(&v103, v48);
      v49 = v105;
      __swift_project_boxed_opaque_existential_1(&v103, v104);
      v50 = OUTLINED_FUNCTION_40_0();
      v51(v50, v49);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_10_20();
      (*(v52 + 136))(v26);
      (*(v42 + 8))(v43, v44);
      v53 = &v103;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v53);
      break;
  }

  OUTLINED_FUNCTION_65();
}

uint64_t CallingFlowAbstraction.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a1;
  v5[5] = v4;
  v6 = *v4;
  v5[6] = *v4;
  v7 = *(v6 + 256);
  v5[7] = v7;
  v8 = *(v6 + 264);
  v5[8] = v8;
  v9 = type metadata accessor for PhoneCallFlowState(0, v7, v8, a4);
  v5[9] = v9;
  v5[10] = *(v9 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(CallingFlowAbstraction.execute(), 0, 0);
}

uint64_t CallingFlowAbstraction.execute()()
{
  v34 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[5];
    v8 = OUTLINED_FUNCTION_86_1();
    v33 = OUTLINED_FUNCTION_16_13();
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + *(*v7 + 296)), *(v7 + *(*v7 + 296) + 8), &v33);
    *(v8 + 12) = 2080;
    (*(*v7 + 128))();
    v9 = PhoneCallFlowState.description.getter(v5);
    v11 = v10;

    (*(v6 + 8))(v4, v5);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v33);
    OUTLINED_FUNCTION_40_0();

    *(v8 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "%s.execute, state: %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_26_0(v8);
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_0();
  v13 = *(v12 + 128);
  v13();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = v0[11];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);

      __swift_destroy_boxed_opaque_existential_1((v14 + *(v15 + 64)));
      v16 = type metadata accessor for Input();
      (*(*(v16 - 8) + 8))(v14, v16);
      goto LABEL_9;
    case 2u:
      v28 = v0[5];
      v29 = v0[6];
      v0[3] = *v0[11];
      implicit closure #5 in CallingFlowAbstraction.execute()(v28, *(v29 + 272));
      type metadata accessor for RCHFlowResult();
      type metadata accessor for AnyValueFlow();
      OUTLINED_FUNCTION_3_23();
      swift_getWitnessTable();
      static ExecuteResponse.replan<A>(next:childCompletion:)();

      goto LABEL_16;
    case 4u:
      v0[2] = *v0[11];
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
LABEL_16:

      goto LABEL_17;
    case 5u:
      goto LABEL_9;
    case 6u:
      OUTLINED_FUNCTION_2_0();
      (*(v27 + 232))();
      goto LABEL_17;
    case 7u:
      goto LABEL_12;
    default:
      (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_9:

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[12];
        v20 = v0[10];
        v32 = v0[9];
        v21 = v0[5];
        v22 = OUTLINED_FUNCTION_86_1();
        v33 = OUTLINED_FUNCTION_16_13();
        *v22 = 136315394;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v21 + *(*v21 + 296)), *(v21 + *(*v21 + 296) + 8), &v33);
        *(v22 + 12) = 2080;
        v13();
        v23 = PhoneCallFlowState.description.getter(v32);
        v25 = v24;

        (*(v20 + 8))(v19, v32);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v33);

        *(v22 + 14) = v26;
        _os_log_impl(&dword_0, v17, v18, "%s.execute unexpected state: %s", v22, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_8();
        OUTLINED_FUNCTION_26_0(v22);
      }

      else
      {
      }

LABEL_12:
      static ExecuteResponse.complete()();
LABEL_17:

      v30 = v0[1];

      return v30();
  }
}

uint64_t (*implicit closure #5 in CallingFlowAbstraction.execute()(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return partial apply for implicit closure #6 in implicit closure #5 in CallingFlowAbstraction.execute();
}

uint64_t CallingFlowAbstraction.makeRCHFlow(input:intent:app:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_42();
    v4 = OUTLINED_FUNCTION_36();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000000458780, &v6);
    _os_log_impl(&dword_0, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_26_0(v4);
    OUTLINED_FUNCTION_26_0(v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void CallingFlowAbstraction.processIntentConversionResult(exitValue:)()
{
  OUTLINED_FUNCTION_66();
  v109 = v1;
  v2 = *v0;
  v3 = type metadata accessor for CATOption();
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_4();
  v104 = v5 - v4;
  v6 = v2[32];
  v107 = v2[33];
  v108 = v6;
  v8 = type metadata accessor for PhoneCallFlowState(0, v6, v107, v7);
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_5();
  v111 = (v12 - v13);
  __chkstk_darwin(v14);
  v16 = &v101 - v15;
  v17 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  v106 = v2;
  v24 = v2[16];
  v24();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v110 = v8;
  if (EnumCaseMultiPayload == 1)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
    v105 = *&v16[*(v26 + 48)];
    v27 = *(v26 + 64);
    (*(v19 + 32))(v23, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(&v16[v27]);
    v28 = v19;
    v29 = v23;
    if (v109)
    {
      v103 = v17;
      OUTLINED_FUNCTION_41_0();
      v31 = *(v30 + 152);
      v33 = v32;
      v31(v113);
      v34 = v114;
      v35 = v115;
      __swift_project_boxed_opaque_existential_1(v113, v114);
      v36 = (*(v35 + 56))(v34, v35);
      LOBYTE(v34) = (*(*v36 + 232))(v36);

      __swift_destroy_boxed_opaque_existential_1(v113);
      v109 = v33;
      if (v34 & 1) != 0 && ((*(v106[34] + 136))(v108))
      {
        v31(v113);
        v37 = v31;
        v38 = v114;
        v39 = v115;
        __swift_project_boxed_opaque_existential_1(v113, v114);
        (*(v39 + 8))(v112, v38, v39);
        __swift_project_boxed_opaque_existential_1(v112, v112[3]);
        v40 = DeviceState.isGroupFaceTimeDeviceUnsupported(app:)();
        __swift_destroy_boxed_opaque_existential_1(v112);
        __swift_destroy_boxed_opaque_existential_1(v113);
        if (v40)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, static Logger.siriPhone);
          OUTLINED_FUNCTION_40_0();

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();

          v44 = os_log_type_enabled(v42, v43);
          v102 = v29;
          if (v44)
          {
            v45 = OUTLINED_FUNCTION_42();
            v46 = OUTLINED_FUNCTION_36();
            v113[0] = v46;
            *v45 = 136315138;
            OUTLINED_FUNCTION_41_0();
            v48 = OUTLINED_FUNCTION_11_21(*(v47 + 296));
            *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v113);
            OUTLINED_FUNCTION_9_21();
            _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v46);
            OUTLINED_FUNCTION_26_0(v46);
            OUTLINED_FUNCTION_26_0(v45);
          }

          v37(v113);
          type metadata accessor for StartCallCATs(0);
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_18_9();
          CATWrapper.__allocating_init(options:globals:)();
          type metadata accessor for StartCallCATsSimple(0);
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_18_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_18_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for UnsupportedFlowCATsSimple(0);
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_18_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for UnsupportedFaceTimeOutputProvider();
          swift_allocObject();
          v55 = UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)();
          v56 = (*(*v55 + 136))();
          v57 = v111;
          *v111 = v56;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_41_0();
          v59 = *(v58 + 136);

          v59(v57);

          v29 = v102;
        }
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_42();
        v64 = OUTLINED_FUNCTION_36();
        v113[0] = v64;
        *v63 = 136315138;
        OUTLINED_FUNCTION_41_0();
        v66 = OUTLINED_FUNCTION_11_21(*(v65 + 296));
        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v113);
        OUTLINED_FUNCTION_9_21();
        _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        OUTLINED_FUNCTION_26_0(v64);
        OUTLINED_FUNCTION_26_0(v63);
      }

      OUTLINED_FUNCTION_41_0();
      v74 = v109;
      v113[0] = (*(v73 + 328))(v29, v109, v105);
      type metadata accessor for RCHFlowResult();
      type metadata accessor for AnyValueFlow();
      OUTLINED_FUNCTION_3_23();
      swift_getWitnessTable();
      v75 = Flow.eraseToAnyValueFlow()();

      v76 = v111;
      *v111 = v75;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_41_0();
      (*(v77 + 136))(v76);

      (*(v28 + 8))(v29, v103);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      __swift_project_value_buffer(v91, static Logger.siriPhone);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        OUTLINED_FUNCTION_9_21();
        _os_log_impl(v95, v96, v97, v98, v99, 2u);
        OUTLINED_FUNCTION_26_0(v94);
      }

      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_41_0();
      (*(v100 + 136))(v92);

      (*(v19 + 8))(v23, v17);
    }
  }

  else
  {
    v78 = *(v10 + 8);
    v78(v16, v8);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = OUTLINED_FUNCTION_42();
      v83 = v111;
      v108 = v78;
      v84 = v82;
      v109 = OUTLINED_FUNCTION_36();
      v113[0] = v109;
      *v84 = 136315138;
      v24();
      v85 = v110;
      v86 = PhoneCallFlowState.description.getter(v110);
      v88 = v87;

      v108(v83, v85);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v113);

      *(v84 + 4) = v89;
      _os_log_impl(&dword_0, v80, v81, "Unexpected state, stopping: %s", v84, 0xCu);
      v0 = v109;
      __swift_destroy_boxed_opaque_existential_1(v109);
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_26_0(v84);
    }

    else
    {
    }

    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_41_0();
    (*(v90 + 136))(v0);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t CallingFlowAbstraction.__ivar_destroyer()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();
}

char *CallingFlowAbstraction.deinit()
{
  v0 = PhoneFlow.deinit();

  OUTLINED_FUNCTION_41_0();

  return v0;
}

uint64_t CallingFlowAbstraction.__deallocating_deinit()
{
  CallingFlowAbstraction.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

Swift::Void __swiftcall INPersonContainingIntent.clearContactsSlotMatches()()
{
  v1 = (*(v0 + 8))();
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array.count.getter(v1);
    if (v3)
    {
      v4 = v3;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v4 < 0)
      {
        __break(1u);
        return;
      }

      v5 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v2 + 8 * v5 + 32);
        }

        ++v5;
        outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(_swiftEmptyArrayStorage, v6);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v4 != v5);
    }

    v7 = OUTLINED_FUNCTION_6_20();
    v8(v7);
  }
}

uint64_t INPersonContainingIntent.hasSiriMatches.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))(a1);
  if (result)
  {
    v3 = result;
    if (specialized Array.count.getter(result))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;

      v6 = [v5 siriMatches];

      if (v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = specialized Array.count.getter(v7);

        return v8 != 0;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (!specialized Array.count.getter(v2))
  {

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

LABEL_8:
  v6 = [v5 relationship];
  v7 = v6;
  v8 = v6 != 0;
  if (v6)
  {
  }

  if (v5)
  {
    v9 = v7 != 0;
    v10 = [v5 isMe];

    v8 = v9 | v10;
  }

  return v8 & 1;
}

INPerson_optional __swiftcall INPersonContainingIntent.removeContact(at:)(Swift::Int at)
{
  v3 = OUTLINED_FUNCTION_10_21(at, v1);
  v5 = v4(v3);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = specialized Array.count.getter(v6);

  if (v7 > at)
  {
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v8 > at)
    {
      v9 = v8 - 1;
      v10 = v8 - 1 - at;
      v11 = (v6 & 0xFFFFFFFFFFFFFF8) + 8 * at;
      v12 = *(&stru_20.cmd + v11);
      memmove((v11 + 32), (v11 + 40), 8 * v10);
      *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v9;
      v13 = OUTLINED_FUNCTION_8_22();
      v14(v13);

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_36();
    v22 = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000000458800, &v22);
    *(v19 + 12) = 2048;
    *(v19 + 14) = at;
    _os_log_impl(&dword_0, v17, v18, "#INPersonContainingIntent.%s: Index %ld is greater than number of contacts. Leaving slot as-is.", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_26_0(v20);
    OUTLINED_FUNCTION_26_0(v19);
  }

  v12 = 0;
LABEL_15:
  v21 = v12;
  result.value.super.isa = v21;
  result.is_nil = v15;
  return result;
}

Swift::Void __swiftcall INPersonContainingIntent.replaceContact(at:person:)(Swift::Int at, INPerson person)
{
  v5 = (*(v2 + 8))();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = specialized Array.count.getter(v6);

  if (v7 > at)
  {
    v8 = person.super.isa;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    if ((at & 0x8000000000000000) == 0)
    {
      if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) <= at)
      {
        __break(1u);
      }

      else
      {
        v9 = *(&stru_20.cmd + 8 * at + (v6 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * at + (v6 & 0xFFFFFFFFFFFFFF8)) = v8;

        v10 = OUTLINED_FUNCTION_8_22();
        v11(v10);
      }

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_36();
    v17 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000000458820, &v17);
    *(v14 + 12) = 2048;
    *(v14 + 14) = at;
    _os_log_impl(&dword_0, oslog, v13, "#INPersonContainingIntent.%s: Index %ld is greater than number of contacts. Leaving slot as-is.", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_26_0(v15);
    OUTLINED_FUNCTION_26_0(v14);
  }
}

Swift::Void __swiftcall INPersonContainingIntent.appendContact(person:)(INPerson person)
{
  v3 = OUTLINED_FUNCTION_10_21(person.super.isa, v1);
  v5 = v4(v3);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v6 = v5;
  }

  v10 = v6;
  v7 = person.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v10 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v8 = OUTLINED_FUNCTION_6_20();
  v9(v8);
}

void CallingIntent.callGroups.setter(void *a1)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_36();
    v10 = v4;
    *v3 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallGroup, INCallGroup_ptr);
    v5 = Array.description.getter();
    v7 = v6;

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_0, oslog, v2, "#CallingIntent Intent does not support callGroups, not setting %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_26_0(v4);
    OUTLINED_FUNCTION_26_0(v3);
  }

  else
  {
  }
}

uint64_t CallingIntent.callGroups.modify(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a3;
  a1[3] = v3;
  *a1 = 0;
  a1[1] = a2;
  return OUTLINED_FUNCTION_4_14();
}

void CallingIntent.callGroups.modify(void **a1, char a2)
{
  if (a2)
  {

    CallingIntent.callGroups.setter(v2);
  }

  else
  {
    CallingIntent.callGroups.setter(*a1);
  }
}

void CallingIntent.populateCallIntentMetadata(resolvedApp:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v7 = a1[1];
    v8 = a1[5];
    v21 = *(a1 + 32);
    v9 = objc_allocWithZone(INStartCallRequestMetadata);

    v22 = a2;
    (*(a3 + 80))([v9 initWithAppInferred:v21 == 3], a2, a3);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v24 = v7;
    v25 = *(a1 + 1);
    v26 = v8;

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v24, v23, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v25, v23, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v26, v23, &_sShySSGMd, &_sShySSGMR);
    v11 = v3;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v24, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v25, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v26, &_sShySSGMd, &_sShySSGMR);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_36();
      v23[0] = v16;
      *v14 = 136315394;
      v17 = AppResolutionSource.description.getter(v21);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v23);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      v20 = (*(a3 + 72))(v22, a3);
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_0, v12, v13, "#CallingIntent did set callRequestMetadata: source=%s, callRequestMetadata=%@", v14, 0x16u);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0(v15);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_26_0(v16);
      OUTLINED_FUNCTION_26_0(v14);

      OUTLINED_FUNCTION_9_20(&v24);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v25, &_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_9_20(&v26);
    }

    else
    {

      OUTLINED_FUNCTION_9_20(&v24);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v25, &_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_9_20(&v26);
    }
  }
}

uint64_t protocol witness for CallingIntent.callGroups.modify in conformance INStartAudioCallIntent(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a2;
  a1[3] = a3;
  *a1 = 0;
  a1[1] = v3;
  return OUTLINED_FUNCTION_4_14();
}

uint64_t protocol witness for CallingIntent.callGroups.modify in conformance INStartVideoCallIntent(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = a2;
  a1[3] = a3;
  *a1 = 0;
  a1[1] = v3;
  return OUTLINED_FUNCTION_4_14();
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for ContactQuery);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for UsoEntitySpan);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for SpeakableString);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for RREntity);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for DisambiguationItemWithDirectInvocationModel);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for CommonFlowGuard);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for DisplayHint);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for SemanticValue);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for UsoIdentifier);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV0iK0tMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for PhoneRRTarget);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for CommsAppFeature);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for AppDescription);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SingleCallRecordModel);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for SingleVoicemailModel);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for RRResult);
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_11_22();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_23_1(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v12 = OUTLINED_FUNCTION_2_31();

      _swift_arrayInitWithTakeBackToFront(v12);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v13 = OUTLINED_FUNCTION_2_31();

    _swift_arrayInitWithTakeFrontToBack(v13);
  }
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_11_22();
  if (v8 && (a4(0), OUTLINED_FUNCTION_23_1(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_2_31();

      _swift_arrayInitWithTakeBackToFront(v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_2_31();

    _swift_arrayInitWithTakeFrontToBack(v11);
  }
}

void specialized _ArrayBuffer._consumeAndCreateNew()()
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t CallingIntentBaseFlowStrategy.deviceState.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t CallingIntentBaseFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v19 = swift_allocObject();
  CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v19;
}

void *CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v12 = v11;
  v16 = *v11;
  v17 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v17 - 8);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v12[2] = a1;
  *&v30[0] = a1;
  v18 = *(*(*(v16 + 88) + 8) + 8);
  v19 = *(v18 + 8);
  v20 = *(v16 + 80);
  swift_unknownObjectRetain();
  v19(&v31, v20, v18);
  outlined init with take of SPHConversation(&v31, (v12 + 3));
  v12[8] = a2;
  outlined init with copy of SignalProviding(a3, (v12 + 9));
  v12[14] = a4;
  v12[15] = a5;
  v12[16] = a6;
  outlined init with copy of SignalProviding(a7, (v12 + 17));
  v12[22] = a8;
  outlined init with copy of SignalProviding(a9, (v12 + 23));
  outlined init with copy of SignalProviding(a10, (v12 + 28));
  outlined init with copy of SignalProviding((v12 + 3), &v31);
  v21 = v32;
  v22 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, v32);
  v23 = (*(v22 + 72))(v21, v22);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  outlined init with copy of SignalProviding(v23 + 160, v30);

  outlined init with take of SPHConversation(v30, (v12 + 33));
  __swift_destroy_boxed_opaque_existential_1(&v31);
  outlined init with take of SPHConversation(a11, (v12 + 38));
  return v12;
}

uint64_t CallingIntentBaseFlowStrategy.handleTemplatingResultFailure(_:_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, const char *a4, ...)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v18);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v18);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_0, v8, v9, a4, v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v18[0] = a1;
  v19 = 1;
  swift_errorRetain();
  a2(v18);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t CallingIntentBaseFlowStrategy.handleAceViewsFailure(_:)(uint64_t a1)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v4 + 14) = v10;
    _os_log_impl(&dword_0, v2, v3, "#%s failed to make ace views: %s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  swift_willThrow();
  return swift_errorRetain();
}

uint64_t CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a4;
  v46 = a2;
  v12 = *v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v44 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v43 = v15;
    v42 = v21;
    v49[0] = v21;
    *v20 = 136315138;
    v22 = _typeName(_:qualified:)();
    v24 = a5;
    v25 = a6;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v49);

    *(v20 + 4) = v26;
    a6 = v25;
    a5 = v24;
    _os_log_impl(&dword_0, v17, v18, "#%s slot resolvers enabled, calling multicardinal slot resolver", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v15 = v43;
    OUTLINED_FUNCTION_8();

    a1 = v44;
    OUTLINED_FUNCTION_8();
  }

  v28 = *(v12 + 80);
  v27 = *(v12 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(swift_getAssociatedConformanceWitness() + 8);

  static ContactSlotResolver.makeMulticardinalResolver<A>(multicardinalIndex:rchFlowContext:sharedGlobals:)(v45, 0, a3, 0, 0, (v7 + 3), AssociatedTypeWitness, v30);

  v31 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v31);
  v34 = type metadata accessor for AnyIntentResolver(0, AssociatedTypeWitness, v32, v33);
  v35 = *(v34 - 8);
  (*(v35 + 16))(v48, v49, v34);
  outlined init with copy of SignalProviding(v46, v47);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v28;
  *(v36 + 40) = v27;
  v37 = v48[1];
  *(v36 + 48) = v48[0];
  *(v36 + 64) = v37;
  v38 = v48[3];
  *(v36 + 80) = v48[2];
  *(v36 + 96) = v38;
  *(v36 + 112) = a1;
  outlined init with take of SPHConversation(v47, v36 + 120);
  *(v36 + 160) = a5;
  *(v36 + 168) = a6;
  v39 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  return (*(v35 + 8))(v49, v34);
}

uint64_t closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a5;
  v11 = swift_task_alloc();
  v8[5] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnyIntentResolver(0, AssociatedTypeWitness, v13, v14);
  *v11 = v8;
  v11[1] = closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:);

  return AnyIntentResolver.resolve(skIntent:nlIntent:)(a5, a6);
}

uint64_t closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:);
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v1();

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v1();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t CallingIntentBaseFlowStrategy.getCompletionOutputManifest(intent:intentResponse:withContextForHandleIntent:responseViewId:printSupportingDialogInDisplayModes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a7@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  v16 = direct field offset for CallingIntentBaseFlowStrategy.completionOutputManifest;
  type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_23_1();
  (*(v17 + 16))(a7, v7 + v16);
  if (a3)
  {
    v18 = OUTLINED_FUNCTION_3_25();
    v19 = OUTLINED_FUNCTION_3_25();
    type metadata accessor for PhoneCallNLContextProvider(0, v18, v19, v20);
    static PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:)();
    outlined init with copy of NLContextUpdate?(v15, v12);
    OutputGenerationManifest.nlContextUpdate.setter();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }

  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t CallingIntentBaseFlowStrategy.__deallocating_deinit()
{
  CallingIntentBaseFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[20];
  v8 = v1[21];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return closure #1 in CallingIntentBaseFlowStrategy.executeCRR(siriKitIntent:nlIntent:app:multicardinalValueIndex:_:)(a1, v4, v5, (v1 + 6), v6, (v1 + 15), v7, v8);
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for CallingIntentBaseFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for OutputGenerationManifest();
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

void key path setter for CallingIntentConfirmationFlowStrategy.personToConfirm : <A>CallingIntentConfirmationFlowStrategy<A>(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CallingIntentConfirmationFlowStrategy.personToConfirm.getter()
{
  v1 = direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t CallingIntentConfirmationFlowStrategy.actionForInput(_:resolveRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v55 = v11;
  v56 = v10;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v22, static Logger.siriPhone);
  v23 = *(v17 + 16);
  v57 = a1;
  v23(v21, a1, v15);
  v54 = v2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_42();
    v52 = v2;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_36();
    v51 = v9;
    v29 = v28;
    v58[0] = v28;
    *v27 = 136315138;
    Input.parse.getter();
    v30 = String.init(describing:)(v14);
    v53 = a2;
    v32 = v31;
    (*(v17 + 8))(v21, v15);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v58);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_0, v24, v25, "#CallingIntentConfirmationFlowStrategy input: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v34 = v29;
    v9 = v51;
    OUTLINED_FUNCTION_26_0(v34);
    v35 = v27;
    v3 = v52;
    OUTLINED_FUNCTION_26_0(v35);
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  outlined init with copy of SignalProviding(v3 + 24, v58);
  Input.parse.getter();
  v36 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v14, 1);
  (*(v55 + 8))(v14, v56);
  outlined destroy of ContactPromptResponseParser(v58);
  if (v36 - 1 < 2)
  {
    v37 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_10:
    v38 = *v37;
    v39 = type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_23_1();
    (*(v40 + 104))(v9, v38, v39);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v39);
    v44 = direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse;
    swift_beginAccess();
    outlined assign with take of ConfirmationResponse?(v9, v3 + v44);
    swift_endAccess();
    return static ActionForInput.handle()();
  }

  if (!v36)
  {
    v37 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_10;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v48);
    OUTLINED_FUNCTION_33(&dword_0, v49, v50, "#CallingIntentConfirmationFlowStrategy Received unsupported parse while determining action which is not yet supported. Skipping..");
    OUTLINED_FUNCTION_12_3();
  }

  return static ActionForInput.ignore()();
}

uint64_t CallingIntentConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[18] = a1;
  v5 = *v3;
  v6 = type metadata accessor for ConfirmationResponse();
  v4[21] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v4[22] = v7;
  v4[23] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
  v4[24] = v8;
  OUTLINED_FUNCTION_21(v8);
  v4[25] = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v9);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v10 = type metadata accessor for ParameterIdentifier();
  v4[29] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v4[30] = v11;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = *(v5 + 272);
  v4[34] = *(v5 + 264);
  v4[35] = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ParameterResolutionRecord();
  v4[36] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v4[37] = v13;
  v4[38] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

void CallingIntentConfirmationFlowStrategy.parseConfirmationResponse(input:resolveRecord:)()
{
  v92 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 152);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v11 = *(v0 + 288);
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_42();
    v13 = OUTLINED_FUNCTION_36();
    v91 = v13;
    *v12 = 136315138;
    v14 = ParameterResolutionRecord.result.getter();
    v15 = [v14 itemToConfirm];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v16 = String.init<A>(describing:)();
    v18 = v17;
    (*(v9 + 8))(v10, v11);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v91);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_0, v6, v7, "#CallingIntentConfirmationFlowStrategy intentResolutionResult: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0(v13);
    OUTLINED_FUNCTION_26_0(v12);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v21 = *(v0 + 248);
  v20 = *(v0 + 256);
  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  ParameterResolutionRecord.parameter.getter();
  v24 = ParameterIdentifier.multicardinalIndex.getter();
  v26 = v25;
  v27 = *(v22 + 8);
  v27(v20, v23);
  if (v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  ParameterResolutionRecord.parameter.getter();
  v29 = ParameterIdentifier.name.getter();
  v31 = v30;
  v27(v21, v23);
  v32._countAndFlagsBits = v29;
  v32._object = v31;
  if ((PhoneCallSlotNames.init(rawValue:)(v32).value & 0xFE) == 4)
  {
    v33 = ParameterResolutionRecord.result.getter();
    v34 = [v33 itemToConfirm];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for INPerson();
    v86 = v28;
    if (swift_dynamicCast())
    {
      v89 = *(v0 + 136);
    }

    else
    {
      v89 = (*(**(v0 + 160) + 328))();
    }

    v39 = *(v0 + 224);
    v40 = *(v0 + 192);
    v41 = *(v0 + 200);
    v43 = *(v0 + 168);
    v42 = *(v0 + 176);
    v44 = *(v0 + 160);
    v45 = direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse;
    swift_beginAccess();
    (*(v42 + 104))(v39, enum case for ConfirmationResponse.confirmed(_:), v43);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v43);
    v49 = *(v40 + 48);
    v87 = v45;
    v88 = v44;
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v44 + v45, v41, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v39, v41 + v49, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    if (__swift_getEnumTagSinglePayload(v41, 1, v43) == 1)
    {
      v50 = *(v0 + 168);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 224), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v51 = &unk_426000;
      if (__swift_getEnumTagSinglePayload(v41 + v49, 1, v50) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 200), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        v52 = v89;
LABEL_26:
        if (!v52)
        {
          goto LABEL_31;
        }

        v90 = v52;
        v71 = v52;
        v72 = ParameterResolutionRecord.intent.getter();
        swift_getAssociatedConformanceWitness();
        v73 = OUTLINED_FUNCTION_26_11();
        v75 = v74(v73);

        v64 = CallingIntentConfirmationFlowStrategy.updateForConfirmedContact(selectedIndex:confirmedContact:currentContacts:)(v86, v71, v75);

LABEL_28:

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = OUTLINED_FUNCTION_42();
          v79 = OUTLINED_FUNCTION_36();
          v91 = v79;
          *v78 = v51[70];
          v80 = Array.description.getter();
          v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v91);

          *(v78 + 4) = v82;
          _os_log_impl(&dword_0, v76, v77, "#CallingIntentConfirmationFlowStrategy updated contacts: %s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          OUTLINED_FUNCTION_26_0(v79);
          OUTLINED_FUNCTION_26_0(v78);
        }

        v83 = ParameterResolutionRecord.intent.getter();
        *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        *(v0 + 48) = v64;
        NSObject.update(with:at:)((v0 + 48), 0x73746361746E6F63, 0xE800000000000000);

        __swift_destroy_boxed_opaque_existential_1((v0 + 48));
        v52 = v90;
LABEL_31:
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v88 + v87, *(v0 + 208), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        ParameterResolutionRecord.intent.getter();
        NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_21_7();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
      v53 = *(v0 + 168);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(*(v0 + 200), *(v0 + 216), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41 + v49, 1, v53);
      v55 = *(v0 + 216);
      v56 = *(v0 + 224);
      if (EnumTagSinglePayload != 1)
      {
        v65 = *(v0 + 200);
        v66 = *(v0 + 176);
        v67 = *(v0 + 184);
        v68 = *(v0 + 168);
        (*(v66 + 32))(v67, v41 + v49, v68);
        _s11SiriKitFlow20ConfirmationResponseOACSQAAWlTm_0(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
        v69 = dispatch thunk of static Equatable.== infix(_:_:)();
        v70 = *(v66 + 8);
        v70(v67, v68);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v56, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        v52 = v89;
        v70(v55, v68);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        v51 = &unk_426000;
        if (v69)
        {
          goto LABEL_26;
        }

LABEL_22:
        if (!v52)
        {
          goto LABEL_31;
        }

        v59 = v52;
        v60 = ParameterResolutionRecord.intent.getter();
        swift_getAssociatedConformanceWitness();
        v61 = OUTLINED_FUNCTION_26_11();
        v63 = v62(v61);

        v64 = CallingIntentConfirmationFlowStrategy.updateForRejectedContact(selectedIndex:rejectedContact:currentContacts:)(v86, v59, v63);

        if (!v64)
        {
          goto LABEL_31;
        }

        v90 = v52;
        goto LABEL_28;
      }

      v58 = *(v0 + 168);
      v57 = *(v0 + 176);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 224), &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      (*(v57 + 8))(v55, v58);
      v51 = &unk_426000;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 200), &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
    v52 = v89;
    goto LABEL_22;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_4(v36))
  {
    v37 = OUTLINED_FUNCTION_42();
    v38 = OUTLINED_FUNCTION_36();
    v91 = v38;
    *v37 = 136315138;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000A2, 0x8000000000458930, &v91);
    _os_log_impl(&dword_0, v35, v36, "%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_26_0(v37);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  OUTLINED_FUNCTION_21_7();
}

uint64_t CallingIntentConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = *v0;
  v5 = type metadata accessor for ParameterIdentifier();
  v1[12] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v23 = *(v0 + 96);
  v12 = *(v0 + 80);

  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v13 = ParameterResolutionRecord.app.getter();
  *(v0 + 120) = v13;
  v14 = ParameterResolutionRecord.intent.getter();
  *(v0 + 128) = v14;
  ParameterResolutionRecord.parameter.getter();
  v25 = ParameterIdentifier.name.getter();
  v16 = v15;
  *(v0 + 136) = v15;
  (*(v11 + 8))(v10, v23);
  v17 = ParameterResolutionRecord.result.getter();
  *(v0 + 144) = v17;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v24 = (*(*v12 + 400) + **(*v12 + 400));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 152) = v18;
  *v18 = v19;
  v18[1] = CallingIntentConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:resolveRecord:);
  v20 = *(v0 + 56);
  v21 = *(v0 + 64);

  return v24(v20, v13, v21, v14, v25, v16, v17, v0 + 16);
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *(v5 + 128);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v3 + 160) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3 + 16, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {

    v13 = *(v8 + 8);

    return v13();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t CallingIntentConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[9] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v4);
  v1[10] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  v10 = v0[8];

  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v10 + 24, (v0 + 2));
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  v11 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v0[11] = v11;
  v16 = (*(*v11 + 136) + **(*v11 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[12] = v12;
  *v12 = v13;
  v12[1] = CallingIntentConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameter:);
  v14 = v0[7];

  return v16(v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t CallingIntentConfirmationFlowStrategy.updateForConfirmedContact(selectedIndex:confirmedContact:currentContacts:)(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = _swiftEmptyArrayStorage;
  v78 = _swiftEmptyArrayStorage;
  if (a3 && specialized Array.count.getter(a3))
  {
    v78 = a3;

    v4 = a3;
  }

  v6 = [a2 contactIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = specialized Optional<A>.isNilOrEmpty.getter(v8, v10);

  v12 = 5550080;
  if (v11)
  {
LABEL_44:
    v29 = specialized Array.count.getter(v4);
    v30 = *(v12 + 2952);
    if (v29 <= a1)
    {
      if (v30 == -1)
      {
LABEL_57:
        v36 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v38))
        {
          v39 = OUTLINED_FUNCTION_65_0();
          *v39 = 0;
          OUTLINED_FUNCTION_29_13();
          _os_log_impl(v40, v41, v42, v43, v39, 2u);
          OUTLINED_FUNCTION_26_0(v39);
        }

        v44 = a2;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v78 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v78;
LABEL_74:
        if (*(v12 + 2952) != -1)
        {
LABEL_81:
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v59 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v59, static Logger.siriPhone);

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v76[0] = v63;
          *v62 = 136315394;
          v64 = _typeName(_:qualified:)();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v76);

          *(v62 + 4) = v66;
          *(v62 + 12) = 2080;
          type metadata accessor for INPerson();

          v67 = Array.description.getter();
          v69 = v68;

          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v76);

          *(v62 + 14) = v70;
          _os_log_impl(&dword_0, v60, v61, "#%s updated contacts : %s)", v62, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0(v63);
          OUTLINED_FUNCTION_26_0(v62);
        }

        return v4;
      }
    }

    else
    {
      if (v30 != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v31 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);
      v32 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v16))
      {
        v33 = OUTLINED_FUNCTION_42();
        *v33 = 134217984;
        *(v33 + 4) = a1;
        _os_log_impl(&dword_0, v32, v16, "#CallingIntentConfirmationFlowStrategy updateForConfirmedContact: Updating confirmed contact at selectedIndex=%ld", v33, 0xCu);
        OUTLINED_FUNCTION_26_0(v33);
      }

      v34 = a2;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) <= a1)
        {
          __break(1u);
LABEL_85:
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          goto LABEL_65;
        }

        v35 = *(&stru_20.cmd + 8 * a1 + (v4 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * a1 + (v4 & 0xFFFFFFFFFFFFFF8)) = v34;

        v78 = v4;
        goto LABEL_74;
      }

      __break(1u);
    }

    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_57;
  }

  v13 = specialized Array.count.getter(v4);
  v73 = v4 & 0xC000000000000001;
  v14 = v4 & 0xFFFFFFFFFFFFFF8;

  v15 = -v13;
  v12 = 4;
  v72 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v15 + v12 == 4)
    {

      v12 = &dword_54B000;
      goto LABEL_44;
    }

    v16 = v12 - 4;
    if (v73)
    {
      v17 = v4;
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v17 = v4;
      v18 = *(v4 + 8 * v12);
    }

    v19 = v18;
    v20 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a2);
    v22 = v21;
    outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v19);
    if (v23)
    {
      OUTLINED_FUNCTION_32_6();
      goto LABEL_15;
    }

    v26 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v19);
    v4 = v26;
    if (!v26)
    {
      v3 = 0;
      goto LABEL_15;
    }

    if (v26 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_26:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_80;
          }

          v27 = *(v4 + 32);
        }

        v3 = v27;

        v28 = [v3 contactIdentifier];

        if (v28)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_32_6();

          goto LABEL_15;
        }

        goto LABEL_41;
      }
    }

    else if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_26;
    }

LABEL_41:
    v3 = 0;
    v4 = 0;
LABEL_15:
    if (!v22)
    {
      if (!v4)
      {
        v4 = v17;

        goto LABEL_64;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (!v4)
    {
      goto LABEL_33;
    }

    if (v20 == v3 && v22 == v4)
    {
      break;
    }

    v25 = OUTLINED_FUNCTION_27_7();

    if (v25)
    {
      v4 = v17;
      goto LABEL_63;
    }

LABEL_34:
    ++v12;
    v4 = v17;
    v14 = v72;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_79;
    }
  }

  v4 = v17;
LABEL_63:

LABEL_64:
  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_85;
  }

LABEL_65:
  v45 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v45, static Logger.siriPhone);
  v46 = a2;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_42();
    v75 = OUTLINED_FUNCTION_36();
    v77 = v75;
    *v49 = 136315138;
    v76[0] = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v46);
    v76[1] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v51 = String.init<A>(describing:)();
    v53 = v4;
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v77);

    *(v49 + 4) = v54;
    v4 = v53;
    _os_log_impl(&dword_0, v47, v48, "#CallingIntentConfirmationFlowStrategy updateForConfirmedContact: Found confirmed contact with contactId=%s who is now confirmed", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    OUTLINED_FUNCTION_26_0(v75);
    OUTLINED_FUNCTION_26_0(v49);
  }

  v55 = v46;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v4 = result;
    v57 = result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v57 = v72;
  }

  if (v16 < *(v57 + 16))
  {
    v58 = *(v57 + 8 * v12);
    *(v57 + 8 * v12) = v55;

    v78 = v4;
    v12 = &dword_54B000;
    goto LABEL_74;
  }

  __break(1u);
  return result;
}

uint64_t CallingIntentConfirmationFlowStrategy.updateForRejectedContact(selectedIndex:rejectedContact:currentContacts:)(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a3;
  if (!a3)
  {
LABEL_54:

    return v5;
  }

  v8 = [a2 contactIdentifier];
  v63 = a1;
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = specialized Optional<A>.isNilOrEmpty.getter(v10, v12);

  if (!v13)
  {
    v5 = specialized Array.count.getter(a3);
    v26 = 0;
    v27 = 0;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    while (v5 != v27)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v28 + 16))
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v29 = *(a3 + 32 + 8 * v27);
      }

      v3 = v29;
      v30 = a2;
      v31 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a2);
      v33 = v32;
      outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v3);
      if (v34)
      {
        OUTLINED_FUNCTION_32_6();
        goto LABEL_22;
      }

      v37 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v3);
      v28 = v37;
      if (!v37)
      {
        v4 = 0;
        goto LABEL_22;
      }

      if (v37 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_33:
          if ((v28 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_69;
            }

            v38 = *(v28 + 32);
          }

          v4 = v38;

          v39 = [v4 contactIdentifier];

          if (v39)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_32_6();

            goto LABEL_22;
          }

          goto LABEL_48;
        }
      }

      else if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_33;
      }

LABEL_48:
      v4 = 0;
      v28 = 0;
LABEL_22:
      if (!v33)
      {
        if (!v28)
        {

          goto LABEL_56;
        }

LABEL_40:

        v28 = a3 & 0xFFFFFFFFFFFFFF8;
        a2 = v30;
        goto LABEL_41;
      }

      if (!v28)
      {
        goto LABEL_40;
      }

      if (v31 == v4 && v33 == v28)
      {

LABEL_56:
        v28 = a3 & 0xFFFFFFFFFFFFFF8;
        a2 = v30;
LABEL_57:
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static Logger.siriPhone);
        v50 = a2;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = OUTLINED_FUNCTION_42();
          v54 = OUTLINED_FUNCTION_36();
          v65 = v54;
          *v53 = 136315138;
          outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v55 = String.init<A>(describing:)();
          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v65);

          *(v53 + 4) = v57;
          _os_log_impl(&dword_0, v51, v52, "#CallingIntentConfirmationFlowStrategy updateForRejectedContact: Contact to be confirmed with contactId=%s has been rejected", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          OUTLINED_FUNCTION_26_0(v54);
          OUTLINED_FUNCTION_26_0(v53);
        }

        v5 = a3;
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (a3 >> 62 || (result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()();
          v5 = result;
          v28 = result & 0xFFFFFFFFFFFFFF8;
        }

        v59 = *(v28 + 16);
        if (v59 > v27)
        {
          v60 = v59 - 1;
          v61 = v28 - v26;
          v62 = *(v28 + 8 * v27 + 32);
          specialized UnsafeMutablePointer.moveInitialize(from:count:)((v61 + 40), ~v27 + v59, (v61 + 32));
          *(v28 + 16) = v60;

          return v5;
        }

        __break(1u);
        return result;
      }

      v36 = OUTLINED_FUNCTION_27_7();

      v28 = a3 & 0xFFFFFFFFFFFFFF8;
      a2 = v30;
      if (v36)
      {
        goto LABEL_57;
      }

LABEL_41:
      v26 -= 8;
      if (__OFADD__(v27++, 1))
      {
        goto LABEL_68;
      }
    }
  }

  v5 = a3;
  v3 = v63;
  if (specialized Array.count.getter(a3) <= v63)
  {

    if (one-time initialization token for siriPhone == -1)
    {
LABEL_51:
      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v43))
      {
        v44 = OUTLINED_FUNCTION_65_0();
        *v44 = 0;
        OUTLINED_FUNCTION_29_13();
        _os_log_impl(v45, v46, v47, v48, v44, 2u);
        OUTLINED_FUNCTION_26_0(v44);
      }

      goto LABEL_54;
    }

LABEL_72:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_51;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_70:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v16))
  {
    v17 = OUTLINED_FUNCTION_42();
    *v17 = 134217984;
    *(v17 + 4) = v3;
    OUTLINED_FUNCTION_29_13();
    _os_log_impl(v18, v19, v20, v21, v17, 0xCu);
    OUTLINED_FUNCTION_26_0(v17);
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v5 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  v23 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (v23 <= v3)
  {
    __break(1u);
    goto LABEL_72;
  }

  v24 = v23 - 1;
  v25 = *(&stru_20.cmd + 8 * v3 + (v5 & 0xFFFFFFFFFFFFFF8));
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 40), v23 - 1 - v3, ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 32));
  *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) = v24;

  return v5;
}

uint64_t CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:itemToConfirm:intent:parameterName:intentResolutionResult:crrOutputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[17] = a8;
  v9[18] = v8;
  v9[15] = a6;
  v9[16] = a7;
  v9[13] = a4;
  v9[14] = a5;
  v9[11] = a2;
  v9[12] = a3;
  v9[10] = a1;
  v9[19] = *v8;
  v9[20] = *v8;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v10, v11, v12);
}

uint64_t CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:itemToConfirm:intent:parameterName:intentResolutionResult:crrOutputGenerator:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[18];
  outlined init with copy of Any(v0[12], (v0 + 2));
  type metadata accessor for INPerson();
  if (swift_dynamicCast())
  {
    v2 = v0[9];
  }

  else
  {
    v2 = 0;
  }

  v3 = direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;

  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v8 = swift_checkMetadataState();
  v9 = v7(v8, v6);
  if (v9)
  {
    v10 = v9;
    if (specialized Array.count.getter(v9))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v10 & 0xC000000000000001) == 0, v10);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v10 + 32);
      }

      v12 = v11;

      v13 = [v12 personHandle];

      if (v13)
      {
        [v13 isSuggested];
      }
    }

    else
    {
    }
  }

  v14 = v0[18];
  (*(*(v5 + 16) + 8))(v8);
  v0[21] = (*(*v14 + 328))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[22] = v15;
  *v15 = v16;
  v15[1] = CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:itemToConfirm:intent:parameterName:intentResolutionResult:crrOutputGenerator:);

  return static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 304) = v27;
  *(v1 + 312) = v0;
  *(v1 + 272) = v25;
  *(v1 + 288) = v26;
  *(v1 + 256) = v2;
  *(v1 + 264) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  *(v1 + 512) = v6;
  *(v1 + 224) = v7;
  *(v1 + 232) = v8;
  *(v1 + 216) = v9;
  v10 = type metadata accessor for PhoneError(0);
  *(v1 + 320) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 328) = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  *(v1 + 336) = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for Locale();
  *(v1 + 344) = v12;
  OUTLINED_FUNCTION_13_2(v12);
  *(v1 + 352) = v13;
  *(v1 + 360) = OUTLINED_FUNCTION_45();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v14);
  *(v1 + 368) = swift_task_alloc();
  *(v1 + 376) = swift_task_alloc();
  v15 = type metadata accessor for NLContextUpdate();
  *(v1 + 384) = v15;
  OUTLINED_FUNCTION_13_2(v15);
  *(v1 + 392) = v16;
  *(v1 + 400) = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v17);
  *(v1 + 408) = OUTLINED_FUNCTION_45();
  v18 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 416) = v18;
  OUTLINED_FUNCTION_13_2(v18);
  *(v1 + 424) = v19;
  *(v1 + 432) = OUTLINED_FUNCTION_45();
  v20 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v20, v21, v22);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  *(v8 + 480) = v7;
  *(v8 + 488) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v2 + 336), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(*(v0 + 304), v0 + 136, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
  if (*(v0 + 160))
  {
    outlined init with take of SPHConversation((v0 + 136), v0 + 96);
  }

  else
  {
    type metadata accessor for CATGlobals();

    CATGlobals.__allocating_init()();
    v1 = type metadata accessor for ContactResolutionSnippetGenerator();
    swift_allocObject();
    v2 = ContactResolutionSnippetGenerator.init(appBundleId:globals:)();
    *(v0 + 120) = v1;
    *(v0 + 128) = &protocol witness table for ContactResolutionSnippetGenerator;
    *(v0 + 96) = v2;
    if (*(v0 + 160))
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 136, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    }
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 240);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 496) = v5;
  *v5 = v6;
  v5[1] = static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:);
  v7 = *(v0 + 480);
  v8 = *(v0 + 432);
  v9 = *(v0 + 288);
  v10 = *(v0 + 248);
  v11 = *(v0 + 216);

  return static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:)(v11, v10, v8, v9, v0 + 96, v3, v7, v4 == 2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 296);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_31();
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[37];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_28_9(v0[54]);

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 296);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_28_9(*(v0 + 432));

  OUTLINED_FUNCTION_11();

  return v5();
}

void static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = v0[34];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[34];
  if (v6)
  {
    v9 = v0[32];
    v8 = v0[33];
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_36();
    v71[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v71);
    *(v10 + 12) = 2048;
    *(v10 + 14) = [v7 confirmationReason];

    OUTLINED_FUNCTION_29_13();
    _os_log_impl(v12, v13, v14, v15, v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_26_0(v11);
    OUTLINED_FUNCTION_26_0(v10);
  }

  else
  {
  }

  v16 = v0[37];
  if (v16)
  {
    v17 = v16;
    v18 = App.appIdentifier.getter();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    if (App.isFirstParty()())
    {
      v23 = v0[30];
      v22 = v0[31];
      v24 = v22[3];
      v25 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v24);
      (*(v25 + 8))(v24, v25);
      v20 = static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(v23, v0 + 22);
      v27 = v26;

      __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      v21 = v27;
    }

    v0[55] = v20;
    v0[56] = v21;
    v29 = v0[47];
    v28 = v0[48];
    v30 = v0[33];
    v31 = v0[32];
    static DialogPhase.confirmation.getter();
    OutputGenerationManifest.init(dialogPhase:_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMR);
    specialized static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)(v31, v30, v29);
    if (__swift_getEnumTagSinglePayload(v29, 1, v28) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[47], &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_8_0(v33))
      {
        v34 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v34);
        OUTLINED_FUNCTION_17_4();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_12_3();
      }
    }

    else
    {
      v54 = v0[49];
      v53 = v0[50];
      v55 = v0[48];
      v56 = v0[46];
      (*(v54 + 32))(v53, v0[47], v55);
      v57 = [objc_allocWithZone(SAAceConfirmationContext) init];
      [v57 setReason:SAAceConfirmationReasonCONFIRM_CONTACTValue];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_426260;
      *(v58 + 32) = v57;
      v59 = v57;
      NLContextUpdate.conversationStateAttachments.setter();
      (*(v54 + 16))(v56, v53, v55);
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v55);
      OutputGenerationManifest.nlContextUpdate.setter();

      (*(v54 + 8))(v53, v55);
    }

    v63 = v0[44];
    v64 = v0[45];
    v65 = v0[43];
    v70 = v0[42];
    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v0[57] = OUTLINED_FUNCTION_34_3();
    v66 = *(v63 + 8);
    v66(v64, v65);

    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v0[58] = OUTLINED_FUNCTION_34_3();
    v66(v64, v65);
    static CallingIntentConfirmationFlowStrategy.getContactsInferenceSource(intent:)(v70);
    v67 = swift_task_alloc();
    v0[59] = v67;
    *v67 = v0;
    v67[1] = static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:);
    OUTLINED_FUNCTION_21_7();

    __asm { BRAA            X6, X16 }
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_8_0(v41))
  {
    v42 = OUTLINED_FUNCTION_42();
    v43 = OUTLINED_FUNCTION_36();
    v71[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000F6, 0x80000000004589E0, v71);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_26_0(v43);
    OUTLINED_FUNCTION_12_3();
  }

  v49 = v0[41];
  swift_storeEnumTagMultiPayload();
  _s11SiriKitFlow20ConfirmationResponseOACSQAAWlTm_0(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v50);
  outlined destroy of PhoneError(v49);
  swift_willThrow();
  OUTLINED_FUNCTION_28_9(v0[54]);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_21_7();

  __asm { BRAA            X1, X16 }
}

uint64_t closure #1 in static CallingIntentConfirmationFlowStrategy.makePromptForConfirmationOutput(app:intent:isFoundInAppConfirmation:preferredCallProvider:sharedGlobals:parameterName:intentResolutionResult:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:personToConfirm:crrOutputGenerator:)()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t specialized static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v13, static Logger.siriPhone);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v15))
  {
    v16 = OUTLINED_FUNCTION_65_0();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "#PhoneCallNLContextProvider needsConfirmationContext", v16, 2u);
    OUTLINED_FUNCTION_26_0(v16);
  }

  specialized static PhoneCallNLContextProvider.makeGenericConfirmationContextFor(parameter:)(a1, a2);

  v17._countAndFlagsBits = a1;
  v17._object = a2;
  if ((PhoneCallSlotNames.init(rawValue:)(v17).value & 0xFE) == 4)
  {
    NLContextUpdate.weightedPromptResponseTargets.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    *(inited + 32) = PhoneCallNLConstants.canonicalName.getter(3);
    *(inited + 40) = v19;
    *(inited + 48) = PhoneCallNLConstants.canonicalName.getter(13);
    *(inited + 56) = v20;
    specialized Array.append<A>(contentsOf:)(inited);
    NLContextUpdate.weightedPromptResponseTargets.setter();
  }

  (*(v8 + 32))(a3, v12, v6);
  OUTLINED_FUNCTION_23_3();
  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
}

uint64_t static CallingIntentConfirmationFlowStrategy.getContactsInferenceSource(intent:)@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v3 = *(v2 + 8);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, v2);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  if (specialized Array.count.getter(v5) != 1 || ((specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6), (v6 & 0xC000000000000001) != 0) ? (v7 = specialized _ArrayBuffer._getElementSlowPath(_:)()) : (v7 = *(v6 + 32)), v8 = v7, v9 = [v7 siriMatches], v8, !v9))
  {

LABEL_15:
    v19 = 1;
    goto LABEL_16;
  }

  type metadata accessor for INPerson();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;

  if (!INPerson.isProvidedByPlus.getter())
  {

    goto LABEL_15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v6 + 32);
    }

    v22 = v18;

    *(v16 + 4) = v22;
    *v17 = v22;
    _os_log_impl(&dword_0, v14, v15, "#CallingIntentConfirmationFlowStrategy Found a contact that is inferred by PLUS: %@", v16, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  SpeakableString.init(print:speak:)();
  v19 = 0;
LABEL_16:
  v20 = type metadata accessor for SpeakableString();

  return __swift_storeEnumTagSinglePayload(a1, v19, 1, v20);
}

uint64_t static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 96) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 24) = a3;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  v9 = type metadata accessor for ContactResolutionVerb();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();

  return _swift_task_switch(static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:), 0, 0);
}

uint64_t static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_33(&dword_0, v5, v6, "#CallingIntentConfirmationFlowStrategy getYesNoClarificationContactName: confirming by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 96);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v13 = &enum case for ContactResolutionVerb.facetime(_:);
  if (!v9)
  {
    v13 = &enum case for ContactResolutionVerb.phoneCallOrFacetimeAudio(_:);
  }

  (*(v8 + 104))(v7, *v13, v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 80) = v14;
  *v14 = v15;
  v14[1] = static CallingIntentConfirmationFlowStrategy.getYesNoClarificationContactName(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:contactToConfirm:dialogOverride:isFaceTime:);
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);
  v18 = *(v0 + 16);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(v18, v17, v16, 0xD000000000000029, 0x8000000000458B10, 0xD000000000000028, 0x8000000000458B40, v10);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = v5[9];
  v7 = v5[8];
  v8 = v5[7];
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v3 + 88) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

void *CallingIntentConfirmationFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  v17 = direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse;
  v18 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v11 + v17, 1, 1, v18);
  *(v11 + direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm) = 0;
  outlined init with copy of SignalProviding(a3, v28);
  outlined init with copy of SignalProviding(a7, v27);
  outlined init with copy of SignalProviding(a9, v26);
  outlined init with copy of SignalProviding(a10, v25);
  outlined init with copy of SignalProviding(a11, v24);
  v19 = CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v28, a4, a5, a6, v27, a8, v26, v25, v24);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v19;
}

void CallingIntentConfirmationFlowStrategy.__ivar_destroyer()
{
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v1 = *(v0 + direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.parseConfirmationResponse(input:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 360) + **(**v3 + 360));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for CallingIntentConfirmationFlowStrategy(0, *(a3 + 264), *(a3 + 272), v10);
  *v9 = v4;
  v9[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)(a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 368) + **(**v3 + 368));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for CallingIntentConfirmationFlowStrategy(0, *(a4 + 264), *(a4 + 272), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v13 = type metadata accessor for CallingIntentConfirmationFlowStrategy(0, *(a4 + 264), *(a4 + 272), v12);
  *v11 = v5;
  v11[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for CallingIntentConfirmationFlowStrategy(0, *(a3 + 264), *(a3 + 272), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for CallingIntentConfirmationFlowStrategy(0, *(a3 + 264), *(a3 + 272), v10);
  *v9 = v4;
  v9[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v11, a4);
}

uint64_t protocol witness for NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 376) + **(**v4 + 376));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for CallingIntentConfirmationFlowStrategy(0, *(a5 + 264), *(a5 + 272), v14);
  *v13 = v6;
  v13[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v15, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CallingIntentConfirmationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v17 = type metadata accessor for CallingIntentConfirmationFlowStrategy(0, *(a6 + 264), *(a6 + 272), v16);
  *v15 = v7;
  v15[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v17, a7);
}

PhoneCallFlowDelegatePlugin::PhoneCallSlotNames specialized static PhoneCallNLContextProvider.makeGenericConfirmationContextFor(parameter:)(uint64_t a1, void *a2)
{
  result = _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  if (a2)
  {

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    result = PhoneCallSlotNames.init(rawValue:)(v5).value;
    if ((result & 0xFE) == 4)
    {
      _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
      return NLContextUpdate.nluSystemDialogActs.setter();
    }
  }

  return result;
}

uint64_t outlined assign with take of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s11SiriKitFlow20ConfirmationResponseOACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for CallingIntentConfirmationFlowStrategy(uint64_t a1)
{
  type metadata accessor for ConfirmationResponse?(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata accessor for ConfirmationResponse?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ConfirmationResponse?)
  {
    type metadata accessor for ConfirmationResponse();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ConfirmationResponse?);
    }
  }
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized Array.count.getter(a3);
  OUTLINED_FUNCTION_131();
  while (v6 != v7)
  {
    if (v4)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_107();
    v13(v11, v12);
    if (v3)
    {

      return;
    }

    if (v15)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_95();
      if (v14)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    ++v7;
  }
}

{
  specialized Array.count.getter(a3);
  OUTLINED_FUNCTION_131();
  while (v6 != v7)
  {
    if (v4)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_107();
    v10(v8, v9);
    if (v3)
    {

      return;
    }

    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_95();
      if (v11)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    ++v7;
  }
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  OUTLINED_FUNCTION_21(v6);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v8 = OUTLINED_FUNCTION_126_0();
  v31 = type metadata accessor for PhoneRRTarget(v8);
  OUTLINED_FUNCTION_7();
  v28 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_76_2(v11, v26);
  __chkstk_darwin(v12);
  v27 = &v26 - v13;
  result = specialized Array.count.getter(a3);
  v15 = result;
  v16 = 0;
  v33 = a3 & 0xC000000000000001;
  v17 = a3 & 0xFFFFFFFFFFFFFF8;
  v18 = _swiftEmptyArrayStorage;
  v29 = a3;
  while (1)
  {
    if (v15 == v16)
    {
      return v18;
    }

    if (v33)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = result;
    }

    else
    {
      if (v16 >= *(v17 + 16))
      {
        goto LABEL_20;
      }

      v19 = *(a3 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      break;
    }

    v34 = v19;
    v32(&v34);
    if (v3)
    {

      return v18;
    }

    if (__swift_getEnumTagSinglePayload(v4, 1, v31) == 1)
    {
      result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
    }

    else
    {
      v20 = v27;
      outlined init with take of PhoneRRTarget(v4, v27);
      outlined init with take of PhoneRRTarget(v20, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v24;
      }

      v21 = v18[2];
      if (v21 >= v18[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v25;
      }

      v18[2] = v21 + 1;
      OUTLINED_FUNCTION_19_1();
      result = outlined init with take of PhoneRRTarget(v30, v18 + v22 + *(v23 + 72) * v21);
      a3 = v29;
    }

    ++v16;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_126_0();
  v9 = type metadata accessor for RRResult();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_76_2(v13, v27);
  __chkstk_darwin(v14);
  v28 = &v27 - v15;
  result = specialized Array.count.getter(a3);
  v17 = 0;
  v35 = a3 & 0xC000000000000001;
  v36 = result;
  v34 = a3 & 0xFFFFFFFFFFFFFF8;
  v29 = v11;
  v32 = (v11 + 32);
  v18 = _swiftEmptyArrayStorage;
  v30 = a1;
  v31 = a3;
  while (1)
  {
    if (v36 == v17)
    {
      return v18;
    }

    if (v35)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = result;
    }

    else
    {
      if (v17 >= *(v34 + 16))
      {
        goto LABEL_20;
      }

      v19 = *(a3 + 8 * v17 + 32);
    }

    if (__OFADD__(v17, 1))
    {
      break;
    }

    v37 = v19;
    a1(&v37);
    if (v3)
    {

      return v18;
    }

    if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
    {
      result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
    }

    else
    {
      v20 = *v32;
      v21 = v28;
      (*v32)(v28, v4, v9);
      v20(v33, v21, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v25;
      }

      v22 = v18[2];
      if (v22 >= v18[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v26;
      }

      v18[2] = v22 + 1;
      OUTLINED_FUNCTION_19_1();
      result = (v20)(v18 + v23 + *(v24 + 72) * v22, v33, v9);
      a1 = v30;
      a3 = v31;
    }

    ++v17;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

PhoneCallFlowDelegatePlugin::EmergencyType_optional __swiftcall EmergencyType.init(for:)(Swift::OpaquePointer a1)
{
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(a1._rawValue);
  if (v2)
  {

    return 0;
  }

  else
  {
    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(a1._rawValue);
    v5 = v4;

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t EmergencyType.description.getter(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x6C61636F6CLL;
  }

  else
  {
    v2 = 0x6E676965726F66;
  }

  if (v1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  return 46;
}

uint64_t EmergencyType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C61636F6CLL;
  }

  else
  {
    return 0x6E676965726F66;
  }
}

PhoneCallFlowDelegatePlugin::EmergencyType_optional __swiftcall EmergencyType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EmergencyType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_EmergencyType_local;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_EmergencyType_unknownDefault;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::EmergencyType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance EmergencyType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::EmergencyType_optional *a2@<X8>)
{
  result.value = EmergencyType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EmergencyType@<X0>(uint64_t *a1@<X8>)
{
  result = EmergencyType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate : <A>CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void key path setter for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson : <A>CallingIntentContactNeedsDisambiguationFlowStrategy<A>(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson.getter(uint64_t a1)
{
  v2 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
  OUTLINED_FUNCTION_146(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void CallingIntentContactNeedsDisambiguationFlowStrategy.actionForInput(_:resolveRecord:)(uint64_t a1)
{
  v116 = *v1;
  v118 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v117 = v3;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
  (*(v10 + 16))(v14, a1, v8);
  v119 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000000458B70, &v122);
    *(v18 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v10 + 8))(v14, v8);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v122);
    OUTLINED_FUNCTION_109();

    *(v18 + 14) = v19;
    _os_log_impl(&dword_0, v16, v17, "#CallingIntentContactNeedsDisambiguationFlowStrategy %s input: %s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_26_0(v18);
  }

  else
  {

    v22 = (*(v10 + 8))(v14, v8);
  }

  v23 = v120;
  v24 = (*v120 + 320);
  v25 = *v24;
  v26 = (*v24)(v22);
  outlined init with copy of SignalProviding(v120 + 264, &v123);
  outlined init with copy of SignalProviding(v120 + 24, &v124);
  v122 = v26;
  Input.parse.getter();
  v27 = ContactDisambiguationPromptResponseParser.parseDisambiguationResponse(from:)(v7);
  v29 = v28;
  (*(v117 + 8))(v7, v118);
  v30 = outlined destroy of ContactDisambiguationPromptResponseParser(&v122);
  switch(v29)
  {
    case 0u:
      switch(v27)
      {
        case 0:
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_10_0(v100))
          {
            v101 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_103(v101);
            OUTLINED_FUNCTION_44(&dword_0, v102, v103, "#CallingIntentContactNeedsDisambiguationFlowStrategy user said yes to options");
            OUTLINED_FUNCTION_52();
          }

          *(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 1;
          goto LABEL_58;
        case 1:
        case 2:
          OUTLINED_FUNCTION_43_9();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_89(AssociatedTypeWitness);
          v32 = ParameterResolutionRecord.intent.getter();
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (!v33)
          {
            goto LABEL_60;
          }

          v34 = [v33 isGroupCall];
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v35.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
          isa = v35.super.super.isa;
          if (v34)
          {
            OUTLINED_FUNCTION_117_0();
            v37 = static NSObject.== infix(_:_:)();

            if (v37)
            {
              v38 = Logger.logObject.getter();
              v39 = static os_log_type_t.debug.getter();
              if (OUTLINED_FUNCTION_10_0(v39))
              {
                v40 = OUTLINED_FUNCTION_65_0();
                OUTLINED_FUNCTION_102(v40);
                _os_log_impl(&dword_0, v38, v119, "#CallingIntentContactNeedsDisambiguationFlowStrategy user said no, but this is a GFT call, so remove the contact and proceed.", isa, 2u);
                OUTLINED_FUNCTION_35();
              }

              static ActionForInput.handle()();
              goto LABEL_63;
            }
          }

          else
          {
          }

LABEL_60:

          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_10_0(v112))
          {
            v113 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_103(v113);
            OUTLINED_FUNCTION_44(&dword_0, v114, v115, "#CallingIntentContactNeedsDisambiguationFlowStrategy Intent cancelled");
            OUTLINED_FUNCTION_52();
          }

          static ActionForInput.cancel()();
LABEL_63:
          v84 = v27;
          v85 = 0;
          break;
        case 5:
        case 6:
          goto LABEL_18;
        case 7:
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_10_0(v105))
          {
            v106 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_103(v106);
            OUTLINED_FUNCTION_44(&dword_0, v107, v108, "#CallingIntentContactNeedsDisambiguationFlowStrategy intent resetting context");
            OUTLINED_FUNCTION_52();
          }

          v109 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
          OUTLINED_FUNCTION_114_1(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson);
          v110 = *(v120 + v109);
          *(v120 + v109) = 0;

          *(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 1;
LABEL_58:
          static ActionForInput.handle()();
          goto LABEL_63;
        default:
          goto LABEL_14;
      }

      goto LABEL_64;
    case 1u:
      v121 = v27;
      outlined copy of ContactDisambiguationPromptResponse(v27, 1u);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
      swift_dynamicCast();
      v69 = v122;
      v70 = v122;
      goto LABEL_31;
    case 2u:
      if (v27 < 0 || (v49 = v25(v30), specialized Array.count.getter(v49), OUTLINED_FUNCTION_40_0(), v50 = , v27 >= v120))
      {
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = OUTLINED_FUNCTION_42();
          v121 = v27;
          v122 = OUTLINED_FUNCTION_36();
          *v88 = 136315138;
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v122);

          *(v88 + 4) = v91;
          v23 = v120;
          _os_log_impl(&dword_0, v86, v87, "#CallingIntentContactNeedsDisambiguationFlowStrategy selectedIndex: %s is out of bounds", v88, 0xCu);
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_52();
        }
      }

      else
      {
        v51 = v25(v50);
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v27, (v51 & 0xC000000000000001) == 0, v51);
        if ((v51 & 0xC000000000000001) != 0)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v52 = *(v51 + 8 * v27 + 32);
        }

        v53 = v52;

        v54 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
        OUTLINED_FUNCTION_114_1(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson);
        v55 = *(v120 + v54);
        *(v120 + v54) = v53;

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v121 = v59;
          *v58 = 136315394;
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v121);

          *(v58 + 4) = v62;
          *(v58 + 12) = 2080;
          (*(*v120 + 344))(v63);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
          v64 = String.init<A>(describing:)();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v121);

          *(v58 + 14) = v66;
          _os_log_impl(&dword_0, v56, v57, "#CallingIntentContactNeedsDisambiguationFlowStrategy selectedIndex: %s. selectedPerson:%s", v58, 0x16u);
          swift_arrayDestroy();
          v67 = v59;
          v23 = v120;
          OUTLINED_FUNCTION_26_0(v67);
          OUTLINED_FUNCTION_26_0(v58);
        }
      }

      v92 = (*(*v23 + 344))(v68);
      if (v92)
      {

        static ActionForInput.handle()();
      }

      else
      {
        static ActionForInput.ignore()();
      }

      v84 = v27;
      v85 = 2;
      goto LABEL_64;
    case 3u:
      v69 = v27;
      v70 = v27;
LABEL_31:
      v71 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson;
      OUTLINED_FUNCTION_114_1(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson);
      v72 = *(v120 + v71);
      *(v120 + v71) = v70;
      v73 = v69;

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_42();
        v77 = OUTLINED_FUNCTION_36();
        v121 = v77;
        *v76 = 136315138;
        (*(*v120 + 344))(v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
        v78 = String.init<A>(describing:)();
        v80 = v27;
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v121);

        *(v76 + 4) = v81;
        v27 = v80;

        _os_log_impl(&dword_0, v74, v75, "#CallingIntentContactNeedsDisambiguationFlowStrategy selectedPerson: %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_26_0(v76);
      }

      else
      {
      }

      v83 = (*(*v120 + 344))(v82);
      if (!v83)
      {
        goto LABEL_36;
      }

      static ActionForInput.handle()();
      goto LABEL_37;
    case 4u:
      if (!v27)
      {
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v94))
        {
          v95 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v95);
          OUTLINED_FUNCTION_77_3(&dword_0, v93, v119, "#CallingIntentContactNeedsDisambiguationFlowStrategy selectedNonMatchingLabel: reprompting…");
          OUTLINED_FUNCTION_12_3();
        }

        *(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 1;
        static ActionForInput.handle()();
        v84 = 0;
        goto LABEL_51;
      }

      if (v27 != 1)
      {
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v97))
        {
          v98 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v98);
          OUTLINED_FUNCTION_77_3(&dword_0, v96, v119, "#CallingIntentContactNeedsDisambiguationFlowStrategy intent belongs to this task, but no contact selected, reprompting…");
          OUTLINED_FUNCTION_12_3();
        }

        *(v120 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 1;
        static ActionForInput.handle()();
        v84 = &dword_0 + 2;
LABEL_51:
        v85 = 4;
        goto LABEL_64;
      }

LABEL_18:
      v41 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v47))
      {
        v48 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v48);
        v46 = "#CallingIntentContactNeedsDisambiguationFlowStrategy intent does not belong to this task, ignoring…";
LABEL_20:
        OUTLINED_FUNCTION_44(&dword_0, v44, v45, v46);
        OUTLINED_FUNCTION_52();
      }

LABEL_21:

LABEL_36:
      static ActionForInput.ignore()();
LABEL_37:
      v84 = v27;
      v85 = v29;
LABEL_64:
      outlined consume of ContactDisambiguationPromptResponse?(v84, v85);
      return;
    default:
LABEL_14:
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_10_0(v42))
      {
        goto LABEL_21;
      }

      v43 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v43);
      v46 = "#CallingIntentContactNeedsDisambiguationFlowStrategy Coudln't parse response at disambiguation, ignoring…";
      goto LABEL_20;
  }
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.updateForConfirmedContact(selectedIndex:confirmedContact:currentContacts:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
  if (a3 && specialized Array.count.getter(a3))
  {
    v37 = a3;

    v5 = a3;
  }

  if (specialized Array.count.getter(v5) <= a1)
  {
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_17:
      v15 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v17))
      {
        v18 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v18);
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        OUTLINED_FUNCTION_35();
      }

      v24 = a2;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v37;
      goto LABEL_22;
    }

LABEL_28:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_17;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_42();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    OUTLINED_FUNCTION_115(&dword_0, v11, v9, "#CallingIntentContactNeedsDisambiguationFlowStrategy updateForDisambiguatedContact: Updating confirmed contact at selectedIndex=%ld");
    OUTLINED_FUNCTION_26_0(v10);
  }

  v12 = a2;
  OUTLINED_FUNCTION_5();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v5 = result;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
    __break(1u);
    return result;
  }

  v14 = *(&stru_20.cmd + 8 * a1 + (v5 & 0xFFFFFFFFFFFFFF8));
  *(&stru_20.cmd + 8 * a1 + (v5 & 0xFFFFFFFFFFFFFF8)) = v8;

  v37 = v5;
LABEL_22:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = _typeName(_:qualified:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v36);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);

    v32 = Array.description.getter();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v36);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_0, v26, v27, "#%s updated contacts : %s)", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_52();
  }

  return v5;
}

unint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.updateForRejectedContact(selectedIndex:currentContacts:)(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

  if (!(a2 >> 62))
  {
    if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_18:

    return v3;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_18;
  }

LABEL_4:
  v5 = specialized Array.count.getter(v3);
  v6 = one-time initialization token for siriPhone;
  if (v5 <= a1)
  {
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_15:
      v20 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_42();
        v32 = OUTLINED_FUNCTION_83();
        *v2 = 136315138;
        v23 = _typeName(_:qualified:)();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v32);

        *(v2 + 4) = v25;
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_35();
      }

      goto LABEL_18;
    }

LABEL_23:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_15;
  }

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);

  v8 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v2))
  {
    v9 = OUTLINED_FUNCTION_42();
    v10 = OUTLINED_FUNCTION_36();
    v32 = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v32);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v8, v2, "#%s contact was not confirmed. Removing from the list.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_14_0();
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v3 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()();
  }

  v15 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v15 <= a1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15 - 1;
  v17 = v15 - 1 - a1;
  v18 = ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32);
  v19 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v18 + 8, v17, v18);
  *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v16;

  return v3;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_27();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  type metadata accessor for SiriKitDisambiguationListAdapter();
  OUTLINED_FUNCTION_63_0();
  *v2 = v3;
  v2[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_84_0();

  return withCheckedContinuation<A>(isolation:function:_:)(v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, uint64_t *a2)
{
  v28 = a1;
  v3 = *a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMd, &_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMR);
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v20 - v5;
  v6 = type metadata accessor for ParameterIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2[2];
  v23 = *(v3 + 272);
  v24 = *(*(v23 + 8) + 16);
  v10 = *(v3 + 264);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v22 = ParameterResolutionRecord.app.getter();
  v21 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v11 = ParameterIdentifier.name.getter();
  v20[0] = v12;
  v20[1] = v11;
  (*(v7 + 8))(v9, v6);
  v13 = ParameterResolutionRecord.result.getter();
  v15 = v25;
  v14 = v26;
  (*(v4 + 16))(v25, v28, v26);
  v16 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 2) = v10;
  *(v17 + 3) = v18;
  *(v17 + 4) = a2;
  (*(v4 + 32))(&v17[v16], v15, v14);

  v19 = v21;
  dispatch thunk of RCHFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)();
}

uint64_t closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UnlockDevicePolicy();
  __chkstk_darwin(v3 - 8);
  v4 = a2[6];
  v5 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v4);
  v6 = (*(v5 + 8))(v8, v4, v5);
  (*(*a2 + 312))(v6);
  type metadata accessor for SiriKitDisambiguationListAdapter();
  swift_allocObject();

  v8[0] = SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:authenticationPolicy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMd, &_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[51] = v2;
  v1[52] = v0;
  v1[49] = v3;
  v1[50] = v4;
  v5 = type metadata accessor for ParameterIdentifier();
  v1[53] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[54] = v6;
  v1[55] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for Parse();
  v1[56] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[57] = v8;
  v1[58] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  v1[59] = *(v9 + 272);
  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_49_1();
  v1[60] = *(v10 + 264);
  v1[61] = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for IntentPromptAnswer();
  v1[62] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[63] = v12;
  v1[64] = OUTLINED_FUNCTION_62_4();
  v1[65] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_27();

  outlined destroy of PhoneCallDirectInvocationNLIntent(v0 + 16);
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_8_1();

  return v1();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t (**a12)(void), uint64_t (*a13)(void), uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_79_1();
  a27 = v30;
  a28 = v31;
  OUTLINED_FUNCTION_101();
  a26 = v28;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Logger.siriPhone);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v35))
  {
    OUTLINED_FUNCTION_42();
    *&a15 = OUTLINED_FUNCTION_83();
    *v29 = 136315138;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x8000000000458BD0, &a15);
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  if (*(*(v28 + 416) + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) == 1)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v42))
    {
      v43 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v43);
      OUTLINED_FUNCTION_14_1(&dword_0, v44, v45, "#CallingIntentContactNeedsDisambiguationFlowStrategy clearing context (clearing all existing selected contacts) so we can start over...");
      OUTLINED_FUNCTION_12_3();
    }

    type metadata accessor for ParameterResolutionRecord();
    v46 = ParameterResolutionRecord.intent.getter();
    *(v28 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    *(v28 + 360) = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_118();
    NSObject.update(with:at:)((v28 + 360), v47, 0xE800000000000000);

    __swift_destroy_boxed_opaque_existential_1((v28 + 360));
    CallingIntentContactNeedsDisambiguationFlowStrategy.resetStates()();
    a15 = 0u;
    a16 = 0u;
    v48 = ParameterResolutionRecord.intent.getter();
    OUTLINED_FUNCTION_148(v48, v49, v50, v51, v52, v53, v54);
    OUTLINED_FUNCTION_55();
    static DisambiguationResult.chosenItem(_:)();
    v55 = OUTLINED_FUNCTION_55();
    v56(v55);
    goto LABEL_46;
  }

  a11 = v33;
  OUTLINED_FUNCTION_2_0();
  v57 += 43;
  v58 = *v57;
  v59 = v57;
  v60 = (*v57)();
  a12 = v59;
  a13 = v58;
  if (v60)
  {
    a10 = v60;
    v61 = *(v28 + 464);
    v62 = *(v28 + 416);
    v63 = v62[7];
    __swift_project_boxed_opaque_existential_1(v62 + 3, v62[6]);
    v64 = OUTLINED_FUNCTION_109();
    v66 = v65(v64, v63);
    Input.parse.getter();
    (*(*v66 + 192))(v61);

    v67 = OUTLINED_FUNCTION_123();
    v68(v67);
    if (*(v28 + 312))
    {
      outlined init with take of SPHConversation((v28 + 288), v28 + 248);
      v58 = a13;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v62 + 3, v62[6]);
      v69 = OUTLINED_FUNCTION_123();
      v71 = v70(v69);
      (*(*v71 + 152))(v71);

      if (*(v28 + 152))
      {
        _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v28 + 168, v28 + 248, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        outlined destroy of TransformationResult(v28 + 120);
      }

      else
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28 + 120, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
        *(v28 + 248) = 0u;
        *(v28 + 264) = 0u;
        *(v28 + 280) = 0;
      }

      v58 = a13;
      if (*(v28 + 312))
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28 + 288, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      }
    }

    if (*(v28 + 272))
    {
      outlined init with take of SPHConversation((v28 + 248), v28 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_426260;
      *(v72 + 32) = a10;
      v73 = one-time initialization token for instance;
      v74 = a10;
      if (v73 != -1)
      {
        OUTLINED_FUNCTION_60_2(&one-time initialization token for instance);
      }

      _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(v62 + 3, v72, (v28 + 208), 0, static EligibleAppFinder.instance);

      __swift_destroy_boxed_opaque_existential_1((v28 + 208));
    }

    else
    {

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28 + 248, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }
  }

  v75 = *(v28 + 432);
  v76 = *(v28 + 440);
  v77 = *(v28 + 424);
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v78 = ParameterIdentifier.multicardinalIndex.getter();
  v80 = v79;
  v81 = (*(v75 + 8))(v76, v77);
  if (v80)
  {
    v82 = 0;
  }

  else
  {
    v82 = v78;
  }

  v83 = (v58)(v81);
  *(v28 + 528) = v83;
  if (!v83)
  {
LABEL_33:
    if ((*(*(v28 + 416) + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) & 1) == 0)
    {
      v91 = v58();
      if (v91)
      {
        v92 = v91;
        v93 = v91;
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = OUTLINED_FUNCTION_42();
          v97 = swift_slowAlloc();
          *v96 = 138412290;
          *(v96 + 4) = v93;
          *v97 = v92;
          v98 = v93;
          _os_log_impl(&dword_0, v94, v95, "#CallingIntentContactNeedsDisambiguationFlowStrategy parseDisambiguationResult confirmed contact: %@", v96, 0xCu);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v97, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_26_0(v97);
          OUTLINED_FUNCTION_26_0(v96);
        }

        v99 = *(v28 + 488);

        v100 = ParameterResolutionRecord.intent.getter();
        OUTLINED_FUNCTION_130_0();
        swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_127_0();
        v102 = v101(v99);

        v103 = CallingIntentContactNeedsDisambiguationFlowStrategy.updateForConfirmedContact(selectedIndex:confirmedContact:currentContacts:)(v82, v93, v102);

        goto LABEL_39;
      }

      v104 = *(v28 + 488);
      v105 = ParameterResolutionRecord.intent.getter();
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_127_0();
      v107 = v106(v104);

      v103 = CallingIntentContactNeedsDisambiguationFlowStrategy.updateForRejectedContact(selectedIndex:currentContacts:)(v82, v107);

      if (v103)
      {
LABEL_39:

        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = OUTLINED_FUNCTION_42();
          v111 = OUTLINED_FUNCTION_36();
          *&a15 = v111;
          *v110 = 136315138;
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          v112 = Array.description.getter();
          v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, &a15);

          *(v110 + 4) = v114;
          _os_log_impl(&dword_0, v108, v109, "#CallingIntentContactNeedsDisambiguationFlowStrategy updated contacts: %s", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v111);
          OUTLINED_FUNCTION_26_0(v111);
          OUTLINED_FUNCTION_14_0();
        }

        v58 = a13;
        type metadata accessor for ContactResolution();
        v115 = static ContactResolution.dedupeContacts(contacts:)(v103);

        v116 = ParameterResolutionRecord.intent.getter();
        *(v28 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
        *(v28 + 328) = v115;
        OUTLINED_FUNCTION_118();
        NSObject.update(with:at:)((v28 + 328), v117, 0xE800000000000000);

        __swift_destroy_boxed_opaque_existential_1((v28 + 328));
      }
    }

    v118 = CallingIntentContactNeedsDisambiguationFlowStrategy.resetStates()();
    v119 = (v58)(v118);
    v120 = v119;
    if (v119)
    {
      v119 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    }

    else
    {
      *(&a15 + 1) = 0;
      *&a16 = 0;
    }

    *&a15 = v120;
    *(&a16 + 1) = v119;
    v121 = ParameterResolutionRecord.intent.getter();
    OUTLINED_FUNCTION_148(v121, v122, v123, v124, v125, v126, v127);
    OUTLINED_FUNCTION_117_0();
    static DisambiguationResult.chosenItem(_:)();
    v128 = OUTLINED_FUNCTION_117_0();
    v129(v128);
LABEL_46:
    OUTLINED_FUNCTION_144();

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_42_5();

    return v131(v130, v131, v132, v133, v134, v135, v136, v137, a9, a10, a11, a12, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, a18, a19, a20);
  }

  v84 = v83;
  if (INPerson.hasHandleValue.getter())
  {
    goto LABEL_32;
  }

  v85 = [v84 customIdentifier];
  if (v85)
  {
    v86 = v85;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0;
  }

  v90 = specialized Optional<A>.isNilOrEmpty.getter(v87, v89);

  if (!v90 || (INPerson.isEmergency.getter() & 1) != 0)
  {
LABEL_32:

    goto LABEL_33;
  }

  v139 = v82;
  v140 = v84;
  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = OUTLINED_FUNCTION_42();
    v144 = swift_slowAlloc();
    *v143 = 138412290;
    *(v143 + 4) = v140;
    *v144 = v84;
    v145 = v140;
    OUTLINED_FUNCTION_115(&dword_0, v146, v142, "#CallingIntentContactNeedsDisambiguationFlowStrategy with CRRHandleRecommendation for selectedPerson %@");
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v144, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v144);
    OUTLINED_FUNCTION_26_0(v143);
  }

  v153 = *(v28 + 408);

  *(v28 + 48) = 0;
  *(v28 + 32) = 0u;
  *(v28 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  OUTLINED_FUNCTION_88();
  v147 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_13_2(v147);
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_424FD0;
  INPerson.toContactQuery()();
  *(v28 + 56) = _swiftEmptyArrayStorage;
  *(v28 + 64) = 2;
  *(v28 + 72) = 0;
  *(v28 + 80) = 0x1123030905050204;
  *(v28 + 88) = 518;
  *(v28 + 96) = _swiftEmptyArrayStorage;
  *(v28 + 104) = v148;
  *(v28 + 112) = _swiftEmptyArrayStorage;
  v149 = swift_task_alloc();
  *(v28 + 536) = v149;
  v149[1] = vextq_s8(v153, v153, 8uLL);
  v149[2].i64[0] = v28 + 16;
  v149[2].i64[1] = v139;
  v150 = swift_task_alloc();
  *(v28 + 544) = v150;
  type metadata accessor for DisambiguationResult();
  *v150 = v28;
  v150[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:);
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_42_5();

  return withCheckedContinuation<A>(isolation:function:_:)(v151);
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v20 = a1;
  v7 = *a2;
  v21 = *(*a2 + 272);
  v8 = *(v7 + 264);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentPromptAnswer();
  type metadata accessor for DisambiguationResult();
  v9 = type metadata accessor for CheckedContinuation();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  type metadata accessor for ParameterResolutionRecord();
  v13 = ParameterResolutionRecord.intent.getter();
  v23[3] = &type metadata for PhoneCallDirectInvocationNLIntent;
  v23[4] = &protocol witness table for PhoneCallDirectInvocationNLIntent;
  v23[0] = swift_allocObject();
  outlined init with copy of PhoneCallDirectInvocationNLIntent(a4, v23[0] + 16);
  v14 = ParameterResolutionRecord.app.getter();
  (*(v10 + 16))(v12, v20, v9);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 2) = v8;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  (*(v10 + 32))(&v16[v15], v12, v9);
  v18 = *(*a2 + 248);

  v18(v13, v23, v14, v22, partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:), v16);

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(void *a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for IntentPromptAnswer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = type metadata accessor for DisambiguationResult();
  __chkstk_darwin(v8);
  v19[1] = v19 - v9;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19[0] = v4;
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#CallingIntentContactNeedsDisambiguationFlowStrategy updated contact slot", v13, 2u);
    v4 = v19[0];
  }

  v14 = CallingIntentContactNeedsDisambiguationFlowStrategy.resetStates()();
  v15 = (*(*a2 + 344))(v14);
  v16 = v15;
  if (v15)
  {
    v15 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  }

  else
  {
    v19[3] = 0;
    v19[4] = 0;
  }

  v19[2] = v16;
  v19[5] = v15;
  v17 = a1;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();
  static DisambiguationResult.chosenItem(_:)();
  (*(v5 + 8))(v7, v4);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(returning:)();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[25] = *v0;
  v5 = type metadata accessor for PhoneError(0);
  v1[26] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[27] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for ParameterIdentifier();
  v1[28] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[29] = v7;
  v1[30] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[31] = v8;
  OUTLINED_FUNCTION_21(v8);
  v1[32] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for SiriKitDisambiguationItemPair();
  v1[33] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[34] = v10;
  v1[35] = OUTLINED_FUNCTION_62_4();
  v1[36] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_91_1();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_76_1();
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(*(v2 + 320));
  if ((v3 & 1) == 0)
  {
    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(*(v2 + 320));
    if ((v4 & 1) == 0)
    {
      Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v13))
      {
        v14 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v14);
        OUTLINED_FUNCTION_14_1(&dword_0, v15, v16, "#CallingIntentContactNeedsDisambiguationFlowStrategy making disambiguation output for non emergency.");
        OUTLINED_FUNCTION_12_3();
      }

      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_43_9();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_89(AssociatedTypeWitness);
      *(v2 + 376) = ParameterResolutionRecord.app.getter();
      v18 = ParameterResolutionRecord.intent.getter();
      OUTLINED_FUNCTION_140(v18);
      v19 = ParameterIdentifier.name.getter();
      v21 = OUTLINED_FUNCTION_85_0(v19, v20);
      v22(v21);
      *(v2 + 400) = ParameterResolutionRecord.result.getter();
      v23 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
      v24 = OUTLINED_FUNCTION_40_0();
      v25(v24, v23);
      *(v2 + 88) = 0;
      *(v2 + 72) = 0u;
      *(v2 + 56) = 0u;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v2 + 408) = v26;
      *v26 = v27;
      OUTLINED_FUNCTION_25_7(v26);
      OUTLINED_FUNCTION_31_0();

      __asm { BRAA            X8, X16 }
    }
  }

  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v7);
    OUTLINED_FUNCTION_77_3(&dword_0, v5, v0, "#CallingIntentContactNeedsDisambiguationFlowStrategy making disambiguation output for emergency.");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_43_9();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(v8);
  v9 = ParameterResolutionRecord.app.getter();
  *(v2 + 352) = OUTLINED_FUNCTION_141(v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 360) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_33_8(v10);

  return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 368) = v0;

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_150();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 416) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 384);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3 + 56, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_76_1();
  v3 = *(v2 + 256);
  v4 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(*(v2 + 320));
  if ((v5 & 1) == 0)
  {
    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(*(v2 + 320));
    if ((v6 & 1) == 0)
    {
      Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v15))
      {
        v16 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v16);
        OUTLINED_FUNCTION_14_1(&dword_0, v17, v18, "#CallingIntentContactNeedsDisambiguationFlowStrategy making disambiguation output for non emergency.");
        OUTLINED_FUNCTION_12_3();
      }

      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_43_9();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_89(AssociatedTypeWitness);
      *(v2 + 376) = ParameterResolutionRecord.app.getter();
      v20 = ParameterResolutionRecord.intent.getter();
      OUTLINED_FUNCTION_140(v20);
      v21 = ParameterIdentifier.name.getter();
      v23 = OUTLINED_FUNCTION_85_0(v21, v22);
      v24(v23);
      *(v2 + 400) = ParameterResolutionRecord.result.getter();
      v25 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
      v26 = OUTLINED_FUNCTION_40_0();
      v27(v26, v25);
      *(v2 + 88) = 0;
      *(v2 + 72) = 0u;
      *(v2 + 56) = 0u;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v2 + 408) = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_25_7(v28);
      OUTLINED_FUNCTION_31_0();

      __asm { BRAA            X8, X16 }
    }
  }

  v7 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v9);
    OUTLINED_FUNCTION_77_3(&dword_0, v7, v0, "#CallingIntentContactNeedsDisambiguationFlowStrategy making disambiguation output for emergency.");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_43_9();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(v10);
  v11 = ParameterResolutionRecord.app.getter();
  *(v2 + 352) = OUTLINED_FUNCTION_141(v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 360) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_33_8(v12);

  return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_150();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_78_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v0[20] = v0[52];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_19_0();
  if (swift_dynamicCast())
  {
    v1 = v0[27];
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      OUTLINED_FUNCTION_2_32();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v1, v2);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[53] = v3;
      *v3 = v4;
      v3[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
      OUTLINED_FUNCTION_65_1();

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)();
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[32], &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

    OUTLINED_FUNCTION_2_32();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v1, v7);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[32], &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }

  OUTLINED_FUNCTION_78_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 432) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_150();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_8_1();

  return v1();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_150();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_78_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_136();
  a27 = v30;
  a28 = v31;
  a26 = v29;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v32 = type metadata accessor for Logger();
  *(v29 + 296) = __swift_project_value_buffer(v32, static Logger.siriPhone);
  v33 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v35);
    OUTLINED_FUNCTION_77_3(&dword_0, v33, v28, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForDisambiguation");
    OUTLINED_FUNCTION_12_3();
  }

  *(v29 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMd, &_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMR);
  v36 = PaginatedItemContainer.items.getter();
  a16 = _swiftEmptyArrayStorage;
  v37 = *(v36 + 16);
  if (v37)
  {
    a10 = v36;
    v38 = *(v29 + 272);
    v41 = *(v38 + 16);
    v39 = v38 + 16;
    v40 = v41;
    OUTLINED_FUNCTION_19_1();
    v44 = v42 + v43;
    v45 = *(v39 + 56);
    v46 = _swiftEmptyArrayStorage;
    do
    {
      v47 = *(v29 + 288);
      v48 = *(v29 + 264);
      v40(v47, v44, v48);
      SiriKitDisambiguationItemPair.rawItem.getter();
      (*(v39 - 8))(v47, v48);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      if ((swift_dynamicCast() & 1) != 0 && *(v29 + 152))
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_95();
        if (v49)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_130_0();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v46 = a16;
      }

      v44 += v45;
      --v37;
    }

    while (v37);
  }

  else
  {

    v46 = _swiftEmptyArrayStorage;
  }

  v50 = *(v29 + 192);
  v51 = direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate;
  swift_beginAccess();
  *(v50 + v51) = v46;

  v52 = PaginatedItemContainer.items.getter();
  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = *(v29 + 272);
    a16 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v57 = *(v54 + 16);
    v55 = v54 + 16;
    v56 = v57;
    OUTLINED_FUNCTION_19_1();
    v59 = v52 + v58;
    v60 = *(v55 + 56);
    do
    {
      v61 = *(v29 + 280);
      v62 = *(v29 + 264);
      v56(v61, v59, v62);
      SiriKitDisambiguationItemPair.formattedItem.getter();
      (*(v55 - 8))(v61, v62);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_123();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v59 += v60;
      --v53;
    }

    while (v53);
  }

  OUTLINED_FUNCTION_2_0();
  v63 += 40;
  v64 = *v63;
  v65 = (*v63)();

  (v64)(v66);
  specialized _arrayForceCast<A, B>(_:)();

  if (specialized Array.count.getter(v65) <= 5)
  {

    goto LABEL_21;
  }

  v67 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v65);

  if (v67)
  {
LABEL_21:
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v65);

    goto LABEL_22;
  }

LABEL_22:
  type metadata accessor for SiriKitDisambiguationList();
  swift_allocObject();
  OUTLINED_FUNCTION_0();
  *(v29 + 312) = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
  v28 = v64();
  v68 = specialized Array.count.getter(v28);
  for (i = 0; ; ++i)
  {
    *(v29 + 320) = _swiftEmptyArrayStorage;
    if (v68 == i)
    {
      break;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_38;
      }

      v70 = *(v28 + 8 * i + 32);
    }

    v71 = v70;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    a15 = v70;
    closure #3 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(*(v29 + 192), &a16);

    if (a16)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v85 = *(v29 + 184);

  v72 = swift_task_alloc();
  *(v29 + 328) = v72;
  v72[1] = vextq_s8(v85, v85, 8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v29 + 336) = v73;
  *v73 = v74;
  v73[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_21_7();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, v85.i64[0], v85.i64[1], a13, _swiftEmptyArrayStorage, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #3 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = INPerson.mutableCopyOrCrash()().super.isa;
  v9 = a1[6];
  v10 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v9);
  (*(v10 + 8))(v14, v9, v10);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v11 = INPerson.withTranslatedHandleLabel(locale:)();

  (*(v5 + 8))(v7, v4);
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a2 = v11;
  return result;
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_27();
  v1[221] = v0;
  v1[215] = v2;
  v1[209] = v3;
  v1[203] = v4;
  v5 = type metadata accessor for PhoneError(0);
  v1[222] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[223] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for NLContextUpdate();
  v1[224] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[225] = v7;
  v1[226] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for TemplatingResult();
  v1[227] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[228] = v9;
  v1[229] = swift_task_alloc();
  v1[230] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();
  v1[231] = *(v10 + 272);
  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_49_1();
  v1[232] = *(v11 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = OUTLINED_FUNCTION_89(AssociatedTypeWitness);
  v1[233] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[234] = v14;
  v1[235] = *(v15 + 64);
  v1[236] = OUTLINED_FUNCTION_62_4();
  v1[237] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1[238] = v16;
  OUTLINED_FUNCTION_21(v16);
  v1[239] = OUTLINED_FUNCTION_62_4();
  v1[240] = swift_task_alloc();
  v1[241] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 1952) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v15 = v0[237];
  v18 = v0[236];
  v1 = v0[235];
  v2 = v0[234];
  v3 = v0[233];
  v4 = v0[232];
  v5 = v0[231];
  v6 = v0[221];
  v19 = v0[215];
  v7 = v0[209];
  v0[245] = v0[197];
  v16 = *(v2 + 16);
  v17 = v7;
  v16();
  v8 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[246] = v9;
  *(v9 + 2) = v4;
  *(v9 + 3) = v5;
  *(v9 + 4) = v6;
  v10 = *(v2 + 32);
  v10(&v9[v8], v15, v3);

  swift_asyncLet_begin();
  (v16)(v18, v17, v3);
  v11 = swift_allocObject();
  v0[247] = v11;
  *(v11 + 2) = v4;
  *(v11 + 3) = v5;
  *(v11 + 4) = v6;
  v10(&v11[v8], v18, v3);
  *&v11[(v8 + v1 + 7) & 0xFFFFFFFFFFFFFFF8] = v19;

  swift_asyncLet_begin();
  OUTLINED_FUNCTION_138();

  return _swift_asyncLet_get(v12);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[240];
  v2 = v0[224];
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v0[241], v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[240];
    v4 = v0[223];

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_21();
    v7 = lazy protocol witness table accessor for type Input and conformance Input(v5, v6, &protocol conformance descriptor for PhoneError);
    v0[250] = OUTLINED_FUNCTION_147(v7);
    PhoneError.logged()(v8);
    OUTLINED_FUNCTION_2_32();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v4, v9);
    swift_willThrow();
    v10 = OUTLINED_FUNCTION_61_8();

    return _swift_asyncLet_finish(v10, v11, v12, v0 + 172);
  }

  else
  {
    (*(v0[225] + 32))(v0[226], v0[240], v0[224]);
    v13 = [objc_allocWithZone(SAAceConfirmationContext) init];
    v0[248] = v13;
    [v13 setReason:SAAceConfirmationReasonCONFIRM_CONTACTValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_426260;
    *(v14 + 32) = v13;
    v15 = v13;
    NLContextUpdate.conversationStateAttachments.setter();
    v16 = OUTLINED_FUNCTION_61_8();

    return _swift_asyncLet_get_throwing(v16, v17, v18, v0 + 192);
  }
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 1992) = v0;
  if (v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v2, v3, v4);
}

{
  v25 = *(v0 + 1984);
  v1 = *(v0 + 1912);
  v2 = *(v0 + 1824);
  v26 = *(v0 + 1816);
  v23 = *(v0 + 1808);
  v24 = *(v0 + 1832);
  v3 = *(v0 + 1800);
  v22 = *(v0 + 1792);
  v4 = *(v0 + 1768);
  v5 = *(v0 + 1624);
  (*(v2 + 16))();
  v6 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  v7 = OUTLINED_FUNCTION_40_0();
  v8(v7, v6);
  v9 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  v10 = OUTLINED_FUNCTION_40_0();
  v11(v10, v9);
  __swift_project_boxed_opaque_existential_1((v0 + 1416), *(v0 + 1440));
  OUTLINED_FUNCTION_40_0();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(v3 + 16))(v1, v23, v22);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v22);
  v15 = type metadata accessor for AceOutput();
  *(v0 + 1496) = 0u;
  *(v0 + 1512) = 0u;
  *(v0 + 1528) = 0;
  v5[3] = v15;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1496, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1336));
  (*(v2 + 8))(v24, v26);
  v16 = OUTLINED_FUNCTION_117_0();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1416));
  v18 = OUTLINED_FUNCTION_61_8();

  return _swift_asyncLet_finish(v18, v19, v20, v0 + 1680);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return _swift_asyncLet_finish(v0 + 16, *(v0 + 1928), CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), v0 + 1728);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return OUTLINED_FUNCTION_70_2(v0 + 16, *(v0 + 1928), CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  OUTLINED_FUNCTION_27();

  v1 = OUTLINED_FUNCTION_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_61_8();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 1584);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

{
  return _swift_asyncLet_finish(v0 + 16, *(v0 + 1928), CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), v0 + 1632);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66_2();
  v39 = v22;
  OUTLINED_FUNCTION_23_0();
  v23 = v20[221];
  v24 = v20[215];
  v25 = v20[209];
  v26 = swift_task_alloc();
  v20[242] = v26;
  v26[2] = v23;
  v26[3] = v25;
  v26[4] = v24;
  v27 = swift_task_alloc();
  v20[243] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  OUTLINED_FUNCTION_63_0();
  *v27 = v28;
  v27[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_65_1();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, v20, v21, v39, a17, a18, a19, a20);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_68_2();
  v22 = v12;

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();

  v15 = *(v14 + 1952);
  OUTLINED_FUNCTION_2_0();
  (*(v16 + 240))(v15);
  swift_willThrow();
  OUTLINED_FUNCTION_68_2();
  v27 = v17;
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(0, 0);
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(0, 0);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_11();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, a11, a12, a13, a14);
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v5 = *(v29 - 8);
  v28 = *(v5 + 64);
  __chkstk_darwin(v29);
  v27 = v25 - v6;
  v25[0] = type metadata accessor for ParameterIdentifier();
  v7 = *(v25[0] - 8);
  __chkstk_darwin(v25[0]);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = v25 - v10;
  dispatch thunk of RCHFlowDelegate.makeAceViewProvider()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v25[3] = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v12 = ParameterIdentifier.name.getter();
  v25[1] = v13;
  v25[2] = v12;
  (*(v7 + 8))(v9, v25[0]);
  v14 = ParameterResolutionRecord.intent.getter();
  v15 = a2[6];
  v16 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v15);
  (*(v16 + 8))(v33, v15, v16);
  v17 = v34;
  v18 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  DeviceState.isAuthenticatedForPhone.getter(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v19 = v27;
  v20 = v29;
  (*(v5 + 16))(v27, v30, v29);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, v19, v20);
  v24 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of AceViewProviding.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)();

  return (*(v31 + 8))(v11, v24);
}

uint64_t closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), 0, 0);
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_27();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_63_0();
  *v2 = v3;
  v2[1] = implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_84_0();

  return withCheckedContinuation<A>(isolation:function:_:)(v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  OUTLINED_FUNCTION_8_1();

  return v3();
}

uint64_t closure #4 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_7();
  v8 = v7;
  v36 = *(v9 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v34 = v30 - v11;
  v32 = type metadata accessor for ParameterIdentifier();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v35 = v18;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v19);
  dispatch thunk of RCHFlowDelegate.makeNLContextProvider()();
  v20 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89(v20);
  v31 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  v30[1] = ParameterIdentifier.name.getter();
  (*(v13 + 8))(v17, v32);
  v21 = ParameterResolutionRecord.result.getter();
  v22 = v34;
  v23 = v37;
  (*(v8 + 16))(v34, v38, v37);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v24, v22, v23);
  OUTLINED_FUNCTION_55();
  swift_getAssociatedConformanceWitness();
  v26 = v31;
  dispatch thunk of NLContextProviding.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:)();

  v27 = OUTLINED_FUNCTION_129();
  return v28(v27);
}