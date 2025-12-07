void INPerson.toIntentPerson.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v87 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  v86 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonV6HandleVSgMd, &_s10AppIntents12IntentPersonV6HandleVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  v84 = &v75 - v8;
  OUTLINED_FUNCTION_15_0();
  v85 = type metadata accessor for IntentPerson.Name();
  OUTLINED_FUNCTION_7();
  v83 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v82 = v11 - v12;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v13);
  v81 = (&v75 - v14);
  OUTLINED_FUNCTION_15_0();
  v92 = type metadata accessor for IntentPerson.Identifier();
  OUTLINED_FUNCTION_7();
  v78 = v15;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  v91 = v17 - v18;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v19);
  v77 = (&v75 - v20);
  OUTLINED_FUNCTION_15_0();
  v21 = type metadata accessor for IntentPerson.Handle.Label();
  OUTLINED_FUNCTION_7();
  v23 = v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_4();
  v27 = v26 - v25;
  type metadata accessor for IntentPerson.Handle();
  OUTLINED_FUNCTION_7();
  v79 = v29;
  v80 = v28;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_4();
  v90 = v31 - v30;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for IntentPerson.Handle.Value();
  OUTLINED_FUNCTION_7();
  v88 = v33;
  v89 = v32;
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_12_5();
  v36 = v34 - v35;
  *&v38 = __chkstk_darwin(v37).n128_u64[0];
  v40 = (&v75 - v39);
  v41 = [v0 personHandle];
  if (v41 && (v42 = outlined bridged method (ob) of @objc INPersonHandle.value.getter(v41, &selRef_value), v43))
  {
    v44 = v42;
    v45 = v43;
  }

  else
  {

    v44 = 0;
    v45 = 0xE000000000000000;
  }

  v46 = [v1 personHandle];
  if (v46 && (v47 = v46, v48 = v21, v49 = v1, v50 = [v46 type], v47, v51 = v50 == &dword_0 + 1, v1 = v49, v21 = v48, v51))
  {
    v52 = &enum case for IntentPerson.Handle.Value.emailAddress(_:);
  }

  else
  {
    v52 = &enum case for IntentPerson.Handle.Value.phoneNumber(_:);
  }

  *v40 = v44;
  v40[1] = v45;
  v53 = *v52;
  v54 = v88;
  v55 = v89;
  v56 = *(v88 + 104);
  v76 = v40;
  v56(v40, v53, v89);
  (*(v54 + 16))(v36, v40, v55);
  (*(v23 + 104))(v27, enum case for IntentPerson.Handle.Label.other(_:), v21);
  v57 = v90;
  IntentPerson.Handle.init(_:label:)();
  INPerson.identifier.getter();
  v59 = v77;
  v58 = v78;
  *v77 = v60;
  v59[1] = v61;
  v62 = v92;
  (*(v58 + 104))(v59, enum case for IntentPerson.Identifier.contact(_:), v92);
  v63 = [v1 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_29_18();

  v64 = v81;
  *v81 = v1;
  v64[1] = v1;
  v65 = v83;
  v66 = v85;
  (*(v83 + 104))(v64, enum case for IntentPerson.Name.displayName(_:), v85);
  (*(v58 + 16))(v91, v59, v62);
  (*(v65 + 16))(v82, v64, v66);
  v67 = v79;
  v68 = v84;
  v69 = v57;
  v70 = v80;
  (*(v79 + 16))(v84, v69, v80);
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v70);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  IntentPerson.init(identifier:name:handle:aliases:isMe:image:)();
  (*(v65 + 8))(v64, v66);
  (*(v58 + 8))(v59, v92);
  (*(v67 + 8))(v90, v70);
  (*(v88 + 8))(v76, v89);
  OUTLINED_FUNCTION_65();
}

void INPerson.siriRemembersContactName.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = [v0 nameComponents];
  v4 = &unk_548000;
  if (v3)
  {
    v5 = v3;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_427BC0;
    *(v6 + 32) = PersonNameComponents.namePrefix.getter();
    *(v6 + 40) = v7;
    *(v6 + 48) = PersonNameComponents.givenName.getter();
    *(v6 + 56) = v8;
    *(v6 + 64) = PersonNameComponents.middleName.getter();
    *(v6 + 72) = v9;
    *(v6 + 80) = PersonNameComponents.familyName.getter();
    *(v6 + 88) = v10;
    *(v6 + 96) = PersonNameComponents.nameSuffix.getter();
    *(v6 + 104) = v11;
    *(v6 + 112) = PersonNameComponents.nickname.getter();
    *(v6 + 120) = v12;
    v13 = OUTLINED_FUNCTION_31_12();
    v14(v13);
    v15 = *(v6 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_424FD0;
    v16 = [v0 displayName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v6 + 32) = v17;
    *(v6 + 40) = v19;
    v15 = 1;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_5:
  v22 = (v6 + 40 + 16 * v20);
  while (v15 != v20)
  {
    if (v20 >= v15)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_25;
    }

    v24 = *v22;
    if (*v22)
    {
      v25 = *(v22 - 1);
      v26 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v26 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        v37 = v1;

        v27 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_54_13();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v30;
        }

        v28 = v21[2];
        if (v28 >= v21[3] >> 1)
        {
          OUTLINED_FUNCTION_54_13();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v31;
        }

        v21[2] = v28 + 1;
        v29 = &v21[2 * v28];
        v29[4] = v25;
        v29[5] = v24;
        v20 = v23;
        v4 = v27;
        v1 = v37;
        goto LABEL_5;
      }
    }

    ++v20;
    v22 += 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v32 = BidirectionalCollection<>.joined(separator:)();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    v36 = [v1 v4[217]];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_65();
}

INPerson __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> INPerson.mutableCopyPerson()()
{
  v1 = v0;
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  [v1 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (swift_dynamicCast())
  {
    return v12;
  }

  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_31_12();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  swift_allocError();
  PhoneError.logged()(v11);
  outlined destroy of PhoneError(v5);
  return swift_willThrow();
}

uint64_t INPersonRelationship.nlString.getter(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  v5 = v5 && v1 == v4;
  if (v5)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v3);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v7)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v6);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v10)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v9);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v13)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v12);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v16)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v15);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v19)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v18);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v22)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v21);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v25)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v24);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v28)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v27);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v31)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v30);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v34)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v33);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v37)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_50(v36);
  OUTLINED_FUNCTION_20_2();

  if (v2)
  {
    goto LABEL_70;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_11_35();
  if (v5 && v1 == v40)
  {
LABEL_69:

    goto LABEL_70;
  }

  OUTLINED_FUNCTION_3_50(v39);
  OUTLINED_FUNCTION_20_2();

  if ((v2 & 1) == 0)
  {

    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_70:
  BackingType = INPersonRelationshipGetBackingType();
  switch(BackingType)
  {
    case 0:
      v44 = @"Father";
      goto LABEL_85;
    case 1:
      v44 = @"Mother";
      goto LABEL_85;
    case 2:
      v44 = @"Parent";
      goto LABEL_85;
    case 3:
      v44 = @"Brother";
      goto LABEL_85;
    case 4:
      v44 = @"Sister";
      goto LABEL_85;
    case 5:
      v44 = @"Child";
      goto LABEL_85;
    case 6:
      v44 = @"Friend";
      goto LABEL_85;
    case 7:
      v44 = @"Spouse";
      goto LABEL_85;
    case 8:
      v44 = @"Partner";
      goto LABEL_85;
    case 9:
      v44 = @"Assistant";
      goto LABEL_85;
    case 10:
      v44 = @"Manager";
      goto LABEL_85;
    case 11:
      v44 = @"Son";
      goto LABEL_85;
    case 12:
      v44 = @"Daughter";
LABEL_85:
      v45 = v44;
      break;
    default:
      v44 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      break;
  }

  v46 = v44;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_29_18();

  String.lowercased()();
  OUTLINED_FUNCTION_70_1();

  return OUTLINED_FUNCTION_19_0();
}

void *closure #1 in INPersonRelationship.toSpeakableString(startCallCats:)(uint64_t a1)
{
  result = TemplatingResult.print.getter();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_7;
  }

  result = TemplatingResult.speak.getter();
  if (!result[2])
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return SpeakableString.init(print:speak:)();
}

uint64_t INCallRecord.callProviderApp.getter()
{
  type metadata accessor for App();
  outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v0, &selRef_providerBundleId);
  return App.__allocating_init(appIdentifier:)();
}

id INCallRecord.refinedCallDurationAsDouble.getter()
{
  result = [v0 callDuration];
  v2 = result;
  if (result)
  {
    Double.init(truncating:)();
    v4 = v3;

    return v4;
  }

  return result;
}

id INCallRecord.refinedNumberOfCallsAsInt.getter()
{
  v1 = [v0 numberOfCalls];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 integerValue];

  return v3;
}

id INCallRecord.refinedIsCallerIDBlockedAsBool.getter(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return &dword_0 + 2;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

uint64_t INCallRecordType.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1)
  {
    BackingType = INCallRecordTypeGetBackingType();
    switch(BackingType)
    {
      case 2:
        v2 = @"OUTGOING";
        goto LABEL_13;
      case 3:
        v2 = @"MISSED";
        goto LABEL_13;
      case 4:
        v2 = @"RECEIVED";
        goto LABEL_13;
      case 5:
        v2 = @"LATEST";
        goto LABEL_13;
      case 7:
        v2 = @"VOICEMAIL";
        goto LABEL_13;
      case 8:
        v2 = @"RINGING";
        goto LABEL_13;
      case 9:
        v2 = @"IN_PROGRESS";
        goto LABEL_13;
      case 10:
        v2 = @"ON_HOLD";
LABEL_13:
        v3 = v2;
        break;
      default:
        v2 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v4 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_40_13();
  }

  else
  {
    OUTLINED_FUNCTION_2_1();
  }

  return OUTLINED_FUNCTION_0();
}

uint64_t closure #1 in INCallRecordTypeOptions.INPBStringRepresentation.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = @"OUTGOING";
      goto LABEL_11;
    case 3:
      v1 = @"MISSED";
      goto LABEL_11;
    case 4:
      v1 = @"RECEIVED";
      goto LABEL_11;
    case 5:
      v1 = @"LATEST";
      goto LABEL_11;
    case 7:
      v1 = @"VOICEMAIL";
      goto LABEL_11;
    case 8:
      v1 = @"RINGING";
      goto LABEL_11;
    case 9:
      v1 = @"IN_PROGRESS";
      goto LABEL_11;
    case 10:
      v1 = @"ON_HOLD";
LABEL_11:
      v2 = v1;
      break;
    default:
      v1 = [NSString stringWithFormat:@"(unknown: %i)", a1];
      break;
  }

  v3 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_50_2();

  OUTLINED_FUNCTION_56_4(v4);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_55_11();
  return OUTLINED_FUNCTION_23_13(v5);
}

uint64_t INCallCapabilityOptions.INPBStringRepresentation.getter()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);
  OUTLINED_FUNCTION_10_36();
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallCapability) -> ();
  v5[3] = &block_descriptor_4;
  v2 = _Block_copy(v5);

  OUTLINED_FUNCTION_31_12();
  INCallCapabilityOptionsEnumerateBackingTypes();
  _Block_release(v2);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v3 = *v1;

  return v3;
}

uint64_t closure #1 in INCallCapabilityOptions.INPBStringRepresentation.getter(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"VIDEO_CALL";
  }

  else
  {
    if (a1 != 1)
    {
      v1 = [NSString stringWithFormat:@"(unknown: %i)", a1];
      goto LABEL_7;
    }

    v1 = @"AUDIO_CALL";
  }

  v2 = v1;
LABEL_7:
  v3 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_50_2();

  OUTLINED_FUNCTION_56_4(v4);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_55_11();
  return OUTLINED_FUNCTION_23_13(v5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned _INPBCallCapability) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id @nonobjc INPlayVoicemailIntent.init(callRecordIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCallRecordIdentifier:v3];

  return v4;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v10 = &unk_548000;
    while (1)
    {
      v11 = v8++;
      v110 = v11;
      if (v8 >= v7)
      {
        goto LABEL_28;
      }

      v115 = v7;
      v120 = v9;
      v12 = v6;
      v9 = *a3;
      v13 = v8;
      v14 = *&(*a3)[8 * v11];
      v15 = *&(*a3)[8 * v8];
      v16 = v14;
      v17 = [v15 rank];
      if (!v17)
      {
        goto LABEL_147;
      }

      v18 = v17;
      v113 = [v17 v10[436]];

      v19 = [v16 rank];
      if (!v19)
      {
        goto LABEL_148;
      }

      v5 = v19;
      v111 = [v19 v10[436]];

      v20 = (v9 + 8 * v110 + 16);
      v21 = v110 + 2;
      v6 = v12;
      v8 = v13;
      v22 = v115;
      while (1)
      {
        v23 = v21;
        if (v8 + 1 >= v22)
        {
          break;
        }

        v124 = v8;
        v118 = v6;
        v24 = *(v20 - 1);
        v25 = *v20;
        v26 = v24;
        v27 = [v25 rank];
        if (!v27)
        {
          goto LABEL_142;
        }

        v28 = v27;
        v29 = [v27 integerValue];

        v30 = [v26 rank];
        if (!v30)
        {
          goto LABEL_141;
        }

        v5 = v30;
        v9 = v113 < v111;
        v31 = [v30 integerValue];

        ++v20;
        v8 = v124 + 1;
        v21 = v23 + 1;
        v6 = v118;
        v22 = v115;
        if (v113 < v111 == v29 >= v31)
        {
          goto LABEL_13;
        }
      }

      v8 = v22;
LABEL_13:
      if (v113 >= v111)
      {
        break;
      }

      v11 = v110;
      if (v8 < v110)
      {
        goto LABEL_134;
      }

      if (v110 < v8)
      {
        if (v22 >= v23)
        {
          v32 = v23;
        }

        else
        {
          v32 = v22;
        }

        v33 = 8 * v32 - 8;
        v34 = v8;
        v9 = v120;
        v35 = 8 * v110;
        do
        {
          if (v11 != --v34)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v37 = *&v36[v35];
            *&v36[v35] = *&v36[v33];
            *&v36[v33] = v37;
          }

          ++v11;
          v33 -= 8;
          v35 += 8;
        }

        while (v11 < v34);
        goto LABEL_26;
      }

      v9 = v120;
LABEL_28:
      v38 = a3[1];
      if (v8 < v38)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_133;
        }

        if (v8 - v11 >= a4)
        {
LABEL_46:
          v11 = v110;
        }

        else
        {
          v39 = v110 + a4;
          if (__OFADD__(v110, a4))
          {
            goto LABEL_135;
          }

          if (v39 >= v38)
          {
            v39 = a3[1];
          }

          if (v39 < v110)
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v11 = v110;
          if (v8 != v39)
          {
            v119 = v6;
            v121 = v9;
            v40 = *a3;
            v41 = &(*a3)[8 * v8 - 8];
            v42 = v110 - v8;
            v112 = v39;
LABEL_37:
            v125 = v8;
            v43 = v41;
            v44 = *&v40[8 * v8];
            v114 = v42;
            v116 = v43;
            v45 = v43;
            while (1)
            {
              v46 = *v45;
              v47 = v44;
              v48 = v46;
              v49 = [v47 rank];
              if (!v49)
              {
                goto LABEL_139;
              }

              v50 = v49;
              v51 = [v49 integerValue];

              v52 = [v48 rank];
              if (!v52)
              {
                break;
              }

              v5 = v52;
              v53 = [v52 integerValue];

              if (v51 >= v53)
              {
                goto LABEL_44;
              }

              if (!v40)
              {
                goto LABEL_140;
              }

              v54 = *v45;
              v44 = *(v45 + 8);
              *v45 = v44;
              *(v45 + 8) = v54;
              v45 -= 8;
              if (__CFADD__(v42++, 1))
              {
LABEL_44:
                v8 = v125 + 1;
                v41 = v116 + 8;
                v42 = v114 - 1;
                if (v125 + 1 == v112)
                {
                  v8 = v112;
                  v6 = v119;
                  v9 = v121;
                  goto LABEL_46;
                }

                goto LABEL_37;
              }
            }

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
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_132;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v99;
      }

      v56 = v9;
      v57 = *(v9 + 16);
      v122 = v56;
      v58 = v57 + 1;
      v59 = v110;
      if (v57 >= *(v56 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v110;
        v122 = v100;
      }

      *(v122 + 16) = v58;
      v60 = v122 + 32;
      v61 = (v122 + 32 + 16 * v57);
      *v61 = v59;
      v61[1] = v8;
      v126 = *a1;
      if (!*a1)
      {
        goto LABEL_146;
      }

      if (v57)
      {
        v9 = v122;
        while (1)
        {
          v5 = v58 - 1;
          v62 = (v60 + 16 * (v58 - 1));
          v63 = (v9 + 16 * v58);
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v64 = *(v9 + 32);
            v65 = *(v9 + 40);
            v74 = __OFSUB__(v65, v64);
            v66 = v65 - v64;
            v67 = v74;
LABEL_68:
            if (v67)
            {
              goto LABEL_119;
            }

            v79 = *v63;
            v78 = *(v63 + 1);
            v80 = __OFSUB__(v78, v79);
            v81 = v78 - v79;
            v82 = v80;
            if (v80)
            {
              goto LABEL_122;
            }

            v83 = v62[1];
            v84 = v83 - *v62;
            if (__OFSUB__(v83, *v62))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v81, v84))
            {
              goto LABEL_127;
            }

            if (v81 + v84 >= v66)
            {
              if (v66 < v84)
              {
                v5 = v58 - 2;
              }

              goto LABEL_90;
            }

            goto LABEL_83;
          }

          if (v58 < 2)
          {
            goto LABEL_121;
          }

          v86 = *v63;
          v85 = *(v63 + 1);
          v74 = __OFSUB__(v85, v86);
          v81 = v85 - v86;
          v82 = v74;
LABEL_83:
          if (v82)
          {
            goto LABEL_124;
          }

          v88 = *v62;
          v87 = v62[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_126;
          }

          if (v89 < v81)
          {
            goto LABEL_99;
          }

LABEL_90:
          if (v5 - 1 >= v58)
          {
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_143;
          }

          v9 = v60 + 16 * (v5 - 1);
          v93 = *v9;
          v94 = v60 + 16 * v5;
          v95 = *(v94 + 8);
          specialized _merge<A>(low:mid:high:buffer:by:)(&(*a3)[8 * *v9], &(*a3)[8 * *v94], &(*a3)[8 * v95], v126);
          if (v6)
          {
            goto LABEL_112;
          }

          if (v95 < v93)
          {
            goto LABEL_114;
          }

          v96 = v8;
          v97 = *(v122 + 16);
          if (v5 > v97)
          {
            goto LABEL_115;
          }

          *v9 = v93;
          *(v9 + 8) = v95;
          if (v5 >= v97)
          {
            goto LABEL_116;
          }

          v58 = v97 - 1;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)((v94 + 16), v97 - 1 - v5, (v60 + 16 * v5));
          v9 = v122;
          *(v122 + 16) = v97 - 1;
          v98 = v97 > 2;
          v8 = v96;
          if (!v98)
          {
            goto LABEL_99;
          }
        }

        v68 = v60 + 16 * v58;
        v69 = *(v68 - 64);
        v70 = *(v68 - 56);
        v74 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        if (v74)
        {
          goto LABEL_117;
        }

        v73 = *(v68 - 48);
        v72 = *(v68 - 40);
        v74 = __OFSUB__(v72, v73);
        v66 = v72 - v73;
        v67 = v74;
        if (v74)
        {
          goto LABEL_118;
        }

        v75 = *(v63 + 1);
        v76 = v75 - *v63;
        if (__OFSUB__(v75, *v63))
        {
          goto LABEL_120;
        }

        v74 = __OFADD__(v66, v76);
        v77 = v66 + v76;
        if (v74)
        {
          goto LABEL_123;
        }

        if (v77 >= v71)
        {
          v91 = *v62;
          v90 = v62[1];
          v74 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v74)
          {
            goto LABEL_131;
          }

          if (v66 < v92)
          {
            v5 = v58 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_68;
      }

      v9 = v122;
LABEL_99:
      v7 = a3[1];
      v10 = &unk_548000;
      if (v8 >= v7)
      {
        goto LABEL_102;
      }
    }

    v9 = v120;
LABEL_26:
    v11 = v110;
    goto LABEL_28;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_102:
  v5 = *a1;
  if (!*a1)
  {
LABEL_149:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_137:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v123 = v9;
  v102 = *(v9 + 16);
  v9 += 16;
  for (i = v102; i >= 2; *v9 = i)
  {
    if (!*a3)
    {
      goto LABEL_144;
    }

    v103 = (v123 + 16 * i);
    v104 = *v103;
    v105 = (v9 + 16 * i);
    v106 = *(v105 + 1);
    specialized _merge<A>(low:mid:high:buffer:by:)(&(*a3)[8 * *v103], &(*a3)[8 * *v105], &(*a3)[8 * v106], v5);
    if (v6)
    {
      break;
    }

    if (v106 < v104)
    {
      goto LABEL_128;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_129;
    }

    *v103 = v104;
    v103[1] = v106;
    v107 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_130;
    }

    i = *v9 - 1;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v105 + 16, v107, v105);
  }

LABEL_112:
}

id specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, id *a2, id *a3, void **a4)
{
  __src = a4;
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = (a2 - a1) / 8;
  v8 = a3 - a2;
  if (v7 < v8)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v9 = &__src[v7];
    for (i = v9; ; v9 = i)
    {
      if (__src >= v9 || v5 >= v4)
      {
        v5 = v6;
        goto LABEL_32;
      }

      v11 = *__src;
      v12 = *v5;
      v13 = v11;
      result = [v12 rank];
      if (!result)
      {
        __break(1u);
        goto LABEL_40;
      }

      v15 = result;
      v16 = [result integerValue];

      result = [v13 rank];
      if (!result)
      {
        goto LABEL_41;
      }

      v17 = result;
      v18 = [result integerValue];

      if (v16 >= v18)
      {
        break;
      }

      v19 = v5;
      v20 = v6 == v5++;
      if (!v20)
      {
        goto LABEL_14;
      }

LABEL_15:
      v6 += 8;
    }

    v19 = __src;
    v20 = v6 == __src++;
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v6 = *v19;
    goto LABEL_15;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v9 = &__src[v8];
  v34 = v6;
LABEL_17:
  v21 = v5 - 1;
  --v4;
  v35 = v5 - 1;
  for (j = v5; v9 > __src && v5 > v6; v5 = j)
  {
    v38 = v9;
    v23 = v9 - 1;
    v24 = *v21;
    v25 = *(v9 - 1);
    v26 = v24;
    result = [v25 rank];
    if (!result)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    v27 = result;
    v28 = [result integerValue];

    result = [v26 rank];
    if (!result)
    {
      goto LABEL_42;
    }

    v29 = result;
    v30 = [result integerValue];

    v31 = v4 + 1;
    if (v28 < v30)
    {
      v5 = v35;
      v6 = v34;
      v9 = v38;
      if (v31 != j)
      {
        *v4 = *v35;
        v5 = v35;
      }

      goto LABEL_17;
    }

    v21 = v35;
    if (v38 != v31)
    {
      *v4 = *v23;
    }

    --v4;
    v9 = v23;
    v6 = v34;
  }

LABEL_32:
  v32 = v9 - __src;
  if (v5 != __src || v5 >= &__src[v32])
  {
    memmove(v5, __src, 8 * v32);
  }

  return &dword_0 + 1;
}

uint64_t outlined bridged method (pb) of @objc INAnswerCallIntentResponse.callRecords.getter(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  type metadata accessor for CNContactStore(0, a3, a4);
  OUTLINED_FUNCTION_74();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t outlined bridged method (pb) of @objc INIntent.airPlayRouteIds.getter(void *a1)
{
  v1 = [a1 airPlayRouteIds];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc INIntent.airPlayRouteIds.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 _setAirPlayRouteIds:isa];
}

id outlined bridged method (mnnnnbnnn) of @objc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = String._bridgeToObjectiveC()();

  v15 = [a8 initWithPersonHandle:a1 nameComponents:a2 displayName:a3 image:a4 contactIdentifier:v14 customIdentifier:a7];

  return v15;
}

void outlined bridged method (mbgnn) of @objc INPerson.scoredAlternatives.setter(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  type metadata accessor for CNContactStore(0, a3, a4);
  OUTLINED_FUNCTION_74();
  Array._bridgeToObjectiveC()();
  OUTLINED_FUNCTION_51_12();
  [a2 *a5];
}

void *outlined bridged method (ob) of @objc INPersonHandle.value.getter(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_29_18();

  return v2;
}

void outlined bridged method (mbnn) of @objc INIdentifyIncomingCallerIntentResponse.callRecords.setter()
{
  OUTLINED_FUNCTION_1_15();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setCallRecords:isa];
}

uint64_t outlined init with take of PersonNameComponents?()
{
  OUTLINED_FUNCTION_1_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23_1();
  v3 = OUTLINED_FUNCTION_19_0();
  v4(v3);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for FollowUpOfferType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_40_13()
{
}

void OUTLINED_FUNCTION_55_11()
{

  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_58_5(uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_59_6(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_15();
  v1[183] = v0;
  v1[177] = v2;
  v1[171] = v3;
  v4 = *(v3 - 8);
  v1[189] = v4;
  v1[195] = *(v4 + 64);
  v1[201] = swift_task_alloc();
  v1[207] = swift_task_alloc();

  return _swift_task_switch(LabelTemplatesProviding.yesAndNo(), 0, 0);
}

{
  v1 = v0[207];
  v2 = v0[189];
  v12 = v0[183];
  v13 = v0[201];
  v3 = v0[177];
  v11 = v3;
  v4 = v0[171];
  v5 = *(v2 + 16);
  v5(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[213] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v8 = *(v2 + 32);
  v8(v7 + v6, v1, v4);
  swift_asyncLet_begin();
  (v5)(v13, v12, v4);
  v9 = swift_allocObject();
  v0[214] = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v11;
  v8(v9 + v6, v13, v4);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 167, LabelTemplatesProviding.yesAndNo(), v0 + 162);
}

{
  OUTLINED_FUNCTION_15();
  v1[215] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 169, LabelTemplatesProviding.yesAndNo(), v1 + 172);
  }

  else
  {
    v1[216] = v1[167];
    v1[217] = v1[168];

    v2 = OUTLINED_FUNCTION_7_40();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 184);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[218] = v0;
  if (v0)
  {

    return _swift_task_switch(LabelTemplatesProviding.yesAndNo(), 0, 0);
  }

  else
  {
    v1[219] = v1[169];
    v1[220] = v1[170];

    v2 = OUTLINED_FUNCTION_7_40();

    return _swift_asyncLet_finish(v2, v3, v4, v1 + 202);
  }
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, LabelTemplatesProviding.yesAndNo(), v0 + 1664);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  OUTLINED_FUNCTION_27();

  v1 = v0[1];
  v2 = v0[220];
  v3 = v0[219];
  v4 = v0[217];
  v5 = v0[216];

  return v1(v5, v4, v3, v2);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, LabelTemplatesProviding.yesAndNo(), v0 + 1424);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_14_34();

  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1520);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, LabelTemplatesProviding.yesAndNo(), v0 + 1568);
}

{
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProviding.yesAndNo());
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_14_34();

  v1 = *(v0 + 8);

  return v1();
}

PhoneCallFlowDelegatePlugin::LabelTemplatesProvider __swiftcall LabelTemplatesProvider.init()()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v3 = 0;
  result.noLabel.value._object = v3;
  result.noLabel.value._countAndFlagsBits = v2;
  result.yesLabel.value._object = v1;
  result.yesLabel.value._countAndFlagsBits = v0;
  return result;
}

uint64_t implicit closure #1 in LabelTemplatesProviding.yesAndNo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = (*(a4 + 8) + **(a4 + 8));
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = implicit closure #1 in LabelTemplatesProviding.yesAndNo();

  return v9(a3, a4);
}

uint64_t implicit closure #1 in LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_61();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v1)
  {
    OUTLINED_FUNCTION_8_45();
    OUTLINED_FUNCTION_65_1();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t partial apply for implicit closure #1 in LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_37();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_51(v1);
  OUTLINED_FUNCTION_65_1();

  return implicit closure #1 in LabelTemplatesProviding.yesAndNo()(v2, v3, v4, v5);
}

uint64_t implicit closure #2 in LabelTemplatesProviding.yesAndNo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v9 = (*(a4 + 16) + **(a4 + 16));
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = implicit closure #2 in LabelTemplatesProviding.yesAndNo();

  return v9(a3, a4);
}

uint64_t implicit closure #2 in LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_61();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v1)
  {
    OUTLINED_FUNCTION_8_45();
    OUTLINED_FUNCTION_65_1();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t objectdestroyTm_7()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for implicit closure #2 in LabelTemplatesProviding.yesAndNo()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_37();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_51(v1);
  OUTLINED_FUNCTION_65_1();

  return implicit closure #2 in LabelTemplatesProviding.yesAndNo()(v2, v3, v4, v5);
}

uint64_t LabelTemplatesProvider.yes()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProvider.yes());
}

uint64_t LabelTemplatesProvider.yes()()
{
  OUTLINED_FUNCTION_27();
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_9_36();
    v1 = OUTLINED_FUNCTION_13_33();

    return v2(v1);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = LabelTemplatesProvider.yes();

    return static LabelTemplates.yes()();
  }
}

uint64_t LabelTemplatesProvider.no()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return OUTLINED_FUNCTION_0_1(LabelTemplatesProvider.no());
}

uint64_t LabelTemplatesProvider.no()()
{
  OUTLINED_FUNCTION_27();
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_9_36();
    v1 = OUTLINED_FUNCTION_13_33();

    return v2(v1);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = LabelTemplatesProvider.no();

    return static LabelTemplates.no()();
  }
}

{
  OUTLINED_FUNCTION_2_61();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v1)
  {
    OUTLINED_FUNCTION_8_45();

    return v9();
  }

  else
  {
    v11 = *(v7 + 8);

    return v11(v0, v2);
  }
}

uint64_t LabelTemplatesProvider.openApp(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = LabelTemplatesProvider.openApp(appDisplayInfo:);

  return static LabelTemplates.openApp(appDisplayInfo:)(v2);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t protocol witness for LabelTemplatesProviding.yes() in conformance LabelTemplatesProvider()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for LabelTemplatesProviding.yes() in conformance LabelTemplatesProvider;

  return LabelTemplatesProvider.yes()(v2, v3);
}

uint64_t protocol witness for LabelTemplatesProviding.no() in conformance LabelTemplatesProvider()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for LabelTemplatesProviding.yes() in conformance LabelTemplatesProvider;

  return LabelTemplatesProvider.no()(v4, v5, v2, v3);
}

uint64_t protocol witness for LabelTemplatesProviding.openApp(appDisplayInfo:) in conformance LabelTemplatesProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for LabelTemplatesProviding.yes() in conformance LabelTemplatesProvider;

  return LabelTemplatesProvider.openApp(appDisplayInfo:)();
}

uint64_t getEnumTagSinglePayload for LabelTemplatesProvider(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for LabelTemplatesProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t LazyContainer._value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v20[-v13];
  v15 = *(v4 + 112);
  swift_beginAccess();
  (*(v8 + 16))(v14, v2 + v15, v6);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    v16 = (*(v8 + 8))(v14, v6);
    (v2[3])(v16);
    OUTLINED_FUNCTION_40();
    (*(v17 + 16))(v11, a1, v5);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
    swift_beginAccess();
    (*(v8 + 40))(v2 + v15, v11, v6);
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_40();
    return (*(v19 + 32))(a1, v14, v5);
  }
}

uint64_t LazyContainer._value.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  OUTLINED_FUNCTION_40();
  (*(v10 + 32))(v9, a1, v3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  v11 = *(*v1 + 112);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t LazyContainer.__allocating_init(load:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LazyContainer.init(load:)(a1, a2);
  return v4;
}

void *LazyContainer.init(load:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  OUTLINED_FUNCTION_4();
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13 - 8);
  OUTLINED_FUNCTION_4();
  type metadata accessor for OS_dispatch_queue();
  v14 = *(v4 + 80);
  swift_getMetatypeMetadata();
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v7 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  v3[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 40) = 0;
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 112), 1, 1, v14);
  v3[3] = a1;
  v3[4] = a2;
  return v3;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t LazyContainer.lazyInitialize()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  static Signpost.begin(_:)();
  static DispatchWorkItemFlags.barrier.getter();
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v2 + 8))(v6, v0);
  Signpost.OpenSignpost.end()();
}

uint64_t LazyContainer.get()@<X0>(uint64_t a1@<X8>)
{
  OS_dispatch_queue.sync<A>(execute:)();
  if (v3 == 1)
  {
    return LazyContainer._value.getter(a1);
  }

  else
  {
    return LazyContainer.lazyInitialize()();
  }
}

Swift::Void __swiftcall LazyContainer.reload()()
{
  v1 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  static DispatchWorkItemFlags.barrier.getter();
  aBlock[4] = partial apply for closure #1 in LazyContainer.reload();
  v17 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_4;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
}

void closure #1 in LazyContainer.reload()(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = &v6 - v3;
  if (*(v5 + 40) == 1)
  {
    (*(a1 + 24))(v2);
    LazyContainer._value.setter(v4);
  }
}

uint64_t type metadata completion function for LazyContainer(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t Locale.underscoredIdentifier.getter(uint64_t a1)
{
  Locale.identifier.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v1;
}

uint64_t static LocalizedStringsUtils.getPicsStringCallHistory(sharedGlobals:)(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 176))(v6, v7);
  type metadata accessor for PhoneCallFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  v11 = Locale.identifier.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v19[4] = v11;
  v19[5] = v13;
  v19[2] = 45;
  v19[3] = 0xE100000000000000;
  v19[0] = 95;
  v19[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v16 = v15;

  v17 = outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(0xD000000000000011, 0x800000000045C400, 1396918608, 0xE400000000000000, v10, v14, v16, v8);

  return v17;
}

uint64_t outlined bridged method (mbbnbnb) of @objc AFLocalization.localizedString(forKey:table:bundle:languageCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v14;
}

uint64_t LoggableError.logged(shouldLogToAbc:shouldCreateTTR:)@<X0>(char a1@<W0>, int a2@<W1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v106) = a2;
  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v107 = (&v98 - v18);
  __chkstk_darwin(v19);
  v21 = &v98 - v20;
  v111 = 0;
  v112 = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v104 = v111;
  v105 = a4;
  v109 = a5;
  v110 = v112;
  v108 = v11;
  if (a1)
  {
    v100 = a4 + 32;
    v101 = a3;
    v22 = OUTLINED_FUNCTION_1_70();
    v99 = v23;
    v23(v22);
    v24 = v110;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v102 = v16;
    v103 = v13;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = v13;
      v30 = swift_slowAlloc();
      v111 = v30;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v24, &v111);
      OUTLINED_FUNCTION_15_7(&dword_0, v31, v32, "#LoggableError Trying ABC for %s");
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_26_0(v30);
      v33 = v28;
      a5 = v109;
      OUTLINED_FUNCTION_26_0(v33);

      v98 = *(v29 + 8);
    }

    else
    {

      v98 = *(v13 + 8);
    }

    v98(v21, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    a3 = v101;
    v35 = OUTLINED_FUNCTION_1_70();
    *(inited + 32) = v36(v35);
    *(inited + 40) = v37;
    v38 = OUTLINED_FUNCTION_1_70();
    v40 = 0;
    *(inited + 48) = v39(v38);
    *(inited + 56) = v41;
    v42 = _swiftEmptyArrayStorage;
LABEL_6:
    v43 = (inited + 40 + 16 * v40);
    while (++v40 != 3)
    {
      v45 = *(v43 - 1);
      v44 = *v43;
      v43 += 2;
      v46 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v46 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {

        v47 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v50;
        }

        v48 = *(v42 + 2);
        if (v48 >= *(v42 + 3) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v51;
        }

        *(v42 + 2) = v48 + 1;
        v49 = &v42[16 * v48];
        *(v49 + 4) = v45;
        *(v49 + 5) = v44;
        v6 = v47;
        a5 = v109;
        goto LABEL_6;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v111 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v52 = a5;
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_2_13();
    v53 = BidirectionalCollection<>.joined(separator:)();
    v55 = v54;

    v56 = LoggableError.caseName.getter(a3);
    v58 = v57;
    v59 = v107;
    v60 = OUTLINED_FUNCTION_1_70();
    v99(v60);
    v61 = v53;
    a5 = v52;
    static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(0x4C41544146, 0xE500000000000000, v56, v58, v61, v55, v59);

    v13 = v103;
    v98(v59, v108);
  }

  if (v106)
  {
    v62 = OUTLINED_FUNCTION_0_65();
    v106 = v63;
    v101 = v64;
    v64(v62);
    v65 = v110;

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v13;
      v70 = swift_slowAlloc();
      v111 = v70;
      *v68 = 136315138;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v65, &v111);

      *(v68 + 4) = v71;
      OUTLINED_FUNCTION_15_7(&dword_0, v72, v73, "#LoggableError Trying TTR for %s");
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_26_0(v70);
      OUTLINED_FUNCTION_26_0(v68);

      v74 = OUTLINED_FUNCTION_3_52(*(v69 + 8));
    }

    else
    {

      v74 = OUTLINED_FUNCTION_3_52(*(v13 + 8));
    }

    v75(v74);
    v111 = 0;
    v112 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v111 = 0xD00000000000001ALL;
    v112 = 0x800000000045C420;
    v76._countAndFlagsBits = LoggableError.caseName.getter(a3);
    String.append(_:)(v76);

    v77 = v112;
    v103 = v111;
    v78 = OUTLINED_FUNCTION_0_65();
    v111 = v79(v78);
    v112 = v80;
    v81._countAndFlagsBits = OUTLINED_FUNCTION_2_13();
    String.append(_:)(v81);
    v82 = OUTLINED_FUNCTION_0_65();
    v84._countAndFlagsBits = v83(v82);
    String.append(_:)(v84);

    v85._countAndFlagsBits = OUTLINED_FUNCTION_2_13();
    String.append(_:)(v85);
    v86 = OUTLINED_FUNCTION_0_65();
    v88._countAndFlagsBits = v87(v86);
    String.append(_:)(v88);

    v89 = v111;
    v90 = v112;
    v111 = 0;
    v112 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v91._countAndFlagsBits = 0x45656E6F68502061;
    v91._object = 0xEE002820726F7272;
    String.append(_:)(v91);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v92._countAndFlagsBits = 0x6564207361772029;
    v92._object = 0xEF2E646574636574;
    String.append(_:)(v92);
    v94 = v111;
    v93 = v112;
    v95 = v107;
    v96 = OUTLINED_FUNCTION_0_65();
    v101(v96);
    static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(v103, v77, v89, v90, v94, v93, v95);

    v110(v95, v108);
    a5 = v109;
  }

  else
  {
  }

  return (*(*(a3 - 1) + 16))(a5, v6, a3);
}

uint64_t LoggableError.caseName.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Mirror();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v6 + 8))(v9, v4);
  specialized Collection.first.getter(&v18);

  if (!v19[3])
  {
    outlined destroy of (label: String?, value: Any)?(&v18);
LABEL_5:
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    v11 = *(&v18 + 1);
    v12 = v18;
    goto LABEL_6;
  }

  v11 = *(&v18 + 1);
  v12 = v18;
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_6:
  swift_getDynamicType();
  *&v18 = _typeName(_:qualified:)();
  *(&v18 + 1) = v13;
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v12;
  v15._object = v11;
  String.append(_:)(v15);

  return v18;
}

uint64_t outlined destroy of (label: String?, value: Any)?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg5label_yp5valuetSgMd, &_sSSSg5label_yp5valuetSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MachineUtteranceBuilder.addFollowUpOfferMapping(for:)(char a1)
{
  v2 = dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_0_66();
      v3 = dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

      v2 = v3;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t MachineUtteranceBuilder.addCallBackUtterance(caller:)(void *a1)
{
  outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a1);
  if (v2)
  {

    v3 = [a1 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    EntitySpanLabel.rawValue.getter();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();
  }

  v4 = [a1 personHandle];
  if (v4)
  {
    outlined bridged method (ob) of @objc INPersonHandle.value.getter(v4);
    if (v5)
    {
      v6 = [a1 personHandle];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 type];

        if (v8 == &dword_0 + 2)
        {
          goto LABEL_9;
        }

        if (v8 == &dword_0 + 1)
        {
          OUTLINED_FUNCTION_2_62();
          goto LABEL_11;
        }

        if (!v8)
        {
LABEL_9:
          OUTLINED_FUNCTION_3_53();
LABEL_11:
          dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();
        }
      }
    }
  }
}

id _s27PhoneCallFlowDelegatePlugin9DICodablePAAE4fromyxSDySSypGSgKFZAA29AnnounceVoicemailDirectActionC_Tt1g5(uint64_t a1)
{
  type metadata accessor for AnnounceVoicemailDirectAction();
  if (!a1)
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v3 = objc_opt_self();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12[0] = 0;
  v5 = [v3 dataWithPropertyList:isa format:200 options:0 error:v12];

  v6 = v12[0];
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction and conformance AnnounceVoicemailDirectAction, type metadata accessor for AnnounceVoicemailDirectAction, &protocol conformance descriptor for AnnounceVoicemailDirectAction);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    result = outlined consume of Data._Representation(v7, v9);
    if (!v1)
    {
      return v12[1];
    }
  }

  else
  {
    v11 = v6;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

uint64_t MainFlow.parse.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MainFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainFlow(0);
  lazy protocol witness table accessor for type MainFlow and conformance MainFlow(&lazy protocol witness table cache variable for type MainFlow and conformance MainFlow, type metadata accessor for MainFlow, &protocol conformance descriptor for MainFlow);

  return Flow.deferToExecuteAsync(_:)();
}

uint64_t MainFlow.makeFlowForIntent()@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v24 = type metadata accessor for Parse();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Input();
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(type metadata accessor for MainFlow(0) + 20));
  v10 = v8[3];
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  v11 = (*(v9 + 72))(v10, v9);
  v13 = v8[3];
  v12 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v13);
  (*(v12 + 120))(v27, v13, v12);
  (*(*v11 + 184))(v28, v1, v27);

  __swift_destroy_boxed_opaque_existential_1(v27);
  outlined init with copy of AnyPhoneNLIntent?(v28, v27);
  if (v27[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMR);
    type metadata accessor for PhoneCallControlNLIntent();
    if (swift_dynamicCast())
    {

      (*(v2 + 16))(v4, v1, v24);
      Input.init(parse:)();
      outlined init with copy of SignalProviding(v8, v27);
      default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v26);
      v14 = type metadata accessor for PhoneCallControlFlow(0);
      swift_allocObject();
      v15 = PhoneCallControlFlow.init(input:sharedGlobals:appFinder:)(v7, v27, v26);
      v16 = v25;
      v25[3] = v14;
      v17 = v16;
      v18 = &lazy protocol witness table cache variable for type PhoneCallControlFlow and conformance PhoneCallControlFlow;
      v19 = type metadata accessor for PhoneCallControlFlow;
      v20 = &protocol conformance descriptor for PhoneCallControlFlow;
      goto LABEL_8;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
  }

  (*(v2 + 16))(v4, v1, v24);
  Input.init(parse:)();
  outlined init with copy of SignalProviding(v8, v27);
  default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v26);
  v17 = v25;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v21 = static EligibleAppFinder.instance;

  v15 = _s27PhoneCallFlowDelegatePlugin0abC0C5input13sharedGlobals9appFinder012eligibleAppsJ0AC07SiriKitC05InputV_AA06SharedH9Providing_pAA19AnnotatedAppFinding_pAA012PrefetchablesT0_ptcfCTf4nnnen_nAA08EligiblesJ0C_Tt3g5(v7, v27, v26, v21);
  v17[3] = type metadata accessor for PhoneCallFlow(0);
  v18 = &lazy protocol witness table cache variable for type PhoneCallFlow and conformance PhoneCallFlow;
  v19 = type metadata accessor for PhoneCallFlow;
  v20 = &protocol conformance descriptor for PhoneCallFlow;
LABEL_8:
  v17[4] = lazy protocol witness table accessor for type MainFlow and conformance MainFlow(v18, v19, v20);
  *v17 = v15;
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
}

uint64_t MainFlow.init(parse:sharedGlobals:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 32))(a3, a1);
  v7 = a3 + *(type metadata accessor for MainFlow(0) + 20);

  return outlined init with take of SPHConversation(a2, v7);
}

unint64_t type metadata completion function for MainFlow(uint64_t a1)
{
  result = type metadata accessor for Parse();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SharedGlobalsProviding();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC0C5input13sharedGlobals9appFinder012eligibleAppsJ0AC07SiriKitC05InputV_AA06SharedH9Providing_pAA19AnnotatedAppFinding_pAA012PrefetchablesT0_ptcfCTf4nnnen_nAA08EligiblesJ0C_Tt3g5(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for PhoneCallFlow.State(0);
  __chkstk_darwin(v8);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Input();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v24);
  outlined init with copy of SignalProviding(a3, v23);
  type metadata accessor for PhoneCallFlow(0);
  v13 = swift_allocObject();
  v22[3] = type metadata accessor for EligibleAppFinder();
  v22[4] = &protocol witness table for EligibleAppFinder;
  v22[0] = a4;
  *(v13 + 176) = _swiftEmptyArrayStorage;
  outlined init with copy of SignalProviding(v23, v13 + 16);
  outlined init with copy of MainFlow(v10, v13 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state, type metadata accessor for PhoneCallFlow.State);
  outlined init with copy of SignalProviding(v24, v13 + 56);
  outlined init with copy of SignalProviding(v22, v13 + 96);
  v14 = v25;
  v15 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v15 + 216))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v23);
  outlined destroy of MainFlow(v10, type metadata accessor for PhoneCallFlow.State);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#PhoneCallFlow state is initialized.", v19, 2u);
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v12 + 8))(a1, v11);
  return v13;
}

uint64_t _s27PhoneCallFlowDelegatePlugin34IdentifyIncomingCallerDirectActionC10invocation12contactStoreACSg07SiriKitC05ParseO0I10InvocationV_AA14ContactStoring_ptcfCTf4nen_nSo09CNContactM0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  v29[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v29[4] = &protocol witness table for CNContactStore;
  v29[0] = a2;
  v4 = Parse.DirectInvocation.userData.getter();
  if (v4)
  {
    v5 = v4;
    if (one-time initialization token for announceTelephony != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.announceTelephony);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28[0] = v10;
      *v9 = 136315138;
      v11 = Dictionary.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v28);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "#IdentifyIncomingCallerDirectAction: Direct Invocation payload: %s.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    outlined init with copy of SignalProviding(v29, v28);
    type metadata accessor for IdentifyIncomingCallerDirectAction();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v28, v28[3]);
    v16 = __chkstk_darwin(v15);
    v18 = (v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(v5, *v18, v14);
    v21 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v21 - 8) + 8))(a1, v21);
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    if (one-time initialization token for announceTelephony != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.announceTelephony);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#IdentifyIncomingCallerDirectAction: No userData in DirectInvocation.", v25, 2u);
    }

    v26 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v26 - 8) + 8))(a1, v26);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return 0;
  }

  return v20;
}

void *_s27PhoneCallFlowDelegatePlugin016AnnounceIncomingB24NotificationDirectActionC10invocation12contactStoreACSg07SiriKitC05ParseO0I10InvocationV_AA14ContactStoring_ptcfCTf4nen_nSo09CNContactM0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  v52[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v52[4] = &protocol witness table for CNContactStore;
  v52[0] = a2;
  v4 = Parse.DirectInvocation.userData.getter();
  if (!v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "#AnnounceIncomingCallNotificationDirectAction: No userData.";
LABEL_23:
    _os_log_impl(&dword_0, v12, v13, v15, v14, 2u);

LABEL_24:

    v18 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v18 - 8) + 8))(a1, v18);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return 0;
  }

  v5 = v4;
  specialized Dictionary.subscript.getter(0x6C646E7542707061, 0xEB00000000644965, v4, &v48);
  if (!v49)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v48, &_sypSgMd, &_sypSgMR);
LABEL_13:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "#AnnounceIncomingCallNotificationDirectAction: No App bundleId.";
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v7 = v50;
  v6 = v51;
  specialized Dictionary.subscript.getter(0x6163696669746F6ELL, 0xEC0000006E6F6974, v5, &v48);

  if (!v49)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v48, &_sypSgMd, &_sypSgMR);
LABEL_19:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "#AnnounceIncomingCallNotificationDirectAction: No notification data in UserData.";
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v8 = v50;
  v9 = v51;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for UNNotification, UNNotification_ptr);
  v10 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v21 = v10;
  if (!v10)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v12, v43, "#AnnounceIncomingCallNotificationDirectAction: No notification in archived data.", v44, 2u);
    }

    outlined consume of Data._Representation(v8, v9);
    goto LABEL_24;
  }

  v46 = v9;
  v22 = one-time initialization token for siriPhone;
  v23 = v10;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriPhone);
  v25 = v23;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v47 = v25;

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v48 = v30;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v48);
    *(v28 + 12) = 2112;
    v31 = v47;
    *(v28 + 14) = v47;
    *v29 = v21;
    v32 = v31;
    _os_log_impl(&dword_0, v26, v27, "#AnnounceIncomingCallNotificationDirectAction: initialized with bundleID: %s and notification %@.", v28, 0x16u);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v33 = v46;
  outlined init with copy of SignalProviding(v52, &v48);
  type metadata accessor for AnnounceIncomingCallNotificationDirectAction();
  v34 = swift_allocObject();
  v35 = __swift_mutable_project_boxed_opaque_existential_1(&v48, v49);
  v36 = __chkstk_darwin(v35);
  v38 = (&v45 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38, v36);
  v40 = v47;
  v19 = specialized AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)(v7, v6, v47, *v38, v34);
  outlined consume of Data._Representation(v8, v33);

  v41 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v41 - 8) + 8))(a1, v41);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return v19;
}

void *specialized AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v31[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v31[4] = &protocol witness table for CNContactStore;
  v31[0] = a4;
  a5[11] = 0;
  a5[7] = a1;
  a5[8] = a2;
  v10 = [a3 request];
  v11 = [v10 identifier];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  a5[9] = v12;
  a5[10] = v14;
  a5[12] = a3;
  outlined init with copy of SignalProviding(v31, (a5 + 2));
  v15 = a3;
  v16 = [v15 request];
  v17 = [v16 content];

  v18 = [v17 communicationContext];
  if (!v18)
  {
    v24 = 0;
    a5[13] = 1;
LABEL_12:
    v25 = (*(*a5 + 264))(v24);

    goto LABEL_13;
  }

  v19 = [v18 capabilities];
  v20 = 1;
  if (v19 == &dword_0 + 1)
  {
    v20 = 2;
  }

  a5[13] = v20;
  v21 = [v18 sender];
  if (!v21)
  {
    v26 = [v18 recipients];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _UNNotificationContact, _UNNotificationContact_ptr);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v27))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v27 & 0xC000000000000001) == 0, v27);
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v27 + 32);
      }

      v24 = v28;
    }

    else
    {

      v24 = 0;
    }

    goto LABEL_12;
  }

  v22 = v21;
  v23 = *(*a5 + 264);
  v24 = v21;
  v25 = v23(v22);

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v31);
  swift_beginAccess();
  v29 = a5[11];
  a5[11] = v25;

  return a5;
}

uint64_t specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
  v51 = &protocol witness table for CNContactStore;
  *&v49 = a2;
  *(a3 + 104) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v6, v7, a1, &v47);

  if (v48)
  {
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v45;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v46;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v47, &_sypSgMd, &_sypSgMR);
    v9 = 0;
    v10 = 0;
  }

  swift_beginAccess();
  *(a3 + 56) = v9;
  *(a3 + 64) = v10;

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v11, v12, a1, &v47);

  if (v48)
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v43;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v44;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v47, &_sypSgMd, &_sypSgMR);
    v14 = 0;
    v15 = 0;
  }

  swift_beginAccess();
  *(a3 + 72) = v14;
  *(a3 + 80) = v15;

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v16, v17, a1, &v47);

  if (v48)
  {
    v18 = swift_dynamicCast();
    if (v18)
    {
      v19 = v41;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v42;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v47, &_sypSgMd, &_sypSgMR);
    v19 = 0;
    v20 = 0;
  }

  swift_beginAccess();
  *(a3 + 88) = v19;
  *(a3 + 96) = v20;

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v21, v22, a1, &v47);

  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v23 = v40;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v47, &_sypSgMd, &_sypSgMR);
    v23 = 0;
  }

  swift_beginAccess();
  *(a3 + 104) = v23;

  if (one-time initialization token for handleTypeKey != -1)
  {
    swift_once();
  }

  specialized Dictionary.subscript.getter(static IdentifyIncomingCallerDirectAction.handleTypeKey, *algn_553398, a1, &v47);
  if (v48)
  {
    if (swift_dynamicCast())
    {
      v24 = 0;
      v25 = v39;
      goto LABEL_37;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v47, &_sypSgMd, &_sypSgMR);
  }

  v25 = 0;
  v24 = 1;
LABEL_37:
  swift_beginAccess();
  *(a3 + 128) = v25;
  *(a3 + 136) = v24;
  if (one-time initialization token for handleValueKey != -1)
  {
    swift_once();
  }

  specialized Dictionary.subscript.getter(static IdentifyIncomingCallerDirectAction.handleValueKey, *algn_5533A8, a1, &v47);
  if (v48)
  {
    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v37;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v38;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v47, &_sypSgMd, &_sypSgMR);
    v27 = 0;
    v28 = 0;
  }

  swift_beginAccess();
  *(a3 + 112) = v27;
  *(a3 + 120) = v28;

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v29, v30, a1, &v47);

  if (v48)
  {
    if (swift_dynamicCast())
    {
      v31 = v36;
      goto LABEL_52;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v47, &_sypSgMd, &_sypSgMR);
  }

  v31 = 0;
LABEL_52:
  *(a3 + 137) = v31;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v32, v33, a1, &v47);

  if (!v48)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v47, &_sypSgMd, &_sypSgMR);
    goto LABEL_56;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    v34 = 0;
    goto LABEL_57;
  }

  v34 = v36;
LABEL_57:
  *(a3 + 138) = v34;
  outlined init with take of SPHConversation(&v49, a3 + 16);
  return a3;
}

uint64_t lazy protocol witness table accessor for type MainFlow and conformance MainFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _s27PhoneCallFlowDelegatePlugin17DICodableOverrideV12undoEncoding4name4typeACSS_xmtSeRzSERzlFZySDySSypGzcfU_10Foundation3URLV_Tt1g5(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v7)
    {
      outlined init with copy of Any(*(v3 + 56) + 32 * v6, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v8 = objc_opt_self();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v23[0] = 0;
        v10 = [v8 dataWithPropertyList:isa format:200 options:0 error:v23];

        v11 = v23[0];
        if (v10)
        {
          v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          v23[3] = type metadata accessor for URL();
          __swift_allocate_boxed_opaque_existential_1(v23);
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          specialized Dictionary.subscript.setter(v23, a2, a3);
          outlined consume of Data._Representation(v12, v14);
        }

        else
        {
          v15 = v11;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          __swift_project_value_buffer(v16, static Logger.siriPhone);

          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v23[0] = swift_slowAlloc();
            *v19 = 136315394;
            *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v23);
            *(v19 + 12) = 2080;
            type metadata accessor for URL();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVmMd, &_s10Foundation3URLVmMR);
            v20 = String.init<A>(describing:)();
            v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v23);

            *(v19 + 14) = v22;
            _os_log_impl(&dword_0, v17, v18, "Could not undo encoding for property %s of type %s", v19, 0x16u);
            swift_arrayDestroy();
          }
        }
      }
    }
  }
}

void specialized closure #1 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  specialized Dictionary.subscript.getter(a2, a3, *a1, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  if (swift_dynamicCast() && v15)
  {
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
    v6 = Transformer.transform.getter();
    v6(&v15, &v18);

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    *&v16 = v15;

    specialized Dictionary.subscript.setter(&v16, a2, a3);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v16 = v11;
      *v10 = 136315138;
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGmMd, &_sSay10Foundation4DataVGmMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "No entry in userData of type %s to override", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }
}

void specialized closure #2 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  specialized Dictionary.subscript.getter(a2, a3, *a1, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  if (swift_dynamicCast() && v15)
  {
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
    v6 = Transformer.reverseTransform.getter();
    v6(&v15, &v18);

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    *&v16 = v15;

    specialized Dictionary.subscript.setter(&v16, a2, a3);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v16 = v11;
      *v10 = 136315138;
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGmMd, &_sSaySo8INPersonCGmMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "No entry in userData of type %s to override", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }
}

uint64_t one-time initialization function for codableOverrides()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17DICodableOverrideVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin17DICodableOverrideVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_424FF0;
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, static INPersonArrayCodable.transformer);
  v14 = *(v2 + 16);
  v14(v11, v13, v0);
  v14(v8, v11, v0);
  v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_5_49();
  *(v17 + 16) = v18;
  *(v17 + 24) = 0xEA00000000007374;
  v19 = *(v2 + 32);
  v19(v17 + v15, v8, v0);
  v20 = v26;
  v19(v26, v11, v0);
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_5_49();
  *(v22 + 16) = v23;
  *(v22 + 24) = 0xEA00000000007374;
  v19(v22 + v15, v20, v0);
  *(v12 + 32) = partial apply for specialized closure #1 in static DICodableOverride.transform<A, B>(name:transformer:);
  *(v12 + 40) = v16;
  *(v12 + 48) = partial apply for specialized closure #2 in static DICodableOverride.transform<A, B>(name:transformer:);
  *(v12 + 56) = v21;
  result = swift_allocObject();
  *(result + 16) = 0x5255657469766E69;
  *(result + 24) = 0xE90000000000004CLL;
  *(v12 + 64) = _s27PhoneCallFlowDelegatePlugin17DICodableOverrideV12undoEncoding4name4typeACSS_xmtSeRzSERzlFZySDySSypGzcfU_10Foundation3URLV_Tt1g5TA;
  *(v12 + 72) = result;
  *(v12 + 80) = INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:);
  *(v12 + 88) = 0;
  static MessageFlowDirectInvocation.codableOverrides = v12;
  return result;
}

uint64_t *MessageFlowDirectInvocation.codableOverrides.unsafeMutableAddressor()
{
  if (one-time initialization token for codableOverrides != -1)
  {
    OUTLINED_FUNCTION_1_71(&one-time initialization token for codableOverrides);
  }

  return &static MessageFlowDirectInvocation.codableOverrides;
}

uint64_t static MessageFlowDirectInvocation.codableOverrides.getter()
{
  if (one-time initialization token for codableOverrides != -1)
  {
    OUTLINED_FUNCTION_1_71(&one-time initialization token for codableOverrides);
  }
}

uint64_t MessageFlowDirectInvocation.content.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MessageFlowDirectInvocation.inviteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageFlowDirectInvocation(0) + 24);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MessageFlowDirectInvocation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MessageFlowDirectInvocation;
  if (!type metadata singleton initialization cache for MessageFlowDirectInvocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageFlowDirectInvocation.inviteURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageFlowDirectInvocation(0) + 24);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_23_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t MessageFlowDirectInvocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5255657469766E69 && a2 == 0xE90000000000004CLL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t MessageFlowDirectInvocation.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E65697069636572;
  }

  if (a1 == 1)
  {
    return 0x746E65746E6F63;
  }

  return 0x5255657469766E69;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageFlowDirectInvocation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageFlowDirectInvocation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageFlowDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageFlowDirectInvocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageFlowDirectInvocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin07MessageF16DirectInvocationV10CodingKeys33_5E7E7673D144518764A250A173814005LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin07MessageF16DirectInvocationV10CodingKeys33_5E7E7673D144518764A250A173814005LLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v14[7] = 0;
  lazy protocol witness table accessor for type INPersonArrayCodable and conformance INPersonArrayCodable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for MessageFlowDirectInvocation(0);
    v14[5] = 2;
    type metadata accessor for URL();
    OUTLINED_FUNCTION_3_54();
    lazy protocol witness table accessor for type URL and conformance URL(v11, v12, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INPersonArrayCodable and conformance INPersonArrayCodable()
{
  result = lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable;
  if (!lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable;
  if (!lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INPersonArrayCodable and conformance INPersonArrayCodable);
  }

  return result;
}

uint64_t MessageFlowDirectInvocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_7();
  v34 = v5;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin07MessageF16DirectInvocationV10CodingKeys33_5E7E7673D144518764A250A173814005LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin07MessageF16DirectInvocationV10CodingKeys33_5E7E7673D144518764A250A173814005LLOGMR);
  OUTLINED_FUNCTION_7();
  v33 = v9;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for MessageFlowDirectInvocation(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type MessageFlowDirectInvocation.CodingKeys and conformance MessageFlowDirectInvocation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v31 = v16;
  v18 = v8;
  v19 = v33;
  v20 = v34;
  v39 = 0;
  lazy protocol witness table accessor for type INPersonArrayCodable and conformance INPersonArrayCodable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v31;
  v30 = v40;
  *v31 = v40;
  v38 = 1;
  v21[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v21[2] = v22;
  v37 = 2;
  OUTLINED_FUNCTION_3_54();
  lazy protocol witness table accessor for type URL and conformance URL(v23, v24, &protocol conformance descriptor for URL);
  v25 = v18;
  v26 = v4;
  v27 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v12, v27);
  v28 = v31;
  (*(v20 + 32))(v31 + *(v13 + 24), v25, v26);
  outlined init with copy of MessageFlowDirectInvocation(v28, v32);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return outlined destroy of MessageFlowDirectInvocation(v28);
}

uint64_t outlined init with copy of MessageFlowDirectInvocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageFlowDirectInvocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MessageFlowDirectInvocation(uint64_t a1)
{
  v2 = type metadata accessor for MessageFlowDirectInvocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MessageFlowDirectInvocation.init(recipients:content:inviteURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for MessageFlowDirectInvocation(0) + 24);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_23_1();
  v9 = *(v8 + 32);

  return v9(&a5[v7], a4);
}

uint64_t instantiation function for generic protocol witness table for MessageFlowDirectInvocation(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type MessageFlowDirectInvocation and conformance MessageFlowDirectInvocation, type metadata accessor for MessageFlowDirectInvocation, &protocol conformance descriptor for MessageFlowDirectInvocation);
  result = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type MessageFlowDirectInvocation and conformance MessageFlowDirectInvocation, type metadata accessor for MessageFlowDirectInvocation, &protocol conformance descriptor for MessageFlowDirectInvocation);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for MessageFlowDirectInvocation(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageFlowDirectInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t objectdestroyTm_8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR);
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t partial apply for specialized closure #1 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMd, &_s13SiriUtilities11TransformerVySay10Foundation4DataVGSaySo8INPersonCGGMR) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t MessagesFaceTimeLinkCompletionFlow.__allocating_init(faceTimeLink:recipients:app:sharedGlobals:startCallCATs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = (v15 - v14);
  *v16 = a1;
  v16[1] = a2;
  v16[2] = a3;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a5, v19);
  v17 = (*(v6 + 136))(v16, a4, v19, a6);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v17;
}

uint64_t _s27PhoneCallFlowDelegatePlugin9DICodablePAAE25adaptUserDataAfterEncoder33_5EEBFE6FE8B4FD157AAB3C328F54CD48LLyySDySSypGzFZAA07MessageC16DirectInvocationV_Tt0g5(uint64_t result)
{
  v1 = result;
  if (one-time initialization token for codableOverrides != -1)
  {
    result = swift_once();
  }

  v2 = *(static MessageFlowDirectInvocation.codableOverrides + 16);
  if (v2)
  {
    v3 = static MessageFlowDirectInvocation.codableOverrides + 56;
    do
    {
      v4 = *(v3 - 24);
      v3 += 32;

      v4(v1);

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t key path setter for MessagesFaceTimeLinkCompletionFlow.state : MessagesFaceTimeLinkCompletionFlow(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MessagesFaceTimeLinkCompletionFlow.State(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
  swift_beginAccess();
  outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
  swift_beginAccess();
  return outlined init with copy of MessagesFaceTimeLinkCompletionFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MessagesFaceTimeLinkCompletionFlow.__allocating_init(state:app:sharedGlobals:startCallCATs:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  MessagesFaceTimeLinkCompletionFlow.init(state:app:sharedGlobals:startCallCATs:)(a1, a2, a3, a4);
  return v8;
}

uint64_t MessagesFaceTimeLinkCompletionFlow.init(state:app:sharedGlobals:startCallCATs:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  outlined init with take of MessagesFaceTimeLinkCompletionFlow.State(a1, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state);
  *(v4 + 16) = a2;
  outlined init with take of PhoneCallFeatureFlagProviding(a3, v4 + 24);
  *(v4 + 64) = a4;
  return v4;
}

uint64_t outlined init with take of MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MessagesFaceTimeLinkCompletionFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  (*(*v1 + 112))();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1();
    return (*(v11 + 32))(a1, v10);
  }

  else
  {
    OUTLINED_FUNCTION_4_40();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v10, v13);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v16))
    {
      v17 = OUTLINED_FUNCTION_65_0();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "#MessagesFaceTimeLinkCompletionFlow Encountered invalid exitValue", v17, 2u);
      OUTLINED_FUNCTION_26_0(v17);
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_55();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(v18, v19, &protocol conformance descriptor for PhoneError);
    v20 = swift_allocError();
    PhoneError.logged()(v21);
    OUTLINED_FUNCTION_2_64();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v6, v22);
    *a1 = v20;
    *(a1 + 8) = 0;
    v23 = enum case for RCHFlowResult.error<A, B>(_:);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1();
    return (*(v24 + 104))(a1, v23);
  }
}

uint64_t MessagesFaceTimeLinkCompletionFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[16] = v2;
  v1[17] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v1[18] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  v1[19] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  (*(**(v0 + 136) + 112))();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 168);
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_4_40();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v1, v2);
LABEL_9:

    OUTLINED_FUNCTION_11();

    return v24();
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 136);
  v6 = *v3;
  v5 = v3[1];
  *(v0 + 176) = v5;
  v7 = v3[2];
  *(v0 + 184) = v7;
  v8 = v4[6];
  v9 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v8);
  (*(v9 + 8))(v8, v9);
  v10 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  LOBYTE(v10) = DeviceState.isSendingFaceTimeLinkDeviceUnsupported(app:)(v4[2], v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v10)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v13))
    {
      v14 = OUTLINED_FUNCTION_65_0();
      *v14 = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v15, v16, "#MessagesFaceTimeLinkCompletionFlow sending FaceTime Link is unsupported for idiom");
      OUTLINED_FUNCTION_26_0(v14);
    }

    v17 = *(v0 + 160);
    v18 = *(v0 + 136);

    outlined init with copy of SignalProviding((v4 + 3), v0 + 56);
    type metadata accessor for StartCallCATs(0);
    OUTLINED_FUNCTION_13_34();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_13();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for StartCallCATsSimple(0);
    OUTLINED_FUNCTION_13_34();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_13();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
    OUTLINED_FUNCTION_13_34();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_13();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for UnsupportedFlowCATsSimple(0);
    OUTLINED_FUNCTION_13_34();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_19_13();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for UnsupportedFaceTimeOutputProvider();
    swift_allocObject();
    v19 = UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)();
    v20 = (*(*v19 + 136))(v19);
    v21 = enum case for RCHFlowResult.cancelled<A, B>(_:);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1();
    (*(v22 + 104))(v17, v21);
    swift_storeEnumTagMultiPayload();
    v23 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3(v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state, v0 + 96);
    outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v17, v18 + v23);
    swift_endAccess();
    *(v0 + 120) = v20;
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();

    goto LABEL_9;
  }

  v28 = (*(**(v0 + 136) + 176) + **(**(v0 + 136) + 176));
  v26 = swift_task_alloc();
  *(v0 + 192) = v26;
  *v26 = v0;
  v26[1] = MessagesFaceTimeLinkCompletionFlow.execute();
  v27 = *(v0 + 128);

  return v28(v27, v6, v5, v7);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MessagesFaceTimeLinkCompletionFlow(0);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(&lazy protocol witness table cache variable for type MessagesFaceTimeLinkCompletionFlow and conformance MessagesFaceTimeLinkCompletionFlow, type metadata accessor for MessagesFaceTimeLinkCompletionFlow, &protocol conformance descriptor for MessagesFaceTimeLinkCompletionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.handleMessageIntentFlow(faceTimeLink:recipients:)()
{
  OUTLINED_FUNCTION_15();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[14] = v5;
  v6 = type metadata accessor for PhoneError(0);
  v1[19] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[20] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  v1[21] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[22] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v1[23] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for Parse.DirectInvocation();
  v1[24] = v9;
  v1[25] = *(v9 - 8);
  v1[26] = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v1[27] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for URL();
  v1[28] = v11;
  v1[29] = *(v11 - 8);
  v1[30] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  v76 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v75 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v75);
    _os_log_impl(&dword_0, v2, v3, "#MessagesFaceTimeLinkCompletionFlow URL : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  v8 = v0[16];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v0[15] & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = v0[27];
  v10 = v0[28];
  URL.init(string:)();
  if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
  {
    v12 = v0[27];
    v13 = &_s10Foundation3URLVSgMd;
    v14 = &_s10Foundation3URLVSgMR;
LABEL_12:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, v13, v14);
LABEL_13:
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v21))
    {
      v22 = OUTLINED_FUNCTION_65_0();
      *v22 = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v23, v24, "#MessagesFaceTimeLinkCompletionFlow Error generating direct invocation. Exiting");
      OUTLINED_FUNCTION_26_0(v22);
    }

    v25 = v0[22];
    v26 = v0[20];
    v27 = v0[18];

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_55();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(v28, v29, &protocol conformance descriptor for PhoneError);
    v30 = swift_allocError();
    PhoneError.logged()(v31);
    OUTLINED_FUNCTION_2_64();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v26, v32);
    *v25 = v30;
    *(v25 + 8) = 0;
    v33 = enum case for RCHFlowResult.error<A, B>(_:);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1();
    (*(v34 + 104))(v25, v33);
    swift_storeEnumTagMultiPayload();
    v35 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3(v27 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state, (v0 + 7));
    outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v25, v27 + v35);
    swift_endAccess();
    static ExecuteResponse.complete()();
    goto LABEL_16;
  }

  v15 = v0[30];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[17];
  (*(v0[29] + 32))(v15, v0[27], v0[28]);
  MessagesFaceTimeLinkCompletionFlow.constructDirectInvocation(url:recipients:)(v15, v18, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v19 = v0[23];
    (*(v0[29] + 8))(v0[30], v0[28]);
    v13 = &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd;
    v14 = &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR;
    v12 = v19;
    goto LABEL_12;
  }

  v38 = v0[26];
  v39 = v0[18];
  (*(v0[25] + 32))(v38, v0[23], v0[24]);
  v40 = v39[6];
  v41 = v39[7];
  __swift_project_boxed_opaque_existential_1(v39 + 3, v40);
  (*(v41 + 48))(v40, v41);
  v42 = v0[5];
  v43 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v42);
  OUTLINED_FUNCTION_13_34();
  v45 = (*(v44 + 8))(v38, v42, v43);
  if (v45)
  {
    v46 = v45;
    v47 = v0[29];
    v73 = v0[30];
    v48 = v0[28];
    v49 = v0[25];
    v50 = v0[26];
    v51 = v0[24];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v0[13] = v46;
    type metadata accessor for AnyFlow();

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    (*(v49 + 8))(v50, v51);
    (*(v47 + 8))(v73, v48);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v53))
    {
      v54 = OUTLINED_FUNCTION_65_0();
      *v54 = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v55, v56, "#MessagesFaceTimeLinkCompletionFlow Phone flow not found for direct invocation");
      OUTLINED_FUNCTION_26_0(v54);
    }

    v57 = v0[29];
    v72 = v0[28];
    v74 = v0[30];
    v58 = v0[25];
    v70 = v0[24];
    v71 = v0[26];
    v59 = v0[22];
    v60 = v0[20];
    v61 = v0[18];

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_55();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(v62, v63, &protocol conformance descriptor for PhoneError);
    v64 = swift_allocError();
    PhoneError.logged()(v65);
    OUTLINED_FUNCTION_2_64();
    outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v60, v66);
    *v59 = v64;
    *(v59 + 8) = 0;
    v67 = enum case for RCHFlowResult.error<A, B>(_:);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_23_1();
    (*(v68 + 104))(v59, v67);
    swift_storeEnumTagMultiPayload();
    v69 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3(v61 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state, (v0 + 10));
    outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v59, v61 + v69);
    swift_endAccess();
    static ExecuteResponse.complete()();
    (*(v58 + 8))(v71, v70);
    (*(v57 + 8))(v74, v72);
  }

LABEL_16:

  OUTLINED_FUNCTION_11();

  return v36();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.flowOnCompletion(exitValue:)(uint64_t a1)
{
  v2 = v1;
  v51 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  outlined init with copy of Any(a1, v52);
  if (swift_dynamicCast())
  {
    v50 = v7;
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    v48 = *(v13 + 32);
    v49 = v13 + 32;
    v48(v21, v11, v12);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = *(v13 + 16);
    v23(v18, v21, v12);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v25))
    {
      v26 = swift_slowAlloc();
      v47 = v2;
      v27 = v26;
      v46 = swift_slowAlloc();
      v52[0] = v46;
      *v27 = 136315138;
      v23(v15, v18, v12);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v13 + 8))(v18, v12);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v52);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_0, v24, v25, "#MessagesFaceTimeLinkCompletionFlow received exitValue: %s", v27, 0xCu);
      v32 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_26_0(v32);
      v33 = v27;
      v2 = v47;
      OUTLINED_FUNCTION_26_0(v33);
    }

    else
    {

      (*(v13 + 8))(v18, v12);
    }

    v43 = v50;
    v48(v50, v21, v12);
    swift_storeEnumTagMultiPayload();
    v44 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state, v52);
    v41 = v2 + v44;
    v42 = v43;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v7;
      v38 = OUTLINED_FUNCTION_65_0();
      *v38 = 0;
      _os_log_impl(&dword_0, v35, v36, "#MessagesFaceTimeLinkCompletionFlow Invalid user exitValue", v38, 2u);
      v39 = v38;
      v7 = v37;
      OUTLINED_FUNCTION_26_0(v39);
    }

    (*(v13 + 104))(v7, enum case for RCHFlowResult.cancelled<A, B>(_:), v12);
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state;
    OUTLINED_FUNCTION_17_3(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin34MessagesFaceTimeLinkCompletionFlow_state, v52);
    v41 = v2 + v40;
    v42 = v7;
  }

  outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(v42, v41);
  return swift_endAccess();
}

uint64_t MessagesFaceTimeLinkCompletionFlow.constructDirectInvocation(url:recipients:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessageFlowDirectInvocation(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = (v10 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1();
  v13 = __chkstk_darwin(v12);
  v15 = &v47 - v14;
  (*(**(v3 + 64) + class metadata base offset for StartCallCATs + 1304))(v13);
  v16 = Result<>.firstPrint.getter();
  v18 = v17;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (!v18)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v33))
    {
      v34 = OUTLINED_FUNCTION_65_0();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "#MessagesFaceTimeLinkCompletionFlow failed to generate join my facetime message", v34, 2u);
      OUTLINED_FUNCTION_26_0(v34);
    }

    goto LABEL_13;
  }

  v19 = *(v7 + 24);
  type metadata accessor for URL();
  OUTLINED_FUNCTION_23_1();
  (*(v20 + 16))(&v11[v19], a1);
  *v11 = a2;
  *(v11 + 1) = v16;
  *(v11 + 2) = v18;
  v49[0] = 0xD000000000000028;
  v49[1] = 0x800000000045C440;

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._object = 0x800000000045C470;
  v22._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v22);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(&lazy protocol witness table cache variable for type MessageFlowDirectInvocation and conformance MessageFlowDirectInvocation, type metadata accessor for MessageFlowDirectInvocation, &protocol conformance descriptor for MessageFlowDirectInvocation);
  v38 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v40 = v39;

  v41 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v49[0] = 0;
  v43 = [v41 propertyListWithData:isa options:0 format:0 error:v49];

  if (!v43)
  {
    v46 = v49[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v38, v40);
    OUTLINED_FUNCTION_6_47();

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v49);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_0, v24, v25, "#MessagesFaceTimeLinkCompletionFlow error constructing direct invocation %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_26_0(v27);
      OUTLINED_FUNCTION_26_0(v26);
    }

    else
    {
    }

LABEL_13:
    v35 = 1;
    goto LABEL_14;
  }

  v44 = v49[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    v45 = v47;
  }

  else
  {
    v45 = Dictionary.init(dictionaryLiteral:)();
  }

  v48 = v45;
  _s27PhoneCallFlowDelegatePlugin9DICodablePAAE25adaptUserDataAfterEncoder33_5EEBFE6FE8B4FD157AAB3C328F54CD48LLyySDySSypGzFZAA07MessageC16DirectInvocationV_Tt0g5(&v48);
  outlined consume of Data._Representation(v38, v40);
  Parse.DirectInvocation.init(identifier:userData:)();
  OUTLINED_FUNCTION_6_47();
  v35 = 0;
LABEL_14:
  v36 = type metadata accessor for Parse.DirectInvocation();
  return __swift_storeEnumTagSinglePayload(a3, v35, 1, v36);
}

uint64_t MessagesFaceTimeLinkCompletionFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  OUTLINED_FUNCTION_4_40();
  outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(v0 + v1, v2);
  return v0;
}

uint64_t MessagesFaceTimeLinkCompletionFlow.__deallocating_deinit()
{
  MessagesFaceTimeLinkCompletionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance MessagesFaceTimeLinkCompletionFlow(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance AnnounceCallFlow;

  return v6(a1);
}

uint64_t outlined destroy of MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined assign with take of MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for MessagesFaceTimeLinkCompletionFlow(uint64_t a1)
{
  result = type metadata accessor for MessagesFaceTimeLinkCompletionFlow.State(319);
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

void type metadata completion function for MessagesFaceTimeLinkCompletionFlow.State(uint64_t a1)
{
  type metadata accessor for (faceTimeLink: String, recipients: [INPerson])(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RCHFlowResult<INSendMessageIntent, INSendMessageIntentResponse>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (faceTimeLink: String, recipients: [INPerson])(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (faceTimeLink: String, recipients: [INPerson]))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (faceTimeLink: String, recipients: [INPerson]));
    }
  }
}

void type metadata accessor for RCHFlowResult<INSendMessageIntent, INSendMessageIntentResponse>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INSendMessageIntent, INSendMessageIntentResponse>)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INSendMessageIntent, INSendMessageIntent_ptr);
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INSendMessageIntentResponse, INSendMessageIntentResponse_ptr);
    v1 = type metadata accessor for RCHFlowResult();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for RCHFlowResult<INSendMessageIntent, INSendMessageIntentResponse>);
    }
  }
}

uint64_t MicrophoneControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(MicrophoneControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t MicrophoneControlFlow.executeAction(currentCall:)()
{
  v40 = v0;
  v1 = *(v0[9] + 56);
  if (PhoneCallControlAction.isMicrophoneAction.getter(v1))
  {
    v2 = v0[8];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 96);
    v5 = v4(ObjectType, v2);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v5 & 1;
      _os_log_impl(&dword_0, v7, v8, "#MicrophoneControlFlow isMicMuted = %{BOOL}d", v9, 8u);
      OUTLINED_FUNCTION_26_0(v9);
    }

    v10 = PhoneCallControlAction.rawValue.getter(v1);
    if (v5)
    {
      if (v10 != 0xD000000000000010 || 0x8000000000452E20 != v11)
      {
        goto LABEL_21;
      }
    }

    else if (v10 != 0x7263694D6574756DLL || v11 != 0xEE00656E6F68706FLL)
    {
LABEL_21:
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v39[0] = v24;
          *v23 = 136315394;
          if (v5)
          {
            v25 = 0x646574756DLL;
          }

          else
          {
            v25 = 0x646574756D6E75;
          }

          if (v5)
          {
            v26 = 0xE500000000000000;
          }

          else
          {
            v26 = 0xE700000000000000;
          }

          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v39);

          *(v23 + 4) = v27;
          *(v23 + 12) = 2080;
          v28 = PhoneCallControlAction.description.getter(v1);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v39);

          *(v23 + 14) = v30;
          _os_log_impl(&dword_0, v21, v22, "#MicrophoneControlFlow not changing mic state because mic is %s and action is %s", v23, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0(v24);
          OUTLINED_FUNCTION_26_0(v23);
        }

        goto LABEL_36;
      }

LABEL_32:
      v31 = (*(v0[8] + 112))(v0 + 2, ObjectType);
      *v32 = !*v32;
      v31(v0 + 2, 0);
      swift_unknownObjectRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = v0[8];
        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 4) = v4(ObjectType, v35) & 1;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_0, v33, v34, "#MicrophoneControlFlow microphone is muted: %{BOOL}d", v36, 8u);
        OUTLINED_FUNCTION_26_0(v36);
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_36:
      v37 = v0[6];
      *v37 = 0;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = xmmword_42D060;
      v18 = v0[1];
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "#MicrophoneControlFlow used to handle a call control not related to the microphone.", v16, 2u);
    OUTLINED_FUNCTION_26_0(v16);
  }

  lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
  swift_allocError();
  *v17 = v1;
  v17[40] = 0;
  swift_willThrow();
  v18 = v0[1];
LABEL_37:

  return v18();
}

uint64_t ModelDecisionEvaluator.forcedDisambiguationPrediction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ModelDecisionEvaluator.__allocating_init(forcedDisambiguationPrediction:userChosenApp:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 32))(v4 + v5, a1);
  *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp) = a2;
  return v4;
}

uint64_t ModelDecisionEvaluator.init(forcedDisambiguationPrediction:userChosenApp:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_userChosenApp) = a2;
  return v2;
}

Swift::String_optional __swiftcall ModelDecisionEvaluator.getPredictedApp()()
{
  v1 = type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = (v6 - v5);
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction, v1);
  v8 = (*(v3 + 88))(v7, v1);
  if (v8 == enum case for AppResolverResult.resolved(_:) || v8 == enum case for AppResolverResult.needsConfirmation(_:))
  {
    (*(v3 + 96))(v7, v1);
    v11 = *v7;
    v10 = v7[1];
    v12 = *v7 == 0xD000000000000017 && 0x8000000000459750 == v10;
    if (v12 || (OUTLINED_FUNCTION_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v11 == 0xD000000000000012 ? (v13 = 0x800000000045B700 == v10) : (v13 = 0), v13 || (OUTLINED_FUNCTION_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v11 == 0xD000000000000013 ? (v14 = 0x800000000045B720 == v10) : (v14 = 0), v14 || (OUTLINED_FUNCTION_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v11 == 0xD000000000000015 ? (v15 = 0x8000000000452BD0 == v10) : (v15 = 0), v15 || (OUTLINED_FUNCTION_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))))
    {
    }
  }

  else
  {
    (*(v3 + 8))(v7, v1);
  }

  v16 = OUTLINED_FUNCTION_0();
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

Swift::Bool __swiftcall ModelDecisionEvaluator.isDecisionCorrect()()
{
  v1 = type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = (v6 - v5);
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction, v1);
  v8 = OUTLINED_FUNCTION_5_26();
  v10 = v9(v8);
  if (v10 == enum case for AppResolverResult.resolved(_:) || v10 == enum case for AppResolverResult.needsConfirmation(_:))
  {
    v12 = OUTLINED_FUNCTION_5_26();
    v13(v12);
    v14 = *v7;
    v15 = v7[1];
    v16 = App.appIdentifier.getter();
    v18 = ModelDecisionEvaluator.bundlesMatchOrEquivalent(_:_:)(v14, v15, v16, v17);

    return v18 & 1;
  }

  if (v10 == enum case for AppResolverResult.needsDisambiguation(_:))
  {
    v19 = OUTLINED_FUNCTION_5_26();
    v20(v19);
    v21 = *v7;
    v22 = (*v7 + 40);
    v23 = -*(*v7 + 16);
    v24 = -1;
    while (1)
    {
      if (v23 + v24 == -1)
      {

        goto LABEL_20;
      }

      if (++v24 >= *(v21 + 16))
      {
        break;
      }

      v25 = v22 + 2;
      v27 = *(v22 - 1);
      v26 = *v22;

      v28 = App.appIdentifier.getter();
      LOBYTE(v27) = ModelDecisionEvaluator.bundlesMatchOrEquivalent(_:_:)(v27, v26, v28, v29);

      v22 = v25;
      if (v27)
      {

        v18 = 1;
        return v18 & 1;
      }
    }

    __break(1u);
  }

  else
  {
    if (v10 == enum case for AppResolverResult.noMatchFound(_:))
    {
      v18 = App.isFirstParty()();
      return v18 & 1;
    }

    if (one-time initialization token for siriPhone == -1)
    {
      goto LABEL_17;
    }
  }

  swift_once();
LABEL_17:
  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriPhone);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "#ModelDecisionEvaluator isDecisionCorrect: unknown prediction state", v33, 2u);
  }

  v34 = OUTLINED_FUNCTION_5_26();
  v35(v34);
LABEL_20:
  v18 = 0;
  return v18 & 1;
}

BOOL ModelDecisionEvaluator.isConfirmation()(_DWORD *a1)
{
  v3 = type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v8 - v7, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction, v3);
  v9 = OUTLINED_FUNCTION_8_2();
  v11 = v10(v9) == *a1;
  v12 = OUTLINED_FUNCTION_8_2();
  v13(v12);
  return v11;
}

uint64_t ModelDecisionEvaluator.description.getter()
{
  _StringGuts.grow(_:)(63);
  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x800000000045C540;
  String.append(_:)(v1);
  v2 = (*(*v0 + 112))();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = 0x800000000045C560;
  String.append(_:)(v7);
  v8 = (*(*v0 + 128))();
  v9 = (v8 & 1) == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._object = 0x800000000045C580;
  v13._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v13);
  v14 = (*(*v0 + 120))();
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  return 0;
}

uint64_t ModelDecisionEvaluator.bundlesMatchOrEquivalent(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      OUTLINED_FUNCTION_8_2();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  v5 = OUTLINED_FUNCTION_8_2();
  if (static PhoneCallAppNameConstants.isPhone(appId:)(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_0();
    if (static PhoneCallAppNameConstants.isPhone(appId:)(v7, v8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ModelDecisionEvaluator.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t ModelDecisionEvaluator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22ModelDecisionEvaluator_forcedDisambiguationPrediction;
  type metadata accessor for AppResolverResult();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelDecisionEvaluator(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModelDecisionEvaluator;
  if (!type metadata singleton initialization cache for ModelDecisionEvaluator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ModelDecisionEvaluator(uint64_t a1)
{
  result = type metadata accessor for AppResolverResult();
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

uint64_t static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)(void *a1)
{
  v3 = type metadata accessor for TemplatingResult();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[4] = v4;
  v7 = (*(*a1 + class metadata base offset for UnsupportedFlowCATs + 104) + **(*a1 + class metadata base offset for UnsupportedFlowCATs + 104));
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:);

  return v7(v4);
}

uint64_t static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:);
  }

  else
  {
    v2 = static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

void *static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISayIt, SAUISayIt_ptr);
  result = TemplatingResult.speak.getter();
  if (result[2])
  {
    v3 = v0[3];
    v2 = v0[4];
    v4 = v0[2];
    v5 = result[4];
    v6 = result[5];

    v7 = TemplatingResult.templateIdentifier.getter();
    v9 = SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v5, v6, v7, v8, 0, 0);
    v10 = [objc_allocWithZone(SAResultCallback) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_426260;
    *(v11 + 32) = v9;
    v12 = v9;
    outlined bridged method (mbnn) of @objc SAResultCallback.commands.setter(v11, v10);
    [v10 setCode:SAResultCallbackAnyErrorCodeValue];
    v13 = [objc_allocWithZone(SAPhoneClientCoordinationPhoneCall) init];
    [v13 setEmergencyCall:1];
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_426260;
    *(v14 + 32) = v10;
    outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(v14, v13);

    (*(v3 + 8))(v2, v4);

    v15 = v0[1];

    return v15(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SAResultCallback.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCommands:isa];
}

void outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCallbacks:isa];
}

void *NewCallConfirmationFlowProducer.__allocating_init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, uint64_t a6)
{
  v13 = swift_allocObject();
  v14 = a5[3];
  v15 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v14);
  OUTLINED_FUNCTION_12_36();
  __chkstk_darwin(v16);
  v18 = OUTLINED_FUNCTION_9_37(v17, v22);
  v19(v18);
  v20 = specialized NewCallConfirmationFlowProducer.init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(a1, a2, a3, a4, v6, a6, v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v20;
}

void *NewCallConfirmationFlowProducer.init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, uint64_t a6)
{
  v14 = a5[3];
  v15 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v14);
  OUTLINED_FUNCTION_12_36();
  __chkstk_darwin(v16);
  v18 = OUTLINED_FUNCTION_9_37(v17, v22);
  v19(v18);
  v20 = specialized NewCallConfirmationFlowProducer.init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(a1, a2, a3, a4, v7, a6, v6, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v20;
}

uint64_t NewCallConfirmationFlowProducer.makeConfirmationFlow()()
{
  outlined init with copy of SignalProviding((v0 + 5), v11);
  type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
  swift_allocObject();
  PhoneCallYesNoConfirmationFlowStrategy.init(outputProducer:sharedGlobals:)(&async function pointer to partial apply for implicit closure #2 in implicit closure #1 in NewCallConfirmationFlowProducer.makeConfirmationFlow(), v0, v11);
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  v3 = *(v2 + 16);

  v3(v11, v1, v2);
  v4 = v12;
  v5 = v13;
  v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v10[3] = v4;
  v10[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
  swift_allocObject();
  lazy protocol witness table accessor for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy(&lazy protocol witness table cache variable for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy, type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy, &protocol conformance descriptor for PhoneCallYesNoConfirmationFlowStrategy);
  v8 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t implicit closure #2 in implicit closure #1 in NewCallConfirmationFlowProducer.makeConfirmationFlow()(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = closure #2 in ActionableCallControlFlow.execute();

  return NewCallConfirmationFlowProducer.makePromptOutput()();
}

uint64_t NewCallConfirmationFlowProducer.makePromptOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[321] = v0;
  v1[315] = v2;
  type metadata accessor for DialogPhase();
  v1[327] = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[333] = v3;
  v1[339] = *(v3 - 8);
  v1[345] = OUTLINED_FUNCTION_45();
  v1[351] = type metadata accessor for CommonDirectAction(0);
  v1[357] = OUTLINED_FUNCTION_45();
  v1[363] = type metadata accessor for YesNoConfirmationModel(0);
  v1[364] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(NewCallConfirmationFlowProducer.makePromptOutput(), 0, 0);
}

{
  v1 = 0x4E574F4E4B4E55;
  v2 = v0[321];
  type metadata accessor for PhoneCallRecord.Builder(0);
  swift_allocObject();
  v3 = PhoneCallRecord.Builder.init()();
  type metadata accessor for PhoneCallProvider.Builder(0);
  swift_allocObject();
  v4 = PhoneCallProvider.Builder.init()();
  v5 = *(v2 + 32);
  if (![v5 preferredCallProvider])
  {
    v8 = 0xE700000000000000;
    v9 = 0x4E574F4E4B4E55;
    goto LABEL_12;
  }

  v6 = INPreferredCallProviderGetBackingType();
  switch(v6)
  {
    case 4:
      v7 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v7 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v7 = @"TELEPHONY_PROVIDER";
      break;
    default:
      v7 = [NSString stringWithFormat:@"(unknown: %i)", v6];
      goto LABEL_11;
  }

  v10 = v7;
LABEL_11:
  v11 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v12;

LABEL_12:
  v13 = (*(*v4 + 200))(v9, v8, 0, 0);

  v15 = (*(*v13 + 240))(v14);

  v16 = (*(*v3 + 976))(v15);

  if (![v5 callCapability])
  {
    v19 = 0xE700000000000000;
    goto LABEL_21;
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v18 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      v18 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
      goto LABEL_20;
    }

    v18 = @"AUDIO_CALL";
  }

  v20 = v18;
LABEL_20:
  v21 = v18;
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v22;

LABEL_21:
  v23 = v0[321];
  v24 = (*(*v16 + 960))(v1, v19, 0, 0);

  v26 = (*(*v24 + 1176))(v25);
  v0[365] = v26;

  v27 = swift_allocObject();
  v0[366] = v27;
  *(v27 + 16) = v23;
  *(v27 + 24) = v26;

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 307, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 272);
}

{
  *(v1 + 2936) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }
}

{
  v1 = v0[357];
  v2 = v0[321];
  v0[368] = v0[307];
  v0[369] = v0[308];
  swift_storeEnumTagMultiPayload();
  v3 = v2[8];
  v4 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v3);
  v5 = *(v4 + 8);

  v5(v3, v4);
  v0[370] = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v0 + 247);
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  OUTLINED_FUNCTION_5_50();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(v1, v6);
  v7 = OUTLINED_FUNCTION_8_46();

  return _swift_asyncLet_get_throwing(v7, v8, v9, v0 + 316);
}

{
  *(v1 + 2968) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }
}

{
  v24 = *(v0 + 2960);
  v20 = *(v0 + 2944);
  v21 = *(v0 + 2952);
  v1 = *(v0 + 2912);
  v2 = *(v0 + 2904);
  v3 = *(v0 + 2856);
  v4 = *(v0 + 2568);
  v22 = *(v0 + 2384);
  v23 = *(v0 + 2376);
  swift_storeEnumTagMultiPayload();
  v25 = v4;
  v5 = v4[8];
  v6 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v5);
  v7 = *(v6 + 8);

  v7(v5, v6);
  v8 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 2056));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2056));
  OUTLINED_FUNCTION_5_50();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(v3, v9);
  *(v0 + 2440) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v10 = (v1 + *(v2 + 36));
  *v10 = 0xD000000000000011;
  v10[1] = 0x8000000000456DF0;
  *(v0 + 2424) = v20;
  *(v0 + 2432) = v21;
  Loggable.init(wrappedValue:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v11 = v24;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 2408) = v23;
  *(v0 + 2416) = v22;
  Loggable.init(wrappedValue:)();
  v12 = v8;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 2392) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();

  *(v0 + 2160) = v2;
  *(v0 + 2168) = lazy protocol witness table accessor for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel, type metadata accessor for YesNoConfirmationModel, &protocol conformance descriptor for YesNoConfirmationModel);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2136));
  outlined init with copy of YesNoConfirmationModel(v1, boxed_opaque_existential_1);
  static DialogPhase.confirmation.getter();
  *(swift_task_alloc() + 16) = v0 + 2136;
  OutputGenerationManifest.init(dialogPhase:_:)();

  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  outlined destroy of PhoneSnippetModel?(v0 + 2136);
  v14 = v25[8];
  v15 = v25[9];
  __swift_project_boxed_opaque_existential_1(v25 + 5, v14);
  (*(v15 + 136))(v14, v15);
  v16 = *(v0 + 2240);
  *(v0 + 2976) = v16;
  *(v0 + 2992) = __swift_project_boxed_opaque_existential_1((v0 + 2216), v16);
  *(v0 + 2320) = type metadata accessor for PhoneSnippetDataModels(0);
  *(v0 + 2328) = lazy protocol witness table accessor for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 2296));
  outlined init with copy of YesNoConfirmationModel(v1, v17);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v0 + 3000) = v18;
  *(v18 + 16) = xmmword_426260;

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2016);
}

{
  *(v1 + 3008) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[373];
  v2 = v0[309];
  *(v0[375] + 32) = v2;
  v3 = *(v1 + 8);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[377] = v5;
  *v5 = v0;
  v5[1] = NewCallConfirmationFlowProducer.makePromptOutput();
  v6 = v0[375];
  v7 = v0[372];
  v8 = v0[345];
  v9 = v0[315];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v9, v0 + 287, v6, v8, v7, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 2296));

  return _swift_task_switch(NewCallConfirmationFlowProducer.makePromptOutput(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2912);
  v2 = OUTLINED_FUNCTION_13_35();
  v3(v2);
  OUTLINED_FUNCTION_4_41();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(v1, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2216));
  v5 = OUTLINED_FUNCTION_8_46();

  return _swift_asyncLet_finish(v5, v6, v7, v0 + 2720);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 2456, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2096);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 1936);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  return _swift_asyncLet_finish(v0 + 1296, v0 + 2376, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2256);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 2456, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2336);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2480);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_3_56();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_8_46();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 2576);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 2456, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2624);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2672);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_3_56();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[375];
  v2 = v0[364];
  v3 = OUTLINED_FUNCTION_13_35();
  v4(v3);
  OUTLINED_FUNCTION_4_41();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(v2, v5);
  *(v1 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 287);
  __swift_destroy_boxed_opaque_existential_1(v0 + 277);
  v6 = OUTLINED_FUNCTION_8_46();

  return _swift_asyncLet_finish(v6, v7, v8, v0 + 358);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 2456, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2816);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  return _swift_asyncLet_finish(v0 + 656, v0 + 2472, NewCallConfirmationFlowProducer.makePromptOutput(), v0 + 2768);
}

{
  return OUTLINED_FUNCTION_0_1(NewCallConfirmationFlowProducer.makePromptOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_3_56();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput(), 0, 0);
}

uint64_t implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[4];
  v2 = *(v0[3] + 120);
  swift_getObjectType();
  v3 = SPHCall.toPhoneCallRecord()();
  v0[5] = v3;
  v6 = (*(*v2 + class metadata base offset for OngoingCallCATsSimple + 64) + **(*v2 + class metadata base offset for OngoingCallCATsSimple + 64));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput();

  return v6(v3, v1);
}

{
  **(v0 + 16) = *(v0 + 64);
  return OUTLINED_FUNCTION_2_65();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 56) = v1;

  if (v1)
  {
    v9 = implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput();
  }

  else
  {

    *(v5 + 64) = a1;
    v9 = implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput();
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t implicit closure #2 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #2 in NewCallConfirmationFlowProducer.makePromptOutput();

  return static LabelTemplates.yes()();
}

uint64_t implicit closure #2 in NewCallConfirmationFlowProducer.makePromptOutput()()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_13_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    v13 = OUTLINED_FUNCTION_19_8();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  return OUTLINED_FUNCTION_2_65();
}

uint64_t implicit closure #3 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = implicit closure #3 in NewCallConfirmationFlowProducer.makePromptOutput();

  return static LabelTemplates.no()();
}

uint64_t implicit closure #3 in NewCallConfirmationFlowProducer.makePromptOutput()()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_28();
  v7 = v6;
  OUTLINED_FUNCTION_13_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    v13 = OUTLINED_FUNCTION_19_8();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t NewCallConfirmationFlowProducer.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return v0;
}

uint64_t NewCallConfirmationFlowProducer.__deallocating_deinit()
{
  NewCallConfirmationFlowProducer.deinit();

  return swift_deallocClassInstance();
}

void *specialized NewCallConfirmationFlowProducer.init(currentCall:newCallIntent:sharedGlobals:labelTemplatesProvider:ongoingCallCats:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  a7[13] = a8;
  a7[14] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7 + 10);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a5, a8);
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, (a7 + 5));
  a7[15] = a6;
  return a7;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in NewCallConfirmationFlowProducer.makeConfirmationFlow()()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = closure #2 in ActionableCallControlFlow.execute();

  return implicit closure #2 in implicit closure #1 in NewCallConfirmationFlowProducer.makeConfirmationFlow()(v2);
}

uint64_t partial apply for implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #1 in NewCallConfirmationFlowProducer.makePromptOutput()(a1, v5, v4);
}

uint64_t lazy protocol witness table accessor for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t key path setter for NLTransformer.nlIntentHistory : NLTransformer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

uint64_t key path setter for NLTransformer.currentTransformation : NLTransformer(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v5, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  v3 = *a2;
  swift_beginAccess();
  outlined assign with take of TransformationResult?(v5, v3 + 72, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  return swift_endAccess();
}

uint64_t NLTransformer.__allocating_init(referenceResolver:featureManager:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a3(v12, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

void NLTransformer.transformToAnyPhoneNLIntent(parse:callStateProvider:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  OUTLINED_FUNCTION_2_0();
  v17 = (*(v16 + 248))(v3);
  if (v17)
  {
    v18 = v17;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v19, static Logger.siriPhone);

    v20 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_31_13())
    {
      OUTLINED_FUNCTION_42();
      v21 = OUTLINED_FUNCTION_14_2();
      *&v73 = v21;
      v22 = OUTLINED_FUNCTION_3_57(4.8149e-34);
      v75 = 0;
      v76 = v23;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v22, v24, v25, v26);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v73);
      OUTLINED_FUNCTION_17_21();

      *(v12 + 4) = v0;
      OUTLINED_FUNCTION_9_38();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_26_0(v21);
      OUTLINED_FUNCTION_14_0();
    }

    *(v5 + 24) = type metadata accessor for PhoneCallControlNLIntent();
    *(v5 + 32) = &protocol witness table for PhoneCallControlNLIntent;
    *v5 = v18;
  }

  else
  {
    (*(*v0 + 192))(&v73, v3);
    if (v74)
    {
      outlined init with take of PhoneCallFeatureFlagProviding(&v73, &v75);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v32 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);

      v33 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_31_13())
      {
        OUTLINED_FUNCTION_42();
        v34 = OUTLINED_FUNCTION_14_2();
        v72 = v34;
        *&v73 = 0;
        v35 = OUTLINED_FUNCTION_3_57(4.8149e-34);
        *(&v73 + 1) = v36;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v35, v37, v38, v39);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, *(&v73 + 1), &v72);
        OUTLINED_FUNCTION_17_21();

        *(v12 + 4) = v0;
        OUTLINED_FUNCTION_9_38();
        _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        OUTLINED_FUNCTION_26_0(v34);
        OUTLINED_FUNCTION_14_0();
      }

      v45 = v77;
      v46 = v78;
      v47 = __swift_project_boxed_opaque_existential_1(&v75, v77);
      *(v5 + 24) = v45;
      *(v5 + 32) = *(v46 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
      (*(*(v45 - 8) + 16))(boxed_opaque_existential_1, v47, v45);
      __swift_destroy_boxed_opaque_existential_1(&v75);
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v73, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v49 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v49, static Logger.siriPhone);
      v50 = *(v8 + 16);
      v50(v15, v3, v6);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_86_1();
        v70 = v52;
        v54 = v53;
        v71 = OUTLINED_FUNCTION_16_13();
        *&v73 = v71;
        *v54 = 136315394;
        v55 = v1[4];
        v56 = v1[5];
        v57 = v1[6];
        v58 = v1[7];
        v75 = 0;
        v76 = 0xE000000000000000;
        v69 = v51;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v55, v56, v57, v58);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v73);
        OUTLINED_FUNCTION_17_21();

        *(v54 + 4) = v1;
        *(v54 + 12) = 2080;
        v50(v12, v15, v6);
        v59 = String.init(describing:)(v12);
        v61 = v60;
        v62 = OUTLINED_FUNCTION_15_31();
        v63(v62);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v73);

        *(v54 + 14) = v64;
        v65 = v69;
        v66 = v71;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v66);
        OUTLINED_FUNCTION_26_0(v54);
      }

      else
      {

        v67 = OUTLINED_FUNCTION_15_31();
        v68(v67);
      }

      *(v5 + 32) = 0;
      *v5 = 0u;
      *(v5 + 16) = 0u;
    }
  }

  OUTLINED_FUNCTION_65();
}

void NLTransformer.transformToPhoneCallNLIntent(parse:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v197 = v3;
  type metadata accessor for MessagePayload.ClientAction();
  OUTLINED_FUNCTION_7();
  v184 = v5;
  v185 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v181 = v7 - v6;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for IFClientActionParse();
  OUTLINED_FUNCTION_7();
  v182 = v9;
  v183 = v8;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v180 = v11 - v10;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7();
  v187 = v13;
  v188 = v12;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v186 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  __chkstk_darwin(v16 - 8);
  v192 = (&v180 - v17);
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7();
  v193 = v19;
  v194 = v18;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_12_5();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v191 = &v180 - v24;
  v25 = OUTLINED_FUNCTION_15_0();
  v189 = type metadata accessor for PhoneError(v25);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_4();
  v190 = v28 - v27;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v195 = v29;
  v196 = v30;
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_12_5();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &v180 - v35;
  __chkstk_darwin(v37);
  v39 = (&v180 - v38);
  v40 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v42 = v41;
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_4();
  v46 = v45 - v44;
  static HashableParse.from(_:)(v2, v203);
  if (*&v203[2])
  {
    v204[0] = v203[0];
    v204[1] = v203[1];
    v204[2] = v203[2];
    NLTransformer.alreadyTransformed(newHash:)(v202);
    v47 = v0;
    if (v202[4])
    {
      memcpy(v203, v202, 0x58uLL);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v48 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v48, static Logger.siriPhone);
      outlined init with copy of TransformationResult(v203, v202);

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_86_1();
        v198[0] = OUTLINED_FUNCTION_16_13();
        v52 = OUTLINED_FUNCTION_22_14(4.8151e-34);
        *&v199 = 0;
        *(&v199 + 1) = v53;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v52, v54, v55, v56);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, *(&v199 + 1), v198);

        *(v51 + 4) = v57;
        *(v51 + 12) = 2080;
        outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v202[6], &v199, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        v58 = OUTLINED_FUNCTION_23_14();
        __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
        String.init<A>(describing:)();
        outlined destroy of TransformationResult(v202);
        v60 = OUTLINED_FUNCTION_23_14();
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v62);

        *(v51 + 14) = v63;
        OUTLINED_FUNCTION_27_15(&dword_0, v64, v65, "%s found cached result. Returning result: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14_0();
        OUTLINED_FUNCTION_26_0(v51);
      }

      else
      {

        outlined destroy of TransformationResult(v202);
      }

      outlined destroy of HashableParse(v204);
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v203[3], v197, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      outlined destroy of TransformationResult(v203);
      goto LABEL_26;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v202, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    v85 = v196;
    v86 = v2;
    v87 = v195;
    (*(v196 + 16))(v39, v86, v195);
    v88 = (*(v85 + 88))(v39, v87);
    if (v88 == enum case for Parse.NLv3IntentOnly(_:))
    {
      v89 = OUTLINED_FUNCTION_6_48();
      v90(v89);
    }

    else
    {
      if (v88 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        if (v88 == enum case for Parse.NLv4IntentOnly(_:))
        {
          v115 = OUTLINED_FUNCTION_6_48();
          v116(v115);
          v117 = *v39;
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v118 = type metadata accessor for Logger();
          __swift_project_value_buffer(v118, static Logger.siriPhone);

          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v119, v120))
          {
            v121 = OUTLINED_FUNCTION_86_1();
            v122 = swift_slowAlloc();
            v196 = v117;
            v123 = v122;
            v124 = swift_slowAlloc();
            v202[0] = v124;
            *v121 = 136315394;
            v125 = v0[4];
            v126 = v0[5];
            v127 = v0[6];
            v128 = v0[7];
            v129 = v0;
            *&v203[0] = 0;
            *(&v203[0] + 1) = 0xE000000000000000;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v125, v126, v127, v128);
            v130 = OUTLINED_FUNCTION_13_36();

            *(v121 + 4) = v130;
            *(v121 + 12) = 2112;
            v131 = v190;
            swift_storeEnumTagMultiPayload();
            lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
            swift_allocError();
            PhoneError.logged()(v132);
            outlined destroy of PhoneError(v131);
            v133 = _swift_stdlib_bridgeErrorToNSError();
            *(v121 + 14) = v133;
            *v123 = v133;
            _os_log_impl(&dword_0, v119, v120, "%s %@", v121, 0x16u);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v123, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v134 = v123;
            v117 = v196;
            OUTLINED_FUNCTION_26_0(v134);
            __swift_destroy_boxed_opaque_existential_1(v124);
            OUTLINED_FUNCTION_26_0(v124);
            OUTLINED_FUNCTION_14_0();
          }

          else
          {
            v129 = v0;
          }

          v140 = v192;
          static ConversionUtils.toUserParse(from:)();
          v141 = v194;
          if (__swift_getEnumTagSinglePayload(v140, 1, v194) == 1)
          {
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v140, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
            v47 = v129;

            swift_unknownObjectRetain();
            v142 = Logger.logObject.getter();
            static os_log_type_t.error.getter();
            swift_unknownObjectRelease();

            if (OUTLINED_FUNCTION_31_13())
            {
              v143 = OUTLINED_FUNCTION_86_1();
              v144 = OUTLINED_FUNCTION_16_13();
              v202[0] = v144;
              v145 = OUTLINED_FUNCTION_3_57(4.8151e-34);
              *&v203[0] = 0;
              *(&v203[0] + 1) = v146;
              DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v145, v147, v148, v149);
              v150 = OUTLINED_FUNCTION_13_36();

              *(v143 + 4) = v150;
              *(v143 + 12) = 2080;
              *&v203[0] = v117;
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
              v151 = String.init<A>(describing:)();
              v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v152, v202);

              *(v143 + 14) = v153;
              OUTLINED_FUNCTION_9_38();
              _os_log_impl(v154, v155, v156, v157, v158, 0x16u);
              swift_arrayDestroy();
              v159 = v144;
              v47 = v129;
              OUTLINED_FUNCTION_26_0(v159);
              OUTLINED_FUNCTION_14_0();

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v201 = 0;
            v199 = 0u;
            v200 = 0u;
          }

          else
          {
            v167 = v193;
            v168 = v191;
            (*(v193 + 32))(v191, v140, v141);
            v47 = v129;
            NLTransformer.transformToPhoneCallNLIntent(userParse:)();
            swift_unknownObjectRelease();
            (*(v167 + 8))(v168, v141);
          }
        }

        else if (v88 == enum case for Parse.uso(_:))
        {
          v135 = OUTLINED_FUNCTION_6_48();
          v136(v135);
          v138 = v186;
          v137 = v187;
          v139 = v188;
          (*(v187 + 32))(v186, v39, v188);
          USOParse.userParse.getter();
          NLTransformer.transformToPhoneCallNLIntent(userParse:)();
          (*(v193 + 8))(v22, v194);
          (*(v137 + 8))(v138, v139);
        }

        else if (v88 == enum case for Parse.ifClientAction(_:))
        {
          v160 = OUTLINED_FUNCTION_6_48();
          v161(v160);
          v163 = v182;
          v162 = v183;
          v164 = v180;
          (*(v182 + 32))(v180, v39, v183);
          v165 = v181;
          IFClientActionParse.clientAction.getter();
          v166 = [objc_allocWithZone(CNContactStore) init];
          v202[3] = type metadata accessor for CNContactStore();
          v202[4] = &protocol witness table for CNContactStore;
          v202[0] = v166;
          *(&v203[1] + 1) = &type metadata for PhoneCallIFIntent;
          *&v203[2] = &protocol witness table for PhoneCallIFIntent;
          *&v203[0] = swift_allocObject();
          static PhoneCallIFIntent.from(clientAction:contactStore:)(v165, v202, *&v203[0] + 16);
          (*(v184 + 8))(v165, v185);
          (*(v163 + 8))(v164, v162);
          __swift_destroy_boxed_opaque_existential_1(v202);
          v199 = v203[0];
          v200 = v203[1];
          v201 = *&v203[2];
        }

        else
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v169 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_9_0(v169, static Logger.siriPhone);

          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v170, v171))
          {
            OUTLINED_FUNCTION_42();
            v172 = OUTLINED_FUNCTION_14_2();
            v202[0] = v172;
            *v85 = 136315138;
            v173 = OUTLINED_FUNCTION_25_17();
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v173, v174, v175, v176);
            v177 = OUTLINED_FUNCTION_13_36();

            *(v85 + 4) = v177;
            _os_log_impl(&dword_0, v170, v171, "%s got an unknown parse - this should be unreachable! All parses must have also have a cache key.", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v172);
            v178 = v172;
            v47 = v0;
            v87 = v195;
            OUTLINED_FUNCTION_26_0(v178);
            v179 = v85;
            v85 = v196;
            OUTLINED_FUNCTION_26_0(v179);
          }

          v201 = 0;
          v199 = 0u;
          v200 = 0u;
          (*(v85 + 8))(v39, v87);
        }

        goto LABEL_20;
      }

      v92 = OUTLINED_FUNCTION_6_48();
      v93(v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);
    }

    (*(v42 + 32))(v46, v39, v40);
    NLTransformer.transformToPhoneCallNLIntent(nlv3Intent:)();
    (*(v42 + 8))(v46, v40);
LABEL_20:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v94 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v94, static Logger.siriPhone);
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v199, v203, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = OUTLINED_FUNCTION_86_1();
      v198[0] = OUTLINED_FUNCTION_16_13();
      v98 = OUTLINED_FUNCTION_22_14(4.8151e-34);
      v202[0] = 0;
      v202[1] = v99;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v98, v100, v101, v102);
      v103 = v47;
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v202[0], v202[1], v198);

      *(v97 + 4) = v104;
      *(v97 + 12) = 2080;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v203, v202, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v105 = OUTLINED_FUNCTION_23_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(v105, v106);
      v107 = String.init<A>(describing:)();
      v109 = v108;
      v47 = v103;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v203, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, v198);

      *(v97 + 14) = v110;
      OUTLINED_FUNCTION_27_15(&dword_0, v111, v112, "%s found no cached result. Transformation generated phoneNLIntent: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_26_0(v97);
    }

    else
    {

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v203, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }

    outlined init with copy of HashableParse(v204, v203);
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v199, &v203[3], &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    NLTransformer.appendToNLIntentHistory(transformationResult:)(v203);
    outlined destroy of HashableParse(v204);
    memcpy(v202, v203, sizeof(v202));
    swift_beginAccess();
    outlined assign with take of TransformationResult?(v202, (v47 + 9), &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    swift_endAccess();
    v113 = v200;
    v114 = v197;
    *v197 = v199;
    *(v114 + 16) = v113;
    *(v114 + 32) = v201;
    goto LABEL_26;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v203, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v66 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v66, static Logger.siriPhone);
  v67 = v195;
  v68 = v196;
  v69 = *(v196 + 16);
  v69(v36, v2, v195);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = OUTLINED_FUNCTION_86_1();
    LODWORD(v193) = v71;
    v73 = v72;
    v194 = OUTLINED_FUNCTION_16_13();
    v202[0] = v194;
    *v73 = 136315394;
    v74 = OUTLINED_FUNCTION_25_17();
    v192 = v70;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v74, v75, v76, v77);
    v78 = OUTLINED_FUNCTION_13_36();

    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    v69(v33, v36, v67);
    String.init(describing:)(v33);
    (*(v68 + 8))(v36, v67);
    v79 = OUTLINED_FUNCTION_23_14();
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v81);

    *(v73 + 14) = v82;
    v83 = v192;
    _os_log_impl(&dword_0, v192, v193, "%s does not support parse: %s", v73, 0x16u);
    v84 = v194;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v84);
    OUTLINED_FUNCTION_26_0(v73);
  }

  else
  {

    (*(v68 + 8))(v36, v67);
  }

  v91 = v197;
  *(v197 + 32) = 0;
  *v91 = 0u;
  v91[1] = 0u;
LABEL_26:
  OUTLINED_FUNCTION_65();
}

__n128 TransformationResult.init(hash:nlIntent:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 64) = v6;
  *(a3 + 80) = *(a2 + 4);
  return result;
}

void NLTransformer.transformToPhoneCallNLIntent(userParse:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v5);
  OUTLINED_FUNCTION_6_1(v5);
  if (v13)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v14, static Logger.siriPhone);

    v15 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_31_13())
    {
      OUTLINED_FUNCTION_42();
      v16 = OUTLINED_FUNCTION_14_2();
      v35[0] = v16;
      v17 = OUTLINED_FUNCTION_3_57(4.8149e-34);
      v31 = 0;
      v32 = v18;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v17, v19, v20, v21);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v35);
      OUTLINED_FUNCTION_17_21();

      *(v5 + 4) = v0;
      OUTLINED_FUNCTION_9_38();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_26_0(v16);
      OUTLINED_FUNCTION_14_0();
    }

    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    v30 = v2;
    (*(v8 + 32))(v12, v5, v6);
    static Signpost.begin(_:)();
    (*(*v0 + 152))(&v31);
    if (v33)
    {
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v34, v35, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v31, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v31, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
      memset(v35, 0, 40);
    }

    OUTLINED_FUNCTION_2_0();
    (*(v27 + 96))(v12, v35);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    Signpost.OpenSignpost.end()();

    v28 = OUTLINED_FUNCTION_15_31();
    v29(v28);
  }

  OUTLINED_FUNCTION_65();
}

void NLTransformer.transformToPhoneCallNLIntent(nlv3Intent:)()
{
  OUTLINED_FUNCTION_66();
  v49 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v55 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  v50 = v8 - v9;
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  __chkstk_darwin(v13 - 8);
  OUTLINED_FUNCTION_12_5();
  v48 = v14 - v15;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  static Signpost.begin(_:)();
  v52 = v2;
  v53 = v19;
  v21 = v20;
  v54 = v22;
  NLIntent.domainNode.getter();
  v23 = type metadata accessor for NonTerminalIntentNode();
  OUTLINED_FUNCTION_6_1(v18);
  if (v39)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v18 = v55;
  }

  else
  {
    v51 = v21;
    v21 = 0xE90000000000006CLL;
    v4 = NonTerminalIntentNode.ontologyNodeName.getter();
    OUTLINED_FUNCTION_24_17();
    (*(v38 + 8))(v18, v23);
    v39 = v4 == 0x6C6143656E6F6870 && v18 == 0xE90000000000006CLL;
    if (v39)
    {

      OUTLINED_FUNCTION_21_19();
LABEL_18:
      (*(v18 + 2))(v12, v52, v5);
      *(v4 + 24) = type metadata accessor for PhoneCallNLv3Intent(0);
      *(v4 + 32) = &protocol witness table for PhoneCallNLv3Intent;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
      PhoneCallNLv3Intent.init(intent:)(v12, boxed_opaque_existential_1);
      goto LABEL_21;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    OUTLINED_FUNCTION_21_19();
    if (v40)
    {
      goto LABEL_18;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v24, static Logger.siriPhone);
  v25 = v50;
  (*(v18 + 2))(v50, v52, v5);
  v26 = v49;

  v27 = v26;
  v28 = v5;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v51 = v21;
    v52 = v28;
    v31 = OUTLINED_FUNCTION_86_1();
    v47 = OUTLINED_FUNCTION_16_13();
    v58 = v47;
    *v31 = 136315394;
    v32 = v27[4];
    v33 = v27[5];
    v34 = v27[6];
    v35 = v27[7];
    v56 = 0;
    v57 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v32, v33, v34, v35);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v58);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = v48;
    NLIntent.domainNode.getter();
    OUTLINED_FUNCTION_6_1(v37);
    if (v39)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
      v42 = 0xE700000000000000;
      v43 = 0x6E776F6E6B6E75;
    }

    else
    {
      v42 = v37;
      v43 = NonTerminalIntentNode.ontologyNodeName.getter();
      OUTLINED_FUNCTION_24_17();
      (*(v44 + 8))(v37, v23);
    }

    (*(v55 + 1))(v25, v52);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v58);

    *(v31 + 14) = v45;
    _os_log_impl(&dword_0, v29, v30, "%s NLv3Intent is not in the phoneCall domain: %s", v31, 0x16u);
    v46 = v47;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v46);
    OUTLINED_FUNCTION_14_0();
  }

  else
  {

    (*(v18 + 1))(v25, v28);
  }

  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
LABEL_21:
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}

uint64_t NLTransformer.getCurrentNLResult()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v3 = (*(v2 + 128))();
  v4 = *(v3 + 16);
  if (v4)
  {
    outlined init with copy of TransformationResult(v3 + 88 * v4 - 56, a1);
  }

  else
  {
    OUTLINED_FUNCTION_4_42();
  }
}

void NLTransformer.getPreviousTransformedNLResult()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  v3 = (*(v2 + 128))();
  v4 = specialized BidirectionalCollection.suffix(_:)(2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((v9 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = _swiftEmptyArrayStorage;
  }

  v13 = v12[2];

  if (__OFSUB__(v10 >> 1, v8))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v13 != (v10 >> 1) - v8)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_2:
    specialized _copyCollectionToContiguousArray<A>(_:)(v4, v6, v8, v10);
    v6 = v11;
    goto LABEL_9;
  }

  swift_dynamicCastClass();
  OUTLINED_FUNCTION_17_21();
  swift_unknownObjectRelease();
  if (v6)
  {
    goto LABEL_10;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  if (v6[2] > 1uLL)
  {
    outlined init with copy of TransformationResult((v6 + 4), a1);
  }

  else
  {

    OUTLINED_FUNCTION_4_42();
  }
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(v2);
    if (v3)
    {
      result = 0;
    }

    if (v2 >= result)
    {
      v4 = specialized Array.subscript.getter(result);

      return v4;
    }
  }

  __break(1u);
  return result;
}

double NLTransformer.alreadyTransformed(newHash:)@<D0>(void *a2@<X8>)
{
  OUTLINED_FUNCTION_2_0();
  (*(v3 + 152))(v5);
  if (v5[4])
  {
    memcpy(__dst, v5, sizeof(__dst));
    if (specialized == infix<A>(_:_:)() & 1) != 0 && (static AnyHashable.== infix(_:_:)())
    {
      memcpy(a2, __dst, 0x58uLL);
      return result;
    }

    outlined destroy of TransformationResult(__dst);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
  }

  return OUTLINED_FUNCTION_4_42();
}

uint64_t NLTransformer.appendToNLIntentHistory(transformationResult:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  v5 = *(v4 + 128);
  v6 = *(v5() + 16);

  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = (v5)(v7);
  specialized BidirectionalCollection.last.getter(v8, v36);

  if (v37)
  {
    outlined init with copy of HashableParse(v36, v41);
    outlined destroy of TransformationResult(v36);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    memset(v41, 0, sizeof(v41));
  }

  outlined init with copy of HashableParse(a1, v40);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v41, v36, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v40, v38, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  if (!v37)
  {
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, v12, v13);
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, v15, v16);
    if (!v39)
    {
      return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
    }

    goto LABEL_13;
  }

  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v36, v35, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  if (!v39)
  {
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, v18, v19);
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, v21, v22);
    outlined destroy of HashableParse(v35);
LABEL_13:
    v23 = &_s27PhoneCallFlowDelegatePlugin13HashableParseVSg_ADtMd;
    v24 = &_s27PhoneCallFlowDelegatePlugin13HashableParseVSg_ADtMR;
    v25 = v36;
LABEL_15:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, v23, v24);
    goto LABEL_16;
  }

  v34[0] = v38[0];
  v34[1] = v38[1];
  v34[2] = v39;
  if ((specialized == infix<A>(_:_:)() & 1) == 0)
  {
    outlined destroy of HashableParse(v34);
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v26, v27, v28);
    OUTLINED_FUNCTION_12_37();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v29, v30, v31);
    outlined destroy of HashableParse(v35);
    OUTLINED_FUNCTION_12_37();
    goto LABEL_15;
  }

  v9 = static AnyHashable.== infix(_:_:)();
  outlined destroy of HashableParse(v34);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  outlined destroy of HashableParse(v35);
  result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_s27PhoneCallFlowDelegatePlugin13HashableParseVSgMd, _s27PhoneCallFlowDelegatePlugin13HashableParseVSgMR);
  if ((v9 & 1) == 0)
  {
LABEL_16:
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v32 = *(*(v2 + 64) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v32);
    v33 = *(v2 + 64);
    *(v33 + 16) = v32 + 1;
    outlined init with copy of TransformationResult(a1, v33 + 88 * v32 + 32);
    *(v2 + 64) = v33;
    return swift_endAccess();
  }

  return result;
}

uint64_t specialized NLTransformer.__allocating_init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NLTransformer();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  v13 = specialized NLTransformer.init(referenceResolver:featureManager:)(v11, a2, v12, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v13;
}

uint64_t specialized NLTransformer.init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  __chkstk_darwin(a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = v13;
  v43[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(v10 + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 32) = type metadata accessor for NLTransformer();
  *(a3 + 40) = &outlined read-only object #0 of specialized NLTransformer.init(referenceResolver:featureManager:);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = _swiftEmptyArrayStorage;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = boxed_opaque_existential_1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 136315138;
    v38 = a5;
    v39 = a2;
    v36 = v12;
    v37 = v10;
    v22 = *(a3 + 32);
    v23 = *(a3 + 40);
    v25 = *(a3 + 48);
    v24 = *(a3 + 56);
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v21;

    v26 = v25;
    a2 = v39;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v22, v23, v26, v24);
    v10 = v37;

    v12 = v36;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v42);

    *(v20 + 4) = v27;
    a5 = v38;
    _os_log_impl(&dword_0, v17, v18, "%s is initialized, this function should be only be called once for each makeFlowFor", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);

    boxed_opaque_existential_1 = v35;
  }

  type metadata accessor for NLv4Transformer(0);
  v28 = swift_allocObject();
  (*(v10 + 16))(v12, boxed_opaque_existential_1, a4);

  *(a3 + 16) = specialized NLv4Transformer.init(referenceResolver:featureManager:)(v12, a2, v28, a4, a5);
  outlined init with copy of SignalProviding(v43, a3 + 160);
  v29 = type metadata accessor for SingleIntentCacheProvider();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_424FE0;
  v31 = type metadata accessor for PhoneCallControlNLTransformer();
  v32 = swift_allocObject();
  v32[5] = v29;
  v32[6] = &protocol witness table for SingleIntentCacheProvider;
  v32[2] = v30;
  v32[7] = v31;
  v32[8] = &outlined read-only object #0 of specialized PhoneCallControlNLTransformer.init(cacheProvider:);
  v32[9] = 0;
  v32[10] = 0;

  __swift_destroy_boxed_opaque_existential_1(v43);
  *(a3 + 24) = v32;
  return a3;
}

unint64_t type metadata accessor for CNContactStore()
{
  result = lazy cache variable for type metadata for CNContactStore;
  if (!lazy cache variable for type metadata for CNContactStore)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNContactStore);
  }

  return result;
}

uint64_t outlined assign with take of TransformationResult?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformationResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_31_13()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

uint64_t static Transformer<>.transformer(app:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB14IntentResponse_pMR);
  type metadata accessor for Input();
  OUTLINED_FUNCTION_31_14();

  return Transformer.init(transform:)();
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)()
{
  OUTLINED_FUNCTION_66_8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  outlined init with copy of SignalProviding(v6, v14);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  outlined init with take of SPHConversation(v14, (v7 + 4));
  v7[9] = v1;
  v8 = v1;

  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v10 = OUTLINED_FUNCTION_37_14();
  return OUTLINED_FUNCTION_50_12(v10, v11, v12, v10);
}

{
  OUTLINED_FUNCTION_66_8();
  OUTLINED_FUNCTION_68_4(v2, v3, v4);
  OUTLINED_FUNCTION_106();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v0;
  outlined init with take of SPHConversation(&v11, v5 + 32);
  v6 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v7 = OUTLINED_FUNCTION_37_14();
  return OUTLINED_FUNCTION_50_12(v7, v8, v9, v7);
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)()
{
  OUTLINED_FUNCTION_30_1();
  v51 = v1;
  v45 = v5;
  v46 = v4;
  OUTLINED_FUNCTION_65_8(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  OUTLINED_FUNCTION_7();
  v48 = v8;
  v49 = v7;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_27_3();
  v50 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMR);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_16_2();
  v47 = v12;
  __chkstk_darwin(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_7();
  v53 = v15;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  [objc_allocWithZone(INAnswerCallIntent) init];
  OUTLINED_FUNCTION_51_13();
  outlined init with copy of SignalProviding(v3, v55);
  OUTLINED_FUNCTION_102_0();
  v19 = swift_allocObject();
  outlined init with take of SPHConversation(v55, v19 + 16);
  *(v19 + 56) = v0;
  v20 = v0;
  v21 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  OUTLINED_FUNCTION_43_14();
  Transformer.init(transform:)();
  v52 = v18;
  v54 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24INAnswerCallIntentExport_pMd, _sSo24INAnswerCallIntentExport_pMR);
  OUTLINED_FUNCTION_52_10();
  Reducer.reduce.getter();
  v22 = OUTLINED_FUNCTION_14_35();
  v23 = v51;
  v24(v22);
  if (v23)
  {

    v25 = OUTLINED_FUNCTION_42_12();
    v26(v25);

    v37 = OUTLINED_FUNCTION_60_7();
    v39 = v14;
  }

  else
  {
    v51 = v14;

    v27 = swift_allocObject();
    v28 = v46;
    *(v27 + 16) = v46;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v30 = v50;
    OUTLINED_FUNCTION_43_14();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v31);
    OUTLINED_FUNCTION_6_49();
    *(v32 - 16) = v30;
    OUTLINED_FUNCTION_53_13(v33, v34);
    Reducer.reduce.getter();
    v35 = OUTLINED_FUNCTION_14_35();
    v36(v35);

    v40 = OUTLINED_FUNCTION_30_17();
    v30(v40);
    v41 = OUTLINED_FUNCTION_42_12();
    v30(v41);

    *v45 = v21;
    v42 = OUTLINED_FUNCTION_29_19();
    v43(v42);
    v37 = OUTLINED_FUNCTION_60_7();
    v39 = v51;
  }

  v38(v37, v39);
  OUTLINED_FUNCTION_29_2();
}

{
  OUTLINED_FUNCTION_30_1();
  v43 = v1;
  v3 = v2;
  v38 = v5;
  v39 = v4;
  v7 = v6;
  v8 = v4;
  v37 = v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE12IntentExport_pGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_27_3();
  v40 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  OUTLINED_FUNCTION_7();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v18 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  v22 = [objc_allocWithZone(INHangUpCallIntent) init];
  v23 = v8;
  v24 = v38;
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v23, v7, v38);
  *(swift_allocObject() + 16) = v3;
  v25 = v3;
  v26 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Transformer.init(transform:)();
  v27 = *(v14 + 16);
  v42 = v21;
  v27(v18, v21, v12);
  outlined init with copy of SignalProviding(v24, v44);
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v14 + 32))(v30 + v28, v18, v12);
  outlined init with take of SPHConversation(v44, v30 + v29);
  *(v30 + ((v29 + 47) & 0xFFFFFFFFFFFFFFF8)) = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24INHangUpCallIntentExport_pMd, &_sSo24INHangUpCallIntentExport_pMR);
  Reducer.init(apply:)();
  v31 = Reducer.reduce.getter();
  *&v44[0] = v26;
  v31(v43, v44);

  if (v0)
  {

    v32 = OUTLINED_FUNCTION_64_6();
    v33(v32);
    (*(v14 + 8))(v42, v12);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_64_6();
    v35(v34);
    (*(v14 + 8))(v42, v12);

    *v37 = v26;
  }

  OUTLINED_FUNCTION_29_2();
}

uint64_t closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INCallAudioRoute(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24INAnswerCallIntentExport_pMd, _sSo24INAnswerCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo08INAnswerH12IntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo08INAnswerH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29INCallGroupConversationFilterCSgMd, &_sSo29INCallGroupConversationFilterCSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INJoinCallIntentExport_pMd, _sSo22INJoinCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo06INJoinH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo06INJoinH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE23ParticipantIntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE23ParticipantIntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32INAddCallParticipantIntentExport_pMd, &_sSo32INAddCallParticipantIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo05INAddH23ParticipantIntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo05INAddH23ParticipantIntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

uint64_t closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24INAnswerCallIntentExport_pMd, _sSo24INAnswerCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo08INAnswerH12IntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo08INAnswerH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

void key path getter for INAnswerCallIntentExport.callIdentifier : INAnswerCallIntentExport(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 callIdentifier];
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

void key path setter for INAnswerCallIntentExport.callIdentifier : INAnswerCallIntentExport(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCallIdentifier:?];
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v73 = v29;
  v68[0] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE12IntentExport_pGMR);
  OUTLINED_FUNCTION_0_7(v31, &a12);
  a10 = v32;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v36 = OUTLINED_FUNCTION_0_7(v35, &a10);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_23(v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_23(v68 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo29INCallGroupConversationFilterCSgGMR);
  OUTLINED_FUNCTION_0_7(v43, &a14);
  v71 = v44;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v45);
  v47 = v68 - v46;
  v48 = [objc_allocWithZone(INJoinCallIntent) init];
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v28, v26, v24);
  v49 = v24[3];
  v50 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v49);
  v51 = *(v50 + 8);
  v52 = v48;
  v53 = v50;
  v54 = v52;
  v51(v78, v49, v53);
  v55 = v47;
  v77[3] = type metadata accessor for ContactGroupResolver();
  v77[4] = &protocol witness table for ContactGroupResolver;
  __swift_allocate_boxed_opaque_existential_1(v77);
  ContactGroupResolver.init()();
  outlined init with copy of SignalProviding(v78, v76);
  outlined init with copy of SignalProviding(v77, v75);
  v56 = swift_allocObject();
  outlined init with take of SPHConversation(v76, v56 + 16);
  outlined init with take of SPHConversation(v75, v56 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
  v57 = v68[1];
  Transformer.init(transform:)();
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v77);
  v58 = v69;
  v59 = v70;
  (*(v38 + 16))(v69, v57, v70);
  v60 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v61 = swift_allocObject();
  (*(v38 + 32))(v61 + v60, v58, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29INCallGroupConversationFilterCSgMd, &_sSo29INCallGroupConversationFilterCSgMR);
  Transformer.init(transform:)();
  (*(v38 + 8))(v57, v59);
  v74 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INJoinCallIntentExport_pMd, _sSo22INJoinCallIntentExport_pMR);
  Reducer.init(builder:)();
  v62 = Reducer.reduce.getter();
  v78[0] = v54;
  v62(v73, v78);

  if (v20)
  {

    v63 = OUTLINED_FUNCTION_45_10();
    v64(v63);
  }

  else
  {
    v65 = OUTLINED_FUNCTION_45_10();
    v66(v65);

    *v68[0] = v54;
  }

  OUTLINED_FUNCTION_17();
  v67(v55, v72);
  OUTLINED_FUNCTION_29_2();
}

id key path getter for INJoinCallIntentExport.groupConversationFilter : INJoinCallIntentExport@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 groupConversationFilter];
  *a2 = result;
  return result;
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v22;
  v67 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v66 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE23ParticipantIntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE23ParticipantIntentExport_pGMR);
  OUTLINED_FUNCTION_7();
  v33 = v32;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  v36 = &v62 - v35;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  OUTLINED_FUNCTION_7();
  v38 = v37;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v39);
  v41 = &v62 - v40;
  v42 = [objc_allocWithZone(INAddCallParticipantIntent) init];
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v29, v27, v25);
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  OUTLINED_FUNCTION_2_66();
  Transformer.init(transform:)();
  v70 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32INAddCallParticipantIntentExport_pMd, &_sSo32INAddCallParticipantIntentExport_pMR);
  Reducer.init(builder:)();
  Reducer.reduce.getter();
  OUTLINED_FUNCTION_21_20();
  a10 = v43;
  v44(v67, &a10);
  if (v20)
  {

    (*(v33 + 8))(v36, v31);
    (*(v38 + 8))(v41, v69);
  }

  else
  {
    v67 = v38;
    v68 = v33;

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriPhone);
    v46 = v43;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      a10 = v50;
      *v49 = 136315394;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGmMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGmMR);
      v51 = String.init<A>(describing:)();
      v65 = v36;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &a10);
      v64 = v31;
      v54 = v53;

      *(v49 + 4) = v54;
      *(v49 + 12) = 2112;
      *(v49 + 14) = v46;
      v55 = v63;
      *v63 = v46;
      v56 = v46;
      _os_log_impl(&dword_0, v47, v48, "%s --> %@", v49, 0x16u);
      outlined destroy of NSObject?(v55);

      __swift_destroy_boxed_opaque_existential_1(v50);

      (*(v68 + 8))(v65, v64);
    }

    else
    {

      v57 = OUTLINED_FUNCTION_45_10();
      v59(v57, v58);
    }

    v60 = v67;
    v61 = v69;
    *v66 = v46;
    (*(v60 + 8))(v41, v61);
  }

  OUTLINED_FUNCTION_29_2();
}

uint64_t key path getter for PhoneCallNLIntent.contacts : PhoneCallNLIntent@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1, a2, a3);
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1, a2, a3);
}

{
  OUTLINED_FUNCTION_68_4(a1, a2, a3);
  OUTLINED_FUNCTION_106();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  outlined init with take of SPHConversation(&v11, v5 + 32);
  v6 = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v7 = OUTLINED_FUNCTION_37_14();
  return OUTLINED_FUNCTION_50_12(v7, v8, v9, v7);
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1, a2, a3);
}

{
  return static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(a1, a2, a3);
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v22;
  v245 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v248 = v29;
  v226 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMR);
  OUTLINED_FUNCTION_0_7(v31, v246);
  v228 = v32;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  OUTLINED_FUNCTION_0_7(v35, &v247);
  v230 = v36;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMR);
  OUTLINED_FUNCTION_0_7(v39, &v249);
  v234 = v40;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
  OUTLINED_FUNCTION_0_7(v43, &v251);
  v235 = v44;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMR);
  OUTLINED_FUNCTION_0_7(v47, &v254);
  v236 = v48;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  OUTLINED_FUNCTION_0_7(v51, &v257);
  v237 = v52;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  OUTLINED_FUNCTION_0_7(v55, v259 + 8);
  v241 = v56;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  OUTLINED_FUNCTION_0_7(v59, &v260);
  v242 = v60;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  OUTLINED_FUNCTION_7();
  v65 = v64;
  __chkstk_darwin(v66);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v68);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v69);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v70);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v71);
  v73 = &v221 - v72;
  __chkstk_darwin(v74);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v75);
  v77 = &v221 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_0_7(v78, &a15);
  v246[1] = v79;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v80);
  v82 = &v221 - v81;
  v83 = [objc_allocWithZone(INStartCallIntent) init];
  v238 = v28;
  v84 = v28;
  v85 = v26;
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v84, v26, v24);
  v239 = v24;
  outlined init with copy of SignalProviding(v24, v259);
  OUTLINED_FUNCTION_102_0();
  v86 = swift_allocObject();
  outlined init with take of SPHConversation(v259, v86 + 16);
  *(v86 + 56) = v85;
  v87 = v85;
  v88 = v83;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  v90 = v248;
  Transformer.init(transform:)();
  v246[0] = v82;
  v249 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  OUTLINED_FUNCTION_61_11();
  *(v92 - 256) = v91;
  Reducer.init(builder:)();
  Reducer.reduce.getter();
  OUTLINED_FUNCTION_21_20();
  v262 = v88;
  *&v259[0] = v88;
  v93 = v245;
  v94(v90, v259);
  if (v93)
  {

    (*(v65 + 8))(v77, v63);
  }

  else
  {
    v224 = v73;
    v225 = v77;
    v245 = v65;
    v95 = v244[0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    OUTLINED_FUNCTION_2_66();
    v96 = v244[1];
    OUTLINED_FUNCTION_31_14();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v97);
    OUTLINED_FUNCTION_6_49();
    *(v98 - 16) = v96;
    OUTLINED_FUNCTION_61_11();
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    OUTLINED_FUNCTION_21_20();
    *&v259[0] = v88;
    v99(v90, v259);

    type metadata accessor for INCallDestinationType(0);
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v100);
    OUTLINED_FUNCTION_6_49();
    *(v101 - 16) = v95;
    OUTLINED_FUNCTION_54_14();
    OUTLINED_FUNCTION_61_11();
    Reducer.init(builder:)();
    v223 = v63;
    Reducer.reduce.getter();
    v102 = OUTLINED_FUNCTION_3_58();
    v103(v102);

    outlined init with copy of SignalProviding(v239, v259);
    OUTLINED_FUNCTION_102_0();
    v104 = swift_allocObject();
    OUTLINED_FUNCTION_36_14(v104);
    v90[7] = v95;
    type metadata accessor for INPreferredCallProvider(0);
    OUTLINED_FUNCTION_69_6();
    v105 = v240;
    OUTLINED_FUNCTION_43_14();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v106);
    OUTLINED_FUNCTION_6_49();
    *(v107 - 16) = v105;
    OUTLINED_FUNCTION_54_14();
    OUTLINED_FUNCTION_61_11();
    Reducer.init(builder:)();
    OUTLINED_FUNCTION_46_12();
    Reducer.reduce.getter();
    v108 = OUTLINED_FUNCTION_3_58();
    v109(v108);
    v110 = v245;
    v113 = v239;

    type metadata accessor for INAudioCallTTYType(0);
    OUTLINED_FUNCTION_11_36();
    OUTLINED_FUNCTION_48_13();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v114);
    OUTLINED_FUNCTION_6_49();
    *(v115 - 16) = v110;
    OUTLINED_FUNCTION_54_14();
    Reducer.init(builder:)();
    OUTLINED_FUNCTION_46_12();
    Reducer.reduce.getter();
    v116 = OUTLINED_FUNCTION_3_58();
    v117(v116);

    v118 = v113;
    outlined init with copy of SignalProviding(v113, v259);
    OUTLINED_FUNCTION_102_0();
    v119 = swift_allocObject();
    OUTLINED_FUNCTION_36_14(v119);
    v90[7] = v110;
    type metadata accessor for INCallCapability(0);
    OUTLINED_FUNCTION_69_6();
    OUTLINED_FUNCTION_48_13();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v120);
    OUTLINED_FUNCTION_6_49();
    *(v121 - 16) = v110;
    Reducer.init(builder:)();
    OUTLINED_FUNCTION_46_12();
    Reducer.reduce.getter();
    v122 = OUTLINED_FUNCTION_3_58();
    v123(v122);

    [v262 setCallRecordToCallBack:0];
    v127 = v113[3];
    v126 = v113[4];
    __swift_project_boxed_opaque_existential_1(v113, v127);
    (*(v126 + 8))(v259, v127, v126);
    v128 = [v262 callCapability];
    v129 = [v262 contacts];
    if (v129)
    {
      v130 = v129;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v222 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v222 = 0;
    }

    v131 = swift_allocObject();
    v132 = v222;
    *(v131 + 16) = v128;
    *(v131 + 24) = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INCallRecordFilterCSgMd, &_sSo18INCallRecordFilterCSgMR);
    OUTLINED_FUNCTION_54_14();
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v259);
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v133);
    OUTLINED_FUNCTION_6_49();
    *(v134 - 16) = v128;
    v221 = v89;
    Reducer.init(builder:)();
    v135 = v223;
    Reducer.reduce.getter();
    v136 = OUTLINED_FUNCTION_3_58();
    v137(v136);
    v222 = 0;

    v138 = v113[3];
    v139 = v113[4];
    __swift_project_boxed_opaque_existential_1(v118, v118[3]);
    (*(v139 + 8))(v259, v138, v139);
    v258[0] = type metadata accessor for ContactGroupResolver();
    v258[1] = &protocol witness table for ContactGroupResolver;
    __swift_allocate_boxed_opaque_existential_1(&v256);
    ContactGroupResolver.init()();
    outlined init with copy of SignalProviding(v259, &v253);
    outlined init with copy of SignalProviding(&v256, &v250);
    v140 = swift_allocObject();
    outlined init with take of SPHConversation(&v253, v140 + 16);
    outlined init with take of SPHConversation(&v250, v140 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    v141 = v233;
    OUTLINED_FUNCTION_43_14();
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v259);
    __swift_destroy_boxed_opaque_existential_1(&v256);
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v142);
    OUTLINED_FUNCTION_6_49();
    *(v143 - 16) = v141;
    v144 = v232;
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v145 = OUTLINED_FUNCTION_3_58();
    v146 = v222;
    v147(v145);
    if (v146)
    {

      OUTLINED_FUNCTION_24_18();
      (v144)(v144, v135);
      v148 = OUTLINED_FUNCTION_27_16(&v250);
      v144(v148);
      v149 = OUTLINED_FUNCTION_27_16(&v252);
      v144(v149);
      v150 = OUTLINED_FUNCTION_27_16(v255);
      v144(v150);
      v151 = OUTLINED_FUNCTION_27_16(v258);
      v144(v151);
      v152 = OUTLINED_FUNCTION_27_16(&v243);
      v144(v152);
      v153 = OUTLINED_FUNCTION_27_16(&v261);
      v144(v153);
      v154 = OUTLINED_FUNCTION_27_16(v244);
      v144(v154);

      OUTLINED_FUNCTION_17();
      v155(v141, v231);
      v156 = OUTLINED_FUNCTION_7_41();
      v157(v156);
      v158 = OUTLINED_FUNCTION_8_47();
      v159(v158);
      v160 = OUTLINED_FUNCTION_5_51();
      v161(v160);
      v162 = OUTLINED_FUNCTION_9_39();
      v163(v162);
      v164 = OUTLINED_FUNCTION_28_15();
      v165(v164);
      v111 = OUTLINED_FUNCTION_4_43();
      v112(v111);
    }

    else
    {

      v166 = v248;
      v167 = v248[4];
      __swift_project_boxed_opaque_existential_1(v248, v248[3]);
      v168 = PhoneCallNLIntent.isGroupFaceTimeCall()();
      v222 = 0;
      INStartCallIntent.updateIsGroupCall(isGroupCall:)(v168);
      outlined init with copy of SignalProviding(v118, v259);
      OUTLINED_FUNCTION_106();
      v169 = swift_allocObject();
      OUTLINED_FUNCTION_36_14(v169);
      v262[7] = v262;
      v262[8] = v167;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
      OUTLINED_FUNCTION_69_6();
      v170 = v227;
      OUTLINED_FUNCTION_43_14();
      Transformer.init(transform:)();
      v171 = v229;
      v172 = Transformer.transform.getter();
      v174 = v173;
      OUTLINED_FUNCTION_17();
      v175(v170, v171);
      v176 = v222;
      v172(v259, v166);
      if (!v176)
      {

        OUTLINED_FUNCTION_44_10();
        OUTLINED_FUNCTION_23_15();
        v174();
        v198 = OUTLINED_FUNCTION_18_16(&v250);
        (v174)(v198);
        v199 = OUTLINED_FUNCTION_18_16(&v252);
        (v174)(v199);
        v200 = OUTLINED_FUNCTION_18_16(v255);
        (v174)(v200);
        v201 = OUTLINED_FUNCTION_18_16(v258);
        (v174)(v201);
        v202 = OUTLINED_FUNCTION_18_16(&v243);
        (v174)(v202);
        v203 = OUTLINED_FUNCTION_18_16(&v261);
        (v174)(v203);
        v204 = OUTLINED_FUNCTION_18_16(v244);
        (v174)(v204);
        *v226 = *&v259[0];
        OUTLINED_FUNCTION_17();
        v205 = OUTLINED_FUNCTION_55_12();
        v206(v205);
        v207 = OUTLINED_FUNCTION_7_41();
        v208(v207);
        v209 = OUTLINED_FUNCTION_8_47();
        v210(v209);
        v211 = OUTLINED_FUNCTION_5_51();
        v212(v211);
        v213 = OUTLINED_FUNCTION_9_39();
        v214(v213);
        OUTLINED_FUNCTION_17();
        v215 = OUTLINED_FUNCTION_67_5();
        v216(v215);
        v217 = OUTLINED_FUNCTION_4_43();
        v218(v217);
        OUTLINED_FUNCTION_17();
        v219 = OUTLINED_FUNCTION_63_6();
        v220(v219);
        goto LABEL_5;
      }

      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_23_15();
      v174();
      v177 = OUTLINED_FUNCTION_18_16(&v250);
      (v174)(v177);
      v178 = OUTLINED_FUNCTION_18_16(&v252);
      (v174)(v178);
      v179 = OUTLINED_FUNCTION_18_16(v255);
      (v174)(v179);
      v180 = OUTLINED_FUNCTION_18_16(v258);
      (v174)(v180);
      v181 = OUTLINED_FUNCTION_18_16(&v243);
      (v174)(v181);
      v182 = OUTLINED_FUNCTION_18_16(&v261);
      (v174)(v182);
      v183 = OUTLINED_FUNCTION_18_16(v244);
      (v174)(v183);
      OUTLINED_FUNCTION_17();
      v184 = OUTLINED_FUNCTION_55_12();
      v185(v184);
      v186 = OUTLINED_FUNCTION_7_41();
      v187(v186);
      v188 = OUTLINED_FUNCTION_8_47();
      v189(v188);
      v190 = OUTLINED_FUNCTION_5_51();
      v191(v190);
      v192 = OUTLINED_FUNCTION_9_39();
      v193(v192);
      OUTLINED_FUNCTION_17();
      v194 = OUTLINED_FUNCTION_67_5();
      v195(v194);
      v196 = OUTLINED_FUNCTION_4_43();
      v197(v196);
    }
  }

  OUTLINED_FUNCTION_17();
  v124 = OUTLINED_FUNCTION_63_6();
  v125(v124);
LABEL_5:
  OUTLINED_FUNCTION_29_2();
}

{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v22;
  v133 = v20;
  v24 = v23;
  v26 = v25;
  v137 = v27;
  a10 = v28;
  v120 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMR);
  OUTLINED_FUNCTION_0_7(v30, &v142);
  v121 = v31;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallRecordTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallRecordTypeVGMR);
  OUTLINED_FUNCTION_0_7(v34, &a10);
  v122 = v35;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  OUTLINED_FUNCTION_0_7(v38, &a14);
  v125 = v39;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  OUTLINED_FUNCTION_0_7(v42, &a18);
  v126 = v43;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_27_3();
  v129 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  OUTLINED_FUNCTION_7();
  v127 = v47;
  v128 = v46;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_27_3();
  v131 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  OUTLINED_FUNCTION_7();
  v52 = v51;
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v55);
  v57 = v119 - v56;
  __chkstk_darwin(v58);
  v60 = v119 - v59;
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_13_5();
  v130 = v62;
  __chkstk_darwin(v63);
  v65 = v119 - v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_7();
  v135 = v67;
  v136 = v66;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v68);
  v70 = v119 - v69;
  v71 = [objc_allocWithZone(INStartAudioCallIntent) init];
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v137, v26, v24);
  v124 = v24;
  outlined init with copy of SignalProviding(v24, v141);
  OUTLINED_FUNCTION_102_0();
  v72 = swift_allocObject();
  outlined init with take of SPHConversation(v141, v72 + 16);
  *(v72 + 56) = v26;
  v73 = v26;
  v74 = v71;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallAudioRoute(0);
  Transformer.init(transform:)();
  v134 = v70;
  v139 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  v132 = v75;
  Reducer.init(builder:)();
  v138 = v50;
  Reducer.reduce.getter();
  OUTLINED_FUNCTION_21_20();
  *&v141[0] = v74;
  v76 = v133;
  v77(a10, v141);
  if (v76)
  {

    (*(v52 + 8))(v65, v138);
  }

  else
  {
    v119[0] = v57;
    v119[1] = v60;
    v119[2] = v65;
    v133 = v52;
    v78 = v129;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    OUTLINED_FUNCTION_2_66();
    v79 = v131;
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v80);
    OUTLINED_FUNCTION_6_49();
    *(v81 - 16) = v79;
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v82 = OUTLINED_FUNCTION_10_38();
    v83(v82);

    type metadata accessor for INCallDestinationType(0);
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v84);
    OUTLINED_FUNCTION_6_49();
    *(v85 - 16) = v78;
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v86 = OUTLINED_FUNCTION_10_38();
    v87(v86);

    outlined init with copy of SignalProviding(v124, v141);
    OUTLINED_FUNCTION_102_0();
    v88 = swift_allocObject();
    outlined init with take of SPHConversation(v141, v88 + 16);
    v89 = v137;
    *(v88 + 56) = v137;
    type metadata accessor for INPreferredCallProvider(0);
    OUTLINED_FUNCTION_69_6();
    OUTLINED_FUNCTION_48_13();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v90);
    OUTLINED_FUNCTION_6_49();
    *(v91 - 16) = v89;
    v92 = v119[0];
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v93 = OUTLINED_FUNCTION_10_38();
    v94(v93);

    type metadata accessor for INCallRecordType(0);
    v95 = v123;
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v96);
    OUTLINED_FUNCTION_6_49();
    *(v97 - 16) = v95;
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v98 = OUTLINED_FUNCTION_10_38();
    v99(v98);
    v100 = v128;

    type metadata accessor for INAudioCallTTYType(0);
    OUTLINED_FUNCTION_11_36();
    OUTLINED_FUNCTION_48_13();
    Transformer.init(transform:)();
    OUTLINED_FUNCTION_26_15();
    __chkstk_darwin(v101);
    OUTLINED_FUNCTION_6_49();
    *(v102 - 16) = v100;
    OUTLINED_FUNCTION_48_13();
    Reducer.init(builder:)();
    Reducer.reduce.getter();
    v103 = OUTLINED_FUNCTION_10_38();
    v104(v103);

    OUTLINED_FUNCTION_59_7();
    v105 = v138;
    (v100)(v100, v138);
    v106 = OUTLINED_FUNCTION_57_10(&a11);
    v100(v106);
    (v100)(v92, v105);
    v107 = OUTLINED_FUNCTION_57_10(&v140);
    v100(v107);
    (v100)(v130, v105);
    v108 = OUTLINED_FUNCTION_57_10(v141);
    v100(v108);

    *v120 = v74;
    OUTLINED_FUNCTION_12_38();
    v109 = OUTLINED_FUNCTION_62_10();
    v110(v109);
    v111 = OUTLINED_FUNCTION_15_32();
    v112(v111);
    v113 = OUTLINED_FUNCTION_16_30();
    v114(v113);
    v115 = OUTLINED_FUNCTION_58_6();
    v116(v115);
    v117 = OUTLINED_FUNCTION_47_13();
    v118(v117);
  }

  (*(v135 + 8))(v134, v136);
  OUTLINED_FUNCTION_29_2();
}

uint64_t closure #1 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INCallAudioRoute(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INCallAudioRoute(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INCallAudioRoute(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartVideoCallIntentExport_pMd, &_sSo28INStartVideoCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartVideoH12IntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartVideoH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

uint64_t closure #2 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin0aD7Contact_pGSaySo8INPersonCGSgGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartVideoCallIntentExport_pMd, &_sSo28INStartVideoCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartVideoH12IntentExport_pGGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartVideoH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

void key path getter for INAddCallParticipantIntentExport.participants : INAddCallParticipantIntentExport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v9 = OUTLINED_FUNCTION_35_11(a1);
  v11 = [v9 *v10];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for CNContactStore(0, a5, a6);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = 0;
  }

  *v6 = v13;
}

void key path setter for INAddCallParticipantIntentExport.participants : INAddCallParticipantIntentExport(void *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, SEL *a7)
{
  v8 = *a2;
  if (*a1)
  {
    type metadata accessor for CNContactStore(0, a5, a6);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  isa = v9.super.isa;
  [v8 *a7];
}

uint64_t closure #3 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INCallDestinationType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INCallDestinationType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

uint64_t closure #4 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INPreferredCallProvider(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INPreferredCallProvider(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

uint64_t closure #5 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INAudioCallTTYType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallRecordTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallRecordTypeVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INCallRecordType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

uint64_t closure #6 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INCallCapability(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INAudioE7TTYTypeVGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  type metadata accessor for INAudioCallTTYType(0);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28INStartAudioCallIntentExport_pMd, &_sSo28INStartAudioCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo012INStartAudioH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}

uint64_t closure #7 in closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:)@<X0>(uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMR);
  v2 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMd, &_s13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE12IntentExport_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INCallRecordFilterCSgMd, &_sSo18INCallRecordFilterCSgMR);
  -- infix<A, B, C>(_:_:)();

  swift_getKeyPath();
  --> infix<A, B, C, D>(_:_:)();

  (*(v2 + 8))(v4, v16[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23INStartCallIntentExport_pMd, &_sSo23INStartCallIntentExport_pMR);
  static ReducerBuilder.buildExpression(_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMd, _ss23_ContiguousArrayStorageCy13SiriUtilities7ReducerVy27PhoneCallFlowDelegatePlugin0gH8NLIntent_pSo07INStartH12IntentExport_pGGMR);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_424FD0;
  (*(v6 + 16))(v14 + v13, v11, v5);
  static ReducerBuilder.buildBlock(_:)();

  return (v12)(v11, v5);
}