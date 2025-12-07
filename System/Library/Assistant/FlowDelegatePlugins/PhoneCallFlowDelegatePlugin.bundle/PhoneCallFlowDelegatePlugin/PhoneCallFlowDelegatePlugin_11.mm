uint64_t static CallRecordViewUtils.generatedSelectedActionForVoicemail(callRecord:forCallHistoryDisplay:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) != 0 && (v3 = a3(a1)) != 0)
  {
    v4 = v3;
    if (AceObject.serializeToBase64()().value._object)
    {
      String.toSpeakableString.getter();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  type metadata accessor for SpeakableString();
  v6 = OUTLINED_FUNCTION_4_19();

  return __swift_storeEnumTagSinglePayload(v6, v5, 1, v7);
}

id static CallRecordViewUtils.buildPunchOutForOpenCallRecord(callRecord:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v24 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SAUIAppPunchOut) init];
  outlined bridged method (ob) of @objc SABaseClientBoundCommand.aceId.getter(v9);
  if (v10)
  {
  }

  else
  {
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v11, v13, v9);
  }

  v14 = [a1 identifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v24[0] = 0xD000000000000020;
  v24[1] = 0x8000000000459770;
  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  URL.init(string:)();

  v19 = type metadata accessor for URL();
  v21 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v19) != 1)
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(*(v19 - 8) + 8))(v4, v19);
  }

  [v9 setPunchOutUri:v21];

  return v9;
}

uint64_t static CallRecordViewUtils.generateDisplayTime(dateTime:formattedDate:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_12_5();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for SpeakableString();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_12_5();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_6_27();

  OUTLINED_FUNCTION_11_23(a1);
  if (dispatch thunk of DialogCalendar.isToday.getter())
  {
    dispatch thunk of DialogCalendar.timeDescriptive.getter();
    OUTLINED_FUNCTION_1_0(v13);
    if (!v20)
    {
      v24 = OUTLINED_FUNCTION_5_26();
      v25(v24);
      return (*(v15 + 32))(v47, v13, v14);
    }

    v21 = OUTLINED_FUNCTION_7_19();
    v22(v21);
    result = OUTLINED_FUNCTION_1_0(v13);
    if (!v20)
    {
      v23 = v13;
      return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }
  }

  else if (dispatch thunk of DialogCalendar.isYesterday.getter())
  {
    dispatch thunk of DialogCalendar.dateDescriptive.getter();
    OUTLINED_FUNCTION_1_0(v10);
    if (v20)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v29 = *(v15 + 32);
    }

    else
    {
      v29 = *(v15 + 32);
      v29(v18, v10, v14);
      static CallRecordViewUtils.getCatLocaleString()();
      if (v30)
      {
        v31 = objc_opt_self();
        SpeakableString.print.getter();
        v32 = String._bridgeToObjectiveC()();

        v33 = String._bridgeToObjectiveC()();

        v34 = [v31 capitalize:v32 forLocale:v33];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_11_23(v35);
        v36 = *(v15 + 8);
        v37 = OUTLINED_FUNCTION_13_17();
        v36(v37);
        v38 = OUTLINED_FUNCTION_5_26();
        return (v36)(v38);
      }

      v43 = OUTLINED_FUNCTION_13_17();
      v44(v43);
    }

    v45 = OUTLINED_FUNCTION_7_19();
    return (v29)(v45);
  }

  else if (dispatch thunk of DialogCalendar.isThisWeek.getter())
  {
    dispatch thunk of DialogCalendar.dayName.getter();
    OUTLINED_FUNCTION_1_0(v7);
    if (v20)
    {
      v27 = OUTLINED_FUNCTION_7_19();
      v28(v27);
      result = OUTLINED_FUNCTION_1_0(v7);
      if (!v20)
      {
        v23 = v7;
        return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      }
    }

    else
    {
      v41 = OUTLINED_FUNCTION_5_26();
      v42(v41);
      return (*(v15 + 32))(v47, v7, v14);
    }
  }

  else
  {

    OUTLINED_FUNCTION_11_23(a1);
    v39 = OUTLINED_FUNCTION_5_26();
    return v40(v39);
  }

  return result;
}

uint64_t static CallRecordViewUtils.getCatLocaleString()()
{
  type metadata accessor for CATGlobals();
  static Device.current.getter();
  v0 = CATGlobals.__allocating_init(device:)();
  v1 = dispatch thunk of CATGlobals.toDictionary.getter();
  specialized Dictionary.subscript.getter(0x656C61636F6CLL, 0xE600000000000000, v1, &v4);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v4, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

id @nonobjc INStartCallIntent.init(destinationType:contacts:callCapability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithDestinationType:a1 contacts:v6.super.isa callCapability:a3];

  return v7;
}

uint64_t outlined bridged method (ob) of @objc PBCodable.data.getter(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SABaseClientBoundCommand.aceId.getter(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t (*CallStateGuardCheck.init(_:description:onFail:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  OUTLINED_FUNCTION_5_13();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  OUTLINED_FUNCTION_50();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  OUTLINED_FUNCTION_50();
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  OUTLINED_FUNCTION_68_0();
  v17 = swift_allocObject();
  v17[2] = partial apply for implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:);
  v17[3] = v15;
  v17[4] = _s27PhoneCallFlowDelegatePlugin0B15StateGuardCheckV_11description6onFailAcA06CommonbF9PredicateO_SSyXA07SiriKitC003AnyC0CyXAtcfcAJycfu2_TA_0;
  v17[5] = v16;
  return _s27PhoneCallFlowDelegatePlugin0B15StateGuardCheckV_11description6onFailAcA06CommonbF9PredicateO_SSyXA07SiriKitC003AnyC0CyXAtcfcSbAA0bF9Providing_pcAGcfu_SbAaK_pcfu0_TA_0;
}

uint64_t (*CallStateGuardCheck.init(_:onFail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v7 = a3;
  OUTLINED_FUNCTION_5_13();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v7;
  OUTLINED_FUNCTION_5_13();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = v7;
  OUTLINED_FUNCTION_50();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  OUTLINED_FUNCTION_68_0();
  v13 = swift_allocObject();
  v13[2] = _s27PhoneCallFlowDelegatePlugin0B15StateGuardCheckV_6onFailAcA06CommonbF9PredicateO_07SiriKitC003AnyC0CyXAtcfcSSycfu1_TA_0;
  v13[3] = v11;
  v13[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:onFail:);
  v13[5] = v12;
  outlined copy of CommonCallStatePredicate(a1, a2, v7);
  return partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:);
}

uint64_t CallStateGuardFlow.__allocating_init(checks:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  OUTLINED_FUNCTION_11_24();
  v4 = swift_allocObject();
  CallStateGuardFlow.init(checks:sharedGlobals:)(a1, a2);
  return v4;
}

BOOL specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 48);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *v5;
    v12[0] = v7;
    v12[1] = v8;
    v13 = v9;
    outlined copy of CommonCallStatePredicate(v7, v8, v9);
    v10 = a1(v12);
    outlined consume of CommonCallStatePredicate(v7, v8, v9);
    if (v3)
    {
      break;
    }

    v5 += 24;
  }

  while ((v10 & 1) != 0);
  return v6 == 0;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_26:
    v19 = 1;
    return v19 & 1;
  }

  v9 = 0;
  v23 = a4 & 0xFFFFFFFFFFFFFFLL;
  v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v13 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v17 = v16;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = v10;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v11 = _StringObject.sharedUTF8.getter();
      }

      v12 = *(v11 + v9);
      v13 = *(v11 + v9);
      if (v12 < 0)
      {
        OUTLINED_FUNCTION_5_27();
        switch(v15)
        {
          case 1:
            goto LABEL_20;
          case 2:
            goto LABEL_21;
          case 3:
            goto LABEL_22;
          default:
            break;
        }
      }

LABEL_14:
      v17 = 1;
      goto LABEL_15;
    }

    v22[0] = a3;
    v22[1] = v23;
    v13 = *(v22 + v9);
    if ((*(v22 + v9) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_5_27();
    switch(v20)
    {
      case 1:
LABEL_20:
        v13 = v14[1] & 0x3F | ((v13 & 0x1F) << 6);
        v17 = 2;
        break;
      case 2:
LABEL_21:
        v13 = ((v13 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3F;
        v17 = 3;
        break;
      case 3:
LABEL_22:
        v13 = ((v13 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3F;
        v17 = 4;
        break;
      default:
        goto LABEL_14;
    }

LABEL_15:
    LODWORD(v22[0]) = v13;
    v18 = a1(v22);
    if (v4)
    {
      return v19 & 1;
    }

    if ((v18 & 1) == 0)
    {
      break;
    }

    v9 += v17;
    if (v9 >= v5)
    {
      goto LABEL_26;
    }
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a3);
  v7 = result;
  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (v7 == v8)
    {
      return v7 == v9;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = result;
    }

    else
    {
      if (v8 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v10 = *(a3 + 8 * v8 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = v10;
    v11 = a1(&v13);

    if (!v4)
    {
      v8 = v9 + 1;
      if (v11)
      {
        continue;
      }
    }

    return v7 == v9;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t key path setter for CallStateGuardFlow.exitValue : CallStateGuardFlow(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t CallStateGuardFlow.init(checks:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 64) = 1;
  *(v2 + 56) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + 16);
  return v2;
}

uint64_t static CallStateGuardFlow.expectNoRingingCall(else:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_13();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_42D810;
  *(v5 + 32) = 0;
  OUTLINED_FUNCTION_5_13();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 3;
  OUTLINED_FUNCTION_5_13();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  OUTLINED_FUNCTION_50();
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for implicit closure #1 in static CallStateGuardFlow.expectNoRingingCall(else:sharedGlobals:);
  *(v8 + 24) = a1;
  OUTLINED_FUNCTION_68_0();
  v9 = swift_allocObject();
  v9[2] = implicit closure #3 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v9[3] = v7;
  v9[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:onFail:);
  v9[5] = v8;
  *(v4 + 32) = partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:);
  *(v4 + 40) = v6;
  *(v4 + 48) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v4 + 56) = v9;
  outlined init with copy of SignalProviding(a2, v12);
  type metadata accessor for CallStateGuardFlow();
  OUTLINED_FUNCTION_11_24();
  v10 = swift_allocObject();
  CallStateGuardFlow.init(checks:sharedGlobals:)(v4, v12);

  return v10;
}

uint64_t static CallStateGuardFlow.expectActiveCall(else:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_13();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_426250;
  *(v5 + 32) = 0;
  OUTLINED_FUNCTION_5_13();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_426250;
  *(v6 + 32) = 0;
  OUTLINED_FUNCTION_50();
  v7 = swift_allocObject();
  *(v7 + 16) = UsoEntity_common_Person.usoPerson.getter;
  *(v7 + 24) = a1;
  OUTLINED_FUNCTION_68_0();
  v8 = swift_allocObject();
  v8[2] = implicit closure #3 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v8[3] = v6;
  v8[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:onFail:);
  v8[5] = v7;
  *(v4 + 32) = partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:);
  *(v4 + 40) = v5;
  *(v4 + 48) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v4 + 56) = v8;
  outlined init with copy of SignalProviding(a2, v11);
  type metadata accessor for CallStateGuardFlow();
  OUTLINED_FUNCTION_11_24();
  v9 = swift_allocObject();
  CallStateGuardFlow.init(checks:sharedGlobals:)(v4, v11);

  return v9;
}

uint64_t CallStateGuardFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CallStateGuardFlow();
  lazy protocol witness table accessor for type CallStateGuardFlow and conformance CallStateGuardFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t CallStateGuardFlow.execute()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(CallStateGuardFlow.execute(), 0, 0);
}

uint64_t CallStateGuardFlow.execute()()
{
  v1 = v0[14];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 120))(v2, v3);
  v4 = 0;
  v5 = v1[7];
  v6 = *(v5 + 16);
  v7 = v5 + 56;
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v8 = *(v7 - 8);
    v9 = *(v7 - 24);

    if ((v9(v0 + 2) & 1) == 0)
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
        _os_log_impl(&dword_0, v16, v17, "#CallStateGuardFlow: Failed! Executing wrapped precondition flow.", v18, 2u);
        OUTLINED_FUNCTION_26_0(v18);
      }

      v19 = v0[14];

      v20 = swift_beginAccess();
      *(v19 + 64) = 1;
      v8(v20);
      static ExecuteResponse.complete(next:)();

      goto LABEL_15;
    }

    ++v4;
    v7 += 32;
  }

  if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_7;
  }

LABEL_19:
  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_7:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#CallStateGuardFlow: Passed!", v13, 2u);
    OUTLINED_FUNCTION_26_0(v13);
  }

  v14 = v0[14];

  swift_beginAccess();
  *(v14 + 64) = 0;
  static ExecuteResponse.complete()();
LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v21 = v0[1];

  return v21();
}

uint64_t CallStateGuardFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t CallStateGuardFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11_24();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance CallStateGuardFlow(uint64_t a1)
{
  v6 = (*(**v1 + 152) + **(**v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CallStateGuardFlow@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for CallStateGuardCheck.condition : CallStateGuardCheck@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallStateProviding) -> (@unowned Bool);
  a2[1] = v5;
}

uint64_t key path setter for CallStateGuardCheck.condition : CallStateGuardCheck(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallStateProviding) -> (@out Bool);
  a2[1] = v5;
  return result;
}

uint64_t key path getter for CallStateGuardCheck.flowOnFailure : CallStateGuardCheck@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AnyFlow);
  a2[1] = v5;
}

uint64_t key path setter for CallStateGuardCheck.flowOnFailure : CallStateGuardCheck(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AnyFlow);
  *(a2 + 24) = v5;
  return result;
}

uint64_t closure #1 in CallStateGuardCheck.init(_:description:onFail:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = a1();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "#CallStateGuardCheck Condition failed! %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_26_0(v9);
    OUTLINED_FUNCTION_26_0(v8);
  }

  return a3();
}

uint64_t CommonCallStatePredicate.test(_:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v25 = a1[3];
      v26 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v25);
      if ((*(v26 + 24))(v25, v26))
      {
        v10 = (a2)();
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
      }

      break;
    case 2:
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v15 = OUTLINED_FUNCTION_72();
      v16(v15);
      swift_getAtKeyPath();
      __swift_destroy_boxed_opaque_existential_1(v29);
      v10 = v28;
      break;
    case 3:
      v17 = *(a2 + 16);
      v18 = *(a2 + 24);
      v19 = *(a2 + 32);
      v20 = OUTLINED_FUNCTION_72();
      outlined copy of CommonCallStatePredicate(v20, v21, v19);
      v22 = CommonCallStatePredicate.test(_:)(a1, v17, v18, v19);
      v23 = OUTLINED_FUNCTION_72();
      outlined consume of CommonCallStatePredicate(v23, v24, v19);
      v10 = v22 ^ 1;
      break;
    case 4:
      __chkstk_darwin(a1);
      OUTLINED_FUNCTION_8_28();
      v11 = OUTLINED_FUNCTION_12_27();
      v14 = specialized Sequence.allSatisfy(_:)(v11, v12, v13);
      goto LABEL_9;
    case 5:
      __chkstk_darwin(a1);
      OUTLINED_FUNCTION_8_28();
      OUTLINED_FUNCTION_12_27();
      v14 = specialized Sequence.contains(where:)();
LABEL_9:
      v10 = v14;

      break;
    default:
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v6 = OUTLINED_FUNCTION_72();
      v7(v6);
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v8 = OUTLINED_FUNCTION_72();
      v10 = (a2 & ~v9(v8)) == 0;
      __swift_destroy_boxed_opaque_existential_1(v29);
      break;
  }

  return v10 & 1;
}

unint64_t CommonCallStatePredicate.debugDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      return 0xD000000000000016;
    case 2:
      v39 = 0;
      _StringGuts.grow(_:)(21);
      v17._object = 0x80000000004597A0;
      v17._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy27PhoneCallFlowDelegatePlugin19SPHCallCapabilities_pSbGMd, &_ss7KeyPathCy27PhoneCallFlowDelegatePlugin19SPHCallCapabilities_pSbGMR);
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_22;
    case 3:
      v18 = *(a1 + 32);
      v19 = OUTLINED_FUNCTION_72();
      outlined copy of CommonCallStatePredicate(v19, v20, v18);
      v21._countAndFlagsBits = 0x28746F6E2ELL;
      v21._object = 0xE500000000000000;
      String.append(_:)(v21);
      _print_unlocked<A, B>(_:_:)();
      v22._countAndFlagsBits = 41;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v23 = OUTLINED_FUNCTION_72();
      outlined consume of CommonCallStatePredicate(v23, v24, v18);
      return 0;
    case 4:
      v5 = *(a1 + 16);
      v39 = 0x28646E612ELL;
      if (!*(v5 + 16))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_13_18();
      do
      {
        v6 = *(v5 + 32);
        v7 = *(v5 + 48);
        v8 = OUTLINED_FUNCTION_3_30();
        outlined copy of CommonCallStatePredicate(v8, v9, v10);
        CommonCallStatePredicate.debugDescription.getter(v6, v11, v7);
        v12 = OUTLINED_FUNCTION_3_30();
        outlined consume of CommonCallStatePredicate(v12, v13, v14);
        OUTLINED_FUNCTION_10_26();
        if (v15)
        {
          OUTLINED_FUNCTION_9_25();
        }

        OUTLINED_FUNCTION_7_20();
      }

      while (!v16);
      break;
    case 5:
      v26 = *(a1 + 16);
      v39 = 678588206;
      if (!*(v26 + 16))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_13_18();
      do
      {
        v27 = *(v26 + 32);
        v28 = *(v26 + 48);
        v29 = OUTLINED_FUNCTION_3_30();
        outlined copy of CommonCallStatePredicate(v29, v30, v31);
        CommonCallStatePredicate.debugDescription.getter(v27, v32, v28);
        v33 = OUTLINED_FUNCTION_3_30();
        outlined consume of CommonCallStatePredicate(v33, v34, v35);
        OUTLINED_FUNCTION_10_26();
        if (v15)
        {
          OUTLINED_FUNCTION_9_25();
        }

        OUTLINED_FUNCTION_7_20();
      }

      while (!v16);
      break;
    default:
      v39 = 0x6174536C6C61632ELL;
      v3 = AFCallStateGetNames();
      if (v3)
      {
        v4 = v3;
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      Array.description.getter();

      v38._countAndFlagsBits = OUTLINED_FUNCTION_72();
      String.append(_:)(v38);

      return v39;
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v36._countAndFlagsBits = OUTLINED_FUNCTION_72();
  String.append(_:)(v36);

LABEL_22:
  v37._countAndFlagsBits = 41;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  return v39;
}

unint64_t specialized implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:)()
{
  return 0xD000000000000014;
}

{
  return 0xD000000000000010;
}

uint64_t outlined copy of CommonCallStatePredicate(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallStateGuardFlow and conformance CallStateGuardFlow()
{
  result = lazy protocol witness table cache variable for type CallStateGuardFlow and conformance CallStateGuardFlow;
  if (!lazy protocol witness table cache variable for type CallStateGuardFlow and conformance CallStateGuardFlow)
  {
    type metadata accessor for CallStateGuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallStateGuardFlow and conformance CallStateGuardFlow);
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

uint64_t getEnumTagSinglePayload for CommonCallStatePredicate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonCallStatePredicate(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AnyFlow)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallStateProviding) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t one-time initialization function for instance(uint64_t a1)
{
  type metadata accessor for CallStateNotificationManager();
  result = CallStateNotificationManager.__allocating_init()();
  static CallStateNotificationManager.instance = result;
  return result;
}

{
  type metadata accessor for EligibleAppFinder();
  OUTLINED_FUNCTION_50();
  swift_allocObject();
  result = EligibleAppFinder.().init()();
  static EligibleAppFinder.instance = result;
  return result;
}

uint64_t CallStateNotificationManager.__allocating_init()()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v9 - 8);
  __chkstk_darwin(v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v8 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = [objc_allocWithZone(TUCallCenter) initWithQueue:v5];
  return (*(v10 + 160))(v5, v6);
}

uint64_t *CallStateNotificationManager.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_10_27(&one-time initialization token for instance);
  }

  return &static CallStateNotificationManager.instance;
}

uint64_t static CallStateNotificationManager.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_10_27(&one-time initialization token for instance);
  }
}

uint64_t one-time initialization function for defaultLoggingTaskTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static CallStateNotificationManager.defaultLoggingTaskTimeout);
  *__swift_project_value_buffer(v0, static CallStateNotificationManager.defaultLoggingTaskTimeout) = 1;
  OUTLINED_FUNCTION_40();
  v2 = *(v1 + 104);

  return v2();
}

uint64_t CallStateNotificationManager.defaultLoggingTaskTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultLoggingTaskTimeout != -1)
  {
    OUTLINED_FUNCTION_9_26(&one-time initialization token for defaultLoggingTaskTimeout);
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static CallStateNotificationManager.defaultLoggingTaskTimeout);
}

uint64_t static CallStateNotificationManager.defaultLoggingTaskTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultLoggingTaskTimeout != -1)
  {
    OUTLINED_FUNCTION_9_26(&one-time initialization token for defaultLoggingTaskTimeout);
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  __swift_project_value_buffer(v2, static CallStateNotificationManager.defaultLoggingTaskTimeout);
  OUTLINED_FUNCTION_40();
  v4 = *(v3 + 16);

  return v4(a1);
}

void CallStateNotificationManager.tasks.didset()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    *(v5 + 4) = *(*(v1 + 32) + 16);

    _os_log_impl(&dword_0, v3, v4, "#CallStateNotificationManager task count %ld", v5, 0xCu);
  }

  else
  {
  }
}

void CallStateNotificationManager.tasks.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2(v2 + 32, a2);
  *(v2 + 32) = a1;

  CallStateNotificationManager.tasks.didset();
}

uint64_t key path setter for CallStateNotificationManager.didRegisterNotificationObservers : CallStateNotificationManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t CallStateNotificationManager.__allocating_init(queue:callCenter:)()
{
  OUTLINED_FUNCTION_24_3();
  v2 = swift_allocObject();
  CallStateNotificationManager.init(queue:callCenter:)(v1, v0);
  return v2;
}

uint64_t CallStateNotificationManager.init(queue:callCenter:)(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for UUID();
  type metadata accessor for CallStateOneTimeTask(0);
  OUTLINED_FUNCTION_1_46();
  _s10Foundation4UUIDVACSHAAWlTm_0(v6, v7, &protocol conformance descriptor for UUID);
  v8 = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 24) = a2;
  *(v3 + 32) = v8;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  OUTLINED_FUNCTION_19_6();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  OUTLINED_FUNCTION_50();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in CallStateNotificationManager.init(queue:callCenter:);
  *(v10 + 24) = v9;
  v20[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v20[5] = v10;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_8_29();
  v20[2] = v11;
  v20[3] = &block_descriptor_0;
  v12 = _Block_copy(v20);
  v13 = a2;
  v14 = a1;

  dispatch_sync(v14, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_3:
  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "#CallStateNotificationManager initialized", v18, 2u);
    OUTLINED_FUNCTION_26_0(v18);
  }

  return v3;
}

uint64_t type metadata accessor for CallStateOneTimeTask(uint64_t a1)
{
  result = type metadata singleton initialization cache for CallStateOneTimeTask;
  if (!type metadata singleton initialization cache for CallStateOneTimeTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall CallStateNotificationManager.callStateChanged(_:)(NSNotification a1)
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v23 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_50();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v1;
  v24[4] = partial apply for closure #1 in CallStateNotificationManager.callStateChanged(_:);
  v24[5] = v17;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_6_3(COERCE_DOUBLE(1107296256));
  v24[2] = v18;
  v24[3] = &block_descriptor_9;
  v19 = _Block_copy(v24);
  v20 = v3;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_7_21();
  _s10Foundation4UUIDVACSHAAWlTm_0(v21, v22, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v6 + 8))(v10, v4);
  (*(v12 + 8))(v16, v23);

  OUTLINED_FUNCTION_65();
}

void closure #1 in CallStateNotificationManager.callStateChanged(_:)(void *a1, uint64_t a2)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (*(&v31 + 1))
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCall, TUCall_ptr);
    if (swift_dynamicCast())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.siriPhone);
      v4 = v29;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *&v32[0] = v8;
        *v7 = 136315138;
        [v4 callStatus];
        v9 = TUStringForCallStatus();

        if (!v9)
        {
          __break(1u);
          return;
        }

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v32);

        *(v7 + 4) = v13;
        _os_log_impl(&dword_0, v5, v6, "#CallStateNotificationManager received CallStatusChanged, status = %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
      }

      else
      {
      }

      v18 = (*(*a2 + 112))();
      v19 = v18;
      v20 = v18 + 64;
      v21 = 1 << *(v18 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v18 + 64);
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      while (v23)
      {
        v26 = v25;
LABEL_25:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = *(*(v19 + 56) + ((v26 << 9) | (8 * v27)));

        (*(*v28 + 200))([v4 callStatus]);
      }

      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {

          return;
        }

        v23 = *(v20 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    outlined destroy of Any?(v32);
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_29:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#CallStateNotificationManager received CallStatusChanged notification without a TUCall", v17, 2u);
  }
}

void CallStateNotificationManager.addTask(timeout:task:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v12);
  v14 = *(v0 + 16);
  (*(v9 + 16))(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v7, v13);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;
  (*(v9 + 32))(v16 + v15, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  OUTLINED_FUNCTION_50();
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in CallStateNotificationManager.addTask(timeout:task:);
  *(v17 + 24) = v16;
  v20[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v20[5] = v17;
  OUTLINED_FUNCTION_3_31();
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_8_29();
  v20[2] = v18;
  v20[3] = &block_descriptor_19;
  v19 = _Block_copy(v20);

  dispatch_sync(v14, v19);
  _Block_release(v19);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_65();
  }
}

uint64_t closure #1 in CallStateNotificationManager.addTask(timeout:task:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CallStateOneTimeTask(0);
  v9 = swift_allocObject();

  CallStateOneTimeTask.init(task:)();
  (*(*v9 + 208))(a3);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = *(*v9 + 216);

  v13(partial apply for closure #1 in closure #1 in CallStateNotificationManager.addTask(timeout:task:), v12);

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v17 = 136315138;
    v29 = *(v7 + 16);
    v18 = v30;
    v29(v30, v9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid, v6);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    HIDWORD(v27) = v16;
    v20 = v7;
    v21 = v6;
    v23 = v22;
    (*(v20 + 8))(v18, v21);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v23, v32);
    v6 = v21;
    v7 = v20;
    v25 = v18;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v15, BYTE4(v27), "#CallStateNotificationManager adding task: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);

    v29(v18, v9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid, v6);
  }

  else
  {

    v25 = v30;
    (*(v7 + 16))(v30, v9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid, v6);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v31 = a4[4];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v25);
  a4[4] = v31;
  (*(v7 + 8))(v25, v6);
  swift_endAccess();
  CallStateNotificationManager.tasks.didset();
  if (((*(*a4 + 136))() & 1) == 0)
  {
    CallStateNotificationManager.startObservingNotifications()();
  }
}

uint64_t CallStateOneTimeTask.__allocating_init(task:)()
{
  OUTLINED_FUNCTION_24_3();
  v0 = swift_allocObject();
  CallStateOneTimeTask.init(task:)();
  return v0;
}

uint64_t closure #1 in closure #1 in CallStateNotificationManager.addTask(timeout:task:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      CallStateNotificationManager.removeTask(_:)();
    }
  }

  return result;
}

void CallStateNotificationManager.removeTask(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v33 = v12;
  v34 = v11;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v16, static Logger.siriPhone);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v32 = v6;
    v19 = OUTLINED_FUNCTION_42();
    v20 = OUTLINED_FUNCTION_36();
    v35[0] = v20;
    *v19 = 136315138;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_1_46();
    _s10Foundation4UUIDVACSHAAWlTm_0(v21, v22, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v35);

    *(v19 + 4) = v25;
    v1 = v0;
    _os_log_impl(&dword_0, v17, v18, "#CallStateNotificationManager removing task: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_26_0(v20);
    v26 = v19;
    v6 = v32;
    OUTLINED_FUNCTION_26_0(v26);
  }

  OUTLINED_FUNCTION_50();
  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  *(v27 + 24) = v3;
  v35[4] = partial apply for closure #1 in CallStateNotificationManager.removeTask(_:);
  v35[5] = v27;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_6_3(COERCE_DOUBLE(1107296256));
  v35[2] = v28;
  v35[3] = &block_descriptor_52;
  v29 = _Block_copy(v35);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_7_21();
  _s10Foundation4UUIDVACSHAAWlTm_0(v30, v31, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v6 + 8))(v10, v4);
  (*(v33 + 8))(v15, v34);

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in CallStateNotificationManager.removeTask(_:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid;
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(a2 + v4);
  swift_endAccess();

  CallStateNotificationManager.tasks.didset();
  v5 = *((*(*a1 + 112))() + 16);

  if (!v5)
  {
    result = (*(*a1 + 136))(result);
    if (result)
    {
      return CallStateNotificationManager.stopObservingNotifications()();
    }
  }

  return result;
}

uint64_t CallStateNotificationManager.startObservingNotifications()()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v23[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000000004599E0, v23);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  OUTLINED_FUNCTION_28_11(v13, v14, v15, v16, TUCallCenterCallStatusChangedNotification);

  v17 = [v12 defaultCenter];
  OUTLINED_FUNCTION_28_11(v17, v18, v19, v20, TUCallCenterVideoCallStatusChangedNotification);

  result = OUTLINED_FUNCTION_11_2(v1 + 40, v21);
  *(v1 + 40) = 1;
  return result;
}

uint64_t CallStateNotificationManager.stopObservingNotifications()()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v17[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000000004599C0, v17);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  [v13 removeObserver:v1 name:TUCallCenterCallStatusChangedNotification object:0];

  v14 = [v12 defaultCenter];
  [v14 removeObserver:v1 name:TUCallCenterVideoCallStatusChangedNotification object:0];

  result = OUTLINED_FUNCTION_11_2(v1 + 40, v15);
  *(v1 + 40) = 0;
  return result;
}

uint64_t CallStateNotificationManager.deinit()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26_0(v5);
  }

  return v1;
}

uint64_t CallStateNotificationManager.__deallocating_deinit()
{
  CallStateNotificationManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t CallStateOneTimeTask.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_40();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CallStateOneTimeTask.task.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task);

  return v1;
}

void (*CallStateOneTimeTask.isActive.didset())(void)
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    result = (*(*v0 + 144))(result);
    if (result)
    {
      v4 = result;
      v5 = v3;
      result();
      return _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v4, v5);
    }
  }

  return result;
}

uint64_t CallStateOneTimeTask.isActive.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
  OUTLINED_FUNCTION_4_4(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive, a2);
  return *(v2 + v3);
}

void (*CallStateOneTimeTask.isActive.setter(char a1, uint64_t a2))(void)
{
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
  OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive, a2);
  *(v2 + v4) = a1;
  return CallStateOneTimeTask.isActive.didset();
}

uint64_t key path getter for CallStateOneTimeTask.teardownHandler : CallStateOneTimeTask@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 144))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for CallStateOneTimeTask.teardownHandler : CallStateOneTimeTask(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_2A134(v3, v4);
  return _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v8, v9);
}

uint64_t CallStateOneTimeTask.teardownHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_2A134(*v1, v1[1]);
  return v2;
}

uint64_t key path setter for CallStateOneTimeTask.timer : CallStateOneTimeTask(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_timer;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t CallStateOneTimeTask.init(task:)()
{
  OUTLINED_FUNCTION_24_3();
  UUID.init()();
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive) = 1;
  v3 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_timer) = 0;
  v4 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task);
  *v4 = v2;
  v4[1] = v0;
  return v1;
}

uint64_t CallStateOneTimeTask.callStateDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  result = (*(*v1 + 120))();
  if (result)
  {
    result = (*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task))(a1);
    if (result)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v5 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v5, static Logger.siriPhone);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = OUTLINED_FUNCTION_42();
        v9 = OUTLINED_FUNCTION_36();
        v19[0] = v9;
        *v8 = 136315138;
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_1_46();
        _s10Foundation4UUIDVACSHAAWlTm_0(v10, v11, &protocol conformance descriptor for UUID);
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v19);

        *(v8 + 4) = v14;
        OUTLINED_FUNCTION_26(&dword_0, v15, v16, "#CallStateOneTimeTask executed %s");
        __swift_destroy_boxed_opaque_existential_1(v9);
        OUTLINED_FUNCTION_26_0(v9);
        OUTLINED_FUNCTION_26_0(v8);
      }

      v17 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
      OUTLINED_FUNCTION_11_2(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive, v18);
      *(v2 + v17) = 0;
      return CallStateOneTimeTask.isActive.didset();
    }
  }

  return result;
}

void CallStateOneTimeTask.setTimeout(timeout:)()
{
  OUTLINED_FUNCTION_66();
  v80 = v0;
  v73 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  v78 = v3;
  v79 = v2;
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v76 = v5 - v4;
  OUTLINED_FUNCTION_15_0();
  v77 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v75 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v74 = v9 - v8;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7();
  v71 = v11;
  v72 = v10;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_16_2();
  v70 = v12;
  __chkstk_darwin(v13);
  v69 = &v62 - v14;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_7();
  v67 = v16;
  v68 = v15;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_2();
  v65 = v17;
  __chkstk_darwin(v18);
  v66 = &v62 - v19;
  OUTLINED_FUNCTION_15_0();
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_7();
  v22 = v21;
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  v27 = type metadata accessor for OS_dispatch_source.TimerFlags();
  OUTLINED_FUNCTION_7();
  v64 = v28;
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_4();
  v32 = v31 - v30;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v33, static Logger.siriPhone);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v63 = v20;
    v37 = v36;
    v38 = swift_slowAlloc();
    v81[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000000459890, v81);
    *(v37 + 12) = 2080;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_1_46();
    _s10Foundation4UUIDVACSHAAWlTm_0(v39, v40, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v81);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_0, v34, v35, "#CallStateOneTimeTask %s %s", v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v38);
    v44 = v37;
    v20 = v63;
    OUTLINED_FUNCTION_26_0(v44);
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_source, OS_dispatch_source_ptr);
  v81[0] = _swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  (*(v22 + 104))(v26, enum case for DispatchQoS.QoSClass.utility(_:), v20);
  v45 = static OS_dispatch_queue.global(qos:)();
  (*(v22 + 8))(v26, v20);
  v46 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v64 + 8))(v32, v27);
  swift_getObjectType();
  v47 = v65;
  static DispatchTime.now()();
  v48 = v66;
  + infix(_:_:)();
  v49 = v68;
  v50 = *(v67 + 8);
  v50(v47, v68);
  v51 = v69;
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v69);
  v52 = v70;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v70);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v53 = *(v71 + 8);
  v54 = v52;
  v55 = v72;
  v53(v54, v72);
  v53(v51, v55);
  v50(v48, v49);
  OUTLINED_FUNCTION_19_6();
  v56 = swift_allocObject();
  v57 = v80;
  swift_weakInit();
  v81[4] = partial apply for closure #1 in CallStateOneTimeTask.setTimeout(timeout:);
  v81[5] = v56;
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 1107296256;
  v81[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v81[3] = &block_descriptor_25;
  v58 = _Block_copy(v81);

  v59 = v74;
  static DispatchQoS.unspecified.getter();
  v60 = v76;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v58);
  (*(v78 + 8))(v60, v79);
  (*(v75 + 8))(v59, v77);

  OS_dispatch_source.resume()();
  v61 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_timer;
  swift_beginAccess();
  *(v57 + v61) = v46;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65();
}

uint64_t default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t closure #1 in CallStateOneTimeTask.setTimeout(timeout:)(uint64_t a1)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#CallStateOneTimeTask timed out", v4, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
    swift_beginAccess();
    *(v6 + v7) = 0;
    CallStateOneTimeTask.isActive.didset();
  }

  return result;
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t CallStateOneTimeTask.setTeardownHandler(_:)()
{
  OUTLINED_FUNCTION_24_3();
  v3 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;

  return _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v4, v5);
}

uint64_t CallStateOneTimeTask.deinit()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v17 = v6;
    *v5 = 136315138;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_1_46();
    _s10Foundation4UUIDVACSHAAWlTm_0(v7, v8, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v5 + 4) = v11;
    OUTLINED_FUNCTION_26(&dword_0, v12, v13, "#CallStateOneTimeTask deinit %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v14 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_40();
  (*(v15 + 8))(v1 + v14);

  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler), *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler + 8));
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CallStateOneTimeTask.__deallocating_deinit()
{
  CallStateOneTimeTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in CallStateNotificationManager.addTask(timeout:task:)()
{
  v1 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in CallStateNotificationManager.addTask(timeout:task:)(v3, v4, v0 + v2, v5);
}

uint64_t type metadata completion function for CallStateOneTimeTask(uint64_t a1)
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

uint64_t objectdestroy_48Tm()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void CallStateProvider.init()(void *a1@<X8>)
{
  v9[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v9[0] - 8);
  __chkstk_darwin(v9[0]);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  a1[4] = &type metadata for SPHTUBackedCallCapabilities;
  a1[5] = &protocol witness table for SPHTUBackedCallCapabilities;
  a1[6] = type metadata accessor for SPHCallHandleFormatter();
  a1[7] = &protocol witness table for SPHCallHandleFormatter;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v9[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9[0]);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = [objc_allocWithZone(TUCallCenter) initWithQueue:v7];

  *a1 = v8;
}

uint64_t *CallStateProvider.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
  }

  return &static CallStateProvider.instance;
}

uint64_t static CallStateProvider.instance.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for instance);
  }

  return outlined init with copy of CallStateProvider(&static CallStateProvider.instance, a1);
}

uint64_t CallStateProvider.afCallStateSnapshot.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.root.getter();
  v2 = SiriEnvironment.callState.getter();

  result = type metadata accessor for CallStateEnvironmentProvider();
  a1[3] = result;
  a1[4] = &protocol witness table for CallStateEnvironmentProvider;
  *a1 = v2;
  return result;
}

id closure #1 in CallStateProvider.currentCall.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 frontmostAudioOrVideoCall];
  *a2 = result;
  return result;
}

uint64_t specialized CallStateProvider.onCallCenterQueue<A>(_:)(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v6 = v8;

  SPHCallCenter.onQueue<A>(_:)();

  return v9;
}

{
  v8 = *v2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v6 = v8;

  SPHCallCenter.onQueue<A>(_:)();

  return v9;
}

{
  return specialized CallStateProvider.onCallCenterQueue<A>(_:)(a1, a2, &unk_51E8B0, &_sSo14TUConversationCSgMd, &_sSo14TUConversationCSgMR, partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed TUCallCenter) -> (@out A));
}

uint64_t specialized CallStateProvider.onCallCenterQueue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v14 = *v6;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v12 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  SPHCallCenter.onQueue<A>(_:)();

  return v15;
}

uint64_t CallStateProvider.onCallCenterQueue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *v3;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v8 = v10;

  SPHCallCenter.onQueue<A>(_:)();
}

id closure #1 in CallStateProvider.currentAudioAndVideoCallCount.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 currentAudioAndVideoCallCount];
  *a2 = result;
  return result;
}

void *partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed TUCallCenter) -> (@out A)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_47(a1);
  result = v3(&v5, v2);
  *v1 = v5;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_1_47(a1);
  result = v3(&v5, v2);
  *v1 = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t CallTypesSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *&v14 = __chkstk_darwin(v13 - 8).n128_u64[0];
  v16 = aBlock - v15;
  [a5 callTypes];
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = (v17 + 16);
  aBlock[4] = partial apply for closure #1 in INCallRecordTypeOptions.INPBStringRepresentation.getter;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ();
  aBlock[3] = &block_descriptor_1;
  v19 = _Block_copy(aBlock);

  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v19);
  swift_beginAccess();
  v20 = *v18;

  v21 = INSearchCallHistoryIntent.unseen.getter();
  if (v21 == 2 || (v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v22 = *(v20 + 16);
    if (v22 >= *(v20 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v28;
    }

    *(v20 + 16) = v22 + 1;
    v23 = v20 + 16 * v22;
    *(v23 + 32) = 0x6E6565736E75;
    *(v23 + 40) = 0xE600000000000000;
LABEL_7:
    if (*(v20 + 16))
    {
      break;
    }

    __break(1u);
LABEL_10:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v20 = v27;
  }

  v24 = *(v9 + 40);

  SpeakableString.init(print:speak:)();
  v25 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v25);
  (*(*v24 + class metadata base offset for SearchCallHistoryCATs + 64))(v16, *(v20 + 16), 0, a7, a8);
  outlined destroy of SpeakableString?(v16);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

ValueMetadata *specialized UnsupportedAction.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C23UnsupportedActionReasonOmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C23UnsupportedActionReasonOmMR);
  String.init<A>(describing:)();
  OUTLINED_FUNCTION_2_38();
  v0._countAndFlagsBits = 0x6576697463416F6ELL;
  v0._object = 0xEC0000006C6C6143;
  String.append(_:)(v0);
  return &type metadata for ActionableCallControlFlow.UnsupportedActionReason;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C35UnsupportedSpeakerphoneActionReasonOmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C35UnsupportedSpeakerphoneActionReasonOmMR);
  String.init<A>(describing:)();
  OUTLINED_FUNCTION_2_38();
  v0._object = 0x80000000004517C0;
  v0._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v0);
  return &type metadata for ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
}

uint64_t specialized UnsupportedAction.description.getter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  String.init<A>(describing:)();
  OUTLINED_FUNCTION_2_38();
  v7._countAndFlagsBits = a5(a1);
  String.append(_:)(v7);

  return a2;
}

uint64_t CameraControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(CameraControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t CameraControlFlow.executeAction(currentCall:)()
{
  v68 = v0;
  v1 = *(v0[9] + 56);
  if ((PhoneCallControlAction.isCameraAction.getter(v1) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "#CameraControlFlow used to handle a call control not related to the camera.", v13, 2u);
      OUTLINED_FUNCTION_26_0(v13);
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v15 = v14;
    v16 = 0;
    *v14 = v1;
    goto LABEL_25;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 32);
    *(v7 + 4) = v9(ObjectType, v6) & 1;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_0, v3, v4, "#CameraControlFlow isFaceTime: %{BOOL}d", v7, 8u);
    OUTLINED_FUNCTION_26_0(v7);
  }

  else
  {
    swift_unknownObjectRelease();

    v9 = *(v6 + 32);
  }

  v17 = v0[8];
  v18 = swift_getObjectType();
  if ((v9(v18, v17) & 1) == 0)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "#CameraControlFlow requesting to turn on camera while on Telephony call. Throwing ActionableCallControlFlow.unsupportedAction.", v31, 2u);
      OUTLINED_FUNCTION_26_0(v31);
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v15 = v32;
    *(v32 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
    *(v32 + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason();
    *v15 = 9;
    goto LABEL_24;
  }

  v19 = static PhoneCallControlRequestSupportPolicy.unsupportedCameraControlReason(for:action:sharedGlobals:)(v0[7], v0[8], v1, v0[9] + 16);
  if (v19 != 10)
  {
    v33 = v19;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67[0] = v37;
      *v36 = 136315138;
      OUTLINED_FUNCTION_1_48();
      v42 = specialized UnsupportedAction.description.getter(v33, v38, v39, v40, v41);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v67);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_0, v34, v35, "#CameraControlFlow unsupported reason=%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_26_0(v37);
      OUTLINED_FUNCTION_26_0(v36);
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v15 = v45;
    *(v45 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
    *(v45 + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason();
    *v15 = v33;
LABEL_24:
    v16 = 1;
LABEL_25:
    v15[40] = v16;
    swift_willThrow();
    v46 = v0[1];
    goto LABEL_26;
  }

  v20 = *(v0[8] + 144);
  v21 = v20(v18);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v21 & 1;
    _os_log_impl(&dword_0, v22, v23, "#CameraControlFlow cameraIsEnabled = %{BOOL}d", v24, 8u);
    OUTLINED_FUNCTION_26_0(v24);
  }

  v25 = PhoneCallControlAction.rawValue.getter(v1);
  if (v21)
  {
    v27 = 0xED00006172656D61;
    v28 = 0x43656C6261736964;
  }

  else
  {
    v27 = 0xEC0000006172656DLL;
    v28 = 0x6143656C62616E65;
  }

  if (v25 == v28 && v26 == v27)
  {
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v49 & 1) == 0)
    {

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v67[0] = v53;
        *v52 = 136315394;
        if (v21)
        {
          v54 = 0x64656C62616E65;
        }

        else
        {
          v54 = 0x64656C6261736964;
        }

        if (v21)
        {
          v55 = 0xE700000000000000;
        }

        else
        {
          v55 = 0xE800000000000000;
        }

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v67);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        v57 = PhoneCallControlAction.description.getter(v1);
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v67);

        *(v52 + 14) = v59;
        _os_log_impl(&dword_0, v50, v51, "#CameraControlFlow not changing camera state because camera is %s and action is %s", v52, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0(v53);
        OUTLINED_FUNCTION_26_0(v52);
      }

      goto LABEL_49;
    }
  }

  v60 = (*(v0[8] + 160))(v0 + 2, v18);
  *v61 = !*v61;
  v60(v0 + 2, 0);
  swift_unknownObjectRetain();
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v0[8];
    v65 = swift_slowAlloc();
    *v65 = 67109120;
    *(v65 + 4) = (v20)(v18, v64) & 1;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_0, v62, v63, "#CameraControlFlow camera is enabled: %{BOOL}d", v65, 8u);
    OUTLINED_FUNCTION_26_0(v65);
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_49:
  v66 = v0[6];
  *v66 = 0;
  *(v66 + 8) = 0;
  *(v66 + 16) = 0;
  *(v66 + 24) = xmmword_42D060;
  v46 = v0[1];
LABEL_26:

  return v46();
}

uint64_t SwitchToFaceTimeControlFlow.__deallocating_deinit()
{
  ActionableCallControlFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t CarPlayDirectInvocationFlow.__allocating_init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5)
{
  v6 = v5;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#Gatekeeper Initialized GatekeeperLegacyCallingIntentFlow", v15, 2u);
  }

  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, v6 + 40);
  *(v6 + 80) = a5 & 1;
  return v6;
}

uint64_t CarPlayDirectInvocationFlow.__allocating_init<A>(app:intent:strategy:aceServiceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#Gatekeeper Initialized GatekeeperLegacyCallingIntentFlow", v17, 2u);
  }

  v24 = CarPlayDirectInvocationFlowStrategy.toAnyIntentFlowStrategy()(a5, a6);
  outlined init with copy of SignalProviding(a4, v23);
  v20 = type metadata accessor for AnyIntentCarPlayDirectActionFlowStrategy(0, *(v7 + 80), v18, v19);
  WitnessTable = swift_getWitnessTable();
  CarPlayDirectInvocationFlow.__allocating_init<A>(app:intent:strategy:aceServiceInvoker:)(a1, a2, &v24, v23, v20, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return (*(*(a5 - 8) + 8))(a3, a5);
}

uint64_t CarPlayDirectInvocationFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CarPlayDirectInvocationFlow(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t outlined destroy of NLContextUpdate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC7FactoryO04makefghiC033_50B2F8F24DEBC70E92405053C79DAACDLL3app6intent12directAction13sharedGlobalsAA0fghiC0CyxG17SiriAppResolution0Z0C_xAA010StartAudiobhV0VAA06SharedX9Providing_ptSo8INIntentCRbzlFZSo07INStartB6IntentC_Tt3g5(void *a1, void *a2, uint64_t a3, void *a4)
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  __chkstk_darwin(v105);
  v106 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v92 - v10;
  v104 = type metadata accessor for Parse();
  v102 = *(v104 - 1);
  __chkstk_darwin(v104);
  v103 = (&v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = type metadata accessor for Input();
  v12 = *(v111 - 8);
  __chkstk_darwin(v111);
  v100 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v108 = &v92 - v15;
  __chkstk_darwin(v16);
  v18 = &v92 - v17;
  __chkstk_darwin(v19);
  v97 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
  __chkstk_darwin(v21 - 8);
  v99 = &v92 - v22;
  v23 = type metadata accessor for NLIntent();
  v95 = *(v23 - 8);
  __chkstk_darwin(v23);
  v94 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.siriPhone);
  v27 = a2;
  v101 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v110 = a1;
  v109 = a3;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v114 = v98;
    *v31 = 136315138;
    v32 = v12;
    v33 = v27;
    v34 = [v27 typeName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v23;
    v36 = v35;
    v37 = v18;
    v38 = a4;
    v40 = v39;

    v27 = v33;
    v12 = v32;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v40, &v114);
    a4 = v38;
    v18 = v37;

    *(v31 + 4) = v41;
    v23 = v96;
    _os_log_impl(&dword_0, v28, v29, "#CarPlayDirectActionFlowFactory Building CarPlayDirectInvocationFlow: intentType=%s)", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v98);

    a1 = v110;
    a3 = v109;
  }

  outlined init with copy of SignalProviding(a4, v115);
  v114 = a1;

  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v42, 0, a4);
  v43 = *(a3 + 56);
  if (v43 >> 60 == 15)
  {
    v46 = *(a3 + 64);
    if (v46)
    {
      v98 = a4;
      v47 = v103;
      *v103 = v46;
      (v102[13])(v47, enum case for Parse.NLv4IntentOnly(_:), v104);
      swift_unknownObjectRetain_n();
      v48 = v108;
      Input.init(parse:)();
      v49 = v100;
      v104 = *(v12 + 16);
      v104(v100, v48, v111);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v113[0] = v102;
        *v52 = 136315138;
        _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
        v53 = v111;
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v93 = v27;
        v55 = v53;
        v56 = v54;
        v58 = v57;
        v103 = *(v12 + 8);
        (v103)(v49, v55);
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v113);

        *(v52 + 4) = v59;
        v27 = v93;
        _os_log_impl(&dword_0, v50, v51, "#CarPlayDirectActionFlowFactory Received directInvocation with NLv4 input: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);

        a1 = v110;
      }

      else
      {

        v103 = *(v12 + 8);
        (v103)(v49, v111);
      }

      v61 = v107;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v114, v107, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
      v62 = v108;
      v63 = v111;
      v104((v61 + *(v105 + 40)), v108, v111);
      *(v61 + 48) = a1;
      v64 = v106;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v61, v106, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMR);
      swift_allocObject();

      v60 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v64);
      swift_unknownObjectRelease();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
      (v103)(v62, v63);
      a3 = v109;
      a4 = v98;
    }

    else
    {
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v114, v113, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v113, v112, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMR);
      swift_allocObject();
      v60 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v112);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v113, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
    }
  }

  else
  {
    v44 = *(a3 + 48);
    outlined copy of Data?(v44, *(a3 + 56));
    outlined copy of Data._Representation(v44, v43);
    v45 = v99;
    NLIntent.init(protobufData:)();
    v93 = v27;
    v98 = a4;
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v23);
    v65 = v45;
    v66 = v95;
    v67 = v94;
    (*(v95 + 32))(v94, v65, v23);
    v68 = *(v66 + 16);
    v69 = v103;
    v96 = v23;
    v68(v103, v67, v23);
    (v102[13])(v69, enum case for Parse.NLv3IntentOnly(_:), v104);
    v70 = v97;
    Input.init(parse:)();
    v108 = *(v12 + 16);
    (v108)(v18, v70, v111);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v102 = v73;
      v103 = swift_slowAlloc();
      *&v113[0] = v103;
      *v73 = 136315138;
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v74 = v72;
      v75 = v111;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v75;
      v78 = v76;
      v80 = v79;
      v104 = *(v12 + 8);
      (v104)(v18, v77);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v113);

      v82 = v102;
      *(v102 + 4) = v81;
      _os_log_impl(&dword_0, v71, v74, "#CarPlayDirectActionFlowFactory Received directInvocation with NLv3 input: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      a3 = v109;
    }

    else
    {

      v104 = *(v12 + 8);
      (v104)(v18, v111);
    }

    v83 = v107;
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v114, v107, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
    v84 = v97;
    v85 = v111;
    (v108)(v83 + *(v105 + 40), v97, v111);
    *(v83 + 48) = v110;
    v86 = v106;
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v83, v106, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMR);
    swift_allocObject();

    v60 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v86);
    outlined consume of Data?(v44, v43);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
    (v104)(v84, v85);
    (*(v95 + 8))(v94, v96);
    a4 = v98;
    v27 = v93;
  }

  outlined init with copy of SignalProviding(a4, v113);
  v87 = *(a3 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMR);
  swift_allocObject();
  v88 = v27;

  v90 = specialized CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(v89, v88, v60, v113, v87);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v114, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  return v90;
}

uint64_t _s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC7FactoryO04makefghiC033_50B2F8F24DEBC70E92405053C79DAACDLL3app6intent12directAction13sharedGlobalsAA0fghiC0CyxG17SiriAppResolution0Z0C_xAA010StartAudiobhV0VAA06SharedX9Providing_ptSo8INIntentCRbzlFZSo012INStartAudioB6IntentC_Tt3g5(void *a1, void *a2, uint64_t a3, void *a4)
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  __chkstk_darwin(v105);
  v106 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v92 - v10;
  v104 = type metadata accessor for Parse();
  v102 = *(v104 - 1);
  __chkstk_darwin(v104);
  v103 = (&v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = type metadata accessor for Input();
  v12 = *(v111 - 8);
  __chkstk_darwin(v111);
  v100 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v108 = &v92 - v15;
  __chkstk_darwin(v16);
  v18 = &v92 - v17;
  __chkstk_darwin(v19);
  v97 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
  __chkstk_darwin(v21 - 8);
  v99 = &v92 - v22;
  v23 = type metadata accessor for NLIntent();
  v95 = *(v23 - 8);
  __chkstk_darwin(v23);
  v94 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.siriPhone);
  v27 = a2;
  v101 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v110 = a1;
  v109 = a3;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v114 = v98;
    *v31 = 136315138;
    v32 = v12;
    v33 = v27;
    v34 = [v27 typeName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v23;
    v36 = v35;
    v37 = v18;
    v38 = a4;
    v40 = v39;

    v27 = v33;
    v12 = v32;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v40, &v114);
    a4 = v38;
    v18 = v37;

    *(v31 + 4) = v41;
    v23 = v96;
    _os_log_impl(&dword_0, v28, v29, "#CarPlayDirectActionFlowFactory Building CarPlayDirectInvocationFlow: intentType=%s)", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v98);

    a1 = v110;
    a3 = v109;
  }

  outlined init with copy of SignalProviding(a4, v115);
  v114 = a1;

  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v42, 0, a4);
  v43 = *(a3 + 56);
  if (v43 >> 60 == 15)
  {
    v46 = *(a3 + 64);
    if (v46)
    {
      v98 = a4;
      v47 = v103;
      *v103 = v46;
      (v102[13])(v47, enum case for Parse.NLv4IntentOnly(_:), v104);
      swift_unknownObjectRetain_n();
      v48 = v108;
      Input.init(parse:)();
      v49 = v100;
      v104 = *(v12 + 16);
      v104(v100, v48, v111);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v113[0] = v102;
        *v52 = 136315138;
        _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
        v53 = v111;
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v93 = v27;
        v55 = v53;
        v56 = v54;
        v58 = v57;
        v103 = *(v12 + 8);
        (v103)(v49, v55);
        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v113);

        *(v52 + 4) = v59;
        v27 = v93;
        _os_log_impl(&dword_0, v50, v51, "#CarPlayDirectActionFlowFactory Received directInvocation with NLv4 input: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);

        a1 = v110;
      }

      else
      {

        v103 = *(v12 + 8);
        (v103)(v49, v111);
      }

      v61 = v107;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v114, v107, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
      v62 = v108;
      v63 = v111;
      v104((v61 + *(v105 + 40)), v108, v111);
      *(v61 + 48) = a1;
      v64 = v106;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v61, v106, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMR);
      swift_allocObject();

      v60 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v64);
      swift_unknownObjectRelease();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
      (v103)(v62, v63);
      a3 = v109;
      a4 = v98;
    }

    else
    {
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v114, v113, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v113, v112, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMR);
      swift_allocObject();
      v60 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v112);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v113, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
    }
  }

  else
  {
    v44 = *(a3 + 48);
    outlined copy of Data?(v44, *(a3 + 56));
    outlined copy of Data._Representation(v44, v43);
    v45 = v99;
    NLIntent.init(protobufData:)();
    v93 = v27;
    v98 = a4;
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v23);
    v65 = v45;
    v66 = v95;
    v67 = v94;
    (*(v95 + 32))(v94, v65, v23);
    v68 = *(v66 + 16);
    v69 = v103;
    v96 = v23;
    v68(v103, v67, v23);
    (v102[13])(v69, enum case for Parse.NLv3IntentOnly(_:), v104);
    v70 = v97;
    Input.init(parse:)();
    v108 = *(v12 + 16);
    (v108)(v18, v70, v111);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v102 = v73;
      v103 = swift_slowAlloc();
      *&v113[0] = v103;
      *v73 = 136315138;
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v74 = v72;
      v75 = v111;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v75;
      v78 = v76;
      v80 = v79;
      v104 = *(v12 + 8);
      (v104)(v18, v77);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v113);

      v82 = v102;
      *(v102 + 4) = v81;
      _os_log_impl(&dword_0, v71, v74, "#CarPlayDirectActionFlowFactory Received directInvocation with NLv3 input: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      a3 = v109;
    }

    else
    {

      v104 = *(v12 + 8);
      (v104)(v18, v111);
    }

    v83 = v107;
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v114, v107, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
    v84 = v97;
    v85 = v111;
    (v108)(v83 + *(v105 + 40), v97, v111);
    *(v83 + 48) = v110;
    v86 = v106;
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v83, v106, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMR);
    swift_allocObject();

    v60 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v86);
    outlined consume of Data?(v44, v43);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
    (v104)(v84, v85);
    (*(v95 + 8))(v94, v96);
    a4 = v98;
    v27 = v93;
  }

  outlined init with copy of SignalProviding(a4, v113);
  v87 = *(a3 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMR);
  swift_allocObject();
  v88 = v27;

  v90 = specialized CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(v89, v88, v60, v113, v87);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v114, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  return v90;
}

void *specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v16, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v16, v15, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo012INStartAudiobG0CGMR);
  swift_allocObject();
  v7 = specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(v15);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  v2[2] = v7;
  v2[6] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 3);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, boxed_opaque_existential_1, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v6, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v9 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v10 = swift_allocObject();
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v6, v10 + v9, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v2[7] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[8] = v10;
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(a1, v6, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v11 = swift_allocObject();
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v6, v11 + v9, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v2[9] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[10] = v11;
  return v2;
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v14 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v16, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v16, v15, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo07INStartbG0CGMR);
  swift_allocObject();
  v7 = specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(v15);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  v2[2] = v7;
  v2[6] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 3);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, boxed_opaque_existential_1, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v6, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v9 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v10 = swift_allocObject();
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v6, v10 + v9, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v2[7] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[8] = v10;
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(a1, v6, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v11 = swift_allocObject();
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v6, v11 + v9, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v2[9] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[10] = v11;
  return v2;
}

uint64_t specialized OnDeviceCarPlayWithInputFlowStrategy.makeNLContextUpdate(app:)()
{
  App.appIdentifier.getter();
  type metadata accessor for MachineUtteranceBuilder();
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();
  OUTLINED_FUNCTION_7_22();

  type metadata accessor for AppOntologyNode();
  static AppOntologyNode.applicationIdNode.getter();
  TerminalOntologyNode.name.getter();

  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  NLContextUpdate.init()();
  dispatch thunk of MachineUtteranceBuilder.build()();
  NLContextUpdate.nlInput.setter();

  type metadata accessor for NLContextUpdate();
  v0 = OUTLINED_FUNCTION_10_28();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t specialized CarPlayRCHFlowProvider.makeRCHFlow(input:)(uint64_t a1)
{
  v4 = type metadata accessor for CATOption();
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_8_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = v1 + 1;
  v11 = static PhoneCallRequestSupportPolicy.getSiriKitIntent(input:sharedGlobals:app:intentTypeName:)(a1, v1 + 1, *v1, 8);
  if (v11)
  {
    v12 = v11;
    static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
    if (v13)
    {
      v14 = v13;

      dispatch thunk of AnyFlow.on(input:)();

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v15 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_65_0();
        *v18 = 0;
        OUTLINED_FUNCTION_33(&dword_0, v19, v20, "#CarPlayRCHFlowProvider makeRCHFlow(input): RCHFlow found");
        OUTLINED_FUNCTION_26_0(v18);
      }

      return v14;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v21, static Logger.siriPhone);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_65_0();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "#CarPlayRCHFlowProvider makeRCHFlow(input): no RCHFlow found", v24, 2u);
    OUTLINED_FUNCTION_26_0(v24);
  }

  Input.parse.getter();
  v25 = type metadata accessor for Parse();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v25);
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v26 = CATWrapperSimple.__allocating_init(options:globals:)();
  v27 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v10, v9, v26);

  v28 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  (*(*v27 + 112))(v28);
  OUTLINED_FUNCTION_15_23();
  v30[1] = v2;
  type metadata accessor for SimpleOutputFlowAsync();
  v14 = Flow.eraseToAnyFlow()();

  return v14;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroyTm_2(uint64_t *a1, uint64_t *a2)
{
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*v3 + 64);

  __swift_destroy_boxed_opaque_existential_1((v2 + v5 + 8));

  v7 = v3[12];
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  (*(v8 + 8))(v2 + v5 + v7);

  return _swift_deallocObject(v2, v5 + v6, v4 | 7);
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1)
{
  return partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
}

{
  return partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
}

uint64_t outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_21(v9);
  return specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, a2, v4 + ((*(v10 + 80) + 16) & ~*(v10 + 80)), a3, a4);
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21(v3);
  return specialized OnDeviceCarPlayWithInputFlowStrategy.makeNLContextUpdate(app:)();
}

uint64_t CarPlayDirectInvocationFlowStrategy.toAnyIntentFlowStrategy()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnyIntentCarPlayDirectActionFlowStrategy(0, AssociatedTypeWitness, v8, v9);
  v10 = OUTLINED_FUNCTION_3_1();
  v11(v10);
  return AnyIntentCarPlayDirectActionFlowStrategy.__allocating_init<A>(_:)(v6, a1, a2);
}

uint64_t OnDeviceCarPlayWithInputFlowStrategy.init(rchFlowProvider:app:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for OnDeviceCarPlayWithInputFlowStrategy(0, a4, a5, v11);
  *(a6 + *(v12 + 36)) = a2;
  v13 = *(v12 + 40);
  v14 = type metadata accessor for Input();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a3, v14);
}

uint64_t CarPlayDirectInvocationFlowStrategy.makeRCHFlow(app:skIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  (*(a4 + 32))(a3, a4, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 24))(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v10 + 8))(v14, AssociatedTypeWitness);
  return v16;
}

uint64_t CarPlayDirectInvocationFlowStrategy.makeNLContextUpdate(app:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NLContextUpdate();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t CarPlayDirectInvocationFlowStrategy.makeNLContextWithNLInput(verb:appId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1;
  type metadata accessor for MachineUtteranceBuilder();
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  if (v4 != 14)
  {
    PhoneCallVerbSemantics.rawValue.getter(v3);
  }

  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  type metadata accessor for AppOntologyNode();
  static AppOntologyNode.applicationIdNode.getter();
  TerminalOntologyNode.name.getter();

  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  NLContextUpdate.init()();
  dispatch thunk of MachineUtteranceBuilder.build()();
  NLContextUpdate.nlInput.setter();
}

uint64_t AnyIntentCarPlayDirectActionFlowStrategy.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, a2, a3);
  return v6;
}

void *AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v30 - v13;
  (*(a3 + 32))(a2, a3, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = CarPlayRCHFlowProviding.toAnyRCHFlowProvider()(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v10 + 8))(v14, AssociatedTypeWitness);
  v4[2] = v16;
  v4[6] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 3);
  v18 = *(a2 - 8);
  (*(v18 + 16))(boxed_opaque_existential_1, a1, a2);
  v19 = OUTLINED_FUNCTION_3_1();
  v4[7] = implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v19, v20, v21, a3);
  v4[8] = v22;
  v23 = OUTLINED_FUNCTION_3_1();
  v26 = implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v23, v24, v25, a3);
  v28 = v27;
  (*(v18 + 8))(a1, a2);
  v4[9] = v26;
  v4[10] = v28;
  return v4;
}

uint64_t (*implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
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
  return partial apply for implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
}

uint64_t (*implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
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
  return partial apply for implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
}

uint64_t AnyIntentCarPlayDirectActionFlowStrategy.unbox<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(v2 + 24, &v7);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v5 ^ 1u, 1, a1);
}

uint64_t OnDeviceCarPlayWithInputFlowStrategy.input.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Input();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t OnDeviceCarPlayWithInputFlowStrategy.makeNLContextUpdate(app:)@<X0>(uint64_t a2@<X8>)
{
  v3 = App.appIdentifier.getter();
  v5 = v4;
  swift_getWitnessTable();
  CarPlayDirectInvocationFlowStrategy.makeNLContextWithNLInput(verb:appId:)(14, v3, v5);

  v6 = type metadata accessor for NLContextUpdate();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v6);
}

uint64_t DefaultCarPlayDirectActionFlowStrategy.makeNLContextUpdate(app:)@<X0>(uint64_t a1@<X8>)
{
  if (App.isFirstParty()())
  {
    OUTLINED_FUNCTION_1_50();
    CarPlayDirectInvocationFlowStrategy.makeNLContextWithNLInput(verb:appId:)(0, 0, 0);
  }

  else
  {
    v2 = App.appIdentifier.getter();
    v4 = v3;
    OUTLINED_FUNCTION_1_50();
    CarPlayDirectInvocationFlowStrategy.makeNLContextWithNLInput(verb:appId:)(0, v2, v4);
  }

  v5 = type metadata accessor for NLContextUpdate();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t type metadata completion function for OnDeviceCarPlayWithInputFlowStrategy(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for App();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Input();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDeviceCarPlayWithInputFlowStrategy(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Input();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_26;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v12 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_26:
  if (v7 == v12)
  {
    v22 = a1;
    v10 = v7;
    v15 = v5;
LABEL_33:

    return __swift_getEnumTagSinglePayload(v22, v10, v15);
  }

  v23 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v22 = ((v23 + v14 + 8) & ~v14);
    goto LABEL_33;
  }

  v24 = *v23;
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  return (v24 + 1);
}

void storeEnumTagSinglePayload for OnDeviceCarPlayWithInputFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for Input();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          v25 = ((v27 + v16 + 8) & ~v16);
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata completion function for DefaultCarPlayDirectActionFlowStrategy(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultCarPlayDirectActionFlowStrategy(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for DefaultCarPlayDirectActionFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t CarPlayRCHFlowProviding.toAnyRCHFlowProvider()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  __chkstk_darwin(a1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnyIntentCarPlayRCHFlowProvider(0, AssociatedTypeWitness, v10, v11);
  (*(v5 + 16))(v8, v2, a1);
  return AnyIntentCarPlayRCHFlowProvider.__allocating_init<A>(_:)(v8, a1, a2);
}

uint64_t AnyIntentCarPlayRCHFlowProvider.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(a1, a2, a3);
  return v6;
}

void *AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v3[2] = implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(a1, v7, a2, a3);
  v3[3] = v8;
  v9 = implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(a1, v7, a2, a3);
  v11 = v10;
  (*(*(a2 - 8) + 8))(a1, a2);
  v3[4] = v9;
  v3[5] = v11;
  return v3;
}

uint64_t (*implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
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
  return partial apply for implicit closure #2 in implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
}

uint64_t (*implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
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
  return partial apply for implicit closure #4 in implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
}

uint64_t CarPlayRCHFlowProvider.makeRCHFlow(input:)(uint64_t a1)
{
  v3 = type metadata accessor for CATOption();
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v8 = v30 - v7;
  v9 = v1 + 1;
  v10 = static PhoneCallRequestSupportPolicy.getSiriKitIntent(input:sharedGlobals:app:intentTypeName:)(a1, v1 + 1, *v1, 8);
  if (v10)
  {
    v11 = v10;
    static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
    if (v12)
    {
      v13 = v12;

      dispatch thunk of AnyFlow.on(input:)();

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.siriPhone);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_65_0();
        *v17 = 0;
        OUTLINED_FUNCTION_33(&dword_0, v18, v19, "#CarPlayRCHFlowProvider makeRCHFlow(input): RCHFlow found");
        OUTLINED_FUNCTION_26_0(v17);
      }

      return v13;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_65_0();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "#CarPlayRCHFlowProvider makeRCHFlow(input): no RCHFlow found", v23, 2u);
    OUTLINED_FUNCTION_26_0(v23);
  }

  Input.parse.getter();
  v24 = type metadata accessor for Parse();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v24);
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v25 = CATWrapperSimple.__allocating_init(options:globals:)();
  v26 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v9, v8, v25);

  v27 = outlined destroy of Parse?(v8);
  v28 = (*(*v26 + 112))(v27);

  v30[1] = v28;
  type metadata accessor for SimpleOutputFlowAsync();
  v13 = Flow.eraseToAnyFlow()();

  return v13;
}

uint64_t CarPlayRCHFlowProvider.makeRCHFlow(app:intent:)()
{
  v1 = v0;
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
  if (v8)
  {
    v9 = v8;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_65_0();
      *v13 = 0;
      OUTLINED_FUNCTION_33(&dword_0, v14, v15, "#CarPlayRCHFlowProvider makeRCHFlow(app, intent): RCHFlow found");
      OUTLINED_FUNCTION_26_0(v13);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_65_0();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#CarPlayRCHFlowProvider: makeRCHFlow(app, intent): no RCHFlow found", v19, 2u);
      OUTLINED_FUNCTION_26_0(v19);
    }

    v20 = type metadata accessor for Parse();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);
    type metadata accessor for StartCallCATsSimple(0);
    static CATOption.defaultMode.getter();
    v21 = CATWrapperSimple.__allocating_init(options:globals:)();
    v22 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)((v1 + 8), v7, v21);

    v23 = outlined destroy of Parse?(v7);
    v24 = (*(*v22 + 112))(v23);

    v26[1] = v24;
    type metadata accessor for SimpleOutputFlowAsync();
    v9 = Flow.eraseToAnyFlow()();
  }

  return v9;
}

uint64_t outlined destroy of Parse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata instantiation function for CarPlayRCHFlowProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *one-time initialization function for kCNContactKeysToFetch()
{
  result = closure #1 in variable initialization expression of kCNContactKeysToFetch();
  kCNContactKeysToFetch._rawValue = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of kCNContactKeysToFetch()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_42E120;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle:0];
  *(v0 + 40) = [v1 descriptorForRequiredKeysForStyle:1];
  *(v0 + 48) = CNContactIdentifierKey;
  v2 = CNContactPhonemeDataKey;
  *(v0 + 56) = CNContactPhonemeDataKey;
  v9 = v0;
  v3 = CNContactPronunciationGivenNameKey;
  v4 = CNContactIdentifierKey;
  v5 = v2;
  v6 = v3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v9 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = CNContactPronunciationFamilyNameKey;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v9 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v9;
}

Swift::OpaquePointer *kCNContactKeysToFetch.unsafeMutableAddressor()
{
  if (one-time initialization token for kCNContactKeysToFetch != -1)
  {
    OUTLINED_FUNCTION_0_39();
    swift_once();
  }

  return &kCNContactKeysToFetch;
}

INPerson_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CNContactStore.person(withIdentifier:)(Swift::String withIdentifier)
{
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  v4 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v8 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    static Signpost.begin(_:)();
    v10 = v9;
    v32 = v11;
    v33 = v12;
    v31 = v13;
    v14 = String._bridgeToObjectiveC()();
    if (one-time initialization token for kCNContactKeysToFetch != -1)
    {
      OUTLINED_FUNCTION_0_39();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v34 = 0;
    v16 = [v1 unifiedContactWithIdentifier:v14 keysToFetch:isa error:&v34];

    v17 = v34;
    if (v16)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v18 = v17;
      v19.super.isa = INPerson.init(phoneContact:)(v16).super.isa;
      Signpost.OpenSignpost.end()();
    }

    else
    {
      v20 = v34;
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v30 = v10;
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.siriPhone);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v34 = v26;
        *v25 = 136315138;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v34);
        _os_log_impl(&dword_0, v23, v24, "Couldn't fetch contact for identifier: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        OUTLINED_FUNCTION_26_0(v26);
        OUTLINED_FUNCTION_26_0(v25);
      }

      *v7 = v21;
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
      swift_allocError();
      v28 = v27;
      swift_errorRetain();
      v19.super.isa = v7;
      PhoneError.logged()(v28);
      outlined destroy of PhoneError(v7);
      swift_willThrow();

      Signpost.OpenSignpost.end()();
    }
  }

  else
  {
    v19.super.isa = 0;
  }

  v29 = v19.super.isa;
  result.value.super.isa = v29;
  result.is_nil = v5;
  return result;
}

void *CNContactStore.persons(withHandle:name:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v6 = v4;
  v56 = a3;
  v10 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v49[1] = v11;
    v50 = v13;
    v51 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_426260;
    v17 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_424FD0;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = [v17 predicateForContactsMatchingHandleStrings:isa];

    *(v16 + 32) = v20;
    v57 = v16;
    if (a4)
    {
      v21 = String._bridgeToObjectiveC()();
      v22 = [v17 predicateForContactsMatchingName:v21];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
      if (v20 >= *(&dword_18 + (v57 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v57;
    }

    static Signpost.begin(_:)();
    v54 = v24;
    v55 = v23;
    v53 = v25;
    v52 = v26;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSCompoundPredicate, NSCompoundPredicate_ptr);
    v27 = @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)(v16);
    if (one-time initialization token for kCNContactKeysToFetch != -1)
    {
      OUTLINED_FUNCTION_0_39();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    v28 = Array._bridgeToObjectiveC()().super.isa;
    v58[0] = 0;
    v29 = [v6 unifiedContactsMatchingPredicate:v27 keysToFetch:v28 error:v58];

    v30 = v58[0];
    if (v29)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContact, CNContact_ptr);
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v30;

      v33 = specialized Array.count.getter(v31);
      if (!v33)
      {

LABEL_24:
        Signpost.OpenSignpost.end()();

        return v15;
      }

      a1 = v33;
      v58[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((a1 & 0x8000000000000000) == 0)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        v34 = 0;
        do
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v35 = *(v31 + 8 * v34 + 32);
          }

          ++v34;
          INPerson.init(phoneContact:)(v35);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (a1 != v34);

        v15 = v58[0];
        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      v36 = v58[0];
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for siriPhone == -1)
      {
LABEL_20:
        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.siriPhone);

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v58[1] = a4;
          v59 = v41;
          *v40 = 136315394;
          v58[0] = v56;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v42 = String.init<A>(describing:)();
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v59);

          *(v40 + 4) = v44;
          *(v40 + 12) = 2080;
          *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v59);
          _os_log_impl(&dword_0, v38, v39, "Couldn't fetch contact for name: %s and handle: %s", v40, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0(v41);
          OUTLINED_FUNCTION_26_0(v40);
        }

        v15 = v55;
        v45 = v50;
        *v50 = v20;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
        swift_allocError();
        v47 = v46;
        swift_errorRetain();
        PhoneError.logged()(v47);
        outlined destroy of PhoneError(v45);
        swift_willThrow();

        Signpost.OpenSignpost.end()();

        return v15;
      }
    }

    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_20;
  }

  return v15;
}

id @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)(uint64_t a1)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSPredicate, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates:isa];

  return v2;
}

uint64_t Collection.unique<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a2 - 8);
  __chkstk_darwin(a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + class metadata base offset for KeyPath + 8);
  v15 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    v16 = Set.init(_nonEmptyArrayLiteral:)(v15, v14, a4);
  }

  else
  {

    v16 = _swiftEmptySetSingleton;
  }

  v21 = v16;
  v17 = (*(v10 + 16))(v12, v5, a2);
  __chkstk_darwin(v17);
  *(&v20 - 6) = a2;
  *(&v20 - 5) = a3;
  *(&v20 - 4) = a4;
  *(&v20 - 3) = &v21;
  *(&v20 - 2) = a1;
  v18 = Sequence.filter(_:)();

  return v18;
}

uint64_t Sequence.asyncCompactMapSerial<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = type metadata accessor for Optional();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = OUTLINED_FUNCTION_45();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_9_1();
  v6[16] = v9;
  v6[17] = OUTLINED_FUNCTION_45();
  type metadata accessor for Optional();
  v6[18] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_9_1();
  v6[19] = v10;
  v6[20] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_7_23();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(Sequence.asyncCompactMapSerial<A>(_:), 0, 0);
}

uint64_t Sequence.asyncCompactMapSerial<A>(_:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = static Array._allocateUninitialized(_:)();
  (*(v2 + 16))(v1, v3, v4);
  dispatch thunk of Sequence.makeIterator()();
  v5 = v0[18];
  v6 = v0[15];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = OUTLINED_FUNCTION_2_39();
    v8(v7);

    v9 = OUTLINED_FUNCTION_6_29();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_29();
    v12(v11);
    OUTLINED_FUNCTION_0_40();
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v9 = OUTLINED_FUNCTION_1_51(v13);
  }

  return v10(v9);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = Sequence.asyncCompactMapSerial<A>(_:);
  }

  else
  {
    v2 = Sequence.asyncCompactMapSerial<A>(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    (*(v5 + 8))(v0[17], v0[15]);
    (*(v8 + 8))(v1, v7);
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v11 + 32))(v9, v1, v2);
    (*(v11 + 16))(v10, v9, v2);
    type metadata accessor for Array();
    Array.append(_:)();
    (*(v11 + 8))(v9, v2);
    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[18];
  v13 = v0[15];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v14 = OUTLINED_FUNCTION_2_39();
    v15(v14);

    v16 = OUTLINED_FUNCTION_6_29();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_5_29();
    v19(v18);
    OUTLINED_FUNCTION_0_40();
    v20 = swift_task_alloc();
    v0[24] = v20;
    *v20 = v0;
    v16 = OUTLINED_FUNCTION_1_51(v20);
  }

  return v17(v16);
}

{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Collection.emptyToNil.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v5 = 1;
  }

  else
  {
    (*(*(a1 - 8) + 16))(a2, v2, a1);
    v5 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, a1);
}

uint64_t closure #1 in Collection.unique<A>(by:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  swift_getAtKeyPath();
  type metadata accessor for Set();
  v11 = Set.insert(_:)();
  (*(v7 + 8))(v10, v6);
  return v11 & 1;
}

uint64_t Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    v15 = Set.init(_nonEmptyArrayLiteral:)(v14, AssociatedTypeWitness, a3);
  }

  else
  {

    v15 = _swiftEmptySetSingleton;
  }

  v20 = v15;
  v16 = (*(v9 + 16))(v12, v4, a1);
  __chkstk_darwin(v16);
  *(&v19 - 4) = a1;
  *(&v19 - 3) = a2;
  *(&v19 - 2) = a3;
  *(&v19 - 1) = &v20;
  v17 = Sequence.filter(_:)();

  return v17;
}

uint64_t closure #1 in Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - v12;
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness, v11);
  type metadata accessor for Set();
  v14 = Set.insert(_:)();
  (*(v7 + 8))(v13, AssociatedTypeWitness);
  return v14 & 1;
}

void *Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v33 - v10;
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v14 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v14 = _swiftEmptySetSingleton;
  }

  v36 = Array._getCount()();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 7;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v17 = *(v6 + 16);
        result = (v17)(v13, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
      }

      else
      {
        v39 = v15;
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = v42[v22];
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v8, (v14[6] + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *(v6 + 8);
        v28(v8, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      v42[v22] = v24 | v23;
      result = (v37)(v14[6] + *(v6 + 72) * v21, v29, a2);
      v30 = v14[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      v14[2] = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

id one-time initialization function for missedRed()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIColor, SAUIColor_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  NSNumber.init(integerLiteral:)(1);
  result = SAUIColor.init(r:g:b:alpha:)();
  static ColorFactory.missedRed = result;
  return result;
}

uint64_t *ColorFactory.missedRed.unsafeMutableAddressor()
{
  if (one-time initialization token for missedRed != -1)
  {
    swift_once();
  }

  return &static ColorFactory.missedRed;
}

uint64_t *ColorFactory.watchDarkCardItemBackgroundColor.unsafeMutableAddressor()
{
  if (one-time initialization token for watchDarkCardItemBackgroundColor != -1)
  {
    swift_once();
  }

  return &static ColorFactory.watchDarkCardItemBackgroundColor;
}

id one-time initialization function for watchDarkCardItemBackgroundColor(Swift::Double a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIColor, SAUIColor_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  NSNumber.init(floatLiteral:)(a1);
  result = SAUIColor.init(r:g:b:alpha:)();
  *a3 = result;
  return result;
}

uint64_t *ColorFactory.watchDarkCardItemTitleBackgroundColor.unsafeMutableAddressor()
{
  if (one-time initialization token for watchDarkCardItemTitleBackgroundColor != -1)
  {
    swift_once();
  }

  return &static ColorFactory.watchDarkCardItemTitleBackgroundColor;
}

uint64_t Publisher.sink(receiveResultCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  swift_retain_n();
  v10 = Publisher.sink(receiveCompletion:receiveValue:)();

  return v10;
}

uint64_t closure #1 in Publisher.sink(receiveResultCompletion:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v22 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Result();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for Subscribers.Completion();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v21 - v18;
  (*(v12 + 16))(v14, a1, v11, v17);
  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v12 + 8))(v14, v11);
  }

  (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
  (*(v15 + 16))(v10, v19, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v22(v10);
  (*(v8 + 8))(v10, v7);
  return (*(v15 + 8))(v19, AssociatedTypeWitness);
}

uint64_t closure #2 in Publisher.sink(receiveResultCompletion:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v14 - v11;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v14 - v11, a1, AssociatedTypeWitness, v10);
  swift_storeEnumTagMultiPayload();
  a2(v12);
  return (*(v9 + 8))(v12, v8);
}

id CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(void *a1)
{
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = DeviceState.asInvocationContext.getter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  v4 = CommonDirectAction.identifier.getter();
  v6 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v4, v5);
  v7 = CommonDirectAction.userData.getter();
  v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v7);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
  v9 = [v2 runSiriKitExecutorCommandWithContext:v3 payload:v6];

  return v9;
}

void static CommonDirectAction.from(_:)(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v10 = Parse.DirectInvocation.identifier.getter();
  v11 = v9;
  v12 = v10 == 0xD000000000000029 && 0x8000000000458B10 == v9;
  if (v12 || (OUTLINED_FUNCTION_2_40(0xD000000000000029, 0x8000000000458B10) & 1) != 0)
  {
    goto LABEL_6;
  }

  v18 = v10 == 0xD000000000000028 && 0x8000000000458B40 == v11;
  if (v18 || (OUTLINED_FUNCTION_2_40(0xD000000000000028, 0x8000000000458B40) & 1) != 0)
  {
    goto LABEL_6;
  }

  v19 = v10 == 0xD000000000000033 && 0x8000000000459B70 == v11;
  if (v19 || (OUTLINED_FUNCTION_2_40(0xD000000000000033, 0x8000000000459B70) & 1) != 0)
  {

    v20 = Parse.DirectInvocation.userData.getter();
    static CommonDirectAction.parseContactPicker(userData:)(v20, a1);
LABEL_38:
    OUTLINED_FUNCTION_65();

    return;
  }

  v21 = v10 == 0xD000000000000043 && 0x8000000000459BB0 == v11;
  if (v21 || (OUTLINED_FUNCTION_2_40(0xD000000000000043, 0x8000000000459BB0) & 1) != 0 || (v10 == 0xD000000000000042 ? (v22 = 0x8000000000458DE0 == v11) : (v22 = 0), v22 || (OUTLINED_FUNCTION_2_40(0xD000000000000042, 0x8000000000458DE0) & 1) != 0 || (v10 == 0xD000000000000040 ? (v23 = 0x8000000000459C00 == v11) : (v23 = 0), v23 || (OUTLINED_FUNCTION_2_40(0xD000000000000040, 0x8000000000459C00) & 1) != 0)))
  {

    v24 = Parse.DirectInvocation.userData.getter();
    static CommonDirectAction.parseDisambiguationSelection(userData:)(v24, a1);
    goto LABEL_38;
  }

  v26 = v10 == 0xD000000000000039 && 0x8000000000459C50 == v11;
  if (v26 || (OUTLINED_FUNCTION_2_40(0xD000000000000039, 0x8000000000459C50) & 1) != 0)
  {

    v27 = Parse.DirectInvocation.userData.getter();
    static CommonDirectAction.parseUserDialogAct(userData:)(v27, a1);
    goto LABEL_38;
  }

  v28 = v10 == 0xD00000000000002CLL && 0x8000000000459C90 == v11;
  if (v28 || (OUTLINED_FUNCTION_2_40(0xD00000000000002CLL, 0x8000000000459C90) & 1) != 0 || (v10 == 0xD00000000000002ALL ? (v29 = 0x8000000000459CC0 == v11) : (v29 = 0), v29 || (OUTLINED_FUNCTION_2_40(0xD00000000000002ALL, 0x8000000000459CC0) & 1) != 0))
  {
LABEL_6:

    type metadata accessor for CommonDirectAction(0);
    OUTLINED_FUNCTION_1_52();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_65();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    return;
  }

  if (v10 == 0xD00000000000002ALL && 0x8000000000459CF0 == v11)
  {

    goto LABEL_69;
  }

  v31 = OUTLINED_FUNCTION_2_40(0xD00000000000002ALL, 0x8000000000459CF0);

  if (v31)
  {
LABEL_69:
    type metadata accessor for CommonDirectAction(0);
    OUTLINED_FUNCTION_1_52();
    goto LABEL_7;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.siriPhone);
  v33 = OUTLINED_FUNCTION_5_30();
  v34(v33);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v37 = 136315138;
    v39 = Parse.DirectInvocation.identifier.getter();
    v41 = v40;
    (*(v4 + 8))(v8, v2);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v44);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_0, v35, v36, "unsupported direct invocation identifier: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  v43 = type metadata accessor for CommonDirectAction(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v43);
  OUTLINED_FUNCTION_65();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a2, a3);

    *v3 = v7;
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v8);

    return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

id CommonDirectAction.toStartLocalRequest(deviceState:)(void *a1)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  v2 = CommonDirectAction.identifier.getter();
  v4 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v2, v3);
  v5 = CommonDirectAction.userData.getter();
  v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v6, v4);
  v7 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(a1);

  return v7;
}

uint64_t static CommonDirectAction.parseContactPicker(userData:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ContactResolutionResponseHandler.DirectInvocationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ContactResolutionResponseHandler();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  ContactResolutionResponseHandler.init(userData:)();
  ContactResolutionResponseHandler.directInvocationValue.getter();
  (*(v9 + 8))(v11, v8);
  if ((*(v5 + 88))(v7, v4) == enum case for ContactResolutionResponseHandler.DirectInvocationValue.contactId(_:))
  {
    (*(v5 + 96))(v7, v4);
    v12 = *v7;
    v13 = v7[1];

    *a2 = v12;
    a2[1] = v13;
    v14 = type metadata accessor for CommonDirectAction(0);
    swift_storeEnumTagMultiPayload();
    v15 = a2;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      if (a1)
      {
        v23 = Dictionary.description.getter();
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v29);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_0, v19, v20, "#CommonDirectAction invalid user data for contactPicker: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    v17 = type metadata accessor for CommonDirectAction(0);
    v15 = a2;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t static CommonDirectAction.parseUserDialogAct(userData:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_6;
  }

  specialized Dictionary.subscript.getter(0x6C61694472657375, 0xED0000746341676FLL, a1, &v24);
  if (!*(&v25 + 1))
  {
LABEL_6:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v24, &_sypSgMd, &_sypSgMR);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct();
    Message.init(serializedData:extensions:partial:options:)();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    v18 = *(v9 + 32);
    v18(v11, v7, v8);
    v18(a2, v11, v8);
    v19 = type metadata accessor for CommonDirectAction(0);
    swift_storeEnumTagMultiPayload();
    v20 = a2;
    v21 = 0;
    v22 = v19;
    return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  }

LABEL_7:
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C61694472657375, 0xED0000746341676FLL, &v24);
    _os_log_impl(&dword_0, v13, v14, "#CommonDirectAction invalid user data for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v22 = type metadata accessor for CommonDirectAction(0);
  v20 = a2;
  v21 = 1;
  return __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
}

uint64_t static CommonDirectAction.parseDisambiguationSelection(userData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    specialized Dictionary.subscript.getter(0x61446E6F73726570, 0xEA00000000006174, a1, &v32);
    if (v33)
    {
      if (swift_dynamicCast())
      {
        static CommonDirectAction.parseDisambiguationSelectionPerson(personData:)(v30, v31, a2);
        return outlined consume of Data._Representation(v30, v31);
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v32, &_sypSgMd, &_sypSgMR);
    }

    specialized Dictionary.subscript.getter(0x7865646E69, 0xE500000000000000, a1, &v32);
    if (v33)
    {
      if (swift_dynamicCast())
      {
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
          *v13 = 0;
          _os_log_impl(&dword_0, v11, v12, "#CommonDirectAction parsed index", v13, 2u);
        }

        *a2 = v30;
        v14 = type metadata accessor for CommonDirectAction(0);
LABEL_28:
        swift_storeEnumTagMultiPayload();
        v19 = a2;
        v20 = 0;
        v21 = v14;
        return __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v32, &_sypSgMd, &_sypSgMR);
    }

    specialized Dictionary.subscript.getter(0x6449707061, 0xE500000000000000, a1, &v32);
    if (v33)
    {
      if (swift_dynamicCast())
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.siriPhone);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_0, v16, v17, "#CommonDirectAction parsed appId", v18, 2u);
        }

        *a2 = v30;
        a2[1] = v31;
        v14 = type metadata accessor for CommonDirectAction(0);
        goto LABEL_28;
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v32, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v32 = v26;
      *v25 = 136315138;
      v27 = Dictionary.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "Invalid user data for disambiguationSelection: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    v21 = type metadata accessor for CommonDirectAction(0);
    v19 = a2;
    v20 = 1;
    return __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Nil user data for disambiguationSelection", v8, 2u);
  }

  v9 = type metadata accessor for CommonDirectAction(0);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
}

id CommonDirectAction.toDirectInvocationPayload()()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  v0 = CommonDirectAction.identifier.getter();
  v2 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v0, v1);
  v3 = CommonDirectAction.userData.getter();
  v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v4, v2);
  return v2;
}

unint64_t CommonDirectAction.identifier.getter()
{
  type metadata accessor for CommonDirectAction(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_28(v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0xD000000000000029;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      outlined destroy of CommonDirectAction(v0);
      result = 0xD000000000000043;
      break;
    case 2:
      result = 0xD000000000000042;
      break;
    case 3:
      outlined destroy of CommonDirectAction(v0);
      result = 0xD000000000000040;
      break;
    case 4:
      type metadata accessor for Siri_Nlu_External_UserDialogAct();
      OUTLINED_FUNCTION_23_1();
      (*(v5 + 8))(v0);
      result = 0xD000000000000039;
      break;
    case 5:
      outlined destroy of CommonDirectAction(v0);
      result = 0xD000000000000022;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000028;
      break;
    case 8:
      result = 0xD00000000000002CLL;
      break;
    case 9:
    case 10:
      result = 0xD00000000000002ALL;
      break;
    default:
      outlined destroy of CommonDirectAction(v0);
      result = 0xD000000000000033;
      break;
  }

  return result;
}

id SKIDirectInvocationPayload.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

id CommonDirectAction.userData.getter()
{
  v1 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  type metadata accessor for CommonDirectAction(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_28(v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v18 = *v0;
      v10 = Dictionary.init(dictionaryLiteral:)();
      result = INIntentSlotValueTransformToContact();
      if (result)
      {
        v20 = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
        if (v21 >> 60 == 15)
        {

          return v10;
        }

        v23 = v20;
        v24 = v21;
        OUTLINED_FUNCTION_13_20(v20, v21, &type metadata for Data);
        outlined copy of Data?(v23, v24);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_9_27();
        v25 = OUTLINED_FUNCTION_7_24();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v26, 0xEA00000000006174);

        outlined consume of Data?(v23, v24);
        return v31;
      }

      __break(1u);
      return result;
    case 2u:
      v12 = *v0;
      Dictionary.init(dictionaryLiteral:)();
      v34 = &type metadata for Int;
      *&v33 = v12;
      outlined init with take of Any(&v33, &v32);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_27();
      goto LABEL_6;
    case 3u:
      v13 = Dictionary.init(dictionaryLiteral:)();
      v34 = &type metadata for String;
      OUTLINED_FUNCTION_8_31();
      swift_isUniquelyReferenced_nonNull_native();
      v31 = v13;
LABEL_6:
      v14 = OUTLINED_FUNCTION_7_24();
      v16 = 0xE500000000000000;
      goto LABEL_13;
    case 4u:
      (*(v3 + 32))(v7, v0, v1);
      Dictionary.init(dictionaryLiteral:)();
      lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct();
      v11 = Message.serializedData(partial:)();
      OUTLINED_FUNCTION_13_20(v11, v27, &type metadata for Data);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_27();
      v28 = OUTLINED_FUNCTION_7_24();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v29, v30);
      v10 = v31;
      (*(v3 + 8))(v7, v1);
      return v10;
    case 5u:
      v22 = *(v0 + 8);
      v10 = Dictionary.init(dictionaryLiteral:)();
      if (!v22)
      {
        return v10;
      }

      v34 = &type metadata for String;
      OUTLINED_FUNCTION_8_31();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_27();
      v14 = OUTLINED_FUNCTION_7_24();
LABEL_13:
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v15, v16);
      return v31;
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      return Dictionary.init(dictionaryLiteral:)();
    default:
      v17 = Dictionary.init(dictionaryLiteral:)();
      v34 = &type metadata for String;
      OUTLINED_FUNCTION_8_31();
      swift_isUniquelyReferenced_nonNull_native();
      v31 = v17;
      v14 = OUTLINED_FUNCTION_7_24();
      v16 = 0xE900000000000064;
      goto LABEL_13;
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t CommonDirectAction.toDireactInvocation()()
{
  CommonDirectAction.identifier.getter();
  CommonDirectAction.userData.getter();

  return Parse.DirectInvocation.init(identifier:userData:)();
}

uint64_t static CommonDirectAction.parseDisambiguationSelectionPerson(personData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  objc_allocWithZone(_INPBContact);
  outlined copy of Data._Representation(a1, a2);
  v6 = @nonobjc _SFPBCard.init(data:)(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = INIntentSlotValueTransformFromContact();
    if (v8)
    {
      v9 = v8;
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
        *v13 = 0;
        _os_log_impl(&dword_0, v11, v12, "#CommonDirectAction parsed personData", v13, 2u);
      }

      *a3 = v9;
      v14 = type metadata accessor for CommonDirectAction(0);
      swift_storeEnumTagMultiPayload();
      v15 = a3;
      v16 = 0;
      v17 = v14;
      goto LABEL_14;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Couldn't deserialized INPerson from data.", v21, 2u);
  }

  v17 = type metadata accessor for CommonDirectAction(0);
  v15 = a3;
  v16 = 1;
LABEL_14:

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

void static CommonDirectAction.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7();
  v48 = v4;
  v49 = v3;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v47 = v6 - v5;
  type metadata accessor for CommonDirectAction(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v7);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  __chkstk_darwin(v13);
  v15 = (&v47 - v14);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  __chkstk_darwin(v19);
  v21 = (&v47 - v20);
  __chkstk_darwin(v22);
  v24 = (&v47 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionO_ACtMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionO_ACtMR);
  __chkstk_darwin(v25 - 8);
  v27 = &v47 - v26;
  v29 = (&v47 + *(v28 + 56) - v26);
  outlined init with copy of CommonDirectAction(a1, &v47 - v26);
  outlined init with copy of CommonDirectAction(v50, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of CommonDirectAction(v27, v21);
      v41 = *v21;
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = *v29;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
        static NSObject.== infix(_:_:)();

        goto LABEL_39;
      }

      goto LABEL_37;
    case 2u:
      outlined init with copy of CommonDirectAction(v27, v18);
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 3u:
      outlined init with copy of CommonDirectAction(v27, v15);
      v31 = *v15;
      v30 = v15[1];
      OUTLINED_FUNCTION_5_30();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    case 4u:
      outlined init with copy of CommonDirectAction(v27, v12);
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v35 = v47;
        v34 = v48;
        v36 = v29;
        v37 = v49;
        (*(v48 + 32))(v47, v36, v49);
        static Siri_Nlu_External_UserDialogAct.== infix(_:_:)();
        v38 = *(v34 + 8);
        v38(v35, v37);
        v38(v12, v37);
        goto LABEL_39;
      }

      (*(v48 + 8))(v12, v49);
      goto LABEL_37;
    case 5u:
      outlined init with copy of CommonDirectAction(v27, v9);
      v44 = *v9;
      v43 = v9[1];
      OUTLINED_FUNCTION_5_30();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_28;
      }

      v45 = v29[1];
      if (!v43)
      {
        if (!v45)
        {
          goto LABEL_39;
        }

        goto LABEL_42;
      }

      if (!v45)
      {
LABEL_42:

        goto LABEL_39;
      }

      v39 = *v29;
      if (v44 == *v29 && v43 == v45)
      {
LABEL_38:
      }

      else
      {
LABEL_15:
        OUTLINED_FUNCTION_11_25(EnumCaseMultiPayload, v33, v39);
      }

LABEL_39:
      outlined destroy of CommonDirectAction(v27);
LABEL_40:
      OUTLINED_FUNCTION_65();
      return;
    case 6u:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 7u:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 8u:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 9u:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    case 0xAu:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    default:
      outlined init with copy of CommonDirectAction(v27, v24);
      v31 = *v24;
      v30 = v24[1];
      OUTLINED_FUNCTION_5_30();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
LABEL_28:

LABEL_37:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionO_ACtMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionO_ACtMR);
        goto LABEL_40;
      }

LABEL_11:
      v39 = *v29;
      if (v31 == *v29 && v30 == v29[1])
      {
        goto LABEL_38;
      }

      goto LABEL_15;
  }
}

void outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setUserData:isa];
}

uint64_t type metadata accessor for CommonDirectAction(uint64_t a1)
{
  result = type metadata singleton initialization cache for CommonDirectAction;
  if (!type metadata singleton initialization cache for CommonDirectAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct)
  {
    type metadata accessor for Siri_Nlu_External_UserDialogAct();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct);
  }

  return result;
}

void type metadata completion function for CommonDirectAction(uint64_t a1)
{
  type metadata accessor for (contactId: String)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (person: INPerson)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (index: Int)();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (appId: String)();
        if (v4 <= 0x3F)
        {
          type metadata accessor for (contactName: String?)(319, &lazy cache variable for type metadata for (userDialogAct: Siri_Nlu_External_UserDialogAct), &type metadata accessor for Siri_Nlu_External_UserDialogAct);
          if (v5 <= 0x3F)
          {
            type metadata accessor for (contactName: String?)(319, &lazy cache variable for type metadata for (contactName: String?), type metadata accessor for String?);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void *type metadata accessor for (contactId: String)()
{
  result = lazy cache variable for type metadata for (contactId: String);
  if (!lazy cache variable for type metadata for (contactId: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (contactId: String));
  }

  return result;
}

void type metadata accessor for (person: INPerson)()
{
  if (!lazy cache variable for type metadata for (person: INPerson))
  {
    v0 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (person: INPerson));
    }
  }
}

void *type metadata accessor for (index: Int)()
{
  result = lazy cache variable for type metadata for (index: Int);
  if (!lazy cache variable for type metadata for (index: Int))
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &lazy cache variable for type metadata for (index: Int));
  }

  return result;
}

void *type metadata accessor for (appId: String)()
{
  result = lazy cache variable for type metadata for (appId: String);
  if (!lazy cache variable for type metadata for (appId: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (appId: String));
  }

  return result;
}

void type metadata accessor for (contactName: String?)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_0_41();
  type metadata accessor for SirikitDeviceState();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = OUTLINED_FUNCTION_1_53();
  v6(v5);
  v7 = SirikitDeviceState.__allocating_init(from:)();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v7;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding(a1, v10);
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  return OUTLINED_FUNCTION_5_31();
}

uint64_t static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v3 - 8);

  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(a1, v5);
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  return DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
}

uint64_t static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v6 - 8);
  v7 = OUTLINED_FUNCTION_0_41();
  v8 = type metadata accessor for PhoneError(v7);
  __chkstk_darwin(v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v11);
  v13 = &v20[-v12 - 8];
  outlined init with copy of Parse?(a2, v10);
  swift_storeEnumTagMultiPayload();
  PhoneError.logged()(v13);
  outlined destroy of PhoneError(v10);
  outlined destroy of PhoneError(v13);
  type metadata accessor for SirikitDeviceState();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = OUTLINED_FUNCTION_1_53();
  v15(v14);
  v16 = SirikitDeviceState.__allocating_init(from:)();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = v16;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding(a1, v20);
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  return OUTLINED_FUNCTION_5_31();
}

uint64_t closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(void *a1, uint64_t a2)
{
  v6 = (*(*a1 + class metadata base offset for StartCallCATsSimple + 480) + **(*a1 + class metadata base offset for StartCallCATsSimple + 480));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:);

  return v6(a2);
}

uint64_t closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t partial apply for closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_4(v4);

  return closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(v1, v2);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t closure #1 in static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(void *a1, uint64_t a2)
{
  v6 = (*(*a1 + class metadata base offset for StartCallCATsSimple + 624) + **(*a1 + class metadata base offset for StartCallCATsSimple + 624));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:);

  return v6(a2);
}

uint64_t closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:)(void *a1)
{
  v5 = (*(*a1 + class metadata base offset for PhoneCallCommonCATsSimple + 48) + **(*a1 + class metadata base offset for PhoneCallCommonCATsSimple + 48));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_12_4(v2);

  return v5();
}

uint64_t outlined init with copy of Parse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_4(v4);

  return closure #1 in static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v1, v2);
}

void *AppSelectionDependentKeys.messageSendKey.unsafeMutableAddressor()
{
  if (one-time initialization token for messageSendKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.messageSendKey;
}

void *AppSelectionDependentKeys.messageUsingSiriKey.unsafeMutableAddressor()
{
  if (one-time initialization token for messageUsingSiriKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.messageUsingSiriKey;
}

void *AppSelectionDependentKeys.messageReceivedKey.unsafeMutableAddressor()
{
  if (one-time initialization token for messageReceivedKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.messageReceivedKey;
}

void *AppSelectionDependentKeys.phoneCallKey.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.phoneCallKey;
}

void *AppSelectionDependentKeys.phoneCallSiriKey.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallSiriKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.phoneCallSiriKey;
}

uint64_t one-time initialization function for messageSendKey(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v7 = type metadata accessor for DomainUseCase();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *a2, v7, v9);
  v12 = DomainUseCase.rawValue.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v18 = v12;
  v19 = v14;

  v15._object = 0x8000000000459DF0;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);

  v17 = v19;
  *a3 = v18;
  *a4 = v17;
  return result;
}

void *AppSelectionDependentKeys.phoneCallReceivedKey.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallReceivedKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.phoneCallReceivedKey;
}

uint64_t static AppSelectionDependentKeys.messageSendKey.getter(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;

  return v5;
}

__int128 *CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey.unsafeMutableAddressor()
{
  if (one-time initialization token for userPersonaKey != -1)
  {
    OUTLINED_FUNCTION_0_43(&one-time initialization token for userPersonaKey);
  }

  return &static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey;
}

uint64_t one-time initialization function for userPersonaKey()
{
  v0 = type metadata accessor for DomainUseCase();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for DomainUseCase.phoneCall(_:), v0, v2);
  v5 = DomainUseCase.rawValue.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  *&v15 = v5;
  *(&v15 + 1) = v7;

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v9 = v15;
  v10 = static DomainUserPersonaSignal.signalName.getter();
  v12 = v11;
  v15 = v9;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey = v15;
  return result;
}

uint64_t static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey.getter()
{
  if (one-time initialization token for userPersonaKey != -1)
  {
    OUTLINED_FUNCTION_0_43(&one-time initialization token for userPersonaKey);
  }

  v0 = static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey;

  return v0;
}

uint64_t CommunalDeviceEmergencyFlow.identifiedUser.getter(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();

  static SiriEnvironmentValue.subscript.getter();
}

uint64_t CommunalDeviceEmergencyFlow.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_parse;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

void CommunalDeviceEmergencyFlow.state.didset()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
    swift_beginAccess();
    v7 = CommunalDeviceEmergencyFlow.State.description.getter(*(v1 + v6));
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_0, oslog, v3, "#CommunalDeviceEmergencyFlow state => %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
  }
}

uint64_t CommunalDeviceEmergencyFlow.state.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void CommunalDeviceEmergencyFlow.state.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
  swift_beginAccess();
  *(v1 + v3) = a1;
  CommunalDeviceEmergencyFlow.state.didset();
}

uint64_t CommunalDeviceEmergencyFlow.__allocating_init(parse:sharedGlobals:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  v7 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v13, a1, v7, v11);
  outlined init with copy of SignalProviding(a2, v18);
  type metadata accessor for UnsupportedFlowCATsSimple(0);
  static CATOption.defaultMode.getter();
  v14 = CATWrapperSimple.__allocating_init(options:globals:)();
  v15 = (*(v2 + 168))(3, v13, v18, v14);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v9 + 8))(a1, v7);
  return v15;
}

uint64_t CommunalDeviceEmergencyFlow.__allocating_init(state:parse:sharedGlobals:unsupportedFlowCATsSimple:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a1;
  v8 = swift_allocObject();
  CommunalDeviceEmergencyFlow.init(state:parse:sharedGlobals:unsupportedFlowCATsSimple:)(v7, a2, a3, a4);
  return v8;
}

uint64_t CommunalDeviceEmergencyFlow.init(state:parse:sharedGlobals:unsupportedFlowCATsSimple:)(char a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A16EnvironmentValueCy0A7KitFlow14IdentifiedUserVGMd, &_s13SiriUtilities0A16EnvironmentValueCy0A7KitFlow14IdentifiedUserVGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_90();
  *(v4 + 16) = SiriEnvironmentValue.init(_:)();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A16EnvironmentValueCy0a4FlowC014MultiUserStateOGMd, &_s13SiriUtilities0A16EnvironmentValueCy0a4FlowC014MultiUserStateOGMR);
  swift_allocObject();
  OUTLINED_FUNCTION_90();
  *(v4 + 24) = SiriEnvironmentValue.init(_:)();
  *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state) = a1;
  v10 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_parse;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  (*(v11 + 32))(v5 + v10, a2);
  outlined init with take of PhoneCallFeatureFlagProviding(a3, v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals);
  *(v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_unsupportedFlowCATsSimple) = a4;
  return v5;
}

BOOL CommunalDeviceEmergencyFlow.on(input:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v13);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_26_0(v5);
  }

  return (*(*v1 + 144))() == 3;
}

uint64_t CommunalDeviceEmergencyFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[29] = v2;
  v1[30] = v0;
  v3 = type metadata accessor for CompanionDeviceInfoRequirement();
  v1[31] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[32] = v4;
  v1[33] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  v1[34] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[35] = v6;
  v1[36] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for Parse();
  v1[37] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[38] = v8;
  v1[39] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for Input();
  v1[40] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[41] = v10;
  v1[42] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for IdentifiedUser();
  v1[43] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[44] = v12;
  v1[45] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for MultiUserState();
  v1[46] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[47] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

{
  v64 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v63 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, &v63);
    *(v6 + 12) = 2080;
    v8 = (*(*v5 + 144))();
    v9 = CommunalDeviceEmergencyFlow.State.description.getter(v8);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v63);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_0, v2, v3, "#CommunalDeviceEmergencyFlow %s, state = %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_35();
  }

  else
  {
  }

  v12 = (*(*v0[30] + 144))();
  if (v12 == 4)
  {
    v47 = swift_task_alloc();
    v0[48] = v47;
    *v47 = v0;
    v47[1] = CommunalDeviceEmergencyFlow.execute();

    return CommunalDeviceEmergencyFlow.makePostDialogCommands()();
  }

  else
  {
    if (v12 == 3)
    {

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[30];
        v16 = OUTLINED_FUNCTION_42();
        v61 = OUTLINED_FUNCTION_36();
        v63 = v61;
        *v16 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A16EnvironmentValueCy0a4FlowC014MultiUserStateOGMd, &_s13SiriUtilities0A16EnvironmentValueCy0a4FlowC014MultiUserStateOGMR);
        swift_getKeyPath();
        swift_getKeyPath();
        v0[28] = v15;

        static SiriEnvironmentValue.subscript.getter();

        v17 = String.init<A>(describing:)();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v63);

        *(v16 + 4) = v19;
        _os_log_impl(&dword_0, v13, v14, "#CommunalDeviceEmergencyFlow MUXState = %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        OUTLINED_FUNCTION_26_0(v61);
        OUTLINED_FUNCTION_26_0(v16);
      }

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = v0[44];
        v23 = v0[45];
        v59 = v0[43];
        v24 = v0[30];
        v25 = OUTLINED_FUNCTION_42();
        v62 = OUTLINED_FUNCTION_36();
        v63 = v62;
        *v25 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A16EnvironmentValueCy0A7KitFlow14IdentifiedUserVGMd, &_s13SiriUtilities0A16EnvironmentValueCy0A7KitFlow14IdentifiedUserVGMR);
        swift_getKeyPath();
        swift_getKeyPath();
        v0[27] = v24;

        static SiriEnvironmentValue.subscript.getter();

        lazy protocol witness table accessor for type IdentifiedUser and conformance IdentifiedUser(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, &type metadata accessor for IdentifiedUser);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        (*(v22 + 8))(v23, v59);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v63);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_0, v20, v21, "#CommunalDeviceEmergencyFlow User = %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        OUTLINED_FUNCTION_26_0(v62);
        OUTLINED_FUNCTION_35();
      }

      v30 = v0[39];
      v52 = v0[41];
      v53 = v0[40];
      v31 = v0[38];
      v33 = v0[35];
      v32 = v0[36];
      v50 = v0[42];
      v51 = v0[34];
      v56 = v0[33];
      v57 = v0[37];
      v54 = v0[32];
      v55 = v0[31];
      v60 = v0[30];
      v34 = (v60 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals);
      v35 = *(v60 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 24);
      v36 = *(v60 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 32);
      __swift_project_boxed_opaque_existential_1((v60 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals), v35);
      (*(v36 + 104))(v35, v36);
      v37 = v0[16];
      v38 = v0[17];
      __swift_project_boxed_opaque_existential_1(v0 + 13, v37);
      (*(v31 + 16))(v30, v60 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_parse, v57);
      Input.init(parse:)();
      (*(v33 + 104))(v32, enum case for ExecuteOnRemoteDeviceSpecification.userCompanion(_:), v51);
      v58 = (*(v38 + 96))(v50, v32, v34, v37, v38);
      (*(v33 + 8))(v32, v51);
      (*(v52 + 8))(v50, v53);
      v0[24] = v58;
      v39 = v34[3];
      v40 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v39);
      (*(v40 + 104))(v39, v40);
      v41 = v0[21];
      v42 = v0[22];
      __swift_project_boxed_opaque_existential_1(v0 + 18, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
      v43 = type metadata accessor for CommonFlowGuard();
      OUTLINED_FUNCTION_13_2(v43);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_424FD0;
      type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
      (*(v54 + 104))(v56, enum case for CompanionDeviceInfoRequirement.anyKnownCompanion(_:), v55);
      static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:)();
      (*(v54 + 8))(v56, v55);
      static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)();

      v45 = (*(v42 + 104))(v44, v41, v42);

      v0[25] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA015ExecuteOnRemoteC6ResultOGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA015ExecuteOnRemoteC6ResultOGMR);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
      v46 = Flow.guarded<A>(by:)();

      __swift_destroy_boxed_opaque_existential_1(v0 + 18);
      __swift_destroy_boxed_opaque_existential_1(v0 + 13);
      v0[26] = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    }

    else
    {
      static ExecuteResponse.complete()();
    }

    OUTLINED_FUNCTION_13_21();

    OUTLINED_FUNCTION_11();

    return v49();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  *(v1 + 392) = v0;

  v2 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v2, v3, v4);
}

{
  v1 = v0[49];
  v2 = v0[30];
  v3 = *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 24);
  v4 = *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals), v3);
  (*(v4 + 16))(v3, v4);
  v5 = v0[5];
  v6 = v0[7];
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[11] = v5;
  v0[12] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v10 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[23] = v10;
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_13_21();

  OUTLINED_FUNCTION_11();

  return v11();
}

uint64_t closure #1 in CommunalDeviceEmergencyFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for DialogPhase();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in CommunalDeviceEmergencyFlow.execute(), 0, 0);
}

uint64_t closure #1 in CommunalDeviceEmergencyFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  v3 = (**(*(v0 + 64) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_unsupportedFlowCATsSimple) + class metadata base offset for UnsupportedFlowCATsSimple + 48);
  v4 = (*v3 + **v3);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = closure #1 in CommunalDeviceEmergencyFlow.execute();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 120) = v3;

    return _swift_task_switch(closure #1 in CommunalDeviceEmergencyFlow.execute(), 0, 0);
  }
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
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t closure #1 in CommunalDeviceEmergencyFlow.execute()(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[9];
  v4 = v1[8];
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v3;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v5 = *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 24);
  v6 = *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals), v5);
  (*(v6 + 136))(v5, v6);
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v1[16] = v9;
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v2;
  v10 = *(v8 + 8);
  v11 = v2;
  v15 = swift_task_alloc();
  v1[17] = v15;
  *v15 = v1;
  v15[1] = closure #1 in CommunalDeviceEmergencyFlow.execute();
  v16 = v1[13];
  v17 = v1[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v9, v16, v7, v10, v12, v13, v14);
}

uint64_t closure #1 in closure #1 in CommunalDeviceEmergencyFlow.execute()(uint64_t a1, uint64_t a2)
{
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();

  return OutputGenerationManifest.additionalCommands.setter();
}

uint64_t CommunalDeviceEmergencyFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CommunalDeviceEmergencyFlow(0);
  lazy protocol witness table accessor for type IdentifiedUser and conformance IdentifiedUser(&lazy protocol witness table cache variable for type CommunalDeviceEmergencyFlow and conformance CommunalDeviceEmergencyFlow, type metadata accessor for CommunalDeviceEmergencyFlow);
  return Flow.deferToExecuteAsync(_:)();
}

void CommunalDeviceEmergencyFlow.onExecuteOnRemoteFlowComplete(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ExecuteOnRemoteFlowResult();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  v17 = OUTLINED_FUNCTION_21(v16);
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(a1, &v53 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMd, &_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMR);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v23))
    {
      v24 = OUTLINED_FUNCTION_65_0();
      *v24 = 0;
      OUTLINED_FUNCTION_14_9();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_26_0(v24);
    }

    v30 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
    OUTLINED_FUNCTION_8_32();
    *(v2 + v30) = 4;
LABEL_13:
    CommunalDeviceEmergencyFlow.state.didset();
    return;
  }

  if ((*(v6 + 88))(v19, v4) == enum case for ExecuteOnRemoteFlowResult.success(_:))
  {
    (*(v6 + 8))(v19, v4);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v33))
    {
      v34 = OUTLINED_FUNCTION_65_0();
      *v34 = 0;
      OUTLINED_FUNCTION_14_9();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_26_0(v34);
    }

    v40 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
    OUTLINED_FUNCTION_8_32();
    *(v2 + v40) = 1;
    goto LABEL_13;
  }

  (*(v6 + 32))(v15, v19, v4);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.siriPhone);
  v42 = *(v6 + 16);
  v42(v12, v15, v4);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_42();
    v55 = v44;
    v46 = v45;
    v54 = OUTLINED_FUNCTION_36();
    v56[0] = v54;
    *v46 = 136315138;
    v42(v9, v12, v4);
    v53 = String.init<A>(describing:)();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_14_23();
    v9(v49);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v48, v56);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_0, v43, v55, "#CommunalDeviceEmergencyFlow Exited ExecuteOnRemoteFlow with result other than success %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_26_0(v46);
  }

  else
  {

    v51 = OUTLINED_FUNCTION_14_23();
    v9(v51);
  }

  v52 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
  OUTLINED_FUNCTION_8_32();
  *(v2 + v52) = 4;
  CommunalDeviceEmergencyFlow.state.didset();
  (v9)(v15, v4);
}

uint64_t CommunalDeviceEmergencyFlow.State.description.getter(char a1)
{
  if (a1 == 3)
  {
    return 0x6C616974696E692ELL;
  }

  if (a1 == 4)
  {
    return 0x64656C6961662ELL;
  }

  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x74656C706D6F632ELL;
}

BOOL static CommunalDeviceEmergencyFlow.State.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 4)
  {
    return a2 == 4;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 - 3 < 2)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t CommunalDeviceEmergencyFlow.makePostDialogCommands()()
{
  OUTLINED_FUNCTION_15();
  v1 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v1);
  *(v0 + 24) = OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_15();
  v0[2] = _swiftEmptyArrayStorage;
  type metadata accessor for UnsupportedFlowCATs(0);
  static CATOption.defaultMode.getter();
  v1 = CATWrapper.__allocating_init(options:globals:)();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = CommunalDeviceEmergencyFlow.makePostDialogCommands();

  return static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)(v1);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  *(v2 + 48) = v1;
  *(v2 + 56) = v0;

  if (v0)
  {
    v3 = CommunalDeviceEmergencyFlow.makePostDialogCommands();
  }

  else
  {

    v3 = CommunalDeviceEmergencyFlow.makePostDialogCommands();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v0 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v1 = *(v0 + 16);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_15_3(&dword_0, v5, v6, "#CommunalDeviceEmergencyFlow Added MyriadEmergencyCall");
    OUTLINED_FUNCTION_35();
  }

  v7 = *(v0 + 8);

  return v7(v1);
}

{
  OUTLINED_FUNCTION_27();

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_51_0(v3))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_15_3(&dword_0, v4, v5, "#CommunalDeviceEmergencyFlow Failure adding MyriadEmergencyCall");
    OUTLINED_FUNCTION_35();
  }

  v6 = *(v0 + 8);

  return v6(_swiftEmptyArrayStorage);
}

uint64_t CommunalDeviceEmergencyFlow.deinit()
{

  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_parse;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals));

  return v0;
}

uint64_t CommunalDeviceEmergencyFlow.__deallocating_deinit()
{
  CommunalDeviceEmergencyFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance CommunalDeviceEmergencyFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Flow.execute() in conformance CommunalDeviceEmergencyFlow(uint64_t a1)
{
  v6 = (*(**v1 + 184) + **(**v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CommunalDeviceEmergencyFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommunalDeviceEmergencyFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t key path getter for CommunalDeviceEmergencyFlow.identifiedUser : CommunalDeviceEmergencyFlow(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_getKeyPath();
  swift_getKeyPath();

  static SiriEnvironmentValue.subscript.getter();
}

uint64_t partial apply for closure #1 in CommunalDeviceEmergencyFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in CommunalDeviceEmergencyFlow.execute()(v3, v5, v4);
}

uint64_t lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CommunalDeviceEmergencyFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for CommunalDeviceEmergencyFlow;
  if (!type metadata singleton initialization cache for CommunalDeviceEmergencyFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IdentifiedUser and conformance IdentifiedUser(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for CommunalDeviceEmergencyFlow(uint64_t a1)
{
  result = type metadata accessor for Parse();
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

unsigned __int8 *getEnumTagSinglePayload for CommunalDeviceEmergencyFlow.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
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
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommunalDeviceEmergencyFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for CommunalDeviceEmergencyFlow.State(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for CommunalDeviceEmergencyFlow.State(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for CommunalDeviceExecutionFlow.state : CommunalDeviceExecutionFlow(uint64_t a1)
{
  v2 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CommunalDeviceExecutionFlow.State(a1, v4, type metadata accessor for CommunalDeviceExecutionFlow.State);
  return CommunalDeviceExecutionFlow.state.setter(v4);
}

void CommunalDeviceExecutionFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);

  v16 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state;
    swift_beginAccess();
    outlined init with copy of CommunalDeviceExecutionFlow.State(v1 + v9, v4, type metadata accessor for CommunalDeviceExecutionFlow.State);
    v10 = CommunalDeviceExecutionFlow.State.description.getter();
    v12 = v11;
    outlined destroy of CommunalDeviceExecutionFlow.State(v4, type metadata accessor for CommunalDeviceExecutionFlow.State);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v16, v6, "#CommunalDeviceExecutionFlow state => %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t CommunalDeviceExecutionFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_4_21();
  return outlined init with copy of CommunalDeviceExecutionFlow.State(v1 + v3, a1, v4);
}

uint64_t CommunalDeviceExecutionFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state;
  swift_beginAccess();
  outlined assign with copy of CommunalDeviceExecutionFlow.State(a1, v1 + v3);
  swift_endAccess();
  CommunalDeviceExecutionFlow.state.didset();
  OUTLINED_FUNCTION_2_42();
  return outlined destroy of CommunalDeviceExecutionFlow.State(a1, v4);
}

uint64_t CommunalDeviceExecutionFlow.__allocating_init(parse:sharedGlobals:)(uint64_t a1, void *a2)
{
  type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v13);
  v10 = (*(v2 + 120))(v7, v13);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t CommunalDeviceExecutionFlow.__allocating_init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of CommunalDeviceExecutionFlow.State(a1, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state);
  outlined init with take of SPHConversation(a2, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals);
  return v4;
}

uint64_t CommunalDeviceExecutionFlow.init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  outlined init with take of CommunalDeviceExecutionFlow.State(a1, v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state);
  outlined init with take of SPHConversation(a2, v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals);
  return v2;
}

uint64_t outlined init with take of CommunalDeviceExecutionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CommunalDeviceExecutionFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CommunalDeviceExecutionFlow(0);
  lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(&lazy protocol witness table cache variable for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow, type metadata accessor for CommunalDeviceExecutionFlow, &protocol conformance descriptor for CommunalDeviceExecutionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t CommunalDeviceExecutionFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[54] = v2;
  v1[55] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[56] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v4);
  v1[57] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for PhoneError(0);
  v1[58] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v6 = type metadata accessor for IdentifiedUser();
  v1[63] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[64] = v7;
  v1[65] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for ExecuteResponse();
  v1[66] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[67] = v9;
  v1[68] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  v1[69] = v10;
  OUTLINED_FUNCTION_21(v10);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v11 = type metadata accessor for Parse();
  v1[72] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[73] = v12;
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();

  return _swift_task_switch(CommunalDeviceExecutionFlow.execute(), 0, 0);
}

{
  v1 = *(**(v0 + 440) + 96);
  v1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 560);
    v3 = *(v0 + 496);
    v106 = *(v0 + 480);
    v4 = *(v0 + 440);
    outlined destroy of CommunalDeviceExecutionFlow.State(*(v0 + 568), type metadata accessor for CommunalDeviceExecutionFlow.State);
    *(v0 + 376) = v4;
    type metadata accessor for CommunalDeviceExecutionFlow(0);

    v5 = String.init<A>(describing:)();
    v7 = v6;
    v1();
    v8 = CommunalDeviceExecutionFlow.State.description.getter();
    v10 = v9;
    outlined destroy of CommunalDeviceExecutionFlow.State(v2, type metadata accessor for CommunalDeviceExecutionFlow.State);
    *v3 = v5;
    v3[1] = v7;
    v3[2] = v8;
    v3[3] = v10;
    swift_storeEnumTagMultiPayload();
    PhoneError.logged()(v106);
    OUTLINED_FUNCTION_1_55();
    outlined destroy of CommunalDeviceExecutionFlow.State(v3, v11);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v12 = *(v0 + 472);
    v13 = *(v0 + 480);
    v14 = type metadata accessor for Logger();
    v15 = __swift_project_value_buffer(v14, static Logger.siriPhone);
    outlined init with copy of CommunalDeviceExecutionFlow.State(v13, v12, type metadata accessor for PhoneError);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    v18 = OUTLINED_FUNCTION_51_0(v17);
    v19 = *(v0 + 472);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
      swift_allocError();
      outlined init with copy of CommunalDeviceExecutionFlow.State(v19, v22, type metadata accessor for PhoneError);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of CommunalDeviceExecutionFlow.State(v19, type metadata accessor for PhoneError);
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_0, v16, v15, "#CommunalDeviceExecutionFlow %@", v20, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0(v21);
      OUTLINED_FUNCTION_26_0(v20);
    }

    else
    {

      OUTLINED_FUNCTION_1_55();
      outlined destroy of CommunalDeviceExecutionFlow.State(v19, v39);
    }

    v40 = *(v0 + 480);
    v41 = *(v0 + 440);
    v42 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals;
    type metadata accessor for StartCallCATsSimple(0);
    static CATOption.defaultMode.getter();
    v43 = CATWrapperSimple.__allocating_init(options:globals:)();
    v44 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v41 + v42), v43);

    v46 = (*(*v44 + 112))(v45);

    *(v0 + 384) = v46;
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();

    OUTLINED_FUNCTION_1_55();
    outlined destroy of CommunalDeviceExecutionFlow.State(v40, v47);
    goto LABEL_32;
  }

  v24 = *(v0 + 440);
  (*(*(v0 + 584) + 32))(*(v0 + 600), *(v0 + 568), *(v0 + 576));
  v25 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals;
  *(v0 + 608) = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals;
  v26 = v24 + v25;
  __swift_project_boxed_opaque_existential_1((v24 + v25), *(v24 + v25 + 24));
  v27 = OUTLINED_FUNCTION_92();
  v29 = v28(v27);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 600);
  *(v0 + 120) = &type metadata for CallStateProvider;
  *(v0 + 128) = &protocol witness table for CallStateProvider;
  v31 = swift_allocObject();
  *(v0 + 96) = v31;
  outlined init with copy of CallStateProvider(&static CallStateProvider.instance, v31 + 16);
  (*(*v29 + 184))(v30, v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if (!*(v0 + 80))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 56, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v48 = type metadata accessor for Logger();
    v49 = OUTLINED_FUNCTION_12_1(v48, static Logger.siriPhone);
    v50 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_51_0(v50))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v51, v52, v53, v54, v55, 2u);
      OUTLINED_FUNCTION_35();
    }

    v56 = *(v0 + 576);
    v57 = *(v0 + 448);

    __swift_storeEnumTagSinglePayload(v57, 1, 1, v56);
    v58 = type metadata accessor for StartCallCATsSimple(0);
    static CATOption.defaultMode.getter();
    CATWrapperSimple.__allocating_init(options:globals:)();
    v59 = OUTLINED_FUNCTION_40_0();
    v60 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v59, v57, v58);

    v61 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    (*(*v60 + 112))(v61);
    OUTLINED_FUNCTION_40_0();

    *(v0 + 392) = v60;
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();

    v62 = OUTLINED_FUNCTION_92();
    v63(v62);
LABEL_32:
    OUTLINED_FUNCTION_5_33();

    OUTLINED_FUNCTION_15_11();

    __asm { BRAA            X1, X16 }
  }

  outlined init with take of SPHConversation((v0 + 56), v0 + 16);
  outlined init with copy of SignalProviding(v0 + 16, v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (!swift_dynamicCast())
  {
    *(v0 + 248) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 216, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined init with copy of SignalProviding(v0 + 16, v0 + 256);
    type metadata accessor for PhoneCallControlNLIntent();
    if (swift_dynamicCast())
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v64 = type metadata accessor for Logger();
      v65 = OUTLINED_FUNCTION_12_1(v64, static Logger.siriPhone);
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_65_0();
        *v67 = 0;
        _os_log_impl(&dword_0, v65, v66, "#CommunalDeviceExecutionFlow executing call control request locally", v67, 2u);
        OUTLINED_FUNCTION_35();
      }

      v68 = *(v0 + 560);

      *v68 = 0;
      swift_storeEnumTagMultiPayload();
      CommunalDeviceExecutionFlow.state.setter(v68);
      static PhoneCallFlowFactory.makeMainFlow(parse:sharedGlobals:)();
      static ExecuteResponse.complete(next:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v69 = OUTLINED_FUNCTION_92();
      v70(v69);
    }

    else
    {
      v71 = *(v0 + 488);
      v72 = *(v0 + 496);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      DynamicType = swift_getDynamicType();
      v74 = *(v0 + 48);
      *v71 = DynamicType;
      v71[1] = v74;
      swift_storeEnumTagMultiPayload();
      PhoneError.logged()(v72);
      outlined destroy of CommunalDeviceExecutionFlow.State(v71, type metadata accessor for PhoneError);
      v75 = OUTLINED_FUNCTION_92();
      outlined destroy of CommunalDeviceExecutionFlow.State(v75, v76);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v77 = type metadata accessor for Logger();
      v78 = OUTLINED_FUNCTION_12_1(v77, static Logger.siriPhone);
      v79 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_51_0(v79))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v80, v81, v82, v83, v84, 2u);
        OUTLINED_FUNCTION_35();
      }

      v85 = type metadata accessor for StartCallCATsSimple(0);
      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      v86 = OUTLINED_FUNCTION_40_0();
      v87 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(v86, v85);

      (*(*v87 + 112))(v88);
      OUTLINED_FUNCTION_40_0();

      *(v0 + 408) = v87;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v89 = OUTLINED_FUNCTION_92();
      v90(v89);
    }

    goto LABEL_31;
  }

  outlined init with take of SPHConversation((v0 + 216), v0 + 136);
  OUTLINED_FUNCTION_16_23();
  if (PhoneCallNLIntent.isEmergencyNumberCall()() || (OUTLINED_FUNCTION_16_23(), PhoneCallNLIntent.isEmergencyServicesCall()()))
  {
    v32 = *(v0 + 600);
    v33 = *(v0 + 592);
    v34 = *(v0 + 584);
    v35 = *(v0 + 576);
    v36 = *(v0 + 560);
    *v36 = 2;
    swift_storeEnumTagMultiPayload();
    CommunalDeviceExecutionFlow.state.setter(v36);
    type metadata accessor for CommunalDeviceEmergencyFlow(0);
    (*(v34 + 16))(v33, v32, v35);
    outlined init with copy of SignalProviding(v26, v0 + 336);
    *(v0 + 424) = CommunalDeviceEmergencyFlow.__allocating_init(parse:sharedGlobals:)(v33, (v0 + 336));
    lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(&lazy protocol witness table cache variable for type CommunalDeviceEmergencyFlow and conformance CommunalDeviceEmergencyFlow, type metadata accessor for CommunalDeviceEmergencyFlow, &protocol conformance descriptor for CommunalDeviceEmergencyFlow);
    static ExecuteResponse.complete<A>(next:)();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v37 = OUTLINED_FUNCTION_92();
    v38(v37);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
LABEL_31:
    v91 = OUTLINED_FUNCTION_14_24();
    v92(v91);
    goto LABEL_32;
  }

  v95 = *(v0 + 520);
  v96 = *(v0 + 504);
  v97 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.userIdentity.getter();

  dispatch thunk of UserIdentityProvider.identifiedUser.getter();

  IdentifiedUser.personaId.getter();
  *(v0 + 616) = v98;
  (*(v97 + 8))(v95, v96);
  v99 = swift_task_alloc();
  *(v0 + 624) = v99;
  *v99 = v0;
  v99[1] = CommunalDeviceExecutionFlow.execute();
  OUTLINED_FUNCTION_15_11();

  return PhoneCallNLIntent.shouldBeExecutedLocally(sharedGlobals:personaId:)(v100, v101, v102, v103, v104);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  *(v4 + 632) = v3;

  return _swift_task_switch(CommunalDeviceExecutionFlow.execute(), 0, 0);
}

void CommunalDeviceExecutionFlow.execute()()
{
  if (*(v0 + 632) == 1)
  {
    v1 = *(v0 + 600);
    v2 = *(v0 + 584);
    v3 = *(v0 + 576);
    v4 = *(v0 + 560);
    *v4 = 0;
    swift_storeEnumTagMultiPayload();
    CommunalDeviceExecutionFlow.state.setter(v4);
    static PhoneCallFlowFactory.makeMainFlow(parse:sharedGlobals:)();
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    v5 = *(v0 + 608);
    v1 = *(v0 + 600);
    v6 = *(v0 + 592);
    v2 = *(v0 + 584);
    v3 = *(v0 + 576);
    v7 = *(v0 + 560);
    v8 = *(v0 + 440);
    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    CommunalDeviceExecutionFlow.state.setter(v7);
    type metadata accessor for RedirectToCompanionFlow(0);
    (*(v2 + 16))(v6, v1, v3);
    outlined init with copy of SignalProviding(v8 + v5, v0 + 296);
    *(v0 + 416) = RedirectToCompanionFlow.__allocating_init(parse:sharedGlobals:)(v6, (v0 + 296));
    lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(&lazy protocol witness table cache variable for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow, type metadata accessor for RedirectToCompanionFlow, &protocol conformance descriptor for RedirectToCompanionFlow);
    static ExecuteResponse.complete<A>(next:)();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  v9 = OUTLINED_FUNCTION_14_24();
  v10(v9);
  OUTLINED_FUNCTION_5_33();

  OUTLINED_FUNCTION_15_11();

  __asm { BRAA            X1, X16 }
}

uint64_t PhoneCallNLIntent.shouldBeExecutedLocally(sharedGlobals:personaId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a1;
  v6[13] = a4;
  return _swift_task_switch(PhoneCallNLIntent.shouldBeExecutedLocally(sharedGlobals:personaId:), 0, 0);
}

uint64_t PhoneCallNLIntent.shouldBeExecutedLocally(sharedGlobals:personaId:)()
{
  v31 = v0;
  if (!PhoneCallNLIntent.canBeExecutedLocally()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_12_1(v22, static Logger.siriPhone);
    v24 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_23;
    }

    v25 = OUTLINED_FUNCTION_65_0();
    *v25 = 0;
    v26 = "#CommunalDeviceExecutionFlow request is neither Answer or HangUp. Not executing locally";
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  v1 = OUTLINED_FUNCTION_25_0();
  v2(v1);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = OUTLINED_FUNCTION_25_0();
  v4(v3);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v5 = OUTLINED_FUNCTION_25_0();
  v7 = v6(v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (!PhoneCallNLIntent.isHangUpCall()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v27 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_12_1(v27, static Logger.siriPhone);
    v24 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_23;
    }

    v25 = OUTLINED_FUNCTION_65_0();
    *v25 = 0;
    v26 = "#CommunalDeviceExecutionFlow request should not be executed locally --> REMOTE";
LABEL_22:
    _os_log_impl(&dword_0, v23, v24, v26, v25, 2u);
    OUTLINED_FUNCTION_26_0(v25);
LABEL_23:

    v8 = 0;
    goto LABEL_24;
  }

  v8 = v7 & 1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v9 = type metadata accessor for Logger();
  v10 = OUTLINED_FUNCTION_12_1(v9, static Logger.siriPhone);
  v11 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 67109378;
    *(v12 + 4) = v8;
    *(v12 + 8) = 2080;
    if (v8)
    {
      v14 = 0x4C41434F4CLL;
    }

    else
    {
      v14 = 0x45544F4D4552;
    }

    if (v8)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE600000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v30);

    *(v12 + 10) = v16;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v17, v18, v19, v20, v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0(v13);
    OUTLINED_FUNCTION_35();
  }

LABEL_24:
  v28 = *(v0 + 8);

  return v28(v8);
}

unint64_t CommunalDeviceExecutionFlow.State.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v20[-v7];
  type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_4_21();
  outlined init with copy of CommunalDeviceExecutionFlow.State(v1, v11, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v11;
    OUTLINED_FUNCTION_21_11();

    v21 = 0xD000000000000014;
    v22 = 0x800000000045A900;
    v20[15] = v13;
    v14._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    return v21;
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    OUTLINED_FUNCTION_21_11();

    v21 = 0xD000000000000014;
    v22 = 0x800000000045A920;
    (*(v3 + 16))(v5, v8, v2);
    v17._countAndFlagsBits = String.init(describing:)(v5);
    String.append(_:)(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v16 = v21;
    (*(v3 + 8))(v8, v2);
  }

  return v16;
}

uint64_t outlined destroy of CommunalDeviceExecutionFlow.State(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t CommunalDeviceExecutionFlow.deinit()
{
  OUTLINED_FUNCTION_2_42();
  outlined destroy of CommunalDeviceExecutionFlow.State(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals));
  return v0;
}

uint64_t CommunalDeviceExecutionFlow.__deallocating_deinit()
{
  OUTLINED_FUNCTION_2_42();
  outlined destroy of CommunalDeviceExecutionFlow.State(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals));

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance CommunalDeviceExecutionFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow(uint64_t a1)
{
  v6 = (*(**v1 + 144) + **(**v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow()
{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CommunalDeviceExecutionFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommunalDeviceExecutionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

BOOL PhoneCallNLIntent.canBeExecutedLocally()()
{
  if (PhoneCallNLIntent.isAnswerCall()())
  {
    return 1;
  }

  return PhoneCallNLIntent.isHangUpCall()();
}

uint64_t outlined init with copy of CommunalDeviceExecutionFlow.State(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_23_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation and conformance CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation()
{
  result = lazy protocol witness table cache variable for type CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation and conformance CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation;
  if (!lazy protocol witness table cache variable for type CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation and conformance CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation and conformance CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation);
  }

  return result;
}

uint64_t type metadata completion function for CommunalDeviceExecutionFlow(uint64_t a1)
{
  result = type metadata accessor for CommunalDeviceExecutionFlow.State(319);
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

void type metadata completion function for CommunalDeviceExecutionFlow.State(uint64_t a1)
{
  type metadata accessor for (parse: Parse)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation)();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (parse: Parse)()
{
  if (!lazy cache variable for type metadata for (parse: Parse))
  {
    v0 = type metadata accessor for Parse();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (parse: Parse));
    }
  }
}

ValueMetadata *type metadata accessor for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation)()
{
  result = lazy cache variable for type metadata for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation);
  if (!lazy cache variable for type metadata for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation))
  {
    result = &type metadata for CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation;
    atomic_store(&type metadata for CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation, &lazy cache variable for type metadata for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation));
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined assign with copy of CommunalDeviceExecutionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationViewBuilder.__allocating_init(viewTemplate:sharedGlobals:)(const void *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0xA0uLL);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v4 + 176);
  return v4;
}

uint64_t ConfirmationViewBuilder.init(viewTemplate:sharedGlobals:)(void *__src, __int128 *a2)
{
  memcpy((v2 + 16), __src, 0xA0uLL);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + 176);
  return v2;
}

uint64_t ConfirmationViewBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  v28 = [objc_allocWithZone(SASTItemGroup) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ConfirmationViewTemplateV6ButtonVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ConfirmationViewTemplateV6ButtonVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FF0;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[8];
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  v12 = v3[10];
  v13 = v3[11];
  v14 = v3[12];
  v16 = v3[13];
  v15 = v3[14];
  v17 = v3[15];
  *(inited + 88) = v3[9];
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 112) = v14;
  *(inited + 120) = v16;
  *(inited + 128) = v15;
  *(inited + 136) = v17;
  v30[0] = _swiftEmptyArrayStorage;

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SASTButtonItem, SASTButtonItem_ptr);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = OUTLINED_FUNCTION_48_0(v18);
  *(v19 + 16) = xmmword_426260;
  *(v19 + 32) = v11;

  swift_unknownObjectRetain();
  SASTButtonItem.init(label:commands:centered:)(v5, v6, v19, 1);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v21 = *(inited + 88);
  v20 = *(inited + 96);
  v22 = *(inited + 136);
  swift_setDeallocating();

  swift_unknownObjectRetain();

  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v23 = OUTLINED_FUNCTION_48_0(v18);
  *(v23 + 16) = xmmword_426260;
  *(v23 + 32) = v22;

  swift_unknownObjectRetain();
  SASTButtonItem.init(label:commands:centered:)(v21, v20, v23, 1);
  swift_unknownObjectRelease();

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v30[0], v28);
  type metadata accessor for SiriKitAceViewBuilder();
  v24 = v3[25];
  v25 = v3[26];
  __swift_project_boxed_opaque_existential_1(v3 + 22, v24);
  (*(v25 + 8))(v30, v24, v25);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v30);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addButtonGroup(buttonGroup:)();

  v26 = dispatch thunk of SiriKitAceViewBuilder.build()();

  a2(v26, 0);
}

uint64_t ConfirmationViewBuilder.makeViewsForCar(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  v6 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationView, SAUIConfirmationView_ptr);
  v13 = OUTLINED_FUNCTION_2_43(v6, v7, v8, v9, v10, v11, v12);
  v20 = OUTLINED_FUNCTION_1_56(v13, v14, v15, v16, v17, v18, v19);
  v21 = SAUIConfirmationView.init(confirmOption:denyOption:)(v3, v20);
  if (v4[21])
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  [v21 setStyle:v22];

  if (v4[17])
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v21 setTitle:v23];

  if (v4[19])
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v21 setSubtitle:v24];

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = OUTLINED_FUNCTION_48_0(v25);
  *(v26 + 16) = xmmword_426260;
  *(v26 + 32) = v21;
  v27 = v21;
  v28 = OUTLINED_FUNCTION_3_33();
  a2(v28);
}

uint64_t ConfirmationViewBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationView, SAUIConfirmationView_ptr);
  v12 = OUTLINED_FUNCTION_2_43(v5, v6, v7, v8, v9, v10, v11);
  v19 = OUTLINED_FUNCTION_1_56(v12, v13, v14, v15, v16, v17, v18);
  v20 = SAUIConfirmationView.init(confirmOption:denyOption:)(v3, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = OUTLINED_FUNCTION_48_0(v21);
  *(v22 + 16) = xmmword_426260;
  *(v22 + 32) = v20;
  v23 = v20;
  v24 = OUTLINED_FUNCTION_3_33();
  a2(v24);
}

uint64_t ConfirmationViewBuilder.deinit()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  outlined destroy of ConfirmationViewTemplate(v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  return v0;
}

uint64_t ConfirmationViewBuilder.__deallocating_deinit()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  outlined destroy of ConfirmationViewTemplate(v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  return swift_deallocClassInstance();
}

id ConfirmationViewTemplate.Button.asSASTButtonItem.getter()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SASTButtonItem, SASTButtonItem_ptr);
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_426260;
  *(v3 + 32) = v0[6];

  swift_unknownObjectRetain();
  return SASTButtonItem.init(label:commands:centered:)(v1, v2, v3, 1);
}

id ConfirmationViewTemplate.Button.asConfirmationOption.getter()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v0[6];

  swift_unknownObjectRetain();

  return SAUIConfirmationOption.init(label:type:iconType:commands:)(v1, v2, v3, v4, v5, v6, v7);
}

double static ConfirmationViewTemplate.makeDefaultConfirmationViewTemplate(labels:sharedGlobals:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a5[3];
  v12 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v11);
  v13 = *(v12 + 8);
  v13(v26, v11, v12);
  static ConfirmationViewTemplate.Button.makeDefaultYesButton(label:deviceState:)(a1, a2, v26, v24);
  v21 = v24[1];
  v22 = v24[0];
  v20 = v24[2];
  v14 = v25;
  __swift_destroy_boxed_opaque_existential_1(v26);
  v13(v23, v11, v12);
  static ConfirmationViewTemplate.Button.makeDefaultNoButton(label:deviceState:)(a3, a4, v23, v26);
  v18 = v26[1];
  v19 = v26[0];
  v17 = v26[2];
  v15 = v27;
  __swift_destroy_boxed_opaque_existential_1(v23);
  *a6 = v22;
  *(a6 + 16) = v21;
  *(a6 + 32) = v20;
  *(a6 + 48) = v14;
  *(a6 + 56) = v19;
  *(a6 + 72) = v18;
  *(a6 + 88) = v17;
  *(a6 + 104) = v15;
  result = 0.0;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  return result;
}

uint64_t static ConfirmationViewTemplate.Button.makeDefaultYesButton(label:deviceState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a6@<X8>)
{
  return static ConfirmationViewTemplate.Button.makeDefaultYesButton(label:deviceState:)(a1, a2, a3, a6);
}

{
  v10 = type metadata accessor for CommonDirectAction(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);

  v16 = CommonDirectAction.identifier.getter();
  v18 = SKIDirectInvocationPayload.__allocating_init(identifier:)(v16, v17);
  v19 = CommonDirectAction.userData.getter();
  v20 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v20, v18);
  v21 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(a3);

  result = outlined destroy of CommonDirectAction(v12);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = v13;
  a6[3] = v15;
  a6[4] = 0;
  a6[5] = 0;
  a6[6] = v21;
  return result;
}

__n128 ConfirmationViewTemplate.init(yes:no:title:subtitle:style:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = *(a2 + 6);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 48);
  *a9 = *a1;
  *(a9 + 16) = v13;
  *(a9 + 24) = v14;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v15;
  *(a9 + 56) = v9;
  *(a9 + 72) = v10;
  *(a9 + 80) = v11;
  result = a2[2];
  *(a9 + 88) = result;
  *(a9 + 104) = v12;
  *(a9 + 112) = a3;
  *(a9 + 120) = a4;
  *(a9 + 128) = a5;
  *(a9 + 136) = a6;
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  return result;
}

uint64_t ConfirmationViewTemplate.Button.confirmationOptionTypes.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double ConfirmationViewTemplate.Button.init(label:confirmationOptionTypes:command:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  swift_getObjectType();
  specialized ConfirmationViewTemplate.Button.init(label:confirmationOptionTypes:command:)(a1, a2, a3, a4, a5, a6, a7, v18);
  v16 = v18[1];
  *a8 = v18[0];
  *(a8 + 16) = v16;
  result = *&v19;
  *(a8 + 32) = v19;
  *(a8 + 48) = v20;
  return result;
}

uint64_t specialized ConfirmationViewTemplate.Button.init(label:confirmationOptionTypes:command:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationViewTemplate(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ConfirmationViewTemplate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationViewTemplate.Button(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ConfirmationViewTemplate.Button(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
  return _swift_task_switch(static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:), 0, 0);
}

uint64_t static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:)()
{
  OUTLINED_FUNCTION_27();
  __swift_project_boxed_opaque_existential_1(*(v0 + 376), *(*(v0 + 376) + 24));
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  *v1 = v0;
  v1[1] = static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:);

  return LabelTemplatesProviding.yesAndNo()();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 384);
  static ConfirmationViewTemplate.makeDefaultConfirmationViewTemplate(labels:sharedGlobals:)(*(v0 + 424), *(v0 + 416), *(v0 + 408), *(v0 + 400), v1, v0 + 16);

  outlined init with copy of SignalProviding(v1, v0 + 336);
  type metadata accessor for ConfirmationViewBuilder();
  v2 = swift_allocObject();
  *(v0 + 432) = v2;
  memcpy((v2 + 16), (v0 + 16), 0xA0uLL);
  outlined init with take of PhoneCallFeatureFlagProviding((v0 + 336), v2 + 176);
  outlined init with copy of ConfirmationViewTemplate(v0 + 16, v0 + 176);
  v3 = swift_task_alloc();
  *(v0 + 440) = v3;
  *v3 = v0;
  v3[1] = static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:);

  return specialized IdiomSensitiveViewBuilding.makeViews(utteranceViews:)(_swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v7 = v6;
  *(v4 + 448) = v0;

  if (v0)
  {
    v8 = static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:);
  }

  else
  {

    *(v4 + 456) = v3;
    v8 = static ConfirmationViewUtils.makeYesNoConfirmationView(labelTemplatesProvider:sharedGlobals:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of ConfirmationViewTemplate(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 456);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();

  outlined destroy of ConfirmationViewTemplate(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}