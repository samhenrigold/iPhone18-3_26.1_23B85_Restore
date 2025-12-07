uint64_t outlined init with copy of SingleVoicemailModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleVoicemailModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleVoicemailModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleVoicemailModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(&lazy protocol witness table cache variable for type SingleVoicemailModel and conformance SingleVoicemailModel, &protocol conformance descriptor for SingleVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SingleVoicemailModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for SingleVoicemailModel(uint64_t a1)
{
  type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for SingleVoicemailModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3;
  return a4(v5);
}

uint64_t SiriInferenceContactSlotResolver.__allocating_init(rchFlowContext:sharedGlobals:updateStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, (v8 + 5));
  return OUTLINED_FUNCTION_0_111();
}

uint64_t SiriInferenceContactSlotResolver.UpdateStrategy.multicardinalIndex.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t SiriInferenceContactSlotResolver.init(rchFlowContext:sharedGlobals:updateStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, (v4 + 5));
  return OUTLINED_FUNCTION_0_111();
}

uint64_t SiriInferenceContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v58 = a3;
  v56 = a1;
  v52 = v5;
  v50 = *v5;
  v55 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v53 = v7;
  __chkstk_darwin(v8);
  v51 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v54 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v18);
  result = (*(v19 + 128))(v18, v19);
  v21 = result;
  v22 = 0;
  v23 = *(result + 16);
  v59 = v12 + 16;
  v48 = (v12 + 32);
  v24 = _swiftEmptyArrayStorage;
  while (v23 != v22)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v26 = *(v12 + 72);
    (*(v12 + 16))(v17, v21 + v25 + v26 * v22, v10);
    if (one-time initialization token for emptyQuery != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, static ContactQuery.emptyQuery);
    if (static ContactQuery.== infix(_:_:)())
    {
      goto LABEL_10;
    }

    if (one-time initialization token for emptyNLv4Query != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, static ContactQuery.emptyNLv4Query);
    if (static ContactQuery.== infix(_:_:)())
    {
LABEL_10:
      result = (*(v12 + 8))(v17, v10);
      ++v22;
    }

    else
    {
      v47 = *v48;
      v47(v49, v17, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1);
        v24 = v61[0];
      }

      v29 = v24[2];
      v28 = v24[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v46 = v29 + 1;
        v45 = v29;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
        v30 = v46;
        v29 = v45;
        v24 = v61[0];
      }

      ++v22;
      v24[2] = v30;
      result = (v47)(v24 + v25 + v29 * v26, v49, v10);
    }
  }

  v31 = type metadata accessor for ContactResolution();
  v32 = v52;
  v33 = v52[2];
  v34 = v52[8];
  v35 = v52[9];
  __swift_project_boxed_opaque_existential_1(v52 + 5, v34);
  v36 = v24;
  (*(v35 + 8))(v61, v34, v35);
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  v37 = v51;
  dispatch thunk of DeviceState.siriLocale.getter();
  v38 = *(v32 + 88);
  v39 = *(v50 + 80);
  v40 = *(v50 + 88);
  if (v38)
  {
    v41 = 0;
  }

  else
  {
    v41 = v32[10];
  }

  static SiriKitEventSender.current.getter();
  type metadata accessor for EmergencyContactResolution();
  v42 = swift_allocObject();
  LOBYTE(v43) = v38;
  specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(v56, v36, 0, v33, v37, v54, (v32 + 5), v41, v43, v60, v42, v31, v39, v40, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);

  __swift_destroy_boxed_opaque_existential_1(v60);
  (*(v53 + 8))(v37, v55);
  __swift_destroy_boxed_opaque_existential_1(v61);
  if (!(*(*(v40 + 8) + 8))(v39))
  {
    return (v58)(0, 0, 258);
  }

  v58();
}

void *SiriInferenceContactSlotResolver.deinit()
{
  v1 = v0[3];
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  return v0;
}

uint64_t SiriInferenceContactSlotResolver.__deallocating_deinit()
{
  SiriInferenceContactSlotResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:_:) in conformance SiriInferenceContactSlotResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = *(**v4 + 136);

  v10(a1, a2, _ss6ResultOySaySo8INPersonCG27PhoneCallFlowDelegatePlugin17SlotResolverErrorOGIegn_AIIegg_TRTA_0, v9);
}

uint64_t instantiation function for generic protocol witness table for SiriInferenceContactSlotResolver<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriInferenceContactSlotResolver.UpdateStrategy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SiriInferenceContactSlotResolver.UpdateStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for SiriInferenceContactSlotResolver.UpdateStrategy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SiriInferenceContactSlotResolver.UpdateStrategy(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t _ss6ResultOySaySo8INPersonCG27PhoneCallFlowDelegatePlugin17SlotResolverErrorOGIegn_AIIegg_TRTA_0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 0x1FF;
  return v4(v6);
}

Swift::String __swiftcall SiriKitDisambiguationItem.toSpokenHandleDisambiguation(deviceLocked:)(Swift::Bool deviceLocked)
{
  if (dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()())
  {
    if (!deviceLocked || (SiriKitDisambiguationItemComponent.allowedOnLockScreen.getter() & 1) != 0)
    {
      v2._countAndFlagsBits = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      String.append(_:)(v2);
    }
  }

  if (dispatch thunk of SiriKitDisambiguationItem.getFirstComponent()())
  {
    if (!deviceLocked || (SiriKitDisambiguationItemComponent.allowedOnLockScreen.getter() & 1) != 0)
    {
      v3._countAndFlagsBits = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      String.append(_:)(v3);
    }
  }

  v4 = 0;
  v5 = 0xE000000000000000;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t SiriKitDisambiguationItem.ttsPause(_:)()
{
  _StringGuts.grow(_:)(19);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8224092;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  return 0x5C1B237374747B40;
}

void SiriKitDisambiguationItem.description.getter()
{
  _StringGuts.grow(_:)(58);
  OUTLINED_FUNCTION_0_22();
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  v1 = SiriKitDisambiguationItem.components.getter();
  v2 = specialized Array.count.getter(v1);
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_3_106(v2);
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v5 = SiriKitDisambiguationItemComponent.description.getter();
      v7 = v6;

      v8 = _swiftEmptyArrayStorage[2];
      if (v8 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v5;
      v9[5] = v7;
    }

    while (v3 != v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  OUTLINED_FUNCTION_0_22();
  String.append(_:)(v14);
  SiriKitDisambiguationItem.contactIdentifiers.getter();
  Array.description.getter();
  OUTLINED_FUNCTION_0_112();
  v15._countAndFlagsBits = v10;
  v15._object = _swiftEmptyArrayStorage;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x6172676F6E6F6D0ALL;
  v16._object = 0xEB00000000203A6DLL;
  String.append(_:)(v16);
  v17 = SiriKitDisambiguationItem.monogramLetters.getter();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 7104878;
    v19 = 0xE300000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v17);

  v21._countAndFlagsBits = 32010;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
}

void SiriKitDisambiguationList.description.getter()
{
  _StringGuts.grow(_:)(96);
  OUTLINED_FUNCTION_0_22();
  String.append(_:)(v0);
  ItemsIn = SiriKitDisambiguationList.shouldReadItemsInVox.getter();
  v2 = (ItemsIn & 1) == 0;
  if (ItemsIn)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  OUTLINED_FUNCTION_0_22();
  String.append(_:)(v6);
  v7 = SiriKitDisambiguationList.requestUnlockForEmptyOrDuplicateItems.getter();
  v8 = (v7 & 1) == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  OUTLINED_FUNCTION_0_22();
  v12._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v12);
  v13 = SiriKitDisambiguationList.disambiguationItems.getter();
  v14 = specialized Array.count.getter(v13);
  if (!v14)
  {
LABEL_22:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v23 = BidirectionalCollection<>.joined(separator:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 32010;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    return;
  }

  v15 = v14;
  OUTLINED_FUNCTION_3_106(v14);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      SiriKitDisambiguationItem.description.getter();
      v18 = v17;
      v20 = v19;

      v21 = _swiftEmptyArrayStorage[2];
      if (v21 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v16;
      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v18;
      v22[5] = v20;
    }

    while (v15 != v16);
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t SiriKitDisambiguationItemComponent.description.getter()
{
  _StringGuts.grow(_:)(110);
  v0._countAndFlagsBits = 0x3A746E697270207BLL;
  v0._object = 0xE900000000000020;
  String.append(_:)(v0);
  SiriKitDisambiguationItemComponent.print.getter();
  String.debugDescription.getter();
  OUTLINED_FUNCTION_0_112();
  OUTLINED_FUNCTION_1_115();

  OUTLINED_FUNCTION_4_82(", disambiguationItems: ");
  SiriKitDisambiguationItemComponent.printOnLockScreen.getter();
  String.debugDescription.getter();
  OUTLINED_FUNCTION_0_112();
  OUTLINED_FUNCTION_1_115();

  v1._countAndFlagsBits = 0x3A6B61657073202CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  SiriKitDisambiguationItemComponent.speak.getter();
  String.debugDescription.getter();
  OUTLINED_FUNCTION_0_112();
  OUTLINED_FUNCTION_1_115();

  OUTLINED_FUNCTION_4_82(", printOnLockScreen: ");
  SiriKitDisambiguationItemComponent.speakOnLockScreen.getter();
  String.debugDescription.getter();
  OUTLINED_FUNCTION_0_112();
  OUTLINED_FUNCTION_1_115();

  v2._countAndFlagsBits = 0xD000000000000017;
  v2._object = 0x8000000000461970;
  String.append(_:)(v2);
  v3 = SiriKitDisambiguationItemComponent.allowedOnLockScreen.getter();
  v4 = (v3 & 1) == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0x42746E697270202CLL;
  v8._object = 0xED0000203A65756CLL;
  String.append(_:)(v8);
  v9 = SiriKitDisambiguationItemComponent.printBlue.getter();
  v10 = (v9 & 1) == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  return 0;
}

void SiriKitDisambiguationList.makeSpeakableHandleLabels(deviceIsLocked:)(uint64_t a1)
{
  v1 = a1;
  v2 = SiriKitDisambiguationList.removeSecondComponentIfIdenticalAcrossAllItems(deviceLocked:)(a1);
  if (specialized Array.count.getter(v2) != 1)
  {
    type metadata accessor for SiriKitDisambiguationList();
    static SiriKitDisambiguationList.keepOnlySecondComponentIfUnique(disambiguationItems:deviceLocked:)(v2, v1 & 1);
    v6 = v5;

    v7 = specialized Array.count.getter(v6);
    if (v7)
    {
      v8 = v7;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v8 < 0)
      {
        __break(1u);
        return;
      }

      v9 = 0;
      v20 = v6 & 0xC000000000000001;
      do
      {
        if (v20)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v10 = v1;
        v11 = SiriKitDisambiguationItem.toSpokenHandleDisambiguation(deviceLocked:)(v1 & 1);

        v12 = _swiftEmptyArrayStorage[2];
        if (v12 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v9;
        _swiftEmptyArrayStorage[2] = v12 + 1;
        *&_swiftEmptyArrayStorage[2 * v12 + 4] = v11;
        v1 = v10;
      }

      while (v8 != v9);
    }

    return;
  }

  v3 = v2 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  v4 = dispatch thunk of SiriKitDisambiguationItem.getThirdComponent()();

  if (v4)
  {
    goto LABEL_20;
  }

  if (v3)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  v13 = dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()();

  if (v13)
  {
LABEL_20:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_424FD0;
    *(v14 + 32) = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
    *(v14 + 40) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_424FD0;
    if (v3)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v17 = dispatch thunk of SiriKitDisambiguationItem.toSpokenString(deviceLocked:)();
    v19 = v18;

    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
  }
}

void *SiriKitDisambiguationList.removeSecondComponentIfIdenticalAcrossAllItems(deviceLocked:)(uint64_t a1)
{
  v1 = SiriKitDisambiguationList.disambiguationItems.getter();
  v2 = specialized Array.count.getter(v1);

  v3 = SiriKitDisambiguationList.disambiguationItems.getter();
  v4 = v3;
  if (v2 < 2)
  {
    return v4;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_53:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  v5 = dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()();

  if (v5)
  {
    v25 = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
    v7 = v6;
  }

  else
  {
    v25 = 0;
    v7 = 0;
  }

  v8 = SiriKitDisambiguationList.disambiguationItems.getter();
  v9 = specialized Array.count.getter(v8);
  for (i = 0; v9 != i; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_51;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()())
    {
      v11 = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      v13 = v12;

      if (v7)
      {
        if (!v13)
        {
          goto LABEL_44;
        }

        if (v25 == v11 && v7 == v13)
        {
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v15 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      else if (v13)
      {
LABEL_44:

        goto LABEL_45;
      }
    }

    else if (v7)
    {
      goto LABEL_44;
    }

    v16 = dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()();

    if (!v16)
    {

LABEL_45:

      return SiriKitDisambiguationList.disambiguationItems.getter();
    }
  }

  v17 = SiriKitDisambiguationList.disambiguationItems.getter();
  v18 = specialized Array.count.getter(v17);
  if (!v18)
  {
LABEL_48:

    return _swiftEmptyArrayStorage;
  }

  v19 = v18;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v22 = SiriKitDisambiguationItem.components.getter();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v22 < 0 || (v22 & 0x4000000000000000) != 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew()();
      }

      v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
      if (v23 < 2)
      {
        goto LABEL_52;
      }

      v24 = v23 - 1;
      memmove(((v22 & 0xFFFFFFFFFFFFFF8) + 40), ((v22 & 0xFFFFFFFFFFFFFF8) + 48), 8 * v23 - 16);
      ++v21;
      *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) = v24;

      SiriKitDisambiguationItem.utterance.getter();
      type metadata accessor for SiriKitDisambiguationItem();
      swift_allocObject();
      SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v19 == v21)
      {
        goto LABEL_48;
      }
    }
  }

  __break(1u);
  return result;
}

void static SiriKitDisambiguationList.keepOnlySecondComponentIfUnique(disambiguationItems:deviceLocked:)(uint64_t a1, int a2)
{
  v34 = a2;
  v3 = specialized Array.count.getter(a1);
  v4 = a1 & 0xC000000000000001;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = 0;
  v35 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v3 == v5)
    {
      v15 = 0;
      v38 = _swiftEmptyArrayStorage;
      v30 = xmmword_426260;
      v32 = a1 & 0xC000000000000001;
      v33 = a1;
      v31 = v3;
      while (1)
      {
        if (v3 == v15)
        {

          return;
        }

        if (v4)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v36 + 16))
          {
            goto LABEL_38;
          }
        }

        if (__OFADD__(v15, 1))
        {
          goto LABEL_37;
        }

        v16 = dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()();
        if (v16)
        {
          break;
        }

LABEL_30:
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v38 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v15;
      }

      v17 = v16;
      v18 = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      v20 = v19;
      v21 = v35;
      v22 = specialized Collection<>.firstIndex(of:)(v18, v19, v35);
      v24 = v23;
      v37[0] = v18;
      v37[1] = v20;
      __chkstk_darwin(v22);
      v29[2] = v37;
      v25 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v29, v21);
      v27 = v26;

      if (v24)
      {
        v3 = v31;
        if ((v27 & 1) == 0)
        {
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        v3 = v31;
        if ((v27 & 1) != 0 || v22 != v25)
        {
          goto LABEL_28;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = v30;
      *(v28 + 32) = v17;

      SiriKitDisambiguationItem.utterance.getter();
      type metadata accessor for SiriKitDisambiguationItem();
      swift_allocObject();
      SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)();

LABEL_29:
      v4 = v32;
      goto LABEL_30;
    }

    if (v4)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v36 + 16))
      {
        goto LABEL_36;
      }
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()())
    {
      v7 = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      v9 = v8;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v35 = v13;
      }

      v10 = v35[2];
      if (v10 >= v35[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v35 = v14;
      }

      v11 = v35;
      v35[2] = v10 + 1;
      v12 = &v11[2 * v10];
      v12[4] = v7;
      v12[5] = v9;
      v5 = v6;
    }

    else
    {

      ++v5;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

Swift::Void __swiftcall SiriKitEventSending.sendCallStateEvent(hangUpIntentResponse:)(INHangUpCallIntentResponse hangUpIntentResponse)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for ActivityType();
  OUTLINED_FUNCTION_7();
  v54 = v7;
  __chkstk_darwin(v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  __chkstk_darwin(v11 - 8);
  v55 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  type metadata accessor for SiriKitReliabilityCodes();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v56 = v4;
  v57 = v3;
  v25 = v24;
  SiriKitEventSending.makeIntentResponseToCallState(hangUpIntentResponse:)(hangUpIntentResponse.super.super.isa, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v25) == 1)
  {
    outlined destroy of SiriKitReliabilityCodes?(v15);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "#SiriKitEventSending Could not map IntentResponse to a loggable call state", v29, 2u);
      OUTLINED_FUNCTION_26_0(v29);
    }
  }

  else
  {
    v53 = v17;
    (*(v17 + 32))(v23, v15, v25);
    if (one-time initialization token for kUnsupportedCallStates != -1)
    {
      swift_once();
    }

    if (specialized Set.contains(_:)(v23, kUnsupportedCallStates))
    {
      goto LABEL_20;
    }

    if (one-time initialization token for kSupportedCallStates != -1)
    {
      swift_once();
    }

    if (!specialized Set.contains(_:)(v23, kSupportedCallStates))
    {
LABEL_20:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.siriPhone);
      v42 = v53;
      (*(v53 + 16))(v20, v23, v25);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v58 = v46;
        *v45 = 136315138;
        v47 = SiriKitReliabilityCodes.rawValue.getter();
        v49 = v48;
        v57 = v23;
        v50 = *(v42 + 8);
        v50(v20, v25);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v58);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_0, v43, v44, "#SiriKitEventSending callState %s could not be logged because it is not supported. Sending calls and held calls should be treated as active.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        OUTLINED_FUNCTION_26_0(v46);
        OUTLINED_FUNCTION_26_0(v45);

        v50(v57, v25);
      }

      else
      {

        v52 = *(v42 + 8);
        v52(v20, v25);
        v52(v23, v25);
      }
    }

    else
    {
      type metadata accessor for SiriKitEvent();
      (*(v54 + 104))(v10, enum case for ActivityType.getCallBackgroundState(_:), v6);
      if (one-time initialization token for emptyHangUpCallIntent != -1)
      {
        swift_once();
      }

      v30 = [static PhoneCallIntentClassNames.emptyHangUpCallIntent typeName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v53;
      v32 = v55;
      (*(v53 + 16))(v55, v23, v25);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v25);
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.siriPhone);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58 = v55;
        *v36 = 136315138;
        v37 = SiriKitEvent.debugDescription.getter();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v58);

        *(v36 + 4) = v39;
        _os_log_impl(&dword_0, v34, v35, "#SiriKitEventSending logging GetCallBackgroundState: %s", v36, 0xCu);
        v40 = v55;
        __swift_destroy_boxed_opaque_existential_1(v55);
        OUTLINED_FUNCTION_26_0(v40);
        OUTLINED_FUNCTION_26_0(v36);
      }

      dispatch thunk of SiriKitEventSending.send(_:)();

      (*(v31 + 8))(v23, v25);
    }
  }
}

void *one-time initialization function for kSupportedCallStates()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE16ReliabilityCodesOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE16ReliabilityCodesOGMR);
  v0 = type metadata accessor for SiriKitReliabilityCodes();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_426980;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for SiriKitReliabilityCodes.callStateActive(_:), v0);
  v6(v5 + v2, enum case for SiriKitReliabilityCodes.callStateRingIncoming(_:), v0);
  v6(v5 + 2 * v2, enum case for SiriKitReliabilityCodes.callStateDisconnected(_:), v0);
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriKitFlow0eF16ReliabilityCodesO_Tt0g5(v4);
  kSupportedCallStates = result;
  return result;
}

void *one-time initialization function for kUnsupportedCallStates()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE16ReliabilityCodesOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE16ReliabilityCodesOGMR);
  v0 = type metadata accessor for SiriKitReliabilityCodes();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FF0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for SiriKitReliabilityCodes.callStateRingOutgoing(_:), v0);
  v6(v5 + v2, enum case for SiriKitReliabilityCodes.callStateHeld(_:), v0);
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriKitFlow0eF16ReliabilityCodesO_Tt0g5(v4);
  kUnsupportedCallStates = result;
  return result;
}

uint64_t SiriKitEventSending.makeIntentResponseToCallState(hangUpIntentResponse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 code] == &dword_4 + 2)
  {
    v4 = &enum case for SiriKitReliabilityCodes.callStateDisconnected(_:);
LABEL_7:
    v5 = *v4;
    v6 = type metadata accessor for SiriKitReliabilityCodes();
    (*(*(v6 - 8) + 104))(a2, v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
    goto LABEL_8;
  }

  if ([a1 hungUpCallType] == &dword_4 + 3)
  {
    v4 = &enum case for SiriKitReliabilityCodes.callStateActive(_:);
    goto LABEL_7;
  }

  if ([a1 hungUpCallType] == &dword_4 + 2)
  {
    v4 = &enum case for SiriKitReliabilityCodes.callStateRingIncoming(_:);
    goto LABEL_7;
  }

  v9 = type metadata accessor for SiriKitReliabilityCodes();
  v7 = a2;
  v8 = 1;
LABEL_8:

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t outlined destroy of SiriKitReliabilityCodes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriKitEventSending.sendCallControlEvent(action:target:state:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  SiriKitEventSending.getTaskType(for:target:)(a1, a2);
  v7 = SiriKitEventSending.getTaskName(for:)(v6);
  v9 = v8;
  type metadata accessor for SiriKitEvent();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v10 + 32) = a3;
  *(v10 + 33) = HIBYTE(a3) & 1;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();
}

uint64_t static CallControlEventState.__derived_enum_equals(_:_:)(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) != 0)
  {
    if ((a2 & 0x100) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    if (a1)
    {
      if ((a2 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL CallControlEventFailureReason.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CallControlEventFailureReason.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CallControlEventFailureReason@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CallControlEventFailureReason.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t SiriKitEventSending.getTaskType(for:target:)(uint64_t a1, char a2)
{
  if (a1 == 11)
  {
    return 0;
  }

  if (PhoneCallControlAction.rawValue.getter(a1) == 0xD000000000000011 && 0x8000000000452EF0 == v5)
  {
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_16:
    strcpy(v18, "CallControl.");
    v16._countAndFlagsBits = PhoneCallControlAction.description.getter(a1);
    String.append(_:)(v16);

    return v18[0];
  }

  if (PhoneCallControlAction.rawValue.getter(a1) == 0xD000000000000010 && 0x8000000000452E60 == v8)
  {
LABEL_15:

    goto LABEL_16;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_16;
  }

  if (a2 == 5)
  {
    return 0;
  }

  v18[0] = PhoneCallControlNLIntent.Target.rawValue.getter(a2);
  v18[1] = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.capitalized.getter();
  v14 = v13;

  strcpy(v17, "CallControl.");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  return v17[0];
}

uint64_t SiriKitEventSending.getTaskName(for:)(char a1)
{
  result = 28239;
  switch(a1)
  {
    case 1:
    case 2:
    case 5:
    case 7:
      result = 6710863;
      break;
    case 8:
    case 9:
    case 10:
    case 11:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t closure #1 in SiriKitEventSending.sendCallControlEvent(action:target:state:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{

  result = dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();
  if ((a4 & 0x100) == 0 && (a4 & 1) == 0)
  {
    return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallControlEventFailureReason and conformance CallControlEventFailureReason()
{
  result = lazy protocol witness table cache variable for type CallControlEventFailureReason and conformance CallControlEventFailureReason;
  if (!lazy protocol witness table cache variable for type CallControlEventFailureReason and conformance CallControlEventFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallControlEventFailureReason and conformance CallControlEventFailureReason);
  }

  return result;
}

unsigned __int16 *getEnumTagSinglePayload for CallControlEventState(unsigned __int16 *result, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v4 = *(result + 2);
      if (!*(result + 2))
      {
        return v4;
      }

      goto LABEL_17;
    case 2:
      v4 = result[1];
      if (!result[1])
      {
        return v4;
      }

      goto LABEL_17;
    case 3:
      __break(1u);
      return result;
    case 4:
      v4 = *(result + 1);
      if (!v4)
      {
        return v4;
      }

LABEL_17:
      v4 = (*result | (v4 << 16)) - 0xFFFF;
      break;
    default:
      return v4;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for CallControlEventState(uint64_t result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
        goto LABEL_21;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_21:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTag for CallControlEventState(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for CallControlEventState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  result[1] = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CallControlEventFailureReason(_BYTE *result, int a2, int a3)
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

uint64_t SiriKitFlowFactoryProtocol.makeDelegateBasedRCHFlow<A>(delegate:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for RCHChildFlowProducers();
  v14 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  v19 = &v22 - v18;
  __swift_storeEnumTagSinglePayload(&v22 - v18, 1, 1, v13);
  v20 = (*(a6 + 40))(a1, a2, a3, v19, a5, a7, v22, a6);
  (*(v16 + 8))(v19, v14);
  return v20;
}

uint64_t SiriKitFlowFactoryProtocol.makeAuthenticationGuardFlow()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnlockDevicePolicy();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  type metadata accessor for CommonFlowGuard();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_424FD0;
  static UnlockDevicePolicy.default.getter();
  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
  (*(v6 + 8))(v10, v4);
  v12 = (*(a2 + 104))(v11, a1, a2);

  return v12;
}

uint64_t *SiriKitFlowFactory.makeContinueInAppAutoPunchOutFlow<A>(strategy:factory:rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  v7(a2, a3);
  OUTLINED_FUNCTION_7_75();
  v9 = a3;
  type metadata accessor for AnyFlow();
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_11_62();
  return &v9;
}

uint64_t SiriKitFlowFactory.makeDelegateBasedRCHFlow<A>(delegate:app:intent:producers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  RCHFlowDelegate.makeRCHFlow(app:intent:producers:)();
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_3_107();
  swift_getWitnessTable();
  type metadata accessor for RCHFlow();
  OUTLINED_FUNCTION_2_110();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_74();
  v6 = Flow.eraseToAnyValueFlow()();

  return v6;
}

uint64_t SiriKitFlowFactory.makeDelegateBasedRCHFlow<A>(delegate:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for RCHChildFlowProducers();
  v5 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  __swift_storeEnumTagSinglePayload(v14 - v9, 1, 1, v4);
  v11 = RCHFlowDelegate.makeRCHFlow(producers:)();
  (*(v7 + 8))(v10, v5);
  v14[1] = v11;
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_3_107();
  swift_getWitnessTable();
  type metadata accessor for RCHFlow();
  OUTLINED_FUNCTION_2_110();
  swift_getWitnessTable();
  v12 = Flow.eraseToAnyValueFlow()();

  dispatch thunk of AnyValueFlow.on(input:)();
  return v12;
}

uint64_t SiriKitFlowFactory.makeVoiceCommandRCHFlow<A>(strategy:childFlowFactory:app:intent:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v25[1] = a4;
  v25[2] = v8;
  OUTLINED_FUNCTION_10_69();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = type metadata accessor for RCHFlowFactory();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  OUTLINED_FUNCTION_49_0();
  v19 = __chkstk_darwin(v18);
  v21 = v25 - v20;
  (*(v10 + 16))(v14, a1, a5, v19);

  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v22 = RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:)();
  (*(v17 + 8))(v21, v15);
  v25[3] = v22;
  type metadata accessor for RCHFlowResult();
  v23 = type metadata accessor for AnyValueFlow();
  swift_getWitnessTable();
  VoiceCommandsParityFlow.eraseToAnyVoiceCommandsParityFlow()();
  OUTLINED_FUNCTION_7_75();
  return v23;
}

uint64_t SiriKitFlowFactory.makeAppResolutionFlow<A, B>(resolving:strategy:protectedAppStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a4;
  v14[4] = a6;
  __swift_allocate_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_40();
  (*(v7 + 16))();
  v8 = type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync();
  v9 = swift_allocObject();
  v13[3] = v8;
  v13[4] = lazy protocol witness table accessor for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync();
  v13[0] = v9;
  outlined init with copy of SignalProviding(a3, v12);
  v10 = static AppFlowFactory.makeOnDeviceAppResolutionFlow<A>(resolving:appResolutionStrategy:unlockDeviceStrategy:protectedAppCheckStrategy:)();
  outlined destroy of SpeakableString?(v12, &_s11SiriKitFlow25ProtectedAppCheckStrategy_pSgMd, &_s11SiriKitFlow25ProtectedAppCheckStrategy_pSgMR);
  outlined destroy of SpeakableString?(v13, &_s11SiriKitFlow012UnlockDeviceC13StrategyAsync_pSgMd, &_s11SiriKitFlow012UnlockDeviceC13StrategyAsync_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

uint64_t SiriKitFlowFactory.makePersonalDomainActivityNotificationFlow<A>(strategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = a2;
  v6[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_40();
  (*(v3 + 16))();
  v4 = type metadata accessor for PostPersonalDomainActivityNotificationFlow();
  OUTLINED_FUNCTION_41_1(v4);
  v6[0] = PostPersonalDomainActivityNotificationFlow.init(strategy:)();
  OUTLINED_FUNCTION_8_74();
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_7_75();
  return v4;
}

void *SiriKitFlowFactory.makeExecuteOnRemoteFlow(inputToExecute:device:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  (*(v14 + 16))(v13 - v12, a1);
  (*(v6 + 16))(v10, a2, v4);
  OUTLINED_FUNCTION_6_86();
  v15 = OUTLINED_FUNCTION_1_16();
  v16(v15);
  v17 = v30;
  v18 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v28[3] = v17;
  v28[4] = v18;
  __swift_allocate_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_40();
  (*(v19 + 16))();
  OUTLINED_FUNCTION_6_86();
  v20 = OUTLINED_FUNCTION_1_16();
  v21(v20);
  OUTLINED_FUNCTION_6_86();
  v22 = OUTLINED_FUNCTION_1_16();
  v23(v22);
  v24 = type metadata accessor for ExecuteOnRemoteFlowStrategy();
  OUTLINED_FUNCTION_41_1(v24);
  ExecuteOnRemoteFlowStrategy.init(shouldFallbackOnAWDL:shouldSendSpeechPackage:shouldOutputErrorDialog:)();
  v25 = type metadata accessor for ExecuteOnRemoteFlow();
  OUTLINED_FUNCTION_41_1(v25);
  v26 = ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:aceService:deviceState:executeOnRemoteFlowStrategy:)();
  __swift_destroy_boxed_opaque_existential_1(v29);
  v29[0] = v26;
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_11_62();
  return v29;
}

uint64_t *SiriKitFlowFactory.makeGuardFlow(withGuards:)(uint64_t a1)
{
  v2 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();
  type metadata accessor for GuardFlow();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_11_62();
  return &v2;
}

uint64_t SiriKitFlowFactory.makeLocationAccessGuardFlow()()
{
  v0 = type metadata accessor for SiriLocationAccessGuardFlow();
  SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:)();
  OUTLINED_FUNCTION_8_74();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_7_75();
  return v0;
}

uint64_t *SiriKitFlowFactory.makeCompositionResolutionFlow(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  outlined init with copy of NLContextUpdate?(a4, &v10 - v7);
  v8 = type metadata accessor for CompositionResolutionFlow();
  OUTLINED_FUNCTION_41_1(v8);

  v11 = CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_11_62();
  return &v11;
}

unint64_t lazy protocol witness table accessor for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync()
{
  result = lazy protocol witness table cache variable for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync;
  if (!lazy protocol witness table cache variable for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync)
  {
    type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.toParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_29_3();
  v5 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  Siri_Nlu_External_UserParse.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_424FD0;
  (*(v17 + 16))(v19 + v18, v3, v15);
  Siri_Nlu_External_UserParse.userDialogActs.setter();
  (*(v7 + 16))(v11, v14, v5);
  v20 = enum case for Siri_Nlu_External_Parser.ParserIdentifier.nlv4(_:);
  v21 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  OUTLINED_FUNCTION_23_1();
  (*(v22 + 104))(v2, v20, v21);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v21);
  v23 = v30;
  OUTLINED_FUNCTION_14_6();
  USOParse.init(userParse:parserIdentifier:appBundleId:)();
  v24 = OUTLINED_FUNCTION_43_3();
  v25(v24);
  v26 = enum case for Parse.uso(_:);
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  return (*(v27 + 104))(v23, v26);
}

uint64_t String.init(describing:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v2);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5);
  specialized String.init(describing:)(v7, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_43_3();
}

void Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome.CorrectionType();
  OUTLINED_FUNCTION_7();
  v46 = v2;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v45 = v4 - v5;
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome();
  OUTLINED_FUNCTION_7();
  v44 = v10;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  __chkstk_darwin(v15 - 8);
  OUTLINED_FUNCTION_12_5();
  v43 = v16 - v17;
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_4();
  v27 = v26 - v25;
  v28 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v50 = v28;
  specialized Collection.first.getter(v28);
  OUTLINED_FUNCTION_14_3(v20);
  if (v29)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v20);
LABEL_16:
    specialized Collection.first.getter(v50);

    return;
  }

  v42 = v23;
  v30 = OUTLINED_FUNCTION_14_6();
  v31(v30);
  if (*(v28 + 16) < 2uLL || (Siri_Nlu_External_UserParse.correctionOutcome.getter(), Siri_Nlu_External_CorrectionOutcome.type.getter(), (*(v44 + 8))(v14, v9), v33 = v45, v32 = v46, (*(v46 + 104))(v45, enum case for Siri_Nlu_External_CorrectionOutcome.CorrectionType.userInitiated(_:), v1), lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType, &type metadata accessor for Siri_Nlu_External_CorrectionOutcome.CorrectionType, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome.CorrectionType), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v34 = *(v32 + 8), v34(v33, v1), v34(v8, v1), v49 != v48) || (Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0)
  {
    (*(v42 + 8))(v27, v21);
    goto LABEL_16;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.siriPhone);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "#NLUUserParse detected a correction! Skipping first UserRejected", v38, 2u);
  }

  if (!*(v28 + 16))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v43;
  specialized Collection.first.getter(v28);
  OUTLINED_FUNCTION_14_3(v39);
  v40 = v42;
  if (!v29)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v39);
    if (*(v28 + 16))
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      (*(v40 + 8))(v27, v21);
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t Siri_Nlu_External_UserDialogAct.isRejectedOrCancelled.getter(uint64_t a1)
{
  if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
  {
    return 1;
  }

  return Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
}

uint64_t Siri_Nlu_External_UserDialogAct.siriKitConfirmationState.getter@<X0>(uint64_t a2@<X8>)
{
  if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
  {
    v3 = &enum case for SiriKitConfirmationState.confirmed(_:);
  }

  else
  {
    if ((Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0)
    {
      v11 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
      type metadata accessor for SiriKitConfirmationState();
      OUTLINED_FUNCTION_23_1();
      v6 = *(v12 + 104);
      if (v11)
      {
        v13 = &enum case for SiriKitConfirmationState.cancelled(_:);
      }

      else
      {
        v13 = &enum case for SiriKitConfirmationState.unset(_:);
      }

      v10 = *v13;
      v9 = a2;
      goto LABEL_10;
    }

    v3 = &enum case for SiriKitConfirmationState.rejected(_:);
  }

  v4 = *v3;
  type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 104);
  v8 = v7;
  v9 = a2;
  v10 = v4;
LABEL_10:

  return v6(v9, v10, v8);
}

uint64_t Siri_Nlu_External_UserParse.siriKitConfirmationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_29_3();
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  specialized Collection.first.getter(v11);

  OUTLINED_FUNCTION_14_3(v1);
  if (v12)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1);
    v13 = enum case for SiriKitConfirmationState.unset(_:);
    type metadata accessor for SiriKitConfirmationState();
    OUTLINED_FUNCTION_23_1();
    return (*(v14 + 104))(a1, v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14_6();
    v16(v15);
    Siri_Nlu_External_UserDialogAct.siriKitConfirmationState.getter(a1);
    return (*(v6 + 8))(v10, v4);
  }
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4 - v6, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * result;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (specialized Array.count.getter(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = specialized Array.count.getter(a3);
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(specialized Array.count.getter(v7), v11))
  {
LABEL_13:
    __break(1u);
    return;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
}

uint64_t specialized String.init(describing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = a2;
  v8[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
  type metadata accessor for SiriNLUTypesPrintUtils();
  static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
  v6 = String.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static SiriPhoneActionFactory.makeConfirmAndRejectActions()()
{
  v1 = type metadata accessor for CommonDirectAction(0);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_8_30();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SKIDirectInvocationPayload();
  v2 = CommonDirectAction.identifier.getter();
  v4 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v2, v3);
  v5 = CommonDirectAction.userData.getter();
  v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v6, v4);
  outlined destroy of CommonDirectAction(v0);
  v7 = objc_opt_self();
  v8 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v9 = [v7 runSiriKitExecutorCommandWithContext:v8 payload:v4];

  swift_storeEnumTagMultiPayload();
  v10 = CommonDirectAction.identifier.getter();
  v12 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v10, v11);
  v13 = CommonDirectAction.userData.getter();
  v14 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v14, v12);
  outlined destroy of CommonDirectAction(v0);
  v15 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v16 = [v7 runSiriKitExecutorCommandWithContext:v15 payload:v12];

  return v9;
}

id static SiriPhoneActionFactory.makeSelectionAction(contact:)(void *a1)
{
  v3 = type metadata accessor for CommonDirectAction(0);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_8_30();
  *v1 = a1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SKIDirectInvocationPayload();
  v4 = a1;
  v5 = CommonDirectAction.identifier.getter();
  v7 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v5, v6);
  v8 = CommonDirectAction.userData.getter();
  v9 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v9, v7);
  outlined destroy of CommonDirectAction(v1);
  v10 = objc_opt_self();
  v11 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v12 = [v10 runSiriKitExecutorCommandWithContext:v11 payload:v7];

  return v12;
}

INPerson __swiftcall SiriPhoneContact.toINPerson()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v5 - 8);
  v79 = &v71 - v6;
  v81 = type metadata accessor for PersonNameComponents();
  v7 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OUTLINED_FUNCTION_29_31();
  v10(v9);
  if (v11)
  {
    v78 = String._bridgeToObjectiveC()();
  }

  else
  {
    v78 = 0;
  }

  v77 = v7;
  v12 = *(v3 + 296);
  v13 = OUTLINED_FUNCTION_29_31();
  switch(v12(v13))
  {
    case 1u:
    case 2u:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    case 3u:
LABEL_8:
      v16 = OUTLINED_FUNCTION_29_31();
      v15 = 0;
      switch(v12(v16))
      {
        case 1u:

          goto LABEL_11;
        case 3u:
          goto LABEL_13;
        default:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
LABEL_11:
            v15 = 2;
          }

          else
          {
            v15 = 0;
          }

          break;
      }

      break;
    default:

LABEL_7:
      v15 = 1;
      break;
  }

LABEL_13:
  v18 = objc_allocWithZone(INPersonHandle);
  v19 = v78;
  v20 = v78;
  v21 = @nonobjc INPersonHandle.init(value:type:label:)(0, 0, 0, v19);
  v22 = v4;
  v23 = OUTLINED_FUNCTION_29_31();
  v25 = v24(v23);
  v76 = v20;
  if (!v26)
  {
    goto LABEL_17;
  }

  v27 = v25;
  OUTLINED_FUNCTION_13_54();
  if (!v28)
  {

LABEL_17:
    v32 = (*(v3 + 176))(v4, v3);
    if (v33)
    {
      v34 = v32;
      OUTLINED_FUNCTION_13_54();
      if (v35)
      {
        objc_allocWithZone(INPersonHandle);
        v36 = v20;
        v37 = @nonobjc INPersonHandle.init(value:type:label:)(v34, v2, 1, v78);

        v78 = v37;
      }

      else
      {
        v78 = v21;
      }
    }

    else
    {
      v78 = v21;
    }

    goto LABEL_22;
  }

  v29 = objc_allocWithZone(INPersonHandle);
  v30 = v20;
  v22 = v4;
  v31 = @nonobjc INPersonHandle.init(value:type:label:emergencyType:)(v27, v2, 2, v78, v15);

  v78 = v31;
LABEL_22:
  v38 = v80;
  PersonNameComponents.init()();
  v39 = *(v3 + 104);
  v40 = OUTLINED_FUNCTION_3_108();
  v39(v40);
  if (v82[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.givenName.setter();
  v41 = OUTLINED_FUNCTION_3_108();
  v39(v41);
  if (v83[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.middleName.setter();
  v42 = OUTLINED_FUNCTION_3_108();
  v39(v42);
  if (v84[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v84, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.familyName.setter();
  v43 = OUTLINED_FUNCTION_3_108();
  v39(v43);
  if (v85[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v85, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.nickname.setter();
  v44 = OUTLINED_FUNCTION_3_108();
  v39(v44);
  if (v86[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v86, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.namePrefix.setter();
  v45 = OUTLINED_FUNCTION_3_108();
  v39(v45);
  if (v88 == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.nameSuffix.setter();
  v46 = OUTLINED_FUNCTION_3_108();
  v47(v46);
  if (v48)
  {
    OUTLINED_FUNCTION_13_54();
    if (v49)
    {
      v50 = String._bridgeToObjectiveC()();

      goto LABEL_45;
    }
  }

  v50 = 0;
LABEL_45:
  v51 = *(v3 + 408);
  v52 = OUTLINED_FUNCTION_3_108();
  v51(v52);
  if (v53)
  {

    v54 = v79;
    (*(v77 + 16))(v79, v38, v81);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v54 = v79;
  }

  __swift_storeEnumTagSinglePayload(v54, v55, 1, v81);
  v56 = OUTLINED_FUNCTION_3_108();
  v57 = (v51)(v56);
  v73 = v58;
  v74 = v57;
  v59 = *(v3 + 32);
  v60 = v59(v22, v3);
  v72 = v61;
  v62 = v59(v22, v3);
  v64 = v63;
  v65 = objc_allocWithZone(INPerson);
  v75 = v50;
  v66 = v78;
  v67 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(v66, v79, v74, v73, 0, v60, v72, v62, v64, v50);
  v68 = OUTLINED_FUNCTION_3_108();
  [v67 setIsMe:v69(v68) & 1];

  (*(v77 + 8))(v80, v81);
  return v67;
}

Swift::String_optional __swiftcall SiriPhoneContact.getFullName(filteredAlternatives:)(Swift::Bool filteredAlternatives)
{
  v2 = OUTLINED_FUNCTION_4_83(filteredAlternatives, v1);
  v3(v2);
  OUTLINED_FUNCTION_20_44();
  if (v4)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v8, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v5 = OUTLINED_FUNCTION_0();
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getPrefixName()()
{
  OUTLINED_FUNCTION_25_35();
  v0();
  OUTLINED_FUNCTION_20_44();
  if (v1)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v5, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v2 = OUTLINED_FUNCTION_0();
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getFirstName(filteredAlternatives:)(Swift::Bool filteredAlternatives)
{
  v2 = OUTLINED_FUNCTION_4_83(filteredAlternatives, v1);
  v3(v2);
  if (v7[1] == 1)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v4 = OUTLINED_FUNCTION_0();
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getMiddleName(filteredAlternatives:)(Swift::Bool filteredAlternatives)
{
  v2 = OUTLINED_FUNCTION_4_83(filteredAlternatives, v1);
  v3(v2);
  OUTLINED_FUNCTION_20_44();
  if (v4)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v8, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v5 = OUTLINED_FUNCTION_0();
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getLastName(filteredAlternatives:)(Swift::Bool filteredAlternatives)
{
  v2 = OUTLINED_FUNCTION_4_83(filteredAlternatives, v1);
  v3(v2);
  OUTLINED_FUNCTION_20_44();
  if (v4)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v8, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v5 = OUTLINED_FUNCTION_0();
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getPostfixName()()
{
  OUTLINED_FUNCTION_25_35();
  v0();
  OUTLINED_FUNCTION_20_44();
  if (v1)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v5, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v2 = OUTLINED_FUNCTION_0();
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getNickName()()
{
  OUTLINED_FUNCTION_25_35();
  v0();
  OUTLINED_FUNCTION_20_44();
  if (v1)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v5, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v2 = OUTLINED_FUNCTION_0();
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getOrganzationName()()
{
  v1 = (*(v0 + 128))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getContactName()()
{
  v1 = (*(v0 + 56))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getHandleType()()
{
  v1 = (*(v0 + 224))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getPhoneNumber()()
{
  v1 = (*(v0 + 152))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getEmailAddress()()
{
  v1 = (*(v0 + 176))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t SiriPhoneContactImpl.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriPhoneContactImpl.init()();
  return v0;
}

Swift::Void __swiftcall SiriPhoneContact.update(person:)(INPerson person)
{
  v3 = v2;
  v167 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  __chkstk_darwin(v5 - 8);
  v164 = (&v152 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v7 - 8);
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v16);
  v18 = &v152 - v17;
  __chkstk_darwin(v19);
  v21 = &v152 - v20;
  __chkstk_darwin(v22);
  v24 = &v152 - v23;
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v27);
  v29 = &v152 - v28;
  __chkstk_darwin(v30);
  v32 = &v152 - v31;
  __chkstk_darwin(v33);
  v35 = &v152 - v34;
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v39 = &v152 - v38;
  v40 = [(objc_class *)person.super.isa nameComponents];
  if (v40)
  {
    v41 = v40;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for PersonNameComponents();
    v42 = 0;
  }

  else
  {
    type metadata accessor for PersonNameComponents();
    v42 = 1;
  }

  OUTLINED_FUNCTION_42_11(v35, v42);
  outlined init with take of PersonNameComponents?(v35, v39);
  type metadata accessor for PersonNameComponents();
  if (OUTLINED_FUNCTION_17_48())
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    v43 = 0;
    v165 = 0;
    goto LABEL_24;
  }

  v154 = v18;
  v44 = PersonNameComponents.givenName.getter();
  v46 = v45;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (!v46)
  {
    goto LABEL_22;
  }

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
    goto LABEL_21;
  }

  v48 = [(objc_class *)person.super.isa nameComponents];
  if (v48)
  {
    v49 = v48;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  OUTLINED_FUNCTION_42_11(v29, v50);
  outlined init with take of PersonNameComponents?(v29, v32);
  if (!OUTLINED_FUNCTION_32_1(v32))
  {
    v51 = PersonNameComponents.familyName.getter();
    v53 = v52;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v53)
    {
      v54 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v54 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (v54)
      {
        v153 = v53;
        v55 = v46;
        v56 = [(objc_class *)person.super.isa nameComponents];
        if (v56)
        {
          v57 = v56;
          v58 = v155;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v59 = 0;
          v60 = v165;
        }

        else
        {
          v59 = 1;
          v60 = v165;
          v58 = v155;
        }

        OUTLINED_FUNCTION_42_11(v58, v59);
        outlined init with take of PersonNameComponents?(v58, v60);
        if (OUTLINED_FUNCTION_17_48())
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v60, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        }

        else
        {
          v165 = PersonNameComponents.middleName.getter();
          v148 = v147;
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v60, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          if (v148)
          {
            v149 = HIBYTE(v148) & 0xF;
            if ((v148 & 0x2000000000000000) == 0)
            {
              v149 = v165 & 0xFFFFFFFFFFFFLL;
            }

            if (v149)
            {
              v169 = v44;
              v170 = v55;
              v150._countAndFlagsBits = 32;
              v150._object = 0xE100000000000000;
              String.append(_:)(v150);
              v151._countAndFlagsBits = v165;
              v151._object = v148;
              String.append(_:)(v151);

              goto LABEL_98;
            }
          }
        }

        v169 = v44;
        v170 = v55;
LABEL_98:
        v145._countAndFlagsBits = 32;
        v145._object = 0xE100000000000000;
        String.append(_:)(v145);
        v146._countAndFlagsBits = v51;
        v146._object = v153;
        String.append(_:)(v146);

        v43 = v169;
        v165 = v170;
        goto LABEL_23;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_22:
  v43 = 0;
  v165 = 0;
LABEL_23:
  v18 = v154;
LABEL_24:
  v61 = [(objc_class *)person.super.isa isMe];
  (*(v3 + 16))(v61, v167, v3);
  v62 = [(objc_class *)person.super.isa contactIdentifier];
  if (v62)
  {
    v63 = v62;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  (*(v3 + 40))(v64, v66, v167, v3);
  v67 = OUTLINED_FUNCTION_31_29();
  if (v67)
  {
    v68 = v67;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = 0;
  }

  else
  {
    v69 = 1;
  }

  v70 = v162;
  OUTLINED_FUNCTION_42_11(v21, v69);
  outlined init with take of PersonNameComponents?(v21, v24);
  if (OUTLINED_FUNCTION_32_1(v24))
  {
    v162 = 0;
    v155 = 0;
  }

  else
  {
    v162 = PersonNameComponents.givenName.getter();
    v155 = v71;
  }

  v72 = v159;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v24, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v73 = OUTLINED_FUNCTION_31_29();
  if (v73)
  {
    v74 = v73;
    v75 = v156;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v75;
    v77 = 0;
    v78 = v160;
  }

  else
  {
    v77 = 1;
    v78 = v160;
    v76 = v156;
  }

  OUTLINED_FUNCTION_42_11(v76, v77);
  outlined init with take of PersonNameComponents?(v76, v18);
  if (OUTLINED_FUNCTION_32_1(v18))
  {
    v160 = 0;
    v159 = 0;
  }

  else
  {
    v160 = PersonNameComponents.middleName.getter();
    v159 = v79;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v80 = OUTLINED_FUNCTION_31_29();
  if (v80)
  {
    v81 = v80;
    v82 = v157;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v83 = 0;
    v84 = v158;
  }

  else
  {
    v83 = 1;
    v84 = v158;
    v82 = v157;
  }

  OUTLINED_FUNCTION_42_11(v82, v83);
  outlined init with take of PersonNameComponents?(v82, v84);
  if (OUTLINED_FUNCTION_17_48())
  {
    v158 = 0;
    v157 = 0;
  }

  else
  {
    v158 = PersonNameComponents.familyName.getter();
    v157 = v85;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v84, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v86 = OUTLINED_FUNCTION_31_29();
  if (v86)
  {
    v87 = v86;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v88 = 0;
  }

  else
  {
    v88 = 1;
  }

  OUTLINED_FUNCTION_42_11(v72, v88);
  outlined init with take of PersonNameComponents?(v72, v78);
  if (OUTLINED_FUNCTION_32_1(v78))
  {
    v156 = 0;
    v89 = 0;
  }

  else
  {
    v156 = PersonNameComponents.nickname.getter();
    v89 = v90;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(v3 + 104))(v168, v167, v3);
  v92 = v168[8];
  v91 = v168[9];
  if (v168[1] == 1)
  {
    OUTLINED_FUNCTION_14_56(v168[0]);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v169, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_14_56(v168[0]);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v169, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
    if (v91)
    {
      goto LABEL_55;
    }
  }

  v91 = v165;

  v92 = v43;
LABEL_55:
  v93 = [(objc_class *)person.super.isa nameComponents];
  v94 = v161;
  if (v93)
  {
    v95 = v93;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v96 = 0;
  }

  else
  {
    v96 = 1;
  }

  OUTLINED_FUNCTION_42_11(v94, v96);
  v97 = v166;
  outlined init with take of PersonNameComponents?(v94, v166);
  if (OUTLINED_FUNCTION_17_48())
  {
    v98 = 0;
    v99 = 0;
  }

  else
  {
    v100 = PersonNameComponents.namePrefix.getter();
    v97 = v166;
    v98 = v100;
    v99 = v101;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v97, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v102 = [(objc_class *)person.super.isa nameComponents];
  if (v102)
  {
    v103 = v102;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v104 = 0;
  }

  else
  {
    v104 = 1;
  }

  OUTLINED_FUNCTION_42_11(v70, v104);
  v105 = v163;
  outlined init with take of PersonNameComponents?(v70, v163);
  if (OUTLINED_FUNCTION_17_48())
  {
    v106 = 0;
    v107 = 0;
  }

  else
  {
    v106 = PersonNameComponents.nameSuffix.getter();
    v107 = v108;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v105, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v169 = v162;
  v170 = v155;
  v171 = v160;
  v172 = v159;
  v173 = v158;
  v174 = v157;
  v175 = v156;
  v176 = v89;
  v177 = v92;
  v178 = v91;
  v179 = v98;
  v180 = v99;
  v181 = v106;
  v182 = v107;
  v109 = v167;
  (*(v3 + 112))(&v169, v167, v3);
  if ([(objc_class *)person.super.isa relationship])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_30_35();
  }

  v110 = OUTLINED_FUNCTION_5_87();
  v111(v110);
  v112 = OUTLINED_FUNCTION_26_33();
  if (v112)
  {
    v113 = v112;
    v114 = [v112 type];

    if (v114 == &dword_0 + 2)
    {
      v115 = OUTLINED_FUNCTION_26_33();
      v116 = v115;
      if (v115)
      {
        v117 = [v115 value];

        if (v117)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_30_35();
        }
      }

      v124 = OUTLINED_FUNCTION_5_87();
      v125(v124);
      v126 = 0x656E6F6870;
LABEL_81:
      (*(v3 + 232))(v126, 0xE500000000000000, v109, v3);
      goto LABEL_82;
    }
  }

  v118 = OUTLINED_FUNCTION_26_33();
  if (v118)
  {
    v119 = v118;
    v120 = [v118 type];

    if (v120 == &dword_0 + 1)
    {
      v121 = OUTLINED_FUNCTION_26_33();
      v122 = v121;
      if (v121)
      {
        v123 = [v121 value];

        if (v123)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_30_35();
        }
      }

      v127 = OUTLINED_FUNCTION_5_87();
      v128(v127);
      v126 = 0x6C69616D65;
      goto LABEL_81;
    }
  }

LABEL_82:
  v129 = OUTLINED_FUNCTION_26_33();
  v130 = v129;
  if (v129)
  {
    v131 = [v129 label];

    if (v131)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_30_35();
    }
  }

  v132 = OUTLINED_FUNCTION_5_87();
  v133(v132);
  v134 = OUTLINED_FUNCTION_26_33();
  if (v134 && (v135 = v134, v136 = [v134 emergencyType], v135, v136 == &dword_0 + 1))
  {
    v137 = 0;
  }

  else
  {
    v138 = OUTLINED_FUNCTION_26_33();
    if (v138 && (v139 = v138, v140 = [v138 emergencyType], v139, v140 == &dword_0 + 2))
    {
      v137 = 1;
    }

    else
    {
      v137 = 2;
    }
  }

  (*(v3 + 304))(v137, v109, v3);
  v141 = v164;
  v164->super.isa = person.super.isa;
  v142 = type metadata accessor for BackingContact(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v141, 0, 1, v142);
  v143 = *(v3 + 392);
  v144 = person.super.isa;
  v143(v141, v109, v3);
}

void BackingContact.toContactQuery()()
{
  v1 = v0;
  type metadata accessor for BackingContact(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of BackingContact(v1, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      specialized SiriPhoneContact.asSiriInferenceContact.getter();

      break;
    case 2u:
      outlined init with take of PhoneCallFeatureFlagProviding(v4, v9);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      dispatch thunk of ToContactQuery.toContactQuery()();
      __swift_destroy_boxed_opaque_existential_1(v9);
      break;
    case 3u:
      type metadata accessor for ContactQuery();
      OUTLINED_FUNCTION_23_1();
      v6 = OUTLINED_FUNCTION_19_0();
      v7(v6);
      break;
    default:
      v5 = *v4;
      INPerson.toContactQuery()();

      break;
  }
}

void __swiftcall PhoneCallPersonName.init(firstName:middleName:lastName:nickName:fullName:namePrefix:nameSuffix:)(PhoneCallFlowDelegatePlugin::PhoneCallPersonName *__return_ptr retstr, Swift::String_optional firstName, Swift::String_optional middleName, Swift::String_optional lastName, Swift::String_optional nickName, Swift::String_optional fullName, Swift::String_optional namePrefix, Swift::String_optional nameSuffix)
{
  retstr->firstName = firstName;
  retstr->middleName = middleName;
  retstr->lastName = lastName;
  retstr->nickName = nickName;
  retstr->fullName = fullName;
  retstr->namePrefix = namePrefix;
  retstr->nameSuffix = nameSuffix;
}

unint64_t PhoneCallEmergencyType.semanticValue.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (a2 == 2)
  {
    return 0x636E656772656D65;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallContactSearchQualifier __swiftcall PhoneCallContactSearchQualifier.init(role:exclusive:nobody:)(PhoneCallFlowDelegatePlugin::PhoneCallContactRole role, Swift::Bool exclusive, Swift::Bool nobody)
{
  if (nobody)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (exclusive)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return (v4 & 0xFFFFFF00 | role | v3);
}

Swift::String_optional __swiftcall SiriPhoneContact.getDisplayName()()
{
  v1 = (*(v0 + 56))();
  if (v2 || (OUTLINED_FUNCTION_104(), v3 = SiriPhoneContact.getNickName()(), v2 = v3.value._object, v1 = v3.value._countAndFlagsBits, v3.value._object) || (OUTLINED_FUNCTION_104(), default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(), v4 = OUTLINED_FUNCTION_22_33(), v5 = SiriPhoneContact.getFullName(filteredAlternatives:)(v4), v2 = v5.value._object, v1 = v5.value._countAndFlagsBits, v5.value._object))
  {
    countAndFlagsBits = v1;
    v7 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_104();
    default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
    v10 = OUTLINED_FUNCTION_22_33();
    v11 = SiriPhoneContact.getFirstName(filteredAlternatives:)(v10);
    countAndFlagsBits = v11.value._countAndFlagsBits;
    object = v11.value._object;
    OUTLINED_FUNCTION_104();
    default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)();
    v13 = OUTLINED_FUNCTION_22_33();
    v14 = SiriPhoneContact.getLastName(filteredAlternatives:)(v13);
    v7 = v14.value._object;
    if (v11.value._object && (OUTLINED_FUNCTION_27_34(), v15))
    {
      if (!v14.value._object)
      {
        v7 = v11.value._object;
        goto LABEL_5;
      }
    }

    else
    {
      if (!v14.value._object)
      {

        countAndFlagsBits = 0;
        goto LABEL_5;
      }

      v16 = (v14.value._object >> 56) & 0xF;
      if ((v14.value._object & 0x2000000000000000) == 0)
      {
        v16 = v14.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {

        countAndFlagsBits = 0;
        v7 = 0;
        goto LABEL_5;
      }

      if (!v11.value._object)
      {
        countAndFlagsBits = 0;
        object = 0xE000000000000000;
      }
    }

    OUTLINED_FUNCTION_27_34();
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      String.append(_:)(v14.value);

      v7 = object;
    }

    else
    {

      countAndFlagsBits = v14.value._countAndFlagsBits;
    }
  }

LABEL_5:
  v8 = countAndFlagsBits;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getRelationship()()
{
  v1 = (*(v0 + 200))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t key path setter for SiriPhoneContactImpl.contactId : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 256);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.contactId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 24, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.contactId.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 24, v3);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.contactName : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 280);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.contactName.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 40, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.contactName.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 40, v3);
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

uint64_t SiriPhoneContactImpl.contactSource.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_11_2(v2 + 56, a2);
  *(v2 + 56) = a1;
  return result;
}

uint64_t key path setter for SiriPhoneContactImpl.personName : SiriPhoneContactImpl(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *(**a2 + 328);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(__dst, &v5, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v3(__dst);
}

void *SiriPhoneContactImpl.personName.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 64), 0x70uLL);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(__dst, &v4, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return memcpy(a1, __dst, 0x70uLL);
}

uint64_t SiriPhoneContactImpl.personName.setter(const void *a1)
{
  swift_beginAccess();
  v2 = *(v1 + 72);
  v4 = *(v1 + 64);
  memcpy((v1 + 64), a1, 0x70uLL);
  return outlined consume of PhoneCallPersonName?(v4, v2);
}

uint64_t key path setter for SiriPhoneContactImpl.organizationName : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 352);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.organizationName.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 176, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.organizationName.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 176, v3);
  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.telephoneNumber : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 376);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.telephoneNumber.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 192, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.telephoneNumber.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 192, v3);
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.emailAddress : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 400);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.emailAddress.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 208, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.emailAddress.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 208, v3);
  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.relationship : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 424);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.relationship.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 224, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.relationship.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 224, v3);
  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.handleType : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 448);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.handleType.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 240, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.handleType.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 240, v3);
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.handleLabel : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 472);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.handleLabel.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 256, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.handleLabel.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 256, v3);
  *(v1 + 256) = v2;
  *(v1 + 264) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.emergencyType : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 496);
  outlined copy of PhoneCallEmergencyType?(*a1, v3);
  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.emergencyType.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 272, a2);
  v3 = OUTLINED_FUNCTION_19_0();
  outlined copy of PhoneCallEmergencyType?(v3, v4);
  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.emergencyType.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2(v1 + 272, v3);
  v4 = *(v1 + 272);
  v5 = *(v1 + 280);
  *(v1 + 272) = v2;
  *(v1 + 280) = v0;
  return outlined consume of PhoneCallEmergencyType?(v4, v5);
}

uint64_t SiriPhoneContactImpl.emergencyLocationType.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_11_2(v2 + 288, a2);
  *(v2 + 288) = a1;
  return result;
}

uint64_t SiriPhoneContactImpl.contactReference.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_11_2(v2 + 289, a2);
  *(v2 + 289) = a1;
  return result;
}

uint64_t SiriPhoneContactImpl.isAmbiguousHandle.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_11_2(v2 + 290, a2);
  *(v2 + 290) = a1;
  return result;
}

uint64_t SiriPhoneContactImpl.searchQualifier.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 293) = BYTE2(a1);
  *(v1 + 291) = a1;
  return result;
}

uint64_t key path setter for SiriPhoneContactImpl.vocabularyAppsBundleSet : SiriPhoneContactImpl(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 616);

  return v2(v3);
}

double SiriPhoneContactImpl.vocabularyAppsBundleSet.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 296, a2);

  return result;
}

uint64_t SiriPhoneContactImpl.vocabularyAppsBundleSet.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2(v2 + 296, a2);
  *(v2 + 296) = a1;
}

uint64_t key path setter for SiriPhoneContactImpl.backingContact : SiriPhoneContactImpl(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(a1, &v8 - v5, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  return (*(**a2 + 640))(v6);
}

uint64_t SiriPhoneContactImpl.backingContact.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  OUTLINED_FUNCTION_4_4(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact, a1);
  return _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v2 + v4, a2, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
}

uint64_t SiriPhoneContactImpl.backingContact.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  swift_beginAccess();
  outlined assign with take of BackingContact?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SiriPhoneContactImpl.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 3;
  *(v0 + 64) = xmmword_425000;
  bzero((v0 + 80), 0xC8uLL);
  *(v0 + 280) = 3;
  *(v0 + 288) = 9731;
  *(v0 + 290) = 0;
  *(v0 + 293) = 0;
  *(v0 + 291) = 512;
  *(v0 + 296) = _swiftEmptySetSingleton;
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  v2 = type metadata accessor for BackingContact(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

void *SiriPhoneContactImpl.deinit()
{

  outlined consume of PhoneCallPersonName?(*(v0 + 64), *(v0 + 72));

  outlined consume of PhoneCallEmergencyType?(*(v0 + 272), *(v0 + 280));

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  return v0;
}

uint64_t SiriPhoneContactImpl.__deallocating_deinit()
{
  SiriPhoneContactImpl.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for SiriPhoneContact.isMe.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 240))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 264))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.contactName.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 288))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.contactSource.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 312))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

void *protocol witness for SiriPhoneContact.personName.getter in conformance SiriPhoneContactImpl@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_43_0();
  (*(v2 + 320))(v4);
  return memcpy(a1, v4, 0x70uLL);
}

uint64_t (*protocol witness for SiriPhoneContact.personName.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 336))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.organizationName.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 360))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.telephoneNumber.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 384))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.emailAddress.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 408))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.relationship.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 432))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.handleType.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 456))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.handleLabel.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 480))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.emergencyType.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 504))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.emergencyLocationType.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 528))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.contactReference.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 552))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.isAmbiguousHandle.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 576))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

void (*protocol witness for SiriPhoneContact.backingContact.modify in conformance SiriPhoneContactImpl(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 648))();
  return protocol witness for SiriPhoneContact.backingContact.modify in conformance PhoneCallContactIntentNode;
}

PhoneCallFlowDelegatePlugin::PhoneCallEmergencyLocationType_optional __swiftcall PhoneCallEmergencyLocationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallEmergencyLocationType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t PhoneCallEmergencyLocationType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x6C61636F4C6E6F6ELL;
  }

  return 1701736302;
}

PhoneCallFlowDelegatePlugin::PhoneCallEmergencyLocationType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallEmergencyLocationType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallEmergencyLocationType_optional *a2@<X8>)
{
  result.value = PhoneCallEmergencyLocationType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallEmergencyLocationType@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallEmergencyLocationType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static PhoneCallEmergencyType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallContactSearchQualifier(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return static PhoneCallContactSearchQualifier.__derived_struct_equals(_:_:)(v3 | *a1 | v2, v5 | *a2 | v4);
}

uint64_t PhoneCallPersonName.namePrefix.setter()
{
  OUTLINED_FUNCTION_24_3();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void __swiftcall PhoneCallPersonName.init()(PhoneCallFlowDelegatePlugin::PhoneCallPersonName *__return_ptr retstr)
{
  retstr->namePrefix = 0u;
  retstr->nameSuffix = 0u;
  retstr->nickName = 0u;
  retstr->fullName = 0u;
  retstr->middleName = 0u;
  retstr->lastName = 0u;
  retstr->firstName = 0u;
}

Swift::String_optional __swiftcall SiriPhoneContact.getContactId()()
{
  v1 = (*(v0 + 32))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

id @nonobjc INPersonHandle.init(value:type:label:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v17 = type metadata accessor for PersonNameComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v17) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v17 - 8) + 8))(a2, v17);
  }

  if (a4)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  if (a9)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v11 initWithPersonHandle:a1 nameComponents:isa displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21 relationship:a10];

  return v22;
}

id @nonobjc INPersonHandle.init(value:type:label:emergencyType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = String._bridgeToObjectiveC()();

  v10 = [v5 initWithValue:v9 type:a3 label:a4 emergencyType:a5];

  return v10;
}

uint64_t outlined consume of PhoneCallPersonName?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallEmergencyLocationType and conformance PhoneCallEmergencyLocationType()
{
  result = lazy protocol witness table cache variable for type PhoneCallEmergencyLocationType and conformance PhoneCallEmergencyLocationType;
  if (!lazy protocol witness table cache variable for type PhoneCallEmergencyLocationType and conformance PhoneCallEmergencyLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallEmergencyLocationType and conformance PhoneCallEmergencyLocationType);
  }

  return result;
}

void type metadata completion function for SiriPhoneContactImpl(uint64_t a1)
{
  type metadata accessor for BackingContact?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for BackingContact?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BackingContact?)
  {
    type metadata accessor for BackingContact(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for BackingContact?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneCallEmergencyLocationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin0aB13EmergencyTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PhoneCallEmergencyType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhoneCallEmergencyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallContactSearchQualifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCallContactSearchQualifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallPersonName(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCallPersonName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for BackingContact(uint64_t a1)
{
  result = type metadata accessor for INPerson();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhoneCallContactIntentNode(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for UsoContactConvertible();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ContactQuery();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for UsoContactConvertible()
{
  result = lazy cache variable for type metadata for UsoContactConvertible;
  if (!lazy cache variable for type metadata for UsoContactConvertible)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UsoContactConvertible);
  }

  return result;
}

id OUTLINED_FUNCTION_26_33()
{
  v3 = *(v1 + 2120);

  return [v0 v3];
}

id OUTLINED_FUNCTION_31_29()
{
  v3 = *(v1 + 2920);

  return [v0 v3];
}

uint64_t *SiriPhoneDefaults.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_2_111(&one-time initialization token for instance);
  }

  return &static SiriPhoneDefaults.instance;
}

void SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a2;
  v13 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v26 - v18;
  (*(a5 + 8))(a1, a4, a6, a3, a5, v17);
  v20 = OUTLINED_FUNCTION_96();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, v21, a4);
  v23 = *(a4 - 8);
  if (EnumTagSinglePayload == 1)
  {
    (*(v23 + 16))(a7, v27, a4);
    v24 = OUTLINED_FUNCTION_96();
    if (__swift_getEnumTagSinglePayload(v24, v25, a4) != 1)
    {
      (*(v15 + 8))(v19, v13);
    }
  }

  else
  {
    (*(v23 + 32))(a7, v19, a4);
  }

  OUTLINED_FUNCTION_65();
}

unint64_t SiriPhoneDefaultsKey.rawValue.getter(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SiriPhoneDefaultsKey_optional __swiftcall SiriPhoneDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriPhoneDefaultsKey.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::SiriPhoneDefaultsKey_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SiriPhoneDefaultsKey@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SiriPhoneDefaultsKey_optional *a2@<X8>)
{
  result.value = SiriPhoneDefaultsKey.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriPhoneDefaultsKey@<X0>(unint64_t *a1@<X8>)
{
  result = SiriPhoneDefaultsKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static SiriPhoneDefaults.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_2_111(&one-time initialization token for instance);
  }

  v0 = static SiriPhoneDefaults.instance;
  v1 = static SiriPhoneDefaults.instance;
  return v0;
}

void SiriPhoneDefaults.get<A>(key:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v8);
  v10 = &v55 - v9;
  OUTLINED_FUNCTION_9_1();
  v59 = v11;
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  __chkstk_darwin(v18);
  v60 = &v55 - v19;
  if (a1 && (v61 = a3, v62 = a4, v20 = String._bridgeToObjectiveC()(), , v21 = [a1 dictionaryForKey:v20], v20, v22 = v62, v21))
  {
    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v23);
    static DictionaryEncoderDecoder.decode<A>(type:_:)();

    OUTLINED_FUNCTION_12_9();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    v37 = v59;
    v38 = v60;
    v58 = *(v59 + 32);
    v58(v60, v10, a2);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.siriPhone);
    v40 = *(v37 + 16);
    v40(v17, v38, a2);
    v41 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v57))
    {
      v42 = OUTLINED_FUNCTION_42();
      v56 = OUTLINED_FUNCTION_36();
      v63 = v56;
      *v42 = 136315138;
      v40(v14, v17, a2);
      v43 = *(v37 + 8);
      v43(v17, a2);
      v44 = v41;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v43(v14, a2);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v63);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_0, v44, v57, "#SiriPhoneDefaults Get: %s", v42, 0xCu);
      v49 = v56;
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_26_0(v49);
      v50 = v42;
      v38 = v60;
      OUTLINED_FUNCTION_26_0(v50);
    }

    else
    {
      (*(v37 + 8))(v17, a2);
    }

    v58(v22, v38, a2);
    OUTLINED_FUNCTION_12_9();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    OUTLINED_FUNCTION_65();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "#SiriPhoneDefaults No entry found.", v27, 2u);
      OUTLINED_FUNCTION_26_0(v27);
    }

    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_65();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

void SiriPhoneDefaults.set<A>(key:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  static DictionaryEncoderDecoder.encode<A>(_:)(v7, v8, *(*(v6 + 8) + 16));
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_42();
    v13 = OUTLINED_FUNCTION_36();
    v22 = v13;
    *v12 = 136315138;
    v14 = Dictionary.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "#SiriPhoneDefaults Set: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0(v13);
    OUTLINED_FUNCTION_26_0(v12);
  }

  if (a3)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = String._bridgeToObjectiveC()();

    [a3 setObject:isa forKey:v21];

    OUTLINED_FUNCTION_65();
  }

  else
  {
    OUTLINED_FUNCTION_65();
  }
}

Swift::Void __swiftcall SiriPhoneDefaults.clear(key:)(PhoneCallFlowDelegatePlugin::SiriPhoneDefaultsKey key)
{
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();

    [v2 removeObjectForKey:v3];
  }
}

unint64_t lazy protocol witness table accessor for type SiriPhoneDefaultsKey and conformance SiriPhoneDefaultsKey()
{
  result = lazy protocol witness table cache variable for type SiriPhoneDefaultsKey and conformance SiriPhoneDefaultsKey;
  if (!lazy protocol witness table cache variable for type SiriPhoneDefaultsKey and conformance SiriPhoneDefaultsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneDefaultsKey and conformance SiriPhoneDefaultsKey);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriPhoneDefaultsKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void SiriPhoneHintGenerator.generateHint()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v36 = v8;
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v37 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v38 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v33 - v17;
  v19 = *(v2 + 48);
  v39 = v0;
  if (v19(v4, v2, v16))
  {
    v35 = v9;
    v33[0] = v6;
    (*(v2 + 40))(v43, v4, v2, 0);
    v20 = v44;
    v21 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    (*(v21 + 64))(v40, v20, v21);
    v22 = v41;
    v34 = v42;
    v33[1] = __swift_project_boxed_opaque_existential_1(v40, v41);
    v23 = (*(v2 + 24))(v4, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = v38;
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(v23, v25, v22, AssociatedTypeWitness, v34, AssociatedConformanceWitness, v18);
    v26 = *(v37 + 8);
    v26(v25, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v43);
    (*(v2 + 56))(v18, v4, v2);
    if (v27)
    {
      v28 = v33[0];
      (*(v33[0] + 16))(v35, v39, v4);
      v29 = v37 + 32;
      v39 = *(v37 + 32);
      v39(v38, v18, AssociatedTypeWitness);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = (v36 + v30 + *(v29 + 48)) & ~*(v29 + 48);
      v32 = swift_allocObject();
      *(v32 + 16) = v4;
      *(v32 + 24) = v2;
      (*(v28 + 32))(v32 + v30, v35, v4);
      v39((v32 + v31), v38, AssociatedTypeWitness);
    }

    else
    {
      v26(v18, AssociatedTypeWitness);
    }
  }

  OUTLINED_FUNCTION_65();
}

void HintInstance.updateHintHistory(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v5 = [a1 dialog];
  type metadata accessor for DialogElement();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized Array.count.getter(v6);
  if (v7)
  {
    v8 = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 id];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = _swiftEmptyArrayStorage[2];
      if (v16 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v9;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v13;
      v17[5] = v15;
    }

    while (v8 != v9);
  }

  a4(_swiftEmptyArrayStorage);
}

void HintInstance.updateHintHistory(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_7();
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v10);
  v12 = (v32 - v11);
  v13 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Result<TemplatingResult, Error>(v5, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();

LABEL_10:
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  (*(v15 + 32))(v18, v12, v13);
  v19 = TemplatingResult.sections.getter();
  (*(v15 + 8))(v18, v13);
  v20 = *(v19 + 16);
  if (!v20)
  {

    goto LABEL_10;
  }

  v32[1] = v1;
  v33 = v3;
  v38 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v21 = v38;
  v22 = *(v37 + 16);
  v23 = *(v37 + 80);
  v32[0] = v19;
  v24 = v19 + ((v23 + 32) & ~v23);
  v34 = *(v37 + 72);
  v35 = v22;
  v37 += 16;
  v25 = (v37 - 8);
  do
  {
    v26 = v36;
    v35(v9, v24, v36);
    v27 = TemplatingSection.id.getter();
    v29 = v28;
    (*v25)(v9, v26);
    v38 = v21;
    v30 = v21[2];
    if (v30 >= v21[3] >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v38;
    }

    v21[2] = v30 + 1;
    v31 = &v21[2 * v30];
    v31[4] = v27;
    v31[5] = v29;
    v24 += v34;
    --v20;
  }

  while (v20);

  v3 = v33;
LABEL_11:
  v3(v21);

  OUTLINED_FUNCTION_65();
}

void updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v24[2] = v3;
  v24[3] = v1;
  v24[4] = v5;
  v14 = specialized Sequence.first(where:)(partial apply for closure #1 in updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint(), v24, v7);
  if (v15)
  {
    (*(v1 + 64))(v14);

    (*(v1 + 40))(v28, v3, v1);
    v16 = v29;
    v17 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v17 + 64))(v25, v16, v17);
    v18 = v26;
    v19 = v27;
    v23[1] = __swift_project_boxed_opaque_existential_1(v25, v26);
    v20 = (*(v1 + 24))(v3, v1);
    v21 = *(v19 + 16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21(v20, v13, AssociatedTypeWitness, AssociatedConformanceWitness, v18, v19);
    (*(v10 + 8))(v13, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  OUTLINED_FUNCTION_65();
}

void partial apply for updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()()
{
  OUTLINED_FUNCTION_1_116();
  OUTLINED_FUNCTION_1_116();
  swift_getAssociatedTypeWitness();

  updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()();
}

uint64_t closure #1 in updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(a3, a4);
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = BidirectionalCollection<>.starts<A>(with:)();

  return v4 & 1;
}

uint64_t one-time initialization function for messageStore()
{
  type metadata accessor for MessageStoreController();
  result = static MessageStoreController.shared.getter();
  static SiriPhoneMessageStoreController.messageStore = result;
  return result;
}

uint64_t SiriPhoneMessageStoreController.getMessages(recordUUIDs:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return _swift_task_switch(SiriPhoneMessageStoreController.getMessages(recordUUIDs:), 0, 0);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t SiriPhoneMessageStoreController.getMessages(recordUUIDs:)()
{
  if (one-time initialization token for messageStore != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = SiriPhoneMessageStoreController.getMessages(recordUUIDs:);
  v2 = *(v0 + 16);

  return MessageStoreController.getMessages(recordUUIDs:)(v2);
}

uint64_t protocol witness for SiriPhoneMessageStoreProtocol.getMessages(recordUUIDs:) in conformance SiriPhoneMessageStoreController(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v6(a1);
}

uint64_t AnyIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnyIntentResolver.resolve(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_15();
  v5 = (*(v0[4] + 48) + **(v0[4] + 48));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = AnyIntentResolver.resolve(skIntent:nlIntent:);
  v3 = v0[2];
  v2 = v0[3];

  return v5(v3, v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v3 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t SKIntentResolver.run(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SKIntentResolver.run(skIntent:nlIntent:)()
{
  if ((*(*(v0 + 40) + 16))(*(v0 + 16), *(v0 + 24), *(v0 + 32)))
  {
    v8 = (*(*(v0 + 40) + 24) + **(*(v0 + 40) + 24));
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = SKIntentResolver.run(skIntent:nlIntent:);
    v2 = *(v0 + 40);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);

    return v8(v5, v3, v4, v2);
  }

  else
  {
    v9 = *(v0 + 8);
    v7 = *(v0 + 16);

    return v9(v7);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v3 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t SKIntentResolver.toAnyIntentResolver()@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = *(a1 - 8);
  __chkstk_darwin(a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v11 = *(v6 + 16);
  v11(&v20 - v12, v3, a1, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnyIntentResolver(0, AssociatedTypeWitness, v14, v15);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v21;
    *a3 = v20;
    *(a3 + 1) = v17;
    v18 = v23;
    *(a3 + 2) = v22;
    *(a3 + 3) = v18;
  }

  else
  {
    v19 = type metadata accessor for Optional();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    (*(*(v19 - 8) + 8))(&v20, v19);
    (v11)(v8, v3, a1);
    return AnyIntentResolver.init<A>(_:)(v8, a1, a3);
  }

  return result;
}

uint64_t AnyIntentResolver.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v7 = *(a2 - 8);
  (*(v7 + 16))(boxed_opaque_existential_1, a1, a2);
  v8 = OUTLINED_FUNCTION_5_88();
  a3[4] = implicit closure #1 in AnyIntentResolver.init<A>(_:)(v8, v9, v10, v11);
  a3[5] = v12;
  v13 = OUTLINED_FUNCTION_5_88();
  v17 = implicit closure #3 in AnyIntentResolver.init<A>(_:)(v13, v14, v15, v16);
  v19 = v18;
  result = (*(v7 + 8))(a1, a2);
  a3[6] = v17;
  a3[7] = v19;
  return result;
}

uint64_t AnyIntentResolver.description.getter()
{
  outlined init with copy of Any(v0, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
  return String.init<A>(describing:)();
}

uint64_t (*implicit closure #1 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
}

void *implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return &async function pointer to partial apply for implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
}

uint64_t implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 24) + **(a6 + 24));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = protocol witness for PhoneIntentResolving.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:) in conformance PhoneIntentResolver;

  return v13(a1, a2, a5, a6);
}

uint64_t AnyIntentResolver.unbox<A>(as:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of Any(v3, &v8);
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v6 ^ 1u, 1, a1);
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance AnyIntentResolver<A>(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return AnyIntentResolver.resolve(skIntent:nlIntent:)(a1, a2);
}

uint64_t type metadata instantiation function for AnyIntentResolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AnyIntentResolver(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyIntentResolver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v7 - 8) + 80) + 40) & ~*(*(v7 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t static SKIntentResolverChain.firstHit<A>(_:)@<X0>(uint64_t (*a2)(void)@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2(0);

  swift_getWitnessTable();
  SKIntentResolver.toAnyIntentResolver()(v5, a4);
}

uint64_t ChainedIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a3;
  v4[42] = a4;
  v4[39] = a1;
  v4[40] = a2;
  return _swift_task_switch(ChainedIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

uint64_t ChainedIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v4 + 392) = v1;

  if (v1)
  {
    v7 = ChainedIntentResolver.resolve(skIntent:nlIntent:);
  }

  else
  {
    *(v4 + 400) = a1;
    v7 = ChainedIntentResolver.resolve(skIntent:nlIntent:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance ChainedIntentResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a3 + 16);
  *v9 = v4;
  v9[1] = AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels();

  return ChainedIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, v8, v10);
}

uint64_t FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a3;
  v4[48] = a4;
  v4[45] = a1;
  v4[46] = a2;
  return _swift_task_switch(FirstHitIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

uint64_t FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_135();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_39_4();
  a20 = v22;
  v27 = *(v22 + 376);
  v26 = *(v22 + 384);
  *(v22 + 336) = v27;
  v28 = swift_task_alloc();
  v29 = *(v22 + 360);
  *(v28 + 16) = v26;
  *(v28 + 24) = v29;
  v32 = type metadata accessor for AnyIntentResolver(255, v26, v30, v31);
  *(v22 + 392) = v32;
  type metadata accessor for Array();

  OUTLINED_FUNCTION_5_89();
  swift_getWitnessTable();
  Sequence.first(where:)();

  v33 = type metadata accessor for Optional();
  *(v22 + 400) = v33;
  v34 = *(v33 - 8);
  *(v22 + 408) = v34;
  (*(v34 + 16))(v22 + 144, v22 + 16, v33);
  if (*(v22 + 168))
  {
    v35 = *(v22 + 160);
    *(v22 + 80) = *(v22 + 144);
    *(v22 + 96) = v35;
    v36 = *(v22 + 192);
    *(v22 + 112) = *(v22 + 176);
    *(v22 + 128) = v36;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriPhone);
    v38 = *(v32 - 8);
    *(v22 + 416) = v38;
    v39 = *(v38 + 16);
    v39(v22 + 208, v22 + 80, v32);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v22 + 384);
      v43 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      a10 = v77;
      *v43 = 136315394;
      *(v22 + 352) = v42;
      swift_getMetatypeMetadata();
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &a10);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      v39(v22 + 272, v22 + 208, v32);
      v47 = *(v38 + 8);
      v47(v22 + 208, v32);
      v48 = AnyIntentResolver.description.getter();
      v50 = v49;
      v47(v22 + 272, v32);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &a10);

      *(v43 + 14) = v51;
      _os_log_impl(&dword_0, v40, v41, "#FirstHitIntentResolver<%s> Chose resolver: %s)", v43, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v77);
      OUTLINED_FUNCTION_35();
    }

    else
    {
      v47 = *(v38 + 8);
      v47(v22 + 208, v32);
    }

    *(v22 + 424) = v47;
    v70 = swift_task_alloc();
    *(v22 + 432) = v70;
    OUTLINED_FUNCTION_1_117();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_72();
    *v70 = v71;
    v70[1] = FirstHitIntentResolver.resolve(skIntent:nlIntent:);
    OUTLINED_FUNCTION_15_11();

    return SKIntentResolver.run(skIntent:nlIntent:)(v72, v73, v74, v75);
  }

  else
  {
    v52 = *(v34 + 8);
    v52(v22 + 144, v33);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.siriPhone);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v22 + 384);
      swift_slowAlloc();
      v57 = OUTLINED_FUNCTION_83();
      a10 = v57;
      *v27 = 136315138;
      *(v22 + 344) = v56;
      swift_getMetatypeMetadata();
      v58 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &a10);
      OUTLINED_FUNCTION_30_36();
      *(v27 + 4) = v23;
      _os_log_impl(&dword_0, v54, v55, "#FirstHitIntentResolver<%s> Didn't find a resolver that supports this request, returning skIntent as-is.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_35();
    }

    v52(v22 + 16, v33);
    v60 = *(v22 + 360);
    OUTLINED_FUNCTION_15_11();

    return v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v4 + 440) = v1;

  if (v1)
  {
    v7 = FirstHitIntentResolver.resolve(skIntent:nlIntent:);
  }

  else
  {
    *(v4 + 448) = a1;
    v7 = FirstHitIntentResolver.resolve(skIntent:nlIntent:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t FirstHitIntentResolver.resolve(skIntent:nlIntent:)()
{
  v3 = OUTLINED_FUNCTION_21_43();
  v4(v3);
  (*(v0 + 8))(v2 + 16, v1);
  v5 = *(v2 + 448);
  v6 = *(v2 + 8);

  return v6(v5);
}

{
  v3 = OUTLINED_FUNCTION_21_43();
  v4(v3);
  (*(v0 + 8))(v2 + 16, v1);
  v5 = *(v2 + 8);

  return v5();
}

uint64_t closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AnyIntentResolver(0, a4, a3, a4);
  v20 = AnyIntentResolver.shouldRunResolver(skIntent:nlIntent:)();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v8(v22, a1, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315394;
    v8(v21, v22, v5);
    v13 = *(v7 + 8);
    v13(v22, v5);
    v14 = AnyIntentResolver.description.getter();
    v16 = v15;
    v13(v21, v5);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

    *(v11 + 4) = v17;
    *(v11 + 12) = 1024;
    v18 = v20;
    *(v11 + 14) = v20 & 1;
    _os_log_impl(&dword_0, v9, v10, "#%s shouldRunResolver = %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    (*(v7 + 8))(v22, v5);

    v18 = v20;
  }

  return v18 & 1;
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance FirstHitIntentResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a3 + 16);
  *v9 = v4;
  v9[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, v8, v10);
}

void SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v67 = v26;
  v27 = type metadata accessor for PhoneCallNLv3Intent(0);
  v28 = OUTLINED_FUNCTION_8_76(v27, &a9);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_5_4();
  v66 = v29;
  OUTLINED_FUNCTION_46_26("SKTransformer");
  v31 = v30;
  v68 = v25;
  v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v33 = [v32 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_113();
  static Signpost.begin(_:string1:)();

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v34 = type metadata accessor for Logger();
  v65 = __swift_project_value_buffer(v34, static Logger.siriPhone);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_86_1();
    v37 = OUTLINED_FUNCTION_55_4();
    v70[0] = v37;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v70);
    *(v31 + 12) = 2080;
    v71[0] = v68;
    swift_getMetatypeMetadata();
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v70);

    *(v31 + 14) = v40;
    _os_log_impl(&dword_0, v35, v36, "#SKTransformer %s to %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v37);
    OUTLINED_FUNCTION_26_0(v31);
  }

  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v67, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v41 = swift_dynamicCast();
  if (v41)
  {
    v44 = OUTLINED_FUNCTION_31_30();
    SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v44, v45, v46, v47, v48);
    if (!v23)
    {
      outlined destroy of PhoneCallNLv3Intent(v66);
      __swift_destroy_boxed_opaque_existential_1(v71);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v66);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_31_21(v41, v42, v43, &type metadata for PhoneCallNLv4Intent);
    if (v49)
    {
      outlined destroy of PhoneCallNLv4Intent(v70);
    }

    else
    {
      if (!OUTLINED_FUNCTION_31_21(v49, v50, v51, &type metadata for PhoneCallIFIntent))
      {
        __swift_destroy_boxed_opaque_existential_1(v71);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v70);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    v52 = OUTLINED_FUNCTION_31_30();
    SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v52, v53, v54, v55, v56);
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  swift_errorRetain();
  v57 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v58 = OUTLINED_FUNCTION_55_4();
    v70[0] = v58;
    *v31 = 136315394;
    v59 = _typeName(_:qualified:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v70);
    OUTLINED_FUNCTION_40_0();

    *(v31 + 4) = v65;
    *(v31 + 12) = 2080;
    swift_getErrorValue();
    v61 = Error.localizedDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v70);
    OUTLINED_FUNCTION_40_0();

    *(v31 + 14) = v69;
    OUTLINED_FUNCTION_24_39(&dword_0, v63, v64, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_26_0(v58);
    OUTLINED_FUNCTION_26_0(v31);
  }

  else
  {
  }

LABEL_19:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}

void SKTransformer.convertToSKIntent<A>(input:rchFlowContext:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v60 = v8;
  v10 = v9;
  v11 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_5_4();
  v59 = v15;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v62 = v17;
  v63 = v16;
  __chkstk_darwin(v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v20 = type metadata accessor for Logger();
  v58 = __swift_project_value_buffer(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v23 = os_log_type_enabled(v21, v22);
  v61 = v3;
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_86_1();
    v56 = v13;
    v25 = v24;
    v26 = swift_slowAlloc();
    v57 = v11;
    v55 = v26;
    v67[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000000461B90, v67);
    *(v25 + 12) = 2080;
    *&v64 = v3;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v28 = OUTLINED_FUNCTION_48_24(MetatypeMetadata);
    v30 = v19;
    v31 = v7;
    v32 = v1;
    v33 = v10;
    v34 = v5;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v67);

    *(v25 + 14) = v35;
    v5 = v34;
    v10 = v33;
    v1 = v32;
    v7 = v31;
    v19 = v30;
    _os_log_impl(&dword_0, v21, v22, "#SKTransformer %s to %s", v25, 0x16u);
    v36 = v55;
    swift_arrayDestroy();
    v11 = v57;
    OUTLINED_FUNCTION_26_0(v36);
    v37 = v25;
    v13 = v56;
    OUTLINED_FUNCTION_26_0(v37);
  }

  v38 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v39 = OUTLINED_FUNCTION_40_0();
  v41 = v40(v39, v38);
  Input.parse.getter();
  (*(*v41 + 192))(&v64, v19);

  (*(v62 + 8))(v19, v63);
  if (v66)
  {
    outlined init with take of SPHConversation(&v64, v67);
    SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v67, v60, v7, v5, v61, v42, v43, v44, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(&v64);
    v45 = v10;
    v46 = v59;
    (*(v13 + 16))(v59, v45, v11);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v67[0] = v50;
      *v49 = 136315138;
      Input.parse.getter();
      v51 = String.init(describing:)(v19);
      v53 = v52;
      (*(v13 + 8))(v46, v11);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v67);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_0, v47, v48, "#SKTransformer Could not transform Input to PhoneCallNLIntent: %s. Returning nil.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_26_0(v49);
    }

    else
    {

      (*(v13 + 8))(v46, v11);
    }
  }

  OUTLINED_FUNCTION_65();
}

uint64_t SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v89 = a4;
  v96 = a3;
  v97 = a2;
  v99 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INSearchE13HistoryIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INSearchE13HistoryIntentCGMR);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v74 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMR);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo30INIdentifyIncomingCallerIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo30INIdentifyIncomingCallerIntentCGMR);
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  __chkstk_darwin(v7);
  v82 = &v74 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE6IntentCGMR);
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v86 = &v74 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE6IntentCGMR);
  v88 = *(v92 - 8);
  __chkstk_darwin(v92);
  v12 = &v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE6IntentCGMR);
  v90 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE6IntentCGMR);
  v91 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMR);
  v93 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v74 - v20;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  if (swift_dynamicCastMetatype())
  {
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v95, v98);
    v22 = swift_allocObject();
    v23 = v96;
    *(v22 + 16) = v97;
    *(v22 + 24) = v23;
    outlined init with take of SPHConversation(v98, v22 + 32);
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    Transformer.init(transform:)();
    v25 = Transformer.transform.getter();
    (*(v93 + 8))(v21, v19);
    v26 = v94;
    v25(v98, v99);
    if (v26)
    {
    }

    goto LABEL_14;
  }

  v75 = v15;
  v93 = v13;
  v74 = v12;
  v28 = v92;
  v29 = v95;
  v30 = v96;
  v31 = v97;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
  if (swift_dynamicCastMetatype())
  {
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v29, v98);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    outlined init with take of SPHConversation(v98, v32 + 32);
    v33 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    Transformer.init(transform:)();
    v34 = Transformer.transform.getter();
    (*(v91 + 8))(v18, v16);
    v35 = v94;
    v34(v98, v99);
    goto LABEL_13;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
  if (swift_dynamicCastMetatype())
  {
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v29, v98);
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v30;
    outlined init with take of SPHConversation(v98, v36 + 32);
    v37 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    v38 = v75;
    Transformer.init(transform:)();
    v39 = v93;
    v40 = Transformer.transform.getter();
    v41 = v90;
  }

  else
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
    v46 = swift_dynamicCastMetatype();
    v47 = v99;
    v48 = v29;
    if (v46)
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v29, v98);
      v49 = swift_allocObject();
      v49[2] = v31;
      v49[3] = v30;
      outlined init with take of SPHConversation(v98, (v49 + 4));
      v50 = v89;
      v49[9] = v89;
      v51 = v50;

      v52 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
      v53 = v74;
      Transformer.init(transform:)();
      v40 = Transformer.transform.getter();
      (*(v88 + 8))(v53, v28);
      v45 = v47;
      goto LABEL_12;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INJoinCallIntent, INJoinCallIntent_ptr);
    v55 = swift_dynamicCastMetatype();
    v56 = v31;
    v57 = v89;
    if (!v55)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
      if (swift_dynamicCastMetatype())
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v48, v98);
        v60 = swift_allocObject();
        *(v60 + 16) = v31;
        *(v60 + 24) = v30;
        outlined init with take of SPHConversation(v98, v60 + 32);
        v61 = v30;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
        v62 = v82;
        Transformer.init(transform:)();
        v63 = v83;
        v40 = Transformer.transform.getter();
        v42 = *(v84 + 8);
        v43 = v62;
      }

      else
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
        if (!swift_dynamicCastMetatype())
        {
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
          v68 = swift_dynamicCastMetatype();
          v69 = v99;
          if (!v68)
          {
            v72 = type metadata accessor for TransformationError();
            lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
            swift_allocError();
            (*(*(v72 - 8) + 104))(v73, enum case for TransformationError.notImplemented(_:), v72);
            return swift_willThrow();
          }

          v70 = v76;
          static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(v48, v56, v30);
          v71 = v78;
          v40 = Transformer.transform.getter();
          (*(v77 + 8))(v70, v71);
          v45 = v69;
          goto LABEL_12;
        }

        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v48, v98);
        v64 = swift_allocObject();
        v64[2] = v31;
        v64[3] = v30;
        outlined init with take of SPHConversation(v98, (v64 + 4));
        v64[9] = v57;
        v65 = v57;

        v66 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
        v67 = v79;
        Transformer.init(transform:)();
        v63 = v80;
        v40 = Transformer.transform.getter();
        v42 = *(v81 + 8);
        v43 = v67;
      }

      v44 = v63;
      goto LABEL_9;
    }

    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v48, v98);
    v58 = swift_allocObject();
    *(v58 + 16) = v31;
    *(v58 + 24) = v30;
    outlined init with take of SPHConversation(v98, v58 + 32);
    v59 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    v38 = v86;
    Transformer.init(transform:)();
    v39 = v85;
    v40 = Transformer.transform.getter();
    v41 = v87;
  }

  v42 = *(v41 + 8);
  v43 = v38;
  v44 = v39;
LABEL_9:
  v42(v43, v44);
  v45 = v99;
LABEL_12:
  v35 = v94;
  v40(v98, v45);
LABEL_13:
  if (v35)
  {
  }

LABEL_14:

  v54 = *&v98[0];
  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v99 = a1;
  v6 = v5;
  v94 = a4;
  v98 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMR);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMR);
  v92 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v87 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE6IntentCGMR);
  v93 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v87 - v14;
  v16 = type metadata accessor for ContactGroupResolver();
  v17 = *(v16 - 8);
  v96 = v16;
  v97 = v17;
  __chkstk_darwin(v16);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v91 = &v87 - v21;
  __chkstk_darwin(v22);
  v24 = &v87 - v23;
  v101 = a2;
  if (a2)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    v25 = swift_dynamicCastMetatype();
    v95 = a5;
    if (v25)
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
      if (v98)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
      }

      ContactGroupResolver.init()();
      _s27PhoneCallFlowDelegatePlugin05StartB16IntentConversionO09convertToG005phoneB8NLIntent3app13sharedGlobals08previousG00pG8Response13groupResolverSo07INStartbG0CSgAA0abL0_p_17SiriAppResolution0V0CAA06SharedO9Providing_pAMSo08INIntentQ0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0U9Inference012ContactGroupS0V_Tt5g5();
      goto LABEL_18;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
    if (swift_dynamicCastMetatype())
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
      v27 = v98;
      if (v98)
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
      }

      v28 = v101;
      v29 = v99;

      ContactGroupResolver.init()();
      _s27PhoneCallFlowDelegatePlugin010StartAudioB16IntentConversionO09convertToH005phoneB8NLIntent3app13sharedGlobals08previousH00qH8Response13groupResolverSo07INStartgbH0CSgAA0abM0_p_17SiriAppResolution0W0CAA06SharedP9Providing_pAMSo08INIntentR0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0V9Inference012ContactGroupT0V_Tt5g5(v29, v28, v103, v27, 0, v24, v30, v31, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      goto LABEL_18;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
    if (swift_dynamicCastMetatype())
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
      v32 = v98;
      if (v98)
      {
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
      }

      v33 = v101;
      v34 = v99;

      ContactGroupResolver.init()();
      _s27PhoneCallFlowDelegatePlugin010StartVideoB16IntentConversionO09convertToH005phoneB8NLIntent3app13sharedGlobals08previousH00qH8Response13groupResolverSo07INStartgbH0CSgAA0abM0_p_17SiriAppResolution0W0CAA06SharedP9Providing_pAMSo08INIntentR0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0V9Inference012ContactGroupT0V_Tt5g5(v34, v33, v103, v32, 0, v24, v35, v36, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
      goto LABEL_18;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
    if (swift_dynamicCastMetatype())
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
      if (v98)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
      }

      ContactGroupResolver.init()();
      _s27PhoneCallFlowDelegatePlugin06AnswerB16IntentConversionO09convertToG005phoneB8NLIntent3app13sharedGlobals08previousG00pG8Response13groupResolverSo08INAnswerbG0CSgAA0abL0_p_17SiriAppResolution0V0CAA06SharedO9Providing_pAMSo08INIntentQ0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0U9Inference012ContactGroupS0V_Tt5g5();
LABEL_18:
      v37 = v26;

      __swift_destroy_boxed_opaque_existential_1(v103);
      (*(v97 + 8))(v24, v96);
      if (!v37)
      {
        return 0;
      }

      goto LABEL_19;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INJoinCallIntent, INJoinCallIntent_ptr);
    if (swift_dynamicCastMetatype())
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
      v39 = swift_allocObject();
      v40 = v98;
      *(v39 + 16) = v101;
      *(v39 + 24) = v40;
      outlined init with take of SPHConversation(v103, v39 + 32);
      v41 = v40;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
      Transformer.init(transform:)();
      v42 = Transformer.transform.getter();
      (*(v93 + 8))(v15, v13);
      v43 = v100;
      v42(v103, v99);
      if (v43)
      {
        goto LABEL_28;
      }
    }

    else
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
        if (swift_dynamicCastMetatype())
        {
          _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
          v49 = v98;
          if (v98)
          {
            objc_opt_self();
            v49 = swift_dynamicCastObjCClass();
          }

          v50 = v101;
          v51 = v99;
          v52 = v91;

          ContactGroupResolver.init()();
          __swift_project_boxed_opaque_existential_1(v51, v51[3]);
          if (PhoneCallNLIntent.hasAnyConfirmation()())
          {
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v53 = type metadata accessor for Logger();
            __swift_project_value_buffer(v53, static Logger.siriPhone);
            v54 = v49;
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              *&v102[0] = v58;
              *v57 = 136315138;
              v104 = v49;
              v59 = v54;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INIdentifyIncomingCallerIntentCSgMd, &_sSo30INIdentifyIncomingCallerIntentCSgMR);
              v60 = String.init<A>(describing:)();
              v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v102);

              *(v57 + 4) = v62;
              _os_log_impl(&dword_0, v55, v56, "#IdentifyCallerIntentConversion is confirmation, returning previousIntent: %s.", v57, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v58);

              (*(v97 + 8))(v91, v96);
            }

            else
            {

              (*(v97 + 8))(v52, v96);
            }

            __swift_destroy_boxed_opaque_existential_1(v103);
            if (!v49)
            {
              return 0;
            }

            v37 = v54;
            goto LABEL_19;
          }

          v74 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
          v37 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA014IdentifyCallergH0O_Tt3g5(v74, v103, v50, v49);

          (*(v97 + 8))(v52, v96);
        }

        else
        {
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
          if (swift_dynamicCastMetatype())
          {
            _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
            v63 = v101;
            v64 = v98;
            if (v98)
            {
              objc_opt_self();
              v64 = swift_dynamicCastObjCClass();
            }

            v65 = v94;
            v66 = v90;
            v67 = v89;
            v68 = v88;

            ContactGroupResolver.init()();
            _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v103, v102);
            v69 = swift_allocObject();
            v69[2] = v63;
            v69[3] = v64;
            outlined init with take of SPHConversation(v102, (v69 + 4));
            v69[9] = v65;
            v70 = v65;

            v71 = v64;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
            Transformer.init(transform:)();
            v72 = Transformer.transform.getter();
            (*(v67 + 8))(v68, v66);
            v73 = v100;
            v72(v102, v99);
            if (v73)
            {

              (*(v97 + 8))(v19, v96);
              __swift_destroy_boxed_opaque_existential_1(v103);
              return 0;
            }

            (*(v97 + 8))(v19, v96);
            __swift_destroy_boxed_opaque_existential_1(v103);
            v37 = *&v102[0];
            goto LABEL_19;
          }

          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
          v75 = swift_dynamicCastMetatype();
          v76 = v101;
          if (!v75)
          {
            v80 = type metadata accessor for TransformationError();
            lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
            swift_allocError();
            (*(*(v80 - 8) + 104))(v81, enum case for TransformationError.notImplemented(_:), v80);
            return swift_willThrow();
          }

          _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
          v77 = v98;
          if (v98)
          {
            objc_opt_self();
            v77 = swift_dynamicCastObjCClass();
          }

          v78 = v99;

          ContactGroupResolver.init()();
          v79 = static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(v78, v76, v103);
          v37 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06Searchb7HistorygH0O_Tt3g5(v79, v103, v76, v77);

          (*(v97 + 8))(v24, v96);
        }

        __swift_destroy_boxed_opaque_existential_1(v103);
LABEL_19:
        result = swift_dynamicCastUnknownClass();
        if (result)
        {
          return result;
        }

        return 0;
      }

      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v103);
      v44 = swift_allocObject();
      v45 = v98;
      *(v44 + 16) = v101;
      *(v44 + 24) = v45;
      outlined init with take of SPHConversation(v103, v44 + 32);
      v46 = v45;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
      Transformer.init(transform:)();
      v47 = Transformer.transform.getter();
      (*(v92 + 8))(v12, v10);
      v48 = v100;
      v47(v103, v99);
      if (v48)
      {
LABEL_28:
      }
    }

    v37 = *&v103[0];
    goto LABEL_19;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logger.siriPhone);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v103[0] = v86;
    *v85 = 136315138;
    *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000000461BC0, v103);
    _os_log_impl(&dword_0, v83, v84, "%s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SKTransformer.RCHFlowContext(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SKTransformer.RCHFlowContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)()
{
  OUTLINED_FUNCTION_66();
  v7 = OUTLINED_FUNCTION_3_110(v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_8_76(v7, &v55);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4_84(v9, v52);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_51_27();
  v10();
  OUTLINED_FUNCTION_46_26("SKTransformer");
  OUTLINED_FUNCTION_6_87(v11, v12);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v13 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_54_24();
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_57_24(v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_18_36(v20, v21, v22, v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_38_26(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_43(v26);
  v27 = &unk_426000;
  OUTLINED_FUNCTION_52_21();
  if (v28)
  {
    OUTLINED_FUNCTION_86_1();
    v29 = OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_20_45(v29);
    *v14 = 136315394;
    v30 = OUTLINED_FUNCTION_21_44("convertToSKIntent(phoneCallNLIntent:rchFlowContext:)");
    OUTLINED_FUNCTION_19_40(v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INHangUpCallIntentCmMd, &_sSo18INHangUpCallIntentCmMR);
    v32 = OUTLINED_FUNCTION_48_24(v31);
    v27 = v1;
    OUTLINED_FUNCTION_25_37(v32, v33);
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_33_23();
    OUTLINED_FUNCTION_30_37(&dword_0, v34, v35, "#SKTransformer %s to %s");
    OUTLINED_FUNCTION_22_35();
    OUTLINED_FUNCTION_26_0(v1);
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_29_32();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v37 = OUTLINED_FUNCTION_11_64(v36);
  if (v37)
  {
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v14)
    {
      OUTLINED_FUNCTION_55_24();
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v27);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    v40 = OUTLINED_FUNCTION_13_55(v37, v38, v39, &type metadata for PhoneCallNLv4Intent);
    if (v40)
    {
      outlined destroy of PhoneCallNLv4Intent(v53);
    }

    else
    {
      if ((OUTLINED_FUNCTION_13_55(v40, v41, v42, &type metadata for PhoneCallIFIntent) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v54);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v53);
    }

    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  v43 = swift_errorRetain();
  v44 = OUTLINED_FUNCTION_56_15(v43);
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v45 = OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_9_73(v45);
    v46 = OUTLINED_FUNCTION_27_36(4.8151e-34);
    OUTLINED_FUNCTION_10_71(v46, v47);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_16_54();
    v48 = OUTLINED_FUNCTION_14_57();
    OUTLINED_FUNCTION_39_26(v48, v49);
    OUTLINED_FUNCTION_12_63();
    *(v0 + 14) = v25;
    OUTLINED_FUNCTION_24_39(&dword_0, v50, v51, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_26_0(v0);
  }

  else
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_7_78();
  OUTLINED_FUNCTION_17_50();

  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_66();
  v7 = OUTLINED_FUNCTION_3_110(v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_8_76(v7, &v58);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4_84(v9, v55);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_51_27();
  v10();
  OUTLINED_FUNCTION_46_26("SKTransformer");
  OUTLINED_FUNCTION_6_87(v11, v12);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v13 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_54_24();
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_57_24(v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_18_36(v20, v21, v22, v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_38_26(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_43(v26);
  v27 = &unk_426000;
  OUTLINED_FUNCTION_52_21();
  if (v28)
  {
    OUTLINED_FUNCTION_86_1();
    v29 = OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_20_45(v29);
    *v14 = 136315394;
    v30 = OUTLINED_FUNCTION_21_44("convertToSKIntent(phoneCallNLIntent:rchFlowContext:)");
    OUTLINED_FUNCTION_19_40(v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
    v32 = OUTLINED_FUNCTION_48_24(v31);
    v27 = v1;
    OUTLINED_FUNCTION_25_37(v32, v33);
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_33_23();
    OUTLINED_FUNCTION_30_37(&dword_0, v34, v35, "#SKTransformer %s to %s");
    OUTLINED_FUNCTION_22_35();
    OUTLINED_FUNCTION_26_0(v1);
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_29_32();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v37 = OUTLINED_FUNCTION_11_64(v36);
  if (v37)
  {
    v40 = OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v40, v41, v42);
    if (!v14)
    {
      OUTLINED_FUNCTION_55_24();
      __swift_destroy_boxed_opaque_existential_1(v57);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v27);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_13_55(v37, v38, v39, &type metadata for PhoneCallNLv4Intent);
    if (v43)
    {
      outlined destroy of PhoneCallNLv4Intent(v56);
    }

    else
    {
      if ((OUTLINED_FUNCTION_13_55(v43, v44, v45, &type metadata for PhoneCallIFIntent) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v57);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v56);
    }

    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  v46 = swift_errorRetain();
  v47 = OUTLINED_FUNCTION_56_15(v46);
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v48 = OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_9_73(v48);
    v49 = OUTLINED_FUNCTION_27_36(4.8151e-34);
    OUTLINED_FUNCTION_10_71(v49, v50);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_16_54();
    v51 = OUTLINED_FUNCTION_14_57();
    OUTLINED_FUNCTION_39_26(v51, v52);
    OUTLINED_FUNCTION_12_63();
    *(v0 + 14) = v25;
    OUTLINED_FUNCTION_24_39(&dword_0, v53, v54, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_26_0(v0);
  }

  else
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_7_78();
  OUTLINED_FUNCTION_17_50();

  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_66();
  v7 = OUTLINED_FUNCTION_3_110(v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_8_76(v7, &v62);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4_84(v9, v59);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_51_27();
  v10();
  OUTLINED_FUNCTION_46_26("SKTransformer");
  OUTLINED_FUNCTION_6_87(v11, v12);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v13 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_54_24();
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_57_24(v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_18_36(v20, v21, v22, v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_38_26(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_43(v26);
  v27 = &unk_426000;
  OUTLINED_FUNCTION_52_21();
  if (v28)
  {
    OUTLINED_FUNCTION_86_1();
    v29 = OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_20_45(v29);
    *v14 = 136315394;
    v30 = OUTLINED_FUNCTION_21_44("convertToSKIntent(phoneCallNLIntent:rchFlowContext:)");
    OUTLINED_FUNCTION_19_40(v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
    v32 = OUTLINED_FUNCTION_48_24(v31);
    v27 = v1;
    OUTLINED_FUNCTION_25_37(v32, v33);
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_33_23();
    OUTLINED_FUNCTION_30_37(&dword_0, v34, v35, "#SKTransformer %s to %s");
    OUTLINED_FUNCTION_22_35();
    OUTLINED_FUNCTION_26_0(v1);
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_29_32();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v37 = OUTLINED_FUNCTION_11_64(v36);
  if (v37)
  {
    v40 = OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v40, v41, v42);
    if (!v14)
    {
      OUTLINED_FUNCTION_55_24();
      __swift_destroy_boxed_opaque_existential_1(v61);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v27);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_13_55(v37, v38, v39, &type metadata for PhoneCallNLv4Intent);
    if (v43)
    {
      outlined destroy of PhoneCallNLv4Intent(v60);
    }

    else
    {
      if ((OUTLINED_FUNCTION_13_55(v43, v44, v45, &type metadata for PhoneCallIFIntent) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v61);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v60);
    }

    __swift_destroy_boxed_opaque_existential_1(v61);
    v46 = OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v46, v47, v48, v49);
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  v50 = swift_errorRetain();
  v51 = OUTLINED_FUNCTION_56_15(v50);
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v52 = OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_9_73(v52);
    v53 = OUTLINED_FUNCTION_27_36(4.8151e-34);
    OUTLINED_FUNCTION_10_71(v53, v54);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_16_54();
    v55 = OUTLINED_FUNCTION_14_57();
    OUTLINED_FUNCTION_39_26(v55, v56);
    OUTLINED_FUNCTION_12_63();
    *(v0 + 14) = v25;
    OUTLINED_FUNCTION_24_39(&dword_0, v57, v58, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_26_0(v0);
  }

  else
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_7_78();
  OUTLINED_FUNCTION_17_50();

  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_66();
  v7 = OUTLINED_FUNCTION_3_110(v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_8_76(v7, &v62);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4_84(v9, v59);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_51_27();
  v10();
  OUTLINED_FUNCTION_46_26("SKTransformer");
  OUTLINED_FUNCTION_6_87(v11, v12);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = [v13 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_54_24();
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_57_24(v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_18_36(v20, v21, v22, v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_38_26(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_43(v26);
  v27 = &unk_426000;
  OUTLINED_FUNCTION_52_21();
  if (v28)
  {
    OUTLINED_FUNCTION_86_1();
    v29 = OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_20_45(v29);
    *v14 = 136315394;
    v30 = OUTLINED_FUNCTION_21_44("convertToSKIntent(phoneCallNLIntent:rchFlowContext:)");
    OUTLINED_FUNCTION_19_40(v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
    v32 = OUTLINED_FUNCTION_48_24(v31);
    v27 = v1;
    OUTLINED_FUNCTION_25_37(v32, v33);
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_33_23();
    OUTLINED_FUNCTION_30_37(&dword_0, v34, v35, "#SKTransformer %s to %s");
    OUTLINED_FUNCTION_22_35();
    OUTLINED_FUNCTION_26_0(v1);
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_29_32();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v37 = OUTLINED_FUNCTION_11_64(v36);
  if (v37)
  {
    v40 = OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v40, v41, v42);
    if (!v14)
    {
      OUTLINED_FUNCTION_55_24();
      __swift_destroy_boxed_opaque_existential_1(v61);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v27);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_13_55(v37, v38, v39, &type metadata for PhoneCallNLv4Intent);
    if (v43)
    {
      outlined destroy of PhoneCallNLv4Intent(v60);
    }

    else
    {
      if ((OUTLINED_FUNCTION_13_55(v43, v44, v45, &type metadata for PhoneCallIFIntent) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v61);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v60);
    }

    __swift_destroy_boxed_opaque_existential_1(v61);
    v46 = OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v46, v47, v48, v49);
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  v50 = swift_errorRetain();
  v51 = OUTLINED_FUNCTION_56_15(v50);
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v52 = OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_9_73(v52);
    v53 = OUTLINED_FUNCTION_27_36(4.8151e-34);
    OUTLINED_FUNCTION_10_71(v53, v54);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_16_54();
    v55 = OUTLINED_FUNCTION_14_57();
    OUTLINED_FUNCTION_39_26(v55, v56);
    OUTLINED_FUNCTION_12_63();
    *(v0 + 14) = v25;
    OUTLINED_FUNCTION_24_39(&dword_0, v57, v58, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_26_0(v0);
  }

  else
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_7_78();
  OUTLINED_FUNCTION_17_50();

  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type TransformationError and conformance TransformationError()
{
  result = lazy protocol witness table cache variable for type TransformationError and conformance TransformationError;
  if (!lazy protocol witness table cache variable for type TransformationError and conformance TransformationError)
  {
    type metadata accessor for TransformationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationError and conformance TransformationError);
  }

  return result;
}

uint64_t objectdestroy_7Tm_0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t OUTLINED_FUNCTION_29_32()
{

  return _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v0 - 128, v0 - 168);
}

uint64_t OUTLINED_FUNCTION_38_26(uint64_t a1, uint64_t a2)
{
  *(v2 - 392) = __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

unint64_t OUTLINED_FUNCTION_39_26(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 272));
}

uint64_t OUTLINED_FUNCTION_47_24()
{
}

void OUTLINED_FUNCTION_54_24()
{
}

uint64_t OUTLINED_FUNCTION_55_24()
{

  return outlined destroy of PhoneCallNLv3Intent(v0);
}

uint64_t OUTLINED_FUNCTION_56_15(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver()
{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_12_0();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_17(v1);

  return v4(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v3 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t specialized SlotResolver.resolve(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_51(v0);
  OUTLINED_FUNCTION_2_0();
  v7 = (*(v1 + 104) + **(v1 + 104));
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_17(v3);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_2_0();
  (*(v3 + 120))(v1, v2);

  OUTLINED_FUNCTION_11();
  v8 = v4;
  v5 = v2;
  v6 = *(v0 + 16);

  return v8(v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_51(v0);
  v1 = OUTLINED_FUNCTION_12_0();
  v2 = OUTLINED_FUNCTION_38_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_17(v2);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_51(v0);
  v1 = OUTLINED_FUNCTION_12_0();
  v2 = OUTLINED_FUNCTION_38_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_17(v2);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_2_0();
  (*(v3 + 144))(v1, v2);

  OUTLINED_FUNCTION_11();
  v8 = v4;
  v5 = v2;
  v6 = *(v0 + 16);

  return v8(v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_51(v0);
  v1 = OUTLINED_FUNCTION_12_0();
  v2 = OUTLINED_FUNCTION_38_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_17(v2);

  return v6(v4);
}

uint64_t SlotResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v5[7] = *(AssociatedTypeWitness - 8);
  v5[8] = swift_task_alloc();
  v11 = (*(a4 + 24) + **(a4 + 24));
  v8 = swift_task_alloc();
  v5[9] = v8;
  *v8 = v5;
  v9 = OUTLINED_FUNCTION_20_46(v8);

  return v11(v9);
}

uint64_t SlotResolver.resolve(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v4 + 80) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  (*(v0[4] + 40))(v1, v4, v0[3]);
  (*(v2 + 8))(v1, v3);
  v5 = v4;

  v6 = v0[1];
  v7 = v0[2];

  return v6(v7);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t specialized EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v17 = a1;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EmergencyContactResolution();
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  (*(v14 + 8))(v18, v13, v14);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(v17, v11, v5 + 5, closure #1 in EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)partial apply, v15, v12, &unk_531C20, &protocol witness table for INStartVideoCallIntent, closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)partial apply);

  (*(v9 + 8))(v11, v8);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

{
  v5 = v4;
  v17 = a1;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EmergencyContactResolution();
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  (*(v14 + 8))(v18, v13, v14);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(v17, v11, v5 + 5, closure #1 in EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)partial apply, v15, v12, &unk_531B30, &protocol witness table for INStartAudioCallIntent, closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)partial apply);

  (*(v9 + 8))(v11, v8);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

{
  v5 = v4;
  v17 = a1;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EmergencyContactResolution();
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  (*(v14 + 8))(v18, v13, v14);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(v17, v11, v5 + 5, partial apply for closure #1 in EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:), v15, v12, &unk_531A40, &protocol witness table for INStartCallIntent, _s27PhoneCallFlowDelegatePlugin26EmergencyContactResolutionC05fetchF8Contacts13sirikitIntent6locale14medicalIDStore_yAA018INPersonContainingL0_p_10Foundation6LocaleVAA0fG9Providing_pys6ResultOySaySo0P0CGs5Error_pGctFZySaySo012_HKEmergencyG0CGSg_sAR_pSgtcfU_TA_0);

  (*(v9 + 8))(v11, v8);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance EmergencyContactSlotResolver<A>()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_23_35();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_20_46(v1);

  return SlotResolver.resolveSlot(skIntent:nlIntent:)(v2, v3, v4, v5, v6);
}

uint64_t specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = v2;
  return _swift_task_switch(specialized SlotResolver.resolveSlot(skIntent:nlIntent:), 0, 0);
}

{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = v2;
  return _swift_task_switch(specialized SlotResolver.resolveSlot(skIntent:nlIntent:), 0, 0);
}

{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = v2;
  return _swift_task_switch(specialized SlotResolver.resolveSlot(skIntent:nlIntent:), 0, 0);
}

{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27();
  v21 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_9_74(v21);
  v22 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *(v20 + 24) = v23;
  *(v20 + 32) = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v24 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_27();
  v21 = *(v20 + 40);
  v22 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_8_77(v22);
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *v21 = v24;
  v21[1] = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v25 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_27();
  v21 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_9_74(v21);
  v22 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *(v20 + 24) = v23;
  *(v20 + 32) = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v24 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_27();
  v21 = *(v20 + 40);
  v22 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_8_77(v22);
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *v21 = v24;
  v21[1] = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v25 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_27();
  v21 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_9_74(v21);
  v22 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *(v20 + 24) = v23;
  *(v20 + 32) = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v24 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

{
  OUTLINED_FUNCTION_27();
  v21 = *(v20 + 40);
  v22 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_8_77(v22);
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *v21 = v24;
  v21[1] = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v25 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t specialized SlotResolver.resolveSlot(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_88();

    return v11(v10);
  }
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
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_88();

    return v11(v10);
  }
}

uint64_t SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23_0();
  v21 = *(v20 + 40);
  v22 = swift_task_alloc();
  *(v20 + 64) = v22;
  v23 = *(v20 + 48);
  v24 = *(v20 + 24);
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 40) = v24;
  v25 = swift_task_alloc();
  *(v20 + 72) = v25;
  swift_getAssociatedTypeWitness();
  *v25 = v20;
  v25[1] = SlotResolver.resolveSlot(skIntent:nlIntent:);
  OUTLINED_FUNCTION_66_0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v26, v27, v28, 0xD00000000000001FLL, v29, v30, v22, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t SlotResolver.resolveSlot(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 80) = v0;

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

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance EmergencyContactSlotResolver<A>()
{
  OUTLINED_FUNCTION_23_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_24_40();

  return SlotResolver.resolve(skIntent:nlIntent:)(v2, v3, v4, v5);
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance SiriInferenceContactSlotResolver<A>()
{
  OUTLINED_FUNCTION_23_35();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v8 = type metadata accessor for SiriInferenceContactSlotResolver(0, *(v1 + 80), *(v1 + 88), v7);
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return SlotResolver.resolveSlot(skIntent:nlIntent:)(v5, v4, v3, v8, v0);
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance SiriInferenceContactSlotResolver<A>()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  type metadata accessor for SiriInferenceContactSlotResolver(0, *(v2 + 80), *(v2 + 88), v4);
  swift_getWitnessTable();
  *v3 = v0;
  v5 = OUTLINED_FUNCTION_24_40();

  return SlotResolver.resolve(skIntent:nlIntent:)(v5, v6, v7, v8);
}

uint64_t specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA;
  *(v14 + 24) = v13;

  specialized EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(a3, a4, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply, v14);
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA016EmergencyContactfG0VySo012INStartAudiobJ0CG_TG5TA;
  *(v14 + 24) = v13;

  specialized EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(a3, a4, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply, v14);
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA;
  *(v14 + 24) = v13;

  specialized EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(a3, a4, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply, v14);
}

uint64_t specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a4;
  v25 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  OUTLINED_FUNCTION_7();
  v13 = v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v24 - v16;
  (*(v13 + 16))(&v24 - v16, a1, v11, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v11);
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = v19;
  OUTLINED_FUNCTION_2_0();
  v22 = *(v21 + 136);

  v22(a3, v24, v25, v20);
}

uint64_t closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_(a1, a5, a6);
  (*(a6 + 32))(a3, a4, v10, v11, a5, a6);
}

uint64_t (*_s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for CheckedContinuation();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_TA;
}

uint64_t _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo012INStartVideobJ0CG_Tg5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100) != 0)
  {
    v5 = a3;
    lazy protocol witness table accessor for type SlotResolverError and conformance SlotResolverError();
    swift_allocError();
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = v5;
    outlined copy of SlotResolverError(a1, a2, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = type metadata accessor for CheckedContinuation();
  v6 = lazy protocol witness table accessor for type SlotResolverError and conformance SlotResolverError();
  return CheckedContinuation.resume<A>(with:)(a1, v5, &type metadata for SlotResolverError, v6);
}

uint64_t CheckedContinuation.resume<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Result();
  v16 = __chkstk_darwin(v15);
  v18 = v24 - v17;
  (*(v19 + 16))(v24 - v17, a1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v11 + 32);
    v20(v14, v18, a3);
    v21 = swift_allocError();
    v20(v22, v14, a3);
    v24[3] = v21;
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v7 + 32))(v9, v18, v6);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  v48 = a8;
  v43 = a7;
  v44 = a4;
  v45 = a5;
  v46 = a1;
  v49 = a9;
  v11 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v17 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v19 = v18;
  v39 = v20;
  v22 = v21;
  v24 = v23;
  v25 = a3[4];
  v42 = a3[3];
  v40 = v25;
  v41 = __swift_project_boxed_opaque_existential_1(a3, v42);
  (*(v13 + 16))(v17, a2, v11);
  v26 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 16) = v19;
  *(v28 + 24) = v29;
  *(v28 + 32) = v22;
  *(v28 + 40) = v24;
  *(v28 + 41) = HIBYTE(v24) & 1;
  v30 = v45;
  *(v28 + 48) = v44;
  *(v28 + 56) = v30;
  (*(v13 + 32))(v28 + v26, v17, v11);
  v31 = (v28 + v27);
  v32 = v46;
  v33 = v48;
  *v31 = v46;
  v31[1] = v33;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v47;
  v34 = v40;
  v35 = *(v40 + 8);

  v36 = v32;
  v35(v49, v28, v42, v34);
}

uint64_t specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *a2, a3, a4, &unk_531B58, &unk_531B80, _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply);
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *a2, a3, a4, &unk_531A68, &unk_531A90, _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply);
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *a2, a3, a4, &unk_531978, &unk_5319A0, _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA, _ss6ResultOySaySo8INPersonCG27PhoneCallFlowDelegatePlugin17SlotResolverErrorOGIegn_AIIegg_TRTA_1);
}

uint64_t partial apply for specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1)
{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t lazy protocol witness table accessor for type SlotResolverError and conformance SlotResolverError()
{
  result = lazy protocol witness table cache variable for type SlotResolverError and conformance SlotResolverError;
  if (!lazy protocol witness table cache variable for type SlotResolverError and conformance SlotResolverError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SlotResolverError and conformance SlotResolverError);
  }

  return result;
}

double outlined copy of SlotResolverError(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    swift_errorRetain();
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  OUTLINED_FUNCTION_23_5();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_TA(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = *(type metadata accessor for CheckedContinuation() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_(a1, v6, v3, v4);
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin17SlotResolverErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

double SlotTemplating.toAnySlotTemplating()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = __chkstk_darwin(a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AnySlotTemplating.init<A>(delegate:)(v9, a1, v15, AssociatedTypeWitness, a2);
  v12 = v15[1];
  *a3 = v15[0];
  a3[1] = v12;
  result = *&v16;
  v14 = v17;
  a3[2] = v16;
  a3[3] = v14;
  return result;
}

uint64_t AnySlotTemplating.init<A>(delegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>, uint64_t a4@<X1>, uint64_t a5@<X3>)
{
  v32 = implicit closure #1 in AnySlotTemplating.init<A>(delegate:)(a1, a4, a2, a5);
  v9 = v8;
  v10 = OUTLINED_FUNCTION_5_88();
  v14 = implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v10, v11, v12, v13);
  v16 = v15;
  v17 = OUTLINED_FUNCTION_5_88();
  v21 = implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(v17, v18, v19, v20);
  v23 = v22;
  v24 = OUTLINED_FUNCTION_5_88();
  v28 = implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(v24, v25, v26, v27);
  v30 = v29;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v32;
  a3[1] = v9;
  a3[2] = v14;
  a3[3] = v16;
  a3[4] = v21;
  a3[5] = v23;
  a3[6] = v28;
  a3[7] = v30;
  return result;
}

uint64_t (*implicit closure #1 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
}

uint64_t (*implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
}

uint64_t (*implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
}

uint64_t (*implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
}

uint64_t type metadata instantiation function for AnySlotTemplating(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SmartAppSelectionFeatureManager.__allocating_init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(a1, a2, a3);
  return v6;
}

void *SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3[9] = type metadata accessor for SmartAppSelectionFeatureManager();
  v3[10] = &outlined read-only object #0 of SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:);
  v3[11] = 0;
  v3[12] = 0;
  v3[2] = a2;
  outlined init with take of PhoneCallFeatureFlagProviding(a1, (v3 + 3));
  v3[8] = a3;
  return v3;
}

Swift::Bool __swiftcall SmartAppSelectionFeatureManager.isForcedAppDisambiguationEnabled()()
{
  OUTLINED_FUNCTION_11_65();
  v3 = OUTLINED_FUNCTION_1_1();
  v4(v3);
  OUTLINED_FUNCTION_24_2();
  v6 = (*(v5 + 184))();

  if (v6)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v8 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v9 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_19_41(v9, v10, v11, v12);
    OUTLINED_FUNCTION_7_79(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_40_0();

    *(v2 + 4) = v1;
LABEL_6:
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v19, v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
LABEL_7:

    return 1;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v26 = OUTLINED_FUNCTION_1_1();
  v27(v26);
  OUTLINED_FUNCTION_24_2();
  v29 = (*(v28 + 192))();

  if (v29)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v32 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v33 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_19_41(v33, v34, v35, v36);
    OUTLINED_FUNCTION_7_79(v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_40_0();

    *(v2 + 4) = v1;
  }

  else
  {
    if (((*(*v0 + 144))(v30) & 1) == 0)
    {
      return 0;
    }

    if (!SmartAppSelectionFeatureManager.isLongEnoughSinceLastForcedAppDisambiguationShowed()())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v32 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_162();
      if (!OUTLINED_FUNCTION_108())
      {
        goto LABEL_15;
      }

      swift_slowAlloc();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_49_3();
      v62 = OUTLINED_FUNCTION_1_119(4.8151e-34);
      OUTLINED_FUNCTION_19_41(v62, v63, v64, v65);
      OUTLINED_FUNCTION_7_79(v66, v67, v68, v69, v70, v71);
      OUTLINED_FUNCTION_40_0();

      OUTLINED_FUNCTION_21_45();
      OUTLINED_FUNCTION_24_41();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_17_52();
    if ((*(v49 + 96))(0, v0 + 3))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v8 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_162();
      if (!OUTLINED_FUNCTION_108())
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_49_3();
      v51 = OUTLINED_FUNCTION_1_119(4.8149e-34);
      OUTLINED_FUNCTION_19_41(v51, v52, v53, v54);
      OUTLINED_FUNCTION_7_79(v55, v56, v57, v58, v59, v60);
      OUTLINED_FUNCTION_40_0();

      *(v2 + 4) = v0;
      goto LABEL_6;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v32 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v73 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_19_41(v73, v74, v75, v76);
    OUTLINED_FUNCTION_7_79(v77, v78, v79, v80, v81, v82);
    OUTLINED_FUNCTION_40_0();

    *(v2 + 4) = v0;
  }

  OUTLINED_FUNCTION_2_114();
LABEL_14:
  _os_log_impl(v43, v44, v45, v46, v47, v48);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_35();
LABEL_15:

  return 0;
}

Swift::Bool __swiftcall SmartAppSelectionFeatureManager.isAppNameSpecifiedByUserSignalCollectionEnabled()()
{
  if (((*(*v0 + 144))() & 1) == 0)
  {
    return 0;
  }

  if (!SmartAppSelectionFeatureManager.isLongEnoughSinceLastAppNameSpecifiedByUserSignalCollected()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v23 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_18;
    }

    swift_slowAlloc();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v24 = OUTLINED_FUNCTION_1_119(4.8151e-34);
    OUTLINED_FUNCTION_19_41(v24, v25, v26, v27);
    OUTLINED_FUNCTION_7_79(v28, v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_21_45();
    OUTLINED_FUNCTION_24_41();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_17_52();
  if (((*(v2 + 96))(1, v0 + 24) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v23 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v41 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_19_41(v41, v42, v43, v44);
    OUTLINED_FUNCTION_7_79(v45, v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_40_0();

    *(v1 + 4) = v0;
    OUTLINED_FUNCTION_2_114();
LABEL_17:
    _os_log_impl(v34, v35, v36, v37, v38, v39);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
LABEL_18:

    return 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_162();
  if (OUTLINED_FUNCTION_108())
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v5 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_19_41(v5, v6, v7, v8);
    OUTLINED_FUNCTION_7_79(v9, v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_40_0();

    *(v1 + 4) = v0;
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v15, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  return 1;
}

Swift::Bool __swiftcall SmartAppSelectionFeatureManager.isAppSelectionEnabled()()
{
  OUTLINED_FUNCTION_11_65();
  v3 = OUTLINED_FUNCTION_1_1();
  v4(v3);
  OUTLINED_FUNCTION_24_2();
  v6 = (*(v5 + 200))();

  if (v6)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v8 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    v9 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_62_19(v9, v10, v11, v12);
    OUTLINED_FUNCTION_9_75(v13, v14, v15, v16, v17, v18, v19, v20, v66, v67, v68);
    OUTLINED_FUNCTION_40_0();

    *(v2 + 4) = v1;
LABEL_6:
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
LABEL_7:

    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v28 = OUTLINED_FUNCTION_1_1();
  v29(v28);
  v30 = SmartAppSelectionFeatureManager.validateDevice(_:)(&v67);
  __swift_destroy_boxed_opaque_existential_1(&v67);
  if ((v30 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v46 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_17_52();
  if ((*(v31 + 96))(3, v0 + 24))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v8 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    v33 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_62_19(v33, v34, v35, v36);
    OUTLINED_FUNCTION_9_75(v37, v38, v39, v40, v41, v42, v43, v44, v66, v67, v68);
    OUTLINED_FUNCTION_40_0();

    *(v2 + 4) = v30;
    goto LABEL_6;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v46 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_162();
  if (OUTLINED_FUNCTION_108())
  {
LABEL_21:
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    v48 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_62_19(v48, v49, v50, v51);
    OUTLINED_FUNCTION_9_75(v52, v53, v54, v55, v56, v57, v58, v59, v66, v67, v68);
    OUTLINED_FUNCTION_40_0();

    *(v2 + 4) = v30;
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v60, v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_22:

  return 0;
}

Swift::Bool __swiftcall SmartAppSelectionFeatureManager.shouldEnableSignalCollectionBasedOnCommonConditions()()
{
  OUTLINED_FUNCTION_11_65();
  v2 = OUTLINED_FUNCTION_1_1();
  v3(v2);
  v4 = SmartAppSelectionFeatureManager.validateDevice(_:)(v29);
  v5 = __swift_destroy_boxed_opaque_existential_1(v29);
  if ((v4 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v8 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = *(v0 + 64);
  if ((*(*v4 + 80))(v5))
  {
    return 1;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v8 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_162();
  if (OUTLINED_FUNCTION_108())
  {
LABEL_11:
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    v10 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    OUTLINED_FUNCTION_62_19(v10, v11, v12, v13);
    OUTLINED_FUNCTION_9_75(v14, v15, v16, v17, v18, v19, v20, v21, v28, v29[0], v29[1]);
    OUTLINED_FUNCTION_40_0();

    *(v1 + 4) = v4;
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v22, v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_12:

  return 0;
}

BOOL SmartAppSelectionFeatureManager.isLongEnoughSinceLastForcedAppDisambiguationShowed()()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_5();
  __chkstk_darwin(v2);
  v3 = v0[6];
  v4 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v3);
  v5 = OUTLINED_FUNCTION_14_58();
  v6(v5);
  OUTLINED_FUNCTION_25_39();
  Date.timeIntervalSince1970.getter();
  v7 = OUTLINED_FUNCTION_23_36();
  v8(v7);
  v16[0] = 0;
  v17 = v1;
  v18 = _swiftEmptyArrayStorage;
  v9 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(2, v16, v3, &type metadata for ForcedAppDisambiguationHistory, v4, v9, v19);
  v10 = v19[0];
  v11 = v20;
  v12 = v21;
  __swift_destroy_boxed_opaque_existential_1(v22);
  ForcedAppDisambiguationHistory.daysSinceLastShowed.getter(v11, v10, v12);
  v14 = v13;

  return v14 > 28;
}

BOOL SmartAppSelectionFeatureManager.isLongEnoughSinceLastAppNameSpecifiedByUserSignalCollected()()
{
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1_5();
  __chkstk_darwin(v3);
  v4 = v0[6];
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v4);
  v6 = OUTLINED_FUNCTION_14_58();
  v7(v6);
  OUTLINED_FUNCTION_25_39();
  Date.timeIntervalSince1970.getter();
  v8 = OUTLINED_FUNCTION_23_36();
  v9(v8);
  v14[0] = v2;
  v14[1] = _swiftEmptyArrayStorage;
  v10 = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(3, v14, v4, &type metadata for AppNameSpecifiedByUserSignalCollectionHistory, v5, v10, v15);
  v11 = *v15;
  v12 = v15[1];
  __swift_destroy_boxed_opaque_existential_1(v16);
  AppNameSpecifiedByUserSignalCollectionHistory.daysSinceLastShowed.getter(v12, v11);
  OUTLINED_FUNCTION_40_0();

  return v1 > 28;
}

uint64_t SmartAppSelectionFeatureManager.validateDevice(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  if (dispatch thunk of DeviceState.isPhone.getter())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  return dispatch thunk of DeviceState.isCarPlay.getter() & 1;
}

uint64_t SmartAppSelectionFeatureManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t SmartAppSelectionFeatureManager.__deallocating_deinit()
{
  SmartAppSelectionFeatureManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t SpeakerphoneControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(SpeakerphoneControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t SpeakerphoneControlFlow.executeAction(currentCall:)()
{
  v68 = v0;
  v1 = *(v0[9] + 56);
  if ((PhoneCallControlAction.isSpeakerphoneAction.getter(v1) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#SpeakerphoneControlFlow used to handle a call control not related to the microphone.", v8, 2u);
      OUTLINED_FUNCTION_26_0(v8);
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v10 = v9;
    v11 = 0;
    *v9 = v1;
    goto LABEL_13;
  }

  if (PhoneCallControlAction.rawValue.getter(v1) == 0xD000000000000013 && 0x8000000000452ED0 == v2)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v13 = v0[8];
  ObjectType = swift_getObjectType();
  if ((*(v13 + 32))(ObjectType, v13) & 1) != 0 && ((*(v0[8] + 24))(ObjectType))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#SpeakerphoneControlFlow cannot turn off speakerphone on FaceTime call.", v18, 2u);
      OUTLINED_FUNCTION_26_0(v18);
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v10 = v19;
    *(v19 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
    *(v19 + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason();
    v11 = 1;
LABEL_13:
    v10[40] = v11;
    swift_willThrow();
    v12 = v0[1];
    goto LABEL_63;
  }

LABEL_22:
  v20 = v0[8];
  v21 = swift_getObjectType();
  v22 = *(v20 + 120);
  v66 = v21;
  v23 = v22(v21, v20);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriPhone);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v65 = v22;
    v28 = swift_slowAlloc();
    v67[0] = v28;
    *v27 = 136315138;
    if (v23)
    {
      v29 = 0x64656C62616E65;
    }

    else
    {
      v29 = 0x64656C6261736964;
    }

    if (v23)
    {
      v30 = 0xE700000000000000;
    }

    else
    {
      v30 = 0xE800000000000000;
    }

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v67);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_0, v25, v26, "#SpeakerphoneControlFlow speakerphone is currently %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v32 = v28;
    v22 = v65;
    OUTLINED_FUNCTION_26_0(v32);
    OUTLINED_FUNCTION_26_0(v27);
  }

  v33 = PhoneCallControlAction.rawValue.getter(v1);
  if (v23)
  {
    if (v33 != 0xD000000000000013 || 0x8000000000452ED0 != v34)
    {
      goto LABEL_42;
    }

LABEL_52:

    goto LABEL_53;
  }

  if (v33 == 0xD000000000000012 && 0x8000000000452EB0 == v34)
  {
    goto LABEL_52;
  }

LABEL_42:
  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
LABEL_53:
    v51 = (*(v0[8] + 136))(v0 + 2, v66);
    *v52 = !*v52;
    v51(v0 + 2, 0);
    swift_unknownObjectRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v0[8];
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67[0] = v57;
      *v56 = 136315138;
      v58 = v22(v66, v55);
      v59 = (v58 & 1) == 0;
      if (v58)
      {
        v60 = 0x64656C62616E65;
      }

      else
      {
        v60 = 0x64656C6261736964;
      }

      if (v59)
      {
        v61 = 0xE800000000000000;
      }

      else
      {
        v61 = 0xE700000000000000;
      }

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v67);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_0, v53, v54, "#SpeakerphoneControlFlow toggled speakerphone to %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_26_0(v57);
      OUTLINED_FUNCTION_26_0(v56);
    }

    goto LABEL_62;
  }

  swift_unknownObjectRetain();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v0[8];
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v67[0] = v42;
    *v41 = 136315394;
    v43 = v22(v66, v40);
    v44 = (v43 & 1) == 0;
    if (v43)
    {
      v45 = 0x64656C62616E65;
    }

    else
    {
      v45 = 0x64656C6261736964;
    }

    if (v44)
    {
      v46 = 0xE800000000000000;
    }

    else
    {
      v46 = 0xE700000000000000;
    }

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v67);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    v48 = PhoneCallControlAction.description.getter(v1);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v67);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_0, v38, v39, "#SpeakerphoneControlFlow not changing speakerphone state because speakerphone is %s and action is %s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v42);
    OUTLINED_FUNCTION_26_0(v41);
  }

LABEL_62:
  v63 = v0[6];
  *v63 = 0;
  *(v63 + 8) = 0;
  *(v63 + 16) = 0;
  *(v63 + 24) = xmmword_42D060;
  v12 = v0[1];
LABEL_63:

  return v12();
}

uint64_t specialized Set.count.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

void SPHCall.isFTAudioCallOnHold.getter(uint64_t a1, uint64_t a2)
{
  if ((SPHCall.isFTAudio.getter() & 1) == 0)
  {
    return;
  }

  v2 = OUTLINED_FUNCTION_20_0();
  if ((v3(v2) & 1) == 0)
  {
    return;
  }

  v4 = OUTLINED_FUNCTION_20_0();
  v5(v4);
  if (!v35)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v33, &_s27PhoneCallFlowDelegatePlugin15SPHConversation_pSgMd, &_s27PhoneCallFlowDelegatePlugin15SPHConversation_pSgMR);
    return;
  }

  outlined init with take of SPHConversation(&v33, v30);
  v6 = OUTLINED_FUNCTION_20_0();
  if (v7(v6) == 2 || (v8 = v32, __swift_project_boxed_opaque_existential_1(v30, v31), v9 = OUTLINED_FUNCTION_40_0(), (v10(v9, v8) & 1) == 0))
  {
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v30);
    return;
  }

  v11 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v12 = OUTLINED_FUNCTION_40_0();
  v14 = v13(v12, v11);
  v15 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUConversationParticipant, TUConversationParticipant_ptr);
    lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, TUConversationParticipant_ptr);
    Set.Iterator.init(_cocoa:)();
    v16 = *(&v33 + 1);
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;
  }

  else
  {
    v21 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v14 + 56);

    v19 = 0;
    v17 = v15;
  }

  v24 = (v18 + 64) >> 6;
  while (v17 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUConversationParticipant, TUConversationParticipant_ptr), swift_dynamicCast(), (v27 = v29) == 0))
    {
LABEL_27:
      outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant(v17);

      goto LABEL_5;
    }

LABEL_26:
    v28 = [v27 isAudioPaused];

    if (v28)
    {
      goto LABEL_27;
    }
  }

  v25 = v19;
  v26 = v20;
  if (v20)
  {
LABEL_22:
    v20 = (v26 - 1) & v26;
    v27 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v27)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v19 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_27;
    }

    v26 = *(v16 + 8 * v19);
    ++v25;
    if (v26)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}