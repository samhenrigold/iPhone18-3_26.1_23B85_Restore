uint64_t ScreeningRequest.callUUID.getter(void *a1)
{
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = [a1 callUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = UUID.uuidString.getter();
  (*(v4 + 8))(v8, v2);
  return v10;
}

uint64_t TelephonyUtilitiesServices.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TelephonyUtilitiesServices(0) + 24);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TelephonyUtilitiesServices.isAnsweringMachineAvailable.getter()
{
  v1 = *(v0 + *(type metadata accessor for TelephonyUtilitiesServices(0) + 28));

  return v1;
}

uint64_t TelephonyUtilitiesServices.timeToWaitForCall.getter()
{
  v1 = *(v0 + *(type metadata accessor for TelephonyUtilitiesServices(0) + 32));

  return v1;
}

void TelephonyUtilitiesServices.init(callCenter:logger:featureFlags:isAnsweringMachineAvailable:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_36_15();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *v12 = v14;
  v15 = type metadata accessor for TelephonyUtilitiesServices(0);
  v16 = v15[6];
  v17 = type metadata accessor for Logger();
  (*(*(v17 - 8) + 32))(&v13[v16], v11, v17);
  *(v13 + 1) = v9;
  v18 = &v13[v15[7]];
  *v18 = v7;
  *(v18 + 1) = v5;
  v19 = &v13[v15[8]];
  *v19 = v3;
  *(v19 + 1) = v1;
  OUTLINED_FUNCTION_30_0();
}

id TelephonyUtilitiesServices.getCallFor(callUUID:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1BFB209B0]();
  v7 = [v5 callWithCallUUID_];

  if (!v7)
  {
    v8 = MEMORY[0x1BFB209B0](a1, a2);
    v7 = [v5 callWithUniqueProxyIdentifier_];
  }

  return v7;
}

Swift::Void __swiftcall TelephonyUtilitiesServices.disconnectScreeningCall(callUUID:)(Swift::String callUUID)
{
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  v4 = TelephonyUtilitiesServices.getCallFor(callUUID:)(callUUID._countAndFlagsBits, callUUID._object);
  if (v4)
  {
    oslog = v4;
    if ([v4 isScreening])
    {
      [*v1 disconnectCall:oslog withReason:36];
    }

    else
    {
      type metadata accessor for TelephonyUtilitiesServices(0);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        OUTLINED_FUNCTION_9_44();
        v14 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_15();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_8();
        *v14 = 136446466;
        OUTLINED_FUNCTION_1_18();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, v15, v16);
        *(v14 + 4) = v17;
        *(v14 + 12) = 2082;
        *(v14 + 14) = OUTLINED_FUNCTION_11_42(v17, v18);
        _os_log_impl(&dword_1BBC58000, v12, v13, "%{public}s: Call %{public}s is not in screening, refusing to disconnect.", v14, 0x16u);
        OUTLINED_FUNCTION_16_35();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();

        goto LABEL_11;
      }
    }
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices(0);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      OUTLINED_FUNCTION_9_44();
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      swift_slowAlloc();
      *v6 = 136446466;
      OUTLINED_FUNCTION_1_18();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, v7, v8);
      OUTLINED_FUNCTION_7_53(v9);
      *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v10);
      _os_log_impl(&dword_1BBC58000, oslog, v5, "%{public}s: Call %{public}s no longer exists, cannot disconnect", v6, 0x16u);
      swift_arrayDestroy();
      v11 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v11);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      goto LABEL_11;
    }
  }

LABEL_11:
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TelephonyUtilitiesServices.screen(callUUID:receptionist:screeningDueToUserInteraction:)(Swift::String callUUID, Swift::Bool receptionist, Swift::Bool screeningDueToUserInteraction)
{
  v5 = v3;
  v7 = receptionist;
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  v10 = TelephonyUtilitiesServices.getCallFor(callUUID:)(callUUID._countAndFlagsBits, callUUID._object);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for TelephonyUtilitiesServices(0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v34 = screeningDueToUserInteraction;
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v33 = v4;
      v35 = swift_slowAlloc();
      *v14 = 136446978;
      OUTLINED_FUNCTION_11();
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003CLL, v15, &v35);
      *(v14 + 12) = 2082;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v35);
      *(v14 + 22) = 1024;
      *(v14 + 24) = v34;
      *(v14 + 28) = 1026;
      *(v14 + 30) = v7;
      _os_log_impl(&dword_1BBC58000, v12, v13, "%{public}s: Tracked call %{public}s is being sent to screening due to user interaction: %{BOOL}d, receptionist: %{BOOL,public}d", v14, 0x22u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      screeningDueToUserInteraction = v34;
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E69D8A30]) initWithCall_];
    if (([v5[1] receptionistEnabled] & v7) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [v16 setScreeningType_];
    [v16 setScreeningDueToUserInteraction_];
    [*v5 answerWithRequest_];
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices(0);

    v18 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v19 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_9_44();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v35 = swift_slowAlloc();
      *v21 = 136446466;
      OUTLINED_FUNCTION_11();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003CLL, v22, &v35);
      OUTLINED_FUNCTION_17_34(v23);
      *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v35);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v24, v25, v26, v27, v28, v29);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v30 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v30);
      v31 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v31);
    }

    lazy protocol witness table accessor for type AnsweringMachineError and conformance AnsweringMachineError();
    swift_allocError();
    *v32 = countAndFlagsBits;
    v32[1] = object;
    swift_willThrow();
  }
}

Swift::Int __swiftcall TelephonyUtilitiesServices.getStreamToken(callUUID:)(Swift::String callUUID)
{
  OUTLINED_FUNCTION_36_15();
  v31 = v1;
  v32 = v2;
  OUTLINED_FUNCTION_15_25();
  v5 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v3, v4);
  if (!v5)
  {
    type metadata accessor for TelephonyUtilitiesServices(0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_9_44();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_8();
      *v9 = 136446466;
      OUTLINED_FUNCTION_1_18();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v10, v11);
      v13 = OUTLINED_FUNCTION_7_53(v12);
      *(v9 + 14) = OUTLINED_FUNCTION_27_18(v13, v14, v15);
      OUTLINED_FUNCTION_15_26(&dword_1BBC58000, v16, v17, "%{public}s: Tracked call %{public}s no longer exists, failing to screen call.");
      OUTLINED_FUNCTION_16_35();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

LABEL_8:

    goto LABEL_9;
  }

  v6 = v5;
  if (![v5 answeringMachineStreamToken])
  {
    type metadata accessor for TelephonyUtilitiesServices(0);
    v7 = v6;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_9_44();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v30[0] = swift_slowAlloc();
    *v20 = 136446466;
    OUTLINED_FUNCTION_1_18();
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, v21, v22);
    *(v20 + 12) = 2082;
    v23 = [v7 callUUID];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v30);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1BBC58000, v18, v19, "%{public}s: Failed to get stream token from call from TUCallCenter %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v28 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v28);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();

    goto LABEL_8;
  }

  [v6 answeringMachineStreamToken];

LABEL_9:
  OUTLINED_FUNCTION_194_0();
  return result;
}

void TelephonyUtilitiesServices.getReceptionistState(callUUID:)()
{
  OUTLINED_FUNCTION_36_15();
  v25 = v0;
  v26 = v1;
  OUTLINED_FUNCTION_15_25();
  v4 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v2, v3);
  v5 = v4;
  if (v4)
  {
    if ([v4 isScreening])
    {
      [v5 receptionistState];
    }
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices(0);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_35_9();
    v7 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_9_44();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v23 = swift_slowAlloc();
      *v9 = 136446466;
      OUTLINED_FUNCTION_11();
      v12 = OUTLINED_FUNCTION_34_17(v10, v11, &v23);
      v13 = OUTLINED_FUNCTION_17_34(v12);
      *(v9 + 14) = OUTLINED_FUNCTION_27_18(v13, v14, &v23);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v15, v16, v17, v18, v19, v20);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v21 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v21);
      v22 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v22);
    }
  }

  v24 = v5 == 0;
  OUTLINED_FUNCTION_194_0();
}

Swift::String_optional __swiftcall TelephonyUtilitiesServices.getCallerID(callUUID:)(Swift::String callUUID)
{
  OUTLINED_FUNCTION_15_25();
  v3 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v1, v2);
  if (!v3)
  {
    type metadata accessor for TelephonyUtilitiesServices(0);

    v4 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v8))
    {
      OUTLINED_FUNCTION_9_44();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_8();
      *v9 = 136446466;
      OUTLINED_FUNCTION_1_18();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, v10, v11);
      v13 = OUTLINED_FUNCTION_7_53(v12);
      *(v9 + 14) = OUTLINED_FUNCTION_27_18(v13, v14, v15);
      OUTLINED_FUNCTION_15_26(&dword_1BBC58000, v16, v17, "%{public}s: Tracked call %{public}s no longer exists, failing to screen call.");
      OUTLINED_FUNCTION_16_35();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    goto LABEL_8;
  }

  v4 = v3;
  v5 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v3);
  if (!v5)
  {
LABEL_8:

    v6 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  if (!v5[2])
  {

    goto LABEL_8;
  }

  v6 = v5[4];
  v7 = v5[5];

LABEL_9:
  v18 = v6;
  v19 = v7;
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

Swift::String __swiftcall TelephonyUtilitiesServices.getCallerDisplayName(callUUID:)(Swift::String callUUID)
{
  OUTLINED_FUNCTION_15_25();
  v3 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 receptionistSession];
    if (v5)
    {
      v6 = outlined bridged method (ob) of @objc TUReceptionistSession.predictedName.getter(v5);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        OUTLINED_FUNCTION_99();
        if (v10)
        {
          v11 = [objc_opt_self() conversationKit];
          v39._object = 0xE000000000000000;
          v12.value._countAndFlagsBits = 0x61737265766E6F43;
          v12.value._object = 0xEF74694B6E6F6974;
          v13._countAndFlagsBits = 0xD000000000000020;
          v13._object = 0x80000001BC4FDAC0;
          v14._countAndFlagsBits = 0;
          v14._object = 0xE000000000000000;
          v39._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v39);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1BC4BA940;
          *(v15 + 56) = MEMORY[0x1E69E6158];
          *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v15 + 32) = v8;
          *(v15 + 40) = v9;
          v16 = String.init(format:_:)();
          v18 = v17;

LABEL_12:

          goto LABEL_15;
        }
      }
    }

    v31 = outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(v4);
    if (v32)
    {
      v16 = v31;
      v18 = v32;
      OUTLINED_FUNCTION_99();
      if (v33)
      {
        goto LABEL_12;
      }
    }

    v34 = [v4 displayName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v35;

    goto LABEL_15;
  }

  type metadata accessor for TelephonyUtilitiesServices(0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_9_44();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    swift_slowAlloc();
    OUTLINED_FUNCTION_23_8();
    *v21 = 136446466;
    OUTLINED_FUNCTION_1_18();
    v25 = OUTLINED_FUNCTION_34_17(v22, v23, v24);
    v26 = OUTLINED_FUNCTION_7_53(v25);
    *(v21 + 14) = OUTLINED_FUNCTION_27_18(v26, v27, v28);
    OUTLINED_FUNCTION_15_26(&dword_1BBC58000, v29, v30, "%{public}s: Tracked call %{public}s no longer exists, failing to screen call.");
    OUTLINED_FUNCTION_16_35();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_15:
  v36 = v16;
  v37 = v18;
  result._object = v37;
  result._countAndFlagsBits = v36;
  return result;
}

void TelephonyUtilitiesServices.getScreenRequestIfAvailable()()
{
  v2 = v0;
  TelephonyUtilitiesServices.preScreeningChecks(callUUID:function:)(0x70556C6C61435843, 0xEC00000065746164, "getScreenRequestIfAvailable()", 29, 2);
  if (v3)
  {
    type metadata accessor for TelephonyUtilitiesServices(0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23_8();
      *v6 = 136446210;
      *(v6 + 4) = OUTLINED_FUNCTION_12_41(v7, v8);
      _os_log_impl(&dword_1BBC58000, v4, v5, "%{public}s: Getting Screening request if available.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v1);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      v9 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v9);
    }

    v10 = [*v2 fetchCurrentCallUpdates];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallUpdate, 0x1E69D8AD0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_9_44();
      v14 = swift_slowAlloc();
      v33 = OUTLINED_FUNCTION_23();
      *v14 = 136315394;
      *(v14 + 4) = OUTLINED_FUNCTION_12_41(v33, v15);
      *(v14 + 12) = 2048;
      *(v14 + 14) = specialized Array.count.getter();

      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v16, v17, v18, v19, v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v22 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v22);
      v23 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v23);
    }

    else
    {
    }

    v24 = specialized Array.count.getter();
    for (i = 0; v24 != i; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFB22010](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v26 = *(v11 + 8 * i + 32);
      }

      v27 = v26;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if ([v26 isEligibleForScreening])
      {

        [objc_allocWithZone(MEMORY[0x1E69D8CD0]) initWithTUCallUpdate_];

        return;
      }
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_23();
      *v30 = 136446210;
      *(v30 + 4) = OUTLINED_FUNCTION_12_41(v34, v31);
      _os_log_impl(&dword_1BBC58000, v28, v29, "%{public}s: No screenable request found for screening request.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v32 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v32);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }
}

void TelephonyUtilitiesServices.statusUpdatesForCall(callUUID:)()
{
  OUTLINED_FUNCTION_36_15();
  v41 = v3;
  v42 = v4;
  v5 = OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for TelephonyUtilitiesServices(0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_9_44();
    v39 = v1;
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_22_24(v15);
    OUTLINED_FUNCTION_29_17(4.8752e-34);
    v19 = OUTLINED_FUNCTION_34_17(v16, v17, v18);
    *(v14 + 14) = OUTLINED_FUNCTION_20_24(v19);
    OUTLINED_FUNCTION_33_19(&dword_1BBC58000, v20, v21, "%{public}s: Getting Screening state updates for call with UUID %s");
    swift_arrayDestroy();
    v2 = v5;
    v5 = v7;
    v7 = v38;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    v1 = v39;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (TelephonyUtilitiesServices.getCallFor(callUUID:)(v2, v0))
  {
    v40[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    v40[0] = Defaults.init()();
    CallScreeningService.init(overrides:)();
    v40[3] = &type metadata for CallCenterCall;
    v22 = lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall();
    OUTLINED_FUNCTION_21_23(v22);
    CallScreeningService.statusUpdatesForCall(_:)();
    (*(v7 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {

    v23 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_35_9();
    v24 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_9_44();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v40[0] = swift_slowAlloc();
      *v26 = 136446466;
      OUTLINED_FUNCTION_11();
      v29 = OUTLINED_FUNCTION_34_17(v27, v28, v40);
      *(v26 + 14) = OUTLINED_FUNCTION_19_20(v29);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v30, v31, v32, v33, v34, v35);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v36 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v36);
      v37 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v37);
    }

    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
  }

  OUTLINED_FUNCTION_30_0();
}

void TelephonyUtilitiesServices.screeningStatus(for:)()
{
  OUTLINED_FUNCTION_36_15();
  v45 = v3;
  v46 = v4;
  v5 = OUTLINED_FUNCTION_32_11();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for TelephonyUtilitiesServices(0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_9_44();
    v43 = v1;
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_22_24(v15);
    OUTLINED_FUNCTION_29_17(4.8752e-34);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, v16, v17);
    *(v14 + 14) = OUTLINED_FUNCTION_20_24(v18);
    OUTLINED_FUNCTION_33_19(&dword_1BBC58000, v19, v20, "%{public}s: Getting Screening state for call with UUID %s");
    swift_arrayDestroy();
    v2 = v5;
    v5 = v7;
    v7 = v42;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    v1 = v43;
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (TelephonyUtilitiesServices.getCallFor(callUUID:)(v2, v0))
  {
    v44[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    v44[0] = Defaults.init()();
    CallScreeningService.init(overrides:)();
    v44[3] = &type metadata for CallCenterCall;
    v21 = lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall();
    OUTLINED_FUNCTION_21_23(v21);
    CallScreeningService.screeningStatusForCall(_:)();
    (*(v7 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v22 = type metadata accessor for CallScreeningStatus();
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v22);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {

    v23 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_35_9();
    v24 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_9_44();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v44[0] = swift_slowAlloc();
      *v26 = 136446466;
      OUTLINED_FUNCTION_11();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, v27, v44);
      *(v26 + 14) = OUTLINED_FUNCTION_19_20(v28);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v29, v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v35 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v35);
      v36 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v36);
    }

    type metadata accessor for CallScreeningStatus();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }
}

void TelephonyUtilitiesServices.timeToWaitForCall(callUUID:)()
{
  OUTLINED_FUNCTION_36_15();
  v30 = v1;
  v31 = v2;
  OUTLINED_FUNCTION_15_25();
  v4 = v3;
  v7 = TelephonyUtilitiesServices.getCallFor(callUUID:)(v5, v6);
  if (v7)
  {
    v28 = v7;
    v8 = (v0 + *(type metadata accessor for TelephonyUtilitiesServices(0) + 32));
    (*v8)(v28);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    type metadata accessor for TelephonyUtilitiesServices(0);

    v11 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_35_9();
    v12 = OUTLINED_FUNCTION_14_28();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_9_44();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v29[0] = swift_slowAlloc();
      *v14 = 136446466;
      OUTLINED_FUNCTION_1_18();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, v15, v16);
      v18 = OUTLINED_FUNCTION_17_34(v17);
      *(v14 + 14) = OUTLINED_FUNCTION_27_18(v18, v19, v29);
      OUTLINED_FUNCTION_0_94();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
      OUTLINED_FUNCTION_6_55();
      swift_arrayDestroy();
      v26 = OUTLINED_FUNCTION_2_78();
      MEMORY[0x1BFB23DF0](v26);
      v27 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v27);
    }

    *v4 = xmmword_1BC4C9460;
    *(v4 + 16) = 1;
    OUTLINED_FUNCTION_194_0();
  }
}

unint64_t lazy protocol witness table accessor for type AnsweringMachineError and conformance AnsweringMachineError()
{
  result = lazy protocol witness table cache variable for type AnsweringMachineError and conformance AnsweringMachineError;
  if (!lazy protocol witness table cache variable for type AnsweringMachineError and conformance AnsweringMachineError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnsweringMachineError and conformance AnsweringMachineError);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc TUCall.suggestedDisplayName.getter(void *a1)
{
  v1 = [a1 suggestedDisplayName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc TUReceptionistSession.predictedName.getter(void *a1)
{
  v2 = [a1 predictedName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall()
{
  result = lazy protocol witness table cache variable for type CallCenterCall and conformance CallCenterCall;
  if (!lazy protocol witness table cache variable for type CallCenterCall and conformance CallCenterCall)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallCenterCall and conformance CallCenterCall);
  }

  return result;
}

uint64_t type metadata completion function for TelephonyUtilitiesServices(uint64_t a1)
{
  result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUCallCenter, 0x1E69D8A58);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUFeatureFlags, 0x1E69D8BE8);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ()();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

id SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);

  return specialized SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(v10, a2, a3, a4, v4, v8, v9);
}

void closure #1 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  ReportSpamManager.reportFaceTimeCallSpam<A>(call:)();
  if (a4)
  {
    a4();
  }
}

id SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  return specialized SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(v16, a2, a3, a4, a5, a6, a7, v7, v14, v15);
}

void closure #1 in SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_79(a1, a2);
  v4 = OUTLINED_FUNCTION_0_95();
  v6 = v5(v4);
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v7 = OUTLINED_FUNCTION_0_95();
    v8(v7);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(tuHandles:)(v9);
  }

  if (v2)
  {
    v2(v6);
  }
}

void closure #1 in SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_79(a1, a2);
  v4 = OUTLINED_FUNCTION_0_95();
  v6 = v5(v4);
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v7 = OUTLINED_FUNCTION_0_95();
    v8(v7);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(tuHandles:)(v9);
  }

  if (v2)
  {
    v2(v6);
  }
}

void closure #2 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_61(a1, a2);
  (*(v6 + 88))(v4, v5);
  OUTLINED_FUNCTION_5_58();
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v8 = OUTLINED_FUNCTION_0_95();
    v9(v8);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(tuHandles:)(v10);
  }

  if (v2)
  {
    v2(v7);
  }
}

uint64_t SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);

  return a6(v13, a2, a3, a4, a5, v6, v11, v12);
}

void closure #1 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_2_79(a1, a2);
  v5 = OUTLINED_FUNCTION_0_95();
  v7 = v6(v5);
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v8 = OUTLINED_FUNCTION_0_95();
    v9(v8);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(initiator:)(v10);
  }

  if (v2)
  {
    v2(v7);
  }
}

void closure #2 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_61(a1, a2);
  (*(v7 + 96))(v5, v6);
  OUTLINED_FUNCTION_5_58();
  if (v3)
  {
    OUTLINED_FUNCTION_1_80();
    v8 = OUTLINED_FUNCTION_0_95();
    v9(v8);
    OUTLINED_FUNCTION_3_79();
    UIViewController.presentSafetyCheck(initiator:)(v10);
  }

  if (v2)
  {
    v2();
  }
}

void SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = a1[3];
  v16 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(v18, a2, a3, a4, a5, a6, a7, a8, a9, v9, v17, v16);
}

uint64_t specialized SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[3] = a7;
  v28[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  outlined init with copy of IDSLookupManager(v28, v27);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v27, (v15 + 2));
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  outlined init with copy of IDSLookupManager(v28, v26);
  v16 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v26, (v16 + 2));
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = a4;
  v16[10] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v19 = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v20 = v19;

  specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v15, _s15ConversationKit16SpamAlertBuilderC033buildReportAndBlockGroupInitiatorD03for4with24presentingViewController10didDismissSo07UIAlertP0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewP0CSgyycSgtFySbcfU0_TA_0, v16, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v17, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v18, a6, a7, a8);
  v22 = v21;

  [v20 fetchSharing];
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v22;
}

void specialized SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v81 = a6;
  v82 = a7;
  v86 = a5;
  v84 = a3;
  *&v85 = a4;
  v83 = a2;
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v15;
  (*(v15 + 16))(v14, v12);
  v16 = *(a12 + 56);
  v76 = v14;
  v78 = a11;
  v17 = v16(a11, a12);
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  v79 = v20;
  v80 = v19;
  v21 = objc_opt_self();
  v22 = [v21 conversationKit];
  v87._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD00000000000002ALL;
  v23._object = 0x80000001BC4F9DA0;
  v24.value._countAndFlagsBits = 0x61737265766E6F43;
  v24.value._object = 0xEF74694B6E6F6974;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v87);

  v27 = [v21 &off_1E7FE9588];
  v88._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000038;
  v28._object = 0x80000001BC4F9DD0;
  v29.value._countAndFlagsBits = 0x61737265766E6F43;
  v29.value._object = 0xEF74694B6E6F6974;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v88._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BA940;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v32 = v79;
  *(v31 + 32) = v80;
  *(v31 + 40) = v32;
  v33 = String.init(format:_:)();
  v35 = v34;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v36 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v26._countAndFlagsBits, v26._object, v33, v35, 0);
  v80 = objc_opt_self();
  v37 = [v80 currentDevice];
  [v37 userInterfaceIdiom];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v38 = [v21 conversationKit];
  v89._object = 0xE000000000000000;
  v39._object = 0x80000001BC4F9CC0;
  v39._countAndFlagsBits = 0xD00000000000001BLL;
  v40.value._countAndFlagsBits = 0x61737265766E6F43;
  v40.value._object = 0xEF74694B6E6F6974;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v89);

  v42 = swift_allocObject();
  v43 = v81;
  v44 = v82;
  *(v42 + 16) = v81;
  *(v42 + 24) = v44;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v43, v44);
  v45 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v46 = [v21 conversationKit];
  v90._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD000000000000026;
  v47._object = 0x80000001BC4F9E10;
  v48.value._countAndFlagsBits = 0x61737265766E6F43;
  v48.value._object = 0xEF74694B6E6F6974;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v90);

  v50 = swift_allocObject();
  v51 = v83;
  v52 = v84;
  *(v50 + 16) = v83;
  *(v50 + 24) = v52;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v51, v52);
  v53 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v54 = [v21 conversationKit];
  v91._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0xD000000000000027;
  v55._object = 0x80000001BC4F9D70;
  v56.value._countAndFlagsBits = 0x61737265766E6F43;
  v56.value._object = 0xEF74694B6E6F6974;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v91);

  v58 = swift_allocObject();
  v59 = v85;
  v60 = v86;
  *(v58 + 16) = v85;
  *(v58 + 24) = v60;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v59, v60);
  v61 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  v85 = xmmword_1BC4BC370;
  *(inited + 16) = xmmword_1BC4BC370;
  *(inited + 32) = v45;
  *(inited + 40) = v53;
  *(inited + 48) = v61;
  v63 = v45;
  v64 = v53;
  v65 = v61;
  v66 = [v80 currentDevice];
  v67 = [v66 userInterfaceIdiom];

  v86 = v63;
  if (v67 == 1)
  {

    inited = swift_allocObject();
    *(inited + 16) = v85;
    *(inited + 32) = v64;
    *(inited + 40) = v65;
    *(inited + 48) = v63;
    v68 = v63;
    v69 = v64;
    v70 = v65;
  }

  v71 = specialized Array.count.getter();
  for (i = 0; ; ++i)
  {
    if (v71 == i)
    {

      (*(v77 + 8))(v76, v78);
      return;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x1BFB22010](i, inited);
    }

    else
    {
      if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v73 = *(inited + 8 * i + 32);
    }

    v74 = v73;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v36 addAction_];
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t specialized SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[3] = a7;
  v29[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  outlined init with copy of IDSLookupManager(v29, v28);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v28, (v15 + 2));
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  outlined init with copy of IDSLookupManager(v29, v27);
  v16 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v27, (v16 + 2));
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = a4;
  v16[10] = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v19 = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v20 = v19;

  v24 = a7;
  specialized SpamAlertBuilder.reportAndBlockAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, _s15ConversationKit16SpamAlertBuilderC19buildReportAndBlock3for4with24presentingViewController10didDismissSo07UIAlertN0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewN0CSgyycSgtFySbcfU_TA_0, v15, _s15ConversationKit16SpamAlertBuilderC19buildReportAndBlock3for4with24presentingViewController10didDismissSo07UIAlertN0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewN0CSgyycSgtFySbcfU0_TA_0, v16, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v17);
  v22 = v21;

  [v20 fetchSharing];
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v22;
}

uint64_t specialized SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[3] = a7;
  v23[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  outlined init with copy of IDSLookupManager(v23, v22);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v22, (v15 + 2));
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v18 = a3;
  specialized SpamAlertBuilder.blockAllParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:), v15, partial apply for closure #2 in SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:), v16);
  v20 = v19;

  [v18 fetchSharing];
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v20;
}

void specialized SpamAlertBuilder.blockAllParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  v34._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x80000001BC4F9C60;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v34);

  v13 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v12._countAndFlagsBits, v12._object, 0, 0, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v14 = [v7 conversationKit];
  v35._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000023;
  v15._object = 0x80000001BC4F9C90;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v35);

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  v19 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v20 = [v7 conversationKit];
  v36._object = 0xE000000000000000;
  v21._object = 0x80000001BC4F9CC0;
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v22.value._countAndFlagsBits = 0x61737265766E6F43;
  v22.value._object = 0xEF74694B6E6F6974;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v36);

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v25 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = v19;
  *(inited + 40) = v25;
  v27 = v19;
  v28 = v25;
  for (i = 0; ; ++i)
  {
    if (i == 2)
    {

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v30 = MEMORY[0x1BFB22010](i, inited);
LABEL_6:
    v31 = v30;
    [v13 addAction_];
  }

  if (i < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(inited + 8 * i + 32);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t specialized SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[3] = a7;
  v23[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a1, a7);
  outlined init with copy of IDSLookupManager(v23, v22);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v22, (v15 + 2));
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v18 = a3;
  specialized SpamAlertBuilder.blockUnknownParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:), v15, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v16);
  v20 = v19;

  [v18 fetchSharing];
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v20;
}

void specialized SpamAlertBuilder.blockUnknownParticipantsAlert(of:blockHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  v34._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0x80000001BC4F9C60;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v34);

  v13 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v12._countAndFlagsBits, v12._object, 0, 0, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v14 = [v7 conversationKit];
  v35._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000027;
  v15._object = 0x80000001BC4F9CE0;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v35);

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2, a3);
  v19 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v20 = [v7 conversationKit];
  v36._object = 0xE000000000000000;
  v21._object = 0x80000001BC4F9CC0;
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v22.value._countAndFlagsBits = 0x61737265766E6F43;
  v22.value._object = 0xEF74694B6E6F6974;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v36);

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4, a5);
  v25 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = v19;
  *(inited + 40) = v25;
  v27 = v19;
  v28 = v25;
  for (i = 0; ; ++i)
  {
    if (i == 2)
    {

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v30 = MEMORY[0x1BFB22010](i, inited);
LABEL_6:
    v31 = v30;
    [v13 addAction_];
  }

  if (i < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(inited + 8 * i + 32);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t specialized SpamAlertBuilder.buildBlockAlert(for:with:presentingViewController:didDismiss:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  if ((*(a8 + 8))(a7, a8))
  {
    v19 = specialized SpamAlertBuilder.buildBlockAllAlert(for:with:presentingViewController:didDismiss:)(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  else if ((*(a8 + 16))(a7, a8))
  {
    v19 = specialized SpamAlertBuilder.buildBlockUnknownAlert(for:with:presentingViewController:didDismiss:)(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v19 = specialized SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  v20 = v19;
  (*(v15 + 8))(v18, a7);
  return v20;
}

id specialized SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[3] = a6;
  v21[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  outlined init with copy of IDSLookupManager(v21, v20);
  v15 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v20, (v15 + 2));
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3, a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3, a4);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3, a4);

  v18 = specialized SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(boxed_opaque_existential_1, partial apply for closure #1 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v15, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v16, partial apply for closure #3 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v17, a5, a6, a7);

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id specialized SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a4;
  v50 = a5;
  v52 = a2;
  v53 = a3;
  v48 = *(a9 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v13 = *(v12 + 16);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a9;
  v13(v10);
  v14 = objc_opt_self();
  v15 = [v14 conversationKit];
  v54._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._countAndFlagsBits = 0xD00000000000002DLL;
  v17._object = 0x80000001BC4FF820;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA940;
  v20 = (*(a10 + 56))(a9, a10);
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  *(v19 + 32) = v23;
  *(v19 + 40) = v24;
  v25 = String.init(format:_:)();
  v27 = v26;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController, 0x1E69DC650);
  v28 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v25, v27, 0, 0, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction, 0x1E69DC648);
  v29 = [v14 conversationKit];
  v55._object = 0xE000000000000000;
  v30._object = 0x80000001BC4F9CC0;
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  v31.value._countAndFlagsBits = 0x61737265766E6F43;
  v31.value._object = 0xEF74694B6E6F6974;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v55);

  v33 = swift_allocObject();
  v34 = v49;
  v35 = v50;
  *(v33 + 16) = v49;
  *(v33 + 24) = v35;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v34, v35);
  v36 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v37 = [v14 conversationKit];
  v56._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0xD000000000000034;
  v38._object = 0x80000001BC4FF850;
  v39.value._countAndFlagsBits = 0x61737265766E6F43;
  v39.value._object = 0xEF74694B6E6F6974;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v56);

  v41 = swift_allocObject();
  v42 = v52;
  v43 = v53;
  *(v41 + 16) = v52;
  *(v41 + 24) = v43;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v42, v43);
  v44 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v28 addAction_];
  [v28 addAction_];

  (*(v48 + 8))(v47, v51);
  return v28;
}

uint64_t partial apply for closure #1 in SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t CNAutocompleteSearchController.messagesGroup.getter@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CNAutocompleteSearchController.messagesGroupUUID.getter(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of UUID?(v4);
LABEL_6:
    v14 = type metadata accessor for MessagesGroup(0);
    v16 = a1;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v14);
  }

  v9 = *(v6 + 32);
  v9(v8, v4, v5);
  v10 = CNAutocompleteSearchController.messagesGroupName.getter();
  if (!v11)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = v11;
  v9(a1, v8, v5);
  v14 = type metadata accessor for MessagesGroup(0);
  v15 = &a1[*(v14 + 20)];
  *v15 = v12;
  v15[1] = v13;
  v16 = a1;
  v17 = 0;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v14);
}

id CNAutocompleteSearchController.messagesChatGUID.getter()
{
  v0 = OUTLINED_FUNCTION_1_81();
  type metadata accessor for CNComposeRecipient();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1 = specialized Array.count.getter();

  v2 = 0;
  if (v1 == 1)
  {
    v3 = OUTLINED_FUNCTION_1_81();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter())
    {
      OUTLINED_FUNCTION_0_96();
      if (v3)
      {
        v5 = MEMORY[0x1BFB22010](0, v4);
      }

      else
      {
        v5 = *(v4 + 32);
      }

      v6 = v5;

      v2 = CNComposeRecipient.messagesChatGUID.getter();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

void CNAutocompleteSearchController.messagesGroupUUID.getter(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_1_81();
  type metadata accessor for CNComposeRecipient();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter();

  if (v3 == 1)
  {
    v4 = OUTLINED_FUNCTION_1_81();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB22010](0, v5);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v8 = v6;

      CNComposeRecipient.messagesGroupUUID.getter(a1);

      return;
    }
  }

  v7 = type metadata accessor for UUID();

  __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
}

uint64_t CNAutocompleteSearchController.messagesGroupName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  CNAutocompleteSearchController.messagesGroupUUID.getter(&v11 - v2);
  v4 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  outlined destroy of UUID?(v3);
  result = 0;
  if (EnumTagSinglePayload != 1)
  {
    v7 = [v0 recipients];
    type metadata accessor for CNComposeRecipient();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter())
    {
      OUTLINED_FUNCTION_0_96();
      if (v7)
      {
        v9 = MEMORY[0x1BFB22010](0, v8);
      }

      else
      {
        v9 = *(v8 + 32);
      }

      v10 = v9;

      return outlined bridged method (ob) of @objc CNComposeRecipient.displayString.getter(v10);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for CNComposeRecipient()
{
  result = lazy cache variable for type metadata for CNComposeRecipient;
  if (!lazy cache variable for type metadata for CNComposeRecipient)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNComposeRecipient);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CNComposeRecipient.displayString.getter(void *a1)
{
  v2 = [a1 displayString];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::String __swiftcall AttributedString.string()()
{
  v1 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  type metadata accessor for NSAttributedString();
  (*(v3 + 16))(v7, v0, v1);
  v8 = NSAttributedString.init(_:)();
  v9 = [v8 string];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

void AttributedString.init(cnkLocalized:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v17 = v1;
  type metadata accessor for AttributedString.FormattingOptions();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_42();
  v6 = type metadata accessor for String.LocalizationValue();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  (*(v8 + 16))(v11 - v10, v2, v6);
  [objc_opt_self() conversationKit];
  v12 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v12);
  OUTLINED_FUNCTION_4_62();
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(v13, v14, MEMORY[0x1E69686B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v15, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR, v16);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  (*(v8 + 8))(v17, v6);
  OUTLINED_FUNCTION_30_0();
}

void AttributedString.init(conversationControlsLocalized:comment:)()
{
  OUTLINED_FUNCTION_29();
  v24 = v0;
  v26 = v1;
  v27 = v2;
  v4 = v3;
  v23 = v3;
  v25 = v5;
  type metadata accessor for AttributedString.FormattingOptions();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = type metadata accessor for String.LocalizationValue();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  (*(v13 + 16))(v16 - v15, v4, v11);
  v22[2] = "ConversationKit-SystemAperture";
  v22[1] = [objc_opt_self() conversationKit];
  v17 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  v28 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_62();
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(v18, v19, MEMORY[0x1E69686B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v20, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR, v21);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  (*(v13 + 8))(v23, v11);
  OUTLINED_FUNCTION_30_0();
}

void AttributedString.init<A>(conversationControlsLocalized:including:)()
{
  OUTLINED_FUNCTION_29();
  v17[1] = v0;
  v17[2] = v1;
  v3 = v2;
  v4 = type metadata accessor for AttributedString.FormattingOptions();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = type metadata accessor for String.LocalizationValue();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  (*(v12 + 16))(v15 - v14, v3, v10);
  [objc_opt_self() conversationKit];
  v16 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  default argument 1 of AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
  AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
  (*(v12 + 8))(v3, v10);
  OUTLINED_FUNCTION_30_0();
}

uint64_t default argument 1 of AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)()
{
  type metadata accessor for AttributedString.FormattingOptions();
  lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions, MEMORY[0x1E69686B0], MEMORY[0x1E69686B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AttributedString.FormattingOptions] and conformance [A], &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMd, &_sSay10Foundation16AttributedStringV17FormattingOptionsVGMR, MEMORY[0x1E69E6328]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void AttributedString.replaceLinks(with:)()
{
  OUTLINED_FUNCTION_29();
  v51 = v2;
  v3 = &_sSny10Foundation16AttributedStringV5IndexVGMR;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_SnyAA16AttributedStringV5IndexVGtSgMd, &_s10Foundation3URLVSg_SnyAA16AttributedStringV5IndexVGtSgMR);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V04LinkH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V04LinkH0O_GMR);
  OUTLINED_FUNCTION_1();
  v46 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12_42();
  type metadata accessor for AttributedString.Runs();
  OUTLINED_FUNCTION_1();
  v43 = v19;
  v44 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V04LinkG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V04LinkG0OGMR);
  OUTLINED_FUNCTION_1();
  v45 = v23;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  v47 = &v43 - v25;
  v52 = v0;
  AttributedString.runs.getter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
  AttributedString.Runs.subscript.getter();
  v26 = &_s10Foundation3URLVSgMd;

  v27 = v22;
  v28 = &_s10Foundation3URLVSgMR;
  (*(v43 + 8))(v27, v44);
  v29 = &_sSny10Foundation16AttributedStringV5IndexVGMd;
  AttributedString.Runs.AttributesSlice1.makeIterator()();
  v49 = v14;
  while (1)
  {
    AttributedString.Runs.AttributesSlice1.Iterator.next()();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_SnyAA16AttributedStringV5IndexVGtMd, &_s10Foundation3URLVSg_SnyAA16AttributedStringV5IndexVGtMR);
    if (__swift_getEnumTagSinglePayload(v14, 1, v30) == 1)
    {
      break;
    }

    v31 = *(v30 + 48);
    _s10Foundation3URLVSgWObTm_0(v14, v10, v26, v28);
    _s10Foundation3URLVSgWObTm_0(&v14[v31], v6, v29, v3);
    v32 = type metadata accessor for URL();
    if (__swift_getEnumTagSinglePayload(v10, 1, v32) != 1)
    {
      OUTLINED_FUNCTION_5_59();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, v29, v3, v33);
      v34 = v10;
      v35 = v6;
      v36 = v1;
      v37 = v15;
      v38 = v28;
      v39 = v26;
      v40 = v3;
      v41 = v29;
      v42 = AttributedString.subscript.modify();
      AttributedSubstring.setAttributes(_:)();
      v42(&v54, 0);
      v29 = v41;
      v3 = v40;
      v26 = v39;
      v28 = v38;
      v15 = v37;
      v1 = v36;
      v6 = v35;
      v10 = v34;
      v14 = v49;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, v29, v3);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, v26, v28);
  }

  (*(v46 + 8))(v1, v15);
  (*(v45 + 8))(v47, v48);
  OUTLINED_FUNCTION_30_0();
}

void key path getter for AttributeDynamicLookup.subscript<A>(dynamicMember:) : AttributeDynamicLookupAttributeScopes.FoundationAttributes.LinkAttribute(uint64_t a1, uint64_t *a2)
{
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }

  return result;
}

uint64_t _s10Foundation3URLVSgWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

void *one-time initialization function for containers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit18ContainerAttributeO5ValueO_10Foundation0gF0VtGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit18ContainerAttributeO5ValueO_10Foundation0gF0VtGMR);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18ContainerAttributeO5ValueO_10Foundation0dC0VtMd, &_s15ConversationKit18ContainerAttributeO5ValueO_10Foundation0dC0VtMR) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA940;
  if (one-time initialization token for subjectContainer != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AttributeContainer();
  v4 = __swift_project_value_buffer(v3, static AttributedStrings.Notices.subjectContainer);
  (*(*(v3 - 8) + 16))(v2 + v1, v4, v3);
  lazy protocol witness table accessor for type ContainerAttribute.Value and conformance ContainerAttribute.Value();
  result = Dictionary.init(dictionaryLiteral:)();
  static AttributedString.containers = result;
  return result;
}

void AttributedString.applyContainer()()
{
  OUTLINED_FUNCTION_29();
  v68 = v1;
  v84 = type metadata accessor for AttributedString.AttributeMergePolicy();
  OUTLINED_FUNCTION_1();
  v92 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v83 = v5 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v67 - v7;
  v87 = type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v79 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v67 - v13;
  v14 = type metadata accessor for AttributedString.Runs.Index();
  OUTLINED_FUNCTION_1();
  v96 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v91 = type metadata accessor for AttributedString.Runs.Run();
  OUTLINED_FUNCTION_1();
  v89 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v90 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v67 - v24;
  v25 = type metadata accessor for AttributedString.Runs();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v67 - v34;
  v86 = v0;
  AttributedString.runs.getter();
  (*(v27 + 16))(v35, v31, v25);
  v36 = *(v32 + 44);
  v37 = lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  dispatch thunk of Collection.startIndex.getter();
  v38 = (*(v27 + 8))(v31, v25);
  v39 = v91;
  ++v96;
  v93 = (v89 + 32);
  v94 = (v89 + 16);
  v75 = v9 + 16;
  v74 = v9 + 32;
  v73 = *MEMORY[0x1E69686E0];
  v72 = (v92 + 13);
  v71 = v92 + 1;
  v80 = v9;
  v70 = v9 + 8;
  v40 = v90;
  v92 = (v89 + 8);
  v38.n128_u64[0] = 136315138;
  v85 = v38;
  v88 = v19;
  v89 = v14;
  v77 = v25;
  v76 = v36;
  v69 = v37;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v96)(v19, v14);
    if (v41)
    {
      break;
    }

    v42 = dispatch thunk of Collection.subscript.read();
    v43 = v95;
    (*v94)(v95);
    v42(v97, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v93)(v40, v43, v39);
    lazy protocol witness table accessor for type ContainerAttribute and conformance ContainerAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if ((v97[0] & 1) == 0)
    {
      if (one-time initialization token for containers != -1)
      {
        swift_once();
      }

      v44 = static AttributedString.containers;
      if (*(static AttributedString.containers + 2) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(), (v46 & 1) != 0))
      {
        v47 = v80;
        (*(v80 + 16))(v79, v44[7] + *(v80 + 72) * v45, v87);
        v48 = v78;
        (*(v47 + 32))();
        v49 = v81;
        AttributedString.Runs.Run.range.getter();
        v51 = v83;
        v50 = v84;
        (*v72)(v83, v73, v84);
        OUTLINED_FUNCTION_5_59();
        lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR, v52);
        v53 = AttributedString.subscript.modify();
        AttributedSubstring.mergeAttributes(_:mergePolicy:)();
        v54 = v51;
        v55 = v50;
        v40 = v90;
        v39 = v91;
        (*v71)(v54, v55);
        v53(v97, 0);
        v19 = v88;
        v14 = v89;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
        (*(v47 + 8))(v48, v87);
      }

      else
      {
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        __swift_project_value_buffer(v56, static Logger.conversationKit);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v97[0] = v60;
          *v59 = v85.n128_u32[0];
          v61 = String.init<A>(reflecting:)();
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v97);
          v40 = v90;

          *(v59 + 4) = v63;
          v39 = v91;
          _os_log_impl(&dword_1BBC58000, v57, v58, "Invalid container attribute value %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v60);
          v64 = v60;
          v19 = v88;
          MEMORY[0x1BFB23DF0](v64, -1, -1);
          v65 = v59;
          v14 = v89;
          MEMORY[0x1BFB23DF0](v65, -1, -1);
        }
      }
    }

    (*v92)(v40, v39);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_7_0();
  (*(v66 + 16))(v68, v86);
  OUTLINED_FUNCTION_30_0();
}

uint64_t lazy protocol witness table accessor for type AttributedString.FormattingOptions and conformance AttributedString.FormattingOptions(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ContainerAttribute and conformance ContainerAttribute()
{
  result = lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute;
  if (!lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute;
  if (!lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute and conformance ContainerAttribute);
  }

  return result;
}

BOOL ContainerAttribute.Value.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContainerAttribute.Value.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ContainerAttribute.Value@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ContainerAttribute.Value.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t static ContainerAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *static ContainerAttribute.name;

  return v0;
}

double static ContainerAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static ContainerAttribute.name = a1;
  *&static ContainerAttribute.name[8] = a2;

  return result;
}

double key path getter for static ContainerAttribute.name : ContainerAttribute.Type@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&static ContainerAttribute.name[8];
  *a1 = *static ContainerAttribute.name;
  a1[1] = v2;

  return result;
}

double key path setter for static ContainerAttribute.name : ContainerAttribute.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *static ContainerAttribute.name = v2;
  *&static ContainerAttribute.name[8] = v1;

  return result;
}

uint64_t protocol witness for static AttributedStringKey.name.getter in conformance ContainerAttribute()
{
  swift_beginAccess();
  v0 = *static ContainerAttribute.name;

  return v0;
}

uint64_t protocol witness for static DecodingConfigurationProviding.decodingConfiguration.getter in conformance AttributeScopes.ConversationKitAttributes(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes();

  return MEMORY[0x1EEDC2A28](a1, v2);
}

uint64_t protocol witness for static EncodingConfigurationProviding.encodingConfiguration.getter in conformance AttributeScopes.ConversationKitAttributes(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes();

  return MEMORY[0x1EEDC2A28](a1, v2);
}

unint64_t lazy protocol witness table accessor for type ContainerAttribute.Value and conformance ContainerAttribute.Value()
{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value;
  if (!lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerAttribute.Value and conformance ContainerAttribute.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes;
  if (!lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes;
  if (!lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes;
  if (!lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.ConversationKitAttributes and conformance AttributeScopes.ConversationKitAttributes);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContainerAttribute.Value(_BYTE *result, int a2, int a3)
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

id PassthroughView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PassthroughView.init()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  return v3;
}

id PassthroughView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void __swiftcall PassthroughView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = [(UIView_optional *)&v11 hitTest:isa withEvent:x, y];
  if (v7)
  {
    type metadata accessor for UIView();
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
    }
  }
}

id PassthroughView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CallDetailsCoordinator.isPresentingDetails.getter()
{
  v1 = *(v0 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController);
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = [result superview];

    if (v4)
    {

      result = [v1 presentingViewController];
      if (result)
      {

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CallDetailsCoordinator.isCaptioningEnabled.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if ([Strong respondsToSelector_])
  {
    v1 = [Strong isCaptioningEnabled];
  }

  else
  {
    v1 = 0;
  }

  swift_unknownObjectRelease();
  return v1;
}

uint64_t CallDetailsCoordinator.shouldHideViewsFromScreenSharing.getter()
{
  v1 = OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing;
  swift_beginAccess();
  return *(v0 + v1);
}

void CallDetailsCoordinator.shouldHideViewsFromScreenSharing.setter(char a1)
{
  v3 = OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  CallDetailsCoordinator.shouldHideViewsFromScreenSharing.didset(v4);
}

uint64_t key path getter for CallDetailsCoordinator.shouldHideViewsFromScreenSharing : CallDetailsCoordinator@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

void CallDetailsCoordinator.shouldHideViewsFromScreenSharing.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    CallDetailsCoordinator.updateViewVisibilityForScreenSharing()();
  }
}

void (*CallDetailsCoordinator.shouldHideViewsFromScreenSharing.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return CallDetailsCoordinator.shouldHideViewsFromScreenSharing.modify;
}

void CallDetailsCoordinator.shouldHideViewsFromScreenSharing.modify(uint64_t a1)
{
  v1 = *a1;
  CallDetailsCoordinator.shouldHideViewsFromScreenSharing.setter(*(*a1 + 32));

  free(v1);
}

char *CallDetailsCoordinator.__allocating_init(hostViewController:controlsManager:deferredPresentationManager:)()
{
  v1 = objc_allocWithZone(v0);
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_2_80();

  return specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(v2, v3, v4, v5);
}

char *CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_2_80();

  return specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(v0, v1, v2, v3);
}

id static CallDetailsCoordinator.makeDetailsNavigationController(using:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsNavigationController());
  v3 = a1;
  v4 = ConversationHUDDetailsNavigationController.init(controlsManager:shouldHaveBackgroundMaterial:)(v3, 1);
  [v4 setOverrideUserInterfaceStyle_];
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x508);
  v6 = v4;
  v5(v4, &protocol witness table for ConversationHUDDetailsNavigationController);
  return v6;
}

void CallDetailsCoordinator.start(withReason:from:)(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_1_82();
  if ((*(v9 + 120))())
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_28;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Ignoring request to start CallDetailsCoordinator because call details are already being presented";
    goto LABEL_23;
  }

  v14 = [swift_unknownObjectUnownedLoadStrong() isReadyToShowCallDetails];
  swift_unknownObjectRelease();
  if (!v14)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_28;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Ignoring request to start CallDetailsCoordinator because the host view controller isn't ready";
LABEL_23:
    _os_log_impl(&dword_1BBC58000, oslog, v11, v13, v12, 2u);
    OUTLINED_FUNCTION_27();
    goto LABEL_28;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, &static Logger.conversationControls);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v42);
    OUTLINED_FUNCTION_4_63(&dword_1BBC58000, v20, v21, "Presenting call details with reason: “%s”");
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  (*((*v8 & *Strong) + 0x398))(0);

  v23 = *(v4 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController);
  (*((*v8 & *v23) + 0x90))(1);
  CallDetailsCoordinator.updateViewVisibilityForScreenSharing()();
  if (a3)
  {
    v24 = objc_opt_self();
    v25 = a3;
    v26 = [v24 currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (v27)
    {
      v28 = 1;
    }

    else
    {
      v28 = 5;
    }

    [v23 setModalPresentationStyle_];
    type metadata accessor for UIViewControllerTransition();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v29 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    [v23 setPreferredTransition_];

    v30 = [v23 sheetPresentationController];
    if (v30)
    {
      v31 = v30;
      [v30 _setHorizontalAlignment_];
    }

    v32 = [v23 sheetPresentationController];
    [v32 setPrefersPageSizing_];

    v33 = [v23 sheetPresentationController];
    [v33 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];

    v34 = [objc_opt_self() contentViewSizeForFaceTime];
    if (v34 > 2)
    {
      v35 = 320.0;
    }

    else
    {
      v35 = dbl_1BC4C9938[v34];
    }

    v37 = swift_unknownObjectUnownedLoadStrong();
    v38 = [v37 view];

    if (!v38)
    {
      __break(1u);
      return;
    }

    [v38 frame];
    v40 = v39;

    [v23 setPreferredContentSize_];
  }

  oslog = swift_unknownObjectUnownedLoadStrong();
  [oslog presentViewController:v23 animated:1 completion:0];
LABEL_28:
}

Swift::Void __swiftcall CallDetailsCoordinator.stop(withReason:forStartingPip:)(Swift::String withReason, Swift::Bool forStartingPip)
{
  v3 = v2;
  object = withReason._object;
  countAndFlagsBits = withReason._countAndFlagsBits;
  OUTLINED_FUNCTION_1_82();
  if ((*(v7 + 120))())
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, &static Logger.conversationControls);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v19);
      OUTLINED_FUNCTION_4_63(&dword_1BBC58000, v13, v14, "Dismissing call details with reason: “%s”");
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v15 = *(v3 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController);
    OUTLINED_FUNCTION_1_82();
    (*(v16 + 144))(0);
    if (forStartingPip)
    {
      [v15 setPreferredTransition_];
    }

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19[4] = partial apply for closure #1 in CallDetailsCoordinator.stop(withReason:forStartingPip:);
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed () -> ();
    v19[3] = &block_descriptor_32;
    v18 = _Block_copy(v19);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }
}

void closure #1 in CallDetailsCoordinator.stop(withReason:forStartingPip:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CallDetailsCoordinator.updateViewVisibilityForScreenSharing()();
  }
}

void CallDetailsCoordinator.updateViewVisibilityForScreenSharing()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))() & 1) == 0 || (v3 = *(v0 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController), ((*((*v2 & *v3) + 0x88))() & 1) == 0))
  {
    v7 = [*(v1 + OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController) view];
    if (v7)
    {
      v5 = v7;
      v6 = 0;
      goto LABEL_7;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = [v3 view];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = 16;
LABEL_7:
  v8 = [v5 layer];

  [v8 setDisableUpdateMask_];
}

id CallDetailsCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallDetailsCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallDetailsCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  swift_getObjectType();
  a4[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing] = 0;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  *&a4[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController] = static CallDetailsCoordinator.makeDetailsNavigationController(using:)(a2);
  v13.receiver = a4;
  v13.super_class = type metadata accessor for CallDetailsCoordinator();
  v7 = objc_msgSendSuper2(&v13, sel_init);
  v8 = *&v7[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController];
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x78);
  v10 = v7;
  v11 = v8;
  v9(v7);

  swift_unknownObjectRelease();
  return v10;
}

unint64_t type metadata accessor for UIViewControllerTransition()
{
  result = lazy cache variable for type metadata for UIViewControllerTransition;
  if (!lazy cache variable for type metadata for UIViewControllerTransition)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewControllerTransition);
  }

  return result;
}

__n128 BezelMetrics.aspectRatio.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 BezelMetrics.aspectRatio.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

void BezelMetrics.init(aspectRatio:cornerRadius:)(_OWORD *a1@<X8>, double a2@<D0>, _OWORD *a3@<X0>)
{
  v3 = a3[1];
  *a1 = *a3;
  a1[1] = v3;
  OUTLINED_FUNCTION_2_81(a1, a2);
}

double BezelMetrics.scaledBounds(in:orientation:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_80(a1);
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 24;
  if (!v5)
  {
    v7 = 8;
  }

  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  if (*(v1 + 32))
  {
    v8 = 1.0;
    v9 = 1.0;
  }

  CGSize.scaledToFit(_:)(v3, 0, v2, 0, v8, v9);
  return v4;
}

double BezelMetrics.scaledCornerRadius(in:orientation:)(uint64_t a1)
{
  OUTLINED_FUNCTION_3_80(a1);
  if (!v4)
  {
    v3 = 0;
  }

  if (*(v1 + 32))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = *(v1 + v3);
  }

  BezelMetrics.scaledBounds(in:orientation:)(a1);
  return *(v1 + 40) * (v6 / v5);
}

double one-time initialization function for forCurrentDisplay()
{
  closure #1 in variable initialization expression of static BezelMetrics.forCurrentDisplay(v1);
  static BezelMetrics.forCurrentDisplay = v1[0];
  *algn_1EBCDAF50 = v1[1];
  result = *&v2;
  xmmword_1EBCDAF60 = v2;
  return result;
}

void closure #1 in variable initialization expression of static BezelMetrics.forCurrentDisplay(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  v3 = [v2 fixedCoordinateSpace];

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  swift_unknownObjectRelease();
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v5 >= v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v5 < v7)
  {
    v7 = v5;
  }

  v11 = [objc_opt_self() currentTraitCollection];
  [v11 displayCornerRadius];
  v13 = v12;

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = v13;
}

__int128 *BezelMetrics.forCurrentDisplay.unsafeMutableAddressor()
{
  if (one-time initialization token for forCurrentDisplay != -1)
  {
    OUTLINED_FUNCTION_1_83(&one-time initialization token for forCurrentDisplay);
  }

  return &static BezelMetrics.forCurrentDisplay;
}

double static BezelMetrics.forCurrentDisplay.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for forCurrentDisplay != -1)
  {
    OUTLINED_FUNCTION_1_83(&one-time initialization token for forCurrentDisplay);
  }

  v2 = xmmword_1EBCDAF60;
  result = *(&xmmword_1EBCDAF60 + 1);
  v4 = *algn_1EBCDAF50;
  *a1 = static BezelMetrics.forCurrentDisplay;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  return result;
}

void BezelMetrics.init(size:cornerRadius:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
}

Swift::Int BezelEffect.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BezelEffect(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  BezelEffect.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int BezelShieldMaterial.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BezelShieldMaterial(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  BezelShieldMaterial.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance BezelShieldMaterialKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type BezelShieldMaterial and conformance BezelShieldMaterial();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.bezelShieldMaterial.getter()
{
  lazy protocol witness table accessor for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey()
{
  result = lazy protocol witness table cache variable for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey;
  if (!lazy protocol witness table cache variable for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.bezelShieldMaterial : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.bezelShieldMaterial.getter();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.bezelShieldMaterial.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = lazy protocol witness table accessor for type BezelShieldMaterialKey and conformance BezelShieldMaterialKey();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return EnvironmentValues.bezelShieldMaterial.modify;
}

uint64_t View.bezelShieldMaterial(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t one-time initialization function for defaultValue()
{
  result = static Color.blue.getter();
  static BezelOutlineColorKey.defaultValue = result;
  return result;
}

{
  result = static Platform.current.getter();
  static LayoutIdiomEnvironmentKey.defaultValue = (result - 4) < 0xFDu;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance BezelOutlineColorKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  *a1 = static BezelOutlineColorKey.defaultValue;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance BezelOutlineColorKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Color and conformance Color();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.bezelOutlineColor.getter()
{
  lazy protocol witness table accessor for type BezelOutlineColorKey and conformance BezelOutlineColorKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type BezelOutlineColorKey and conformance BezelOutlineColorKey()
{
  result = lazy protocol witness table cache variable for type BezelOutlineColorKey and conformance BezelOutlineColorKey;
  if (!lazy protocol witness table cache variable for type BezelOutlineColorKey and conformance BezelOutlineColorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelOutlineColorKey and conformance BezelOutlineColorKey);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.bezelOutlineColor : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.bezelOutlineColor.getter();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.bezelOutlineColor.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = lazy protocol witness table accessor for type BezelOutlineColorKey and conformance BezelOutlineColorKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.bezelOutlineColor.modify;
}

uint64_t EnvironmentValues.bezelOutlineColor.modify(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.subscript.setter();
  }

  EnvironmentValues.subscript.setter();
}

uint64_t View.bezelOutlineColor(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

id HitTestPassthroughLayer.init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HitTestPassthroughLayer();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setAllowsHitTesting_];
  return v1;
}

void *HitTestPassthroughLayer.init(layer:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HitTestPassthroughLayer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  [v4 setAllowsHitTesting_];
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id HitTestPassthroughView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HitTestPassthroughView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  return v9;
}

uint64_t @objc static HitTestPassthroughView.layerClass.getter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_getObjCClassMetadata();
  a3();

  return swift_getObjCClassFromMetadata();
}

uint64_t BackdropView.backdropLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id BackdropView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v12.receiver = v4;
  v12.super_class = type metadata accessor for BackdropView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = BackdropView.backdropLayer.getter();
  [v10 setScale_];

  return v9;
}

id BackdropView.init(coder:)(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BackdropView();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = BackdropView.backdropLayer.getter();
    [v6 setScale_];

    a1 = v6;
  }

  return v4;
}

id BezelShieldMaterial.shieldEffect.getter(char a1)
{
  result = objc_opt_self();
  v3 = sel_effectWithBlurRadius_;
  if (a1)
  {
    result = [result effectWithBlurRadius_];
    if (!result)
    {
      __break(1u);
      goto LABEL_10;
    }

    v4 = result;
    v5 = [objc_opt_self() whiteColor];
    v6 = [v5 colorWithAlphaComponent_];

    v7 = [objc_opt_self() colorEffectSubtract_];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect, 0x1E69DD290);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BA930;
    *(v8 + 32) = v4;
    *(v8 + 40) = v7;
    v9 = v7;
    v10 = v4;
    result = @nonobjc UIVisualEffect.init(combiningEffects:)(v8);
    if (result)
    {
LABEL_8:
      v14 = result;

      return v14;
    }

    __break(1u);
  }

  result = [result v3];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  v15[0] = xmmword_1BC4C9950;
  v15[1] = xmmword_1BC4C9960;
  v15[2] = xmmword_1BC4C9970;
  v15[3] = xmmword_1BC4C9980;
  v15[4] = xmmword_1BC4C0360;
  result = [objc_opt_self() _colorEffectCAMatrix_];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVisualEffect, 0x1E69DD290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BA930;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  v9 = v12;
  v10 = v11;
  result = @nonobjc UIVisualEffect.init(combiningEffects:)(v13);
  if (result)
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id BezelShieldEffectView.effectView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id BezelShieldEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView] = 0;
  v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_material] = 0;
  v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_isActive] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_customCornerRadius] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BezelShieldEffectView();
  v1 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = BezelShieldEffectView.effectView.getter();
  [v1 addSubview_];

  return v1;
}

void BezelShieldEffectView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_material) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_isActive) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_customCornerRadius) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void BezelShieldEffectView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for BezelShieldEffectView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = BezelShieldEffectView.effectView.getter();
  [v0 bounds];
  Width = CGRectGetWidth(v6);
  [v0 bounds];
  [v1 setBounds_];

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView____lazy_storage___effectView];
  [v0 bounds];
  MidX = CGRectGetMidX(v8);
  [v0 bounds];
  [v3 setCenter_];
}

void BezelShieldEffectView.updateVisualEffectView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_isActive);
  v4 = BezelShieldEffectView.effectView.getter();
  if (v1 == 1)
  {
    v2 = BezelShieldMaterial.shieldEffect.getter(*(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_material));
    [v4 setEffect_];

    v3 = v2;
  }

  else
  {
    [v4 setEffect_];
    v3 = v4;
  }
}

id closure #1 in BezelGlowEffectView.glowMaskBaseView.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter, 0x1E6979378);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = CAFilter.__allocating_init(type:)(v4, v5);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v8 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC4F6B30);
  [v6 setValue:isa forKey:v8];

  v9 = static Platform.current.getter();
  v10 = 100.0;
  if (v9 == 1)
  {
    v10 = 200.0;
  }

  *&v19.d = MEMORY[0x1E69E63B0];
  v19.a = v10;
  __swift_project_boxed_opaque_existential_1(&v19, MEMORY[0x1E69E63B0]);
  v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v12 = MEMORY[0x1BFB209B0](0x6461527475706E69, 0xEB00000000737569);
  [v6 setValue:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = [v2 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA940;
  *(v14 + 56) = v3;
  *(v14 + 32) = v6;
  v15 = v6;
  outlined bridged method (mbnn) of @objc CALayer.filters.setter(v14, v13);

  v16 = [v2 layer];
  [v16 setCornerCurve_];

  v17 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor_];

  CGAffineTransformMakeScale(&v19, *(a1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale), *(a1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale + 8));
  [v2 setTransform_];

  return v2;
}

id closure #1 in BezelGlowEffectView.glowMaskCutoutView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [v0 layer];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter, 0x1E6979378);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = CAFilter.__allocating_init(type:)(v2, v3);
  [v1 setCompositingFilter_];

  v5 = [v0 layer];
  [v5 setCornerCurve_];

  v6 = [objc_opt_self() blackColor];
  [v0 setBackgroundColor_];

  return v0;
}

id closure #1 in BezelGlowEffectView.glowMaskView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = BezelGlowEffectView.glowMaskBaseView.getter();
  [v0 addSubview_];

  v2 = BezelGlowEffectView.glowMaskCutoutView.getter();
  [v0 addSubview_];

  return v0;
}

id closure #1 in BezelGlowEffectView.backdropView.getter()
{
  type metadata accessor for BackdropView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter, 0x1E6979378);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = CAFilter.__allocating_init(type:)(v2, v3);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v6 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC4F6B30);
  [v4 setValue:isa forKey:v6];

  v7 = Bool._bridgeToObjectiveC()().super.super.isa;
  v8 = MEMORY[0x1BFB209B0](0x7261487475706E69, 0xEE00736567644564);
  [v4 setValue:v7 forKey:v8];

  v9 = Int._bridgeToObjectiveC()().super.super.isa;
  v10 = MEMORY[0x1BFB209B0](0x6461527475706E69, 0xEB00000000737569);
  [v4 setValue:v9 forKey:v10];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = CAFilter.__allocating_init(type:)(v11, v12);
  v25[0] = xmmword_1BC4C9990;
  v25[1] = xmmword_1BC4C99A0;
  v25[2] = xmmword_1BC4C99B0;
  v25[3] = xmmword_1BC4C99C0;
  v25[4] = xmmword_1BC4C0360;
  v14 = [objc_opt_self() valueWithCAColorMatrix_];
  v15 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4F6B50);
  [v13 setValue:v14 forKey:v15];

  v16 = v0;
  v17 = [v16 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BAA20;
  *(v18 + 32) = v4;
  *(v18 + 88) = v1;
  *(v18 + 56) = v1;
  *(v18 + 64) = v13;
  v19 = v4;
  v20 = v13;
  outlined bridged method (mbnn) of @objc CALayer.filters.setter(v18, v17);

  v21 = [v16 layer];
  [v21 setAllowsHitTesting_];

  v22 = BackdropView.backdropLayer.getter();
  outlined bridged method (mbnn) of @objc CABackdropLayer.groupName.setter(0xD000000000000036, 0x80000001BC4FFF50, v22);

  v23 = BezelGlowEffectView.glowMaskView.getter();
  [v16 setMaskView_];

  return v16;
}

void BezelShieldEffectView.customCornerRadius.didset(uint64_t (*a1)(void), void *a2, SEL *a3)
{
  v6 = a1();
  [v6 *a3];
}

void BezelGlowEffectView.customCornerRadius.didset()
{
  v1 = BezelGlowEffectView.glowMaskBaseView.getter();
  v2 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customCornerRadius;
  [v1 _setContinuousCornerRadius_];

  v3 = BezelGlowEffectView.glowMaskCutoutView.getter();
  [v3 _setContinuousCornerRadius_];
}

id BezelGlowEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale] = xmmword_1BC4C99D0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskBaseView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskCutoutView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___backdropView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customCornerRadius] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BezelGlowEffectView();
  v1 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = BezelGlowEffectView.backdropView.getter();
  [v1 addSubview_];

  return v1;
}

void BezelGlowEffectView.layoutSubviews()()
{
  v32.receiver = v0;
  v32.super_class = type metadata accessor for BezelGlowEffectView();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v1 = BezelGlowEffectView.backdropView.getter();
  [v0 bounds];
  v2 = CGRectGetWidth(v33) + 200.0;
  [v0 bounds];
  [v1 setBounds_];

  v3 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___backdropView;
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___backdropView];
  [v0 bounds];
  MidX = CGRectGetMidX(v35);
  [v0 bounds];
  [v4 setCenter_];

  v6 = BezelGlowEffectView.glowMaskView.getter();
  [*&v0[v3] bounds];
  [v6 setBounds_];

  v7 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskView;
  v8 = *&v0[v3];
  v9 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskView];
  [v8 bounds];
  v10 = CGRectGetMidX(v37);
  [*&v0[v3] bounds];
  [v9 setCenter_];

  [v0 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale];
  v20 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_glowMaskBaseViewScale + 8];
  static UnitPoint.center.getter();
  v23 = v14 + v18 * v22 - v18 * v20 * v22 - (v12 + v16 * v21 - v16 * v19 * v21);
  v24 = BezelGlowEffectView.glowMaskBaseView.getter();
  [v0 bounds];
  [v24 setBounds_];

  v25 = *&v0[v7];
  v26 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskBaseView];
  [v25 bounds];
  v27 = CGRectGetMidX(v39);
  [*&v0[v7] bounds];
  [v26 setCenter_];

  v28 = BezelGlowEffectView.glowMaskCutoutView.getter();
  [v0 bounds];
  [v28 setBounds_];

  v29 = *&v0[v7];
  v30 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___glowMaskCutoutView];
  [v29 bounds];
  v31 = CGRectGetMidX(v41);
  [*&v0[v7] bounds];
  [v30 setCenter_];
}

void BezelGlowEffectView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView____lazy_storage___backdropView);
}

id BezelGlowEffectView.glowMaskCutoutView.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in BezelHighlightEffectView.highlightMaskView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [v0 layer];
  [v1 setBorderWidth_];

  v2 = [v0 layer];
  GenericGray = CGColorCreateGenericGray(1.0, 1.0);
  [v2 setBorderColor_];

  [v0 setBackgroundColor_];
  return v0;
}

id BezelGlowEffectView.glowMaskBaseView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in BezelHighlightEffectView.backdropView.getter()
{
  type metadata accessor for BackdropView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAFilter, 0x1E6979378);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = CAFilter.__allocating_init(type:)(v2, v3);
  v15[0] = xmmword_1BC4C99E0;
  v15[1] = xmmword_1BC4C99F0;
  v15[2] = xmmword_1BC4C9A00;
  v15[3] = xmmword_1BC4C9A10;
  v15[4] = xmmword_1BC4C0360;
  v5 = [objc_opt_self() valueWithCAColorMatrix_];
  v6 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC4F6B50);
  [v4 setValue:v5 forKey:v6];

  v7 = v0;
  v8 = [v7 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA940;
  *(v9 + 56) = v1;
  *(v9 + 32) = v4;
  v10 = v4;
  outlined bridged method (mbnn) of @objc CALayer.filters.setter(v9, v8);

  v11 = [v7 layer];
  [v11 setAllowsHitTesting_];

  v12 = BackdropView.backdropLayer.getter();
  outlined bridged method (mbnn) of @objc CABackdropLayer.groupName.setter(0xD000000000000036, 0x80000001BC4FFF50, v12);

  v13 = BezelHighlightEffectView.highlightMaskView.getter();
  [v7 setMaskView_];

  return v7;
}

id BezelHighlightEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___highlightMaskView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___backdropView] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customCornerRadius] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BezelHighlightEffectView();
  v1 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = BezelHighlightEffectView.backdropView.getter();
  [v1 addSubview_];

  return v1;
}

void BezelHighlightEffectView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for BezelHighlightEffectView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = BezelHighlightEffectView.backdropView.getter();
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  [v0 bounds];
  [v1 setBounds_];

  v3 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___backdropView;
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___backdropView];
  [v0 bounds];
  MidX = CGRectGetMidX(v13);
  [v0 bounds];
  [v4 setCenter_];

  v6 = BezelHighlightEffectView.highlightMaskView.getter();
  [*&v0[v3] bounds];
  [v6 setBounds_];

  v7 = *&v0[v3];
  v8 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___highlightMaskView];
  [v7 bounds];
  v9 = CGRectGetMidX(v15);
  [*&v0[v3] bounds];
  [v8 setCenter_];
}

void BezelHighlightEffectView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView____lazy_storage___backdropView);
}

void BezelOutlineEffectView.outlineColor.setter(void *a1)
{
  v3 = [v1 layer];
  [v3 setBorderColor_];
}

id BezelOutlineEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35122BezelOutlineEffectView_customCornerRadius] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BezelOutlineEffectView();
  v1 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = [v1 layer];
  [v2 setBorderWidth_];

  v3 = [v1 layer];
  [v3 setBorderOffset_];

  v4 = [objc_opt_self() systemBlueColor];
  v5 = [v4 CGColor];

  BezelOutlineEffectView.outlineColor.setter(v5);
  [v1 setBackgroundColor_];

  return v1;
}

void BezelEffectView.effects.didset(uint64_t a1)
{
  _sSh2eeoiySbShyxG_ABtFZ15ConversationKit11BezelEffectO_Tt1g5(*(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects), a1);
  if ((v2 & 1) == 0)
  {

    BezelEffectView.updateEffectViews(animated:)(1);
  }
}

double BezelEffectView.effects.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects);
  *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects) = a1;
  BezelEffectView.effects.didset(v2);

  return result;
}

id BezelEffectView.metrics.setter(_OWORD *a1)
{
  v2 = &v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics];
  v3 = a1[1];
  *v2 = *a1;
  *(v2 + 1) = v3;
  *(v2 + 2) = a1[2];
  return [v1 setNeedsLayout];
}

char *BezelEffectView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects] = MEMORY[0x1E69E7CD0];
  v1 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics;
  if (one-time initialization token for forCurrentDisplay != -1)
  {
    swift_once();
  }

  v2 = &v0[v1];
  v3 = xmmword_1EBCDAF60;
  v4 = *(&xmmword_1EBCDAF60 + 1);
  v5 = *algn_1EBCDAF50;
  *v2 = static BezelMetrics.forCurrentDisplay;
  *(v2 + 1) = v5;
  v2[32] = v3;
  *(v2 + 5) = v4;
  v6 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView;
  *&v0[v6] = [objc_allocWithZone(type metadata accessor for BezelShieldEffectView()) init];
  v7 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for BezelGlowEffectView()) init];
  v8 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView;
  *&v0[v8] = [objc_allocWithZone(type metadata accessor for BezelHighlightEffectView()) init];
  v9 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for BezelOutlineEffectView()) init];
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BezelEffectView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = *&v10[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView];
  v12 = v10;
  [v12 addSubview_];
  [v12 addSubview_];
  [v12 addSubview_];
  [v12 addSubview_];
  BezelEffectView.updateEffectViews(animated:)(0);

  return v12;
}

id BezelEffectView.layoutSubviews()()
{
  v1 = v0;
  v27[0].receiver = v0;
  v27[0].super_class = type metadata accessor for BezelEffectView();
  [(objc_super *)v27 layoutSubviews];
  v2 = [v0 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v6 = [v1 traitCollection];
    lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait();
    lazy protocol witness table accessor for type UIInterfaceOrientation and conformance UIInterfaceOrientation();
    UITraitCollection.subscript.getter();

    v5 = v28;
  }

  v7 = &v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics];
  v8 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics + 16];
  v28 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics];
  v29 = v8;
  v30 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics + 32];
  [v1 bounds];
  v9 = BezelMetrics.scaledBounds(in:orientation:)(v5);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v7[1];
  v27[1] = *v7;
  v27[2] = v16;
  v27[3] = v7[2];
  [v1 bounds];
  v17 = BezelMetrics.scaledCornerRadius(in:orientation:)(v5);
  v18 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView];
  *&v18[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_customCornerRadius] = v17;
  BezelShieldEffectView.customCornerRadius.didset(BezelShieldEffectView.effectView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_customCornerRadius, &selRef__setContinuousCornerRadius_);
  v19 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView];
  *&v19[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customCornerRadius] = v17;
  BezelGlowEffectView.customCornerRadius.didset();
  v20 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView];
  *&v20[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customCornerRadius] = v17;
  BezelShieldEffectView.customCornerRadius.didset(BezelHighlightEffectView.highlightMaskView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customCornerRadius, &selRef__setContinuousCornerRadius_);
  v21 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView];
  *&v21[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35122BezelOutlineEffectView_customCornerRadius] = v17;
  [v21 _setContinuousCornerRadius_];
  [v18 setBounds_];
  [v1 bounds];
  MidX = CGRectGetMidX(v31);
  [v1 bounds];
  [v18 setCenter_];
  [v19 setBounds_];
  [v1 bounds];
  v23 = CGRectGetMidX(v33);
  [v1 bounds];
  [v19 setCenter_];
  [v20 setBounds_];
  [v1 bounds];
  v24 = CGRectGetMidX(v35);
  [v1 bounds];
  [v20 setCenter_];
  [v21 setBounds_];
  [v1 bounds];
  v25 = CGRectGetMidX(v37);
  [v1 bounds];
  return [v21 setCenter_];
}

id BezelEffectView._updateEffectViewVisibility()()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects;
  [*(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView) setHidden_];
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView);
  v3 = specialized Set.contains(_:)(1u, *(v0 + v1));
  v4 = 1;
  if (v3)
  {
    v4 = specialized Set.contains(_:)(2u, *(v0 + v1));
  }

  [v2 setHidden_];
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView);
  v6 = (specialized Set.contains(_:)(2u, *(v0 + v1)) & 1) == 0;

  return [v5 setHidden_];
}

void BezelEffectView._updateEffectViews()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects;
  v3 = specialized Set.contains(_:)(0, *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_effects));
  v4 = 0;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_shieldEffectView);
  if (v3)
  {
    [v5 setHidden_];
    v4 = 1;
  }

  *(v5 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35121BezelShieldEffectView_isActive) = v4;
  BezelShieldEffectView.updateVisualEffectView()();
  v6 = specialized Set.contains(_:)(1u, *(v1 + v2));
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView);
  if (v6)
  {
    [*(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_glowEffectView) setHidden_];
    *(v7 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha) = 0x3FF0000000000000;
    BezelShieldEffectView.customCornerRadius.didset(BezelGlowEffectView.glowMaskBaseView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha, &selRef_setAlpha_);
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView);
    [v8 setHidden_];
    v9 = 1.0;
  }

  else
  {
    *(v7 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha) = 0;
    BezelShieldEffectView.customCornerRadius.didset(BezelGlowEffectView.glowMaskBaseView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35119BezelGlowEffectView_customAlpha, &selRef_setAlpha_);
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_highlightEffectView);
    v9 = 0.0;
  }

  *&v8[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha] = v9;
  BezelShieldEffectView.customCornerRadius.didset(BezelHighlightEffectView.highlightMaskView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha, &selRef_setAlpha_);
  v10 = specialized Set.contains(_:)(2u, *(v1 + v2));
  v11 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView);
  if (v10)
  {
    [v11 setHidden_];
    [v11 setAlpha_];
    *&v8[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha] = 0;
    BezelShieldEffectView.customCornerRadius.didset(BezelHighlightEffectView.highlightMaskView.getter, &OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35124BezelHighlightEffectView_customAlpha, &selRef_setAlpha_);
  }

  else
  {

    [v11 setAlpha_];
  }
}

uint64_t BezelEffectView.updateEffectViews(animated:)(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    static Animation.default.getter();
    withBridgedAnimation<A>(_:_:completion:)();
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #3 in BezelEffectView.updateEffectViews(animated:);
    *(v6 + 24) = v5;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_33;
    v7 = _Block_copy(aBlock);
    v8 = v1;

    [v4 performWithoutAnimation_];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void BezelEffectView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_outlineEffectView);
}

id HitTestPassthroughLayer.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t BezelEffectViewRepresentable.bezelShieldMaterial.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  if (v11 != 1)
  {

    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v6, &dword_1BBC58000, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TapInteractionHandler?(&v10, &_s7SwiftUI11EnvironmentVy15ConversationKit19BezelShieldMaterialOGMd, &_s7SwiftUI11EnvironmentVy15ConversationKit19BezelShieldMaterialOGMR);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t BezelEffectViewRepresentable.bezelOutlineColor.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 24);
  v5 = *(v0 + 16);
  v11 = v5;
  v6 = v12;

  if ((v6 & 1) == 0)
  {
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v7, &dword_1BBC58000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TapInteractionHandler?(&v11, &_s7SwiftUI11EnvironmentVyAA5ColorVGMd, &_s7SwiftUI11EnvironmentVyAA5ColorVGMR);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v5;
}

id BezelEffectViewRepresentable.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for BezelEffectView());

  return [v0 init];
}

id BezelEffectViewRepresentable.updateUIView(_:context:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v9 = specialized Set.contains(_:)(0, v8);

  if (v9)
  {
    v10 = BezelEffectViewRepresentable.bezelShieldMaterial.getter();
    BezelEffectView.bezelShieldMaterial.setter(v10 & 1);
  }

  if (specialized Set.contains(_:)(2u, v8))
  {
    BezelEffectViewRepresentable.bezelOutlineColor.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy15ConversationKit015BezelEffectViewD033_4D20B3E5E64D3E09186739EFFCDDD351LLVGMd, &_s7SwiftUI26UIViewRepresentableContextVy15ConversationKit015BezelEffectViewD033_4D20B3E5E64D3E09186739EFFCDDD351LLVGMR);
    UIViewRepresentableContext.environment.getter();
    Color.resolve(in:)();

    (*(v5 + 8))(v7, v4);
    v11 = Color.Resolved.cgColor.getter();
    BezelOutlineEffectView.outlineColor.setter(v11);
  }

  BezelEffectView.effects.setter(v8);
  v12 = &a1[OBJC_IVAR____TtC15ConversationKitP33_4D20B3E5E64D3E09186739EFFCDDD35115BezelEffectView_metrics];
  v13 = *(v2 + 56);
  *v12 = *(v2 + 40);
  *(v12 + 1) = v13;
  *(v12 + 2) = *(v2 + 72);
  return [a1 setNeedsLayout];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BezelEffectViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BezelEffectViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance BezelEffectViewRepresentable(uint64_t a1)
{
  lazy protocol witness table accessor for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void BezelEffectModifier.metrics.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  a1[1] = v3;
  OUTLINED_FUNCTION_2_81(a1, v2);
}

uint64_t BezelEffectModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = static Alignment.center.getter();
  v5 = v4;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v20[120] = 0;
  v20[112] = 0;
  v20[104] = v11;
  __src[0] = KeyPath;
  LOBYTE(__src[1]) = 0;
  __src[2] = v16;
  LOBYTE(__src[3]) = 0;
  __src[4] = v6;
  __src[5] = v7;
  __src[6] = v8;
  __src[7] = v9;
  __src[8] = v10;
  LOBYTE(__src[9]) = v11;
  __src[10] = v12;
  __src[11] = v3;
  __src[12] = v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit011BezelEffectD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit011BezelEffectD0VGMR);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit011BezelEffectF0VGAA08_OverlayF0VyAF0ijE13Representable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit011BezelEffectF0VGAA08_OverlayF0VyAF0ijE13Representable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGGMR);
  memcpy((a2 + *(v14 + 36)), __src, 0x68uLL);
  v22 = KeyPath;
  v23 = 0;
  v24 = v16;
  v25 = 0;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v3;
  v34 = v5;
  outlined init with copy of BezelEffectModifier(v2, v20);
  outlined init with copy of _OverlayModifier<BezelEffectViewRepresentable>(__src, v20);
  return outlined destroy of TapInteractionHandler?(&v22, &_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMd, &_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMR);
}

uint64_t outlined init with copy of _OverlayModifier<BezelEffectViewRepresentable>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMd, &_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double BezelEffectModifier.init(effects:metrics:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  result = *(a2 + 40);
  *a3 = a1;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3 & 1;
  *(a3 + 48) = result;
  return result;
}

uint64_t View.bezelEffect(_:metrics:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  v5 = *(a2 + 5);
  v7 = a1;
  v10 = v3 & 1;
  v11 = v5;
  return MEMORY[0x1BFB1FAD0](&v7, a3, &type metadata for BezelEffectModifier);
}

void View.bezelEffect(_:metrics:)(char a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11BezelEffectOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11BezelEffectOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = a1;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15ConversationKit11BezelEffectO_Tt0g5();
  v13 = v11;
  v12 = *a2;
  v15 = a2[1];
  v14 = v12;
  v16 = v8 & 1;
  v17 = v9;
  MEMORY[0x1BFB1FAD0](&v13, a3, &type metadata for BezelEffectModifier, a4);
}

unint64_t lazy protocol witness table accessor for type BezelEffect and conformance BezelEffect()
{
  result = lazy protocol witness table cache variable for type BezelEffect and conformance BezelEffect;
  if (!lazy protocol witness table cache variable for type BezelEffect and conformance BezelEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelEffect and conformance BezelEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BezelShieldMaterial and conformance BezelShieldMaterial()
{
  result = lazy protocol witness table cache variable for type BezelShieldMaterial and conformance BezelShieldMaterial;
  if (!lazy protocol witness table cache variable for type BezelShieldMaterial and conformance BezelShieldMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelShieldMaterial and conformance BezelShieldMaterial);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BezelEffect(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BezelShieldMaterial(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy15ConversationKit19BezelShieldMaterialOGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(a4, a2, a3, MEMORY[0x1E6980A18]);
  OUTLINED_FUNCTION_0_97();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<BezelEffectModifier>, _OverlayModifier<BezelEffectViewRepresentable>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BezelEffectModifier>, _OverlayModifier<BezelEffectViewRepresentable>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BezelEffectModifier>, _OverlayModifier<BezelEffectViewRepresentable>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit011BezelEffectF0VGAA08_OverlayF0VyAF0ijE13Representable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy15ConversationKit011BezelEffectF0VGAA08_OverlayF0VyAF0ijE13Representable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<BezelEffectModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit011BezelEffectD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy15ConversationKit011BezelEffectD0VGMR, MEMORY[0x1E697FDF8]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<BezelEffectViewRepresentable> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMd, &_s7SwiftUI16_OverlayModifierVy15ConversationKit28BezelEffectViewRepresentable33_4D20B3E5E64D3E09186739EFFCDDD351LLVGMR, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BezelEffectModifier>, _OverlayModifier<BezelEffectViewRepresentable>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BezelEffectModifier and conformance BezelEffectModifier()
{
  result = lazy protocol witness table cache variable for type BezelEffectModifier and conformance BezelEffectModifier;
  if (!lazy protocol witness table cache variable for type BezelEffectModifier and conformance BezelEffectModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelEffectModifier and conformance BezelEffectModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BezelEffectViewRepresentable(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for BezelEffectViewRepresentable(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable()
{
  result = lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable;
  if (!lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable;
  if (!lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezelEffectViewRepresentable and conformance BezelEffectViewRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color and conformance Color()
{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIInterfaceOrientation and conformance UIInterfaceOrientation()
{
  result = lazy protocol witness table cache variable for type UIInterfaceOrientation and conformance UIInterfaceOrientation;
  if (!lazy protocol witness table cache variable for type UIInterfaceOrientation and conformance UIInterfaceOrientation)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIInterfaceOrientation and conformance UIInterfaceOrientation);
  }

  return result;
}

void outlined bridged method (mbnn) of @objc CABackdropLayer.groupName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 setGroupName_];
}

uint64_t key path getter for PushToTalkSessionDetailsView.avatarView : PushToTalkSessionDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PushToTalkSessionDetailsView.avatarView : PushToTalkSessionDetailsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);
  v4 = *a1;
  return v3(v2);
}

void PushToTalkSessionDetailsView.avatarView.willset(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (a1)
  {
    v5 = a1;
    [v1 addSubview_];
    PushToTalkSessionDetailsView.setupAvatarViewConstraints(avatarView:)(v5);
  }
}

void *PushToTalkSessionDetailsView.avatarView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PushToTalkSessionDetailsView.avatarView.setter(void *a1)
{
  PushToTalkSessionDetailsView.avatarView.willset(a1);
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*PushToTalkSessionDetailsView.avatarView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return PushToTalkSessionDetailsView.avatarView.modify;
}

void PushToTalkSessionDetailsView.avatarView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = v3;
    PushToTalkSessionDetailsView.avatarView.willset(v3);
    v8 = *(v5 + v6);
    *(v5 + v6) = v3;

    v9 = *v4;
  }

  else
  {
    PushToTalkSessionDetailsView.avatarView.willset(*(*a1 + 24));
    v9 = *(v5 + v6);
    *(v5 + v6) = v3;
  }

  free(v2);
}

uint64_t key path getter for PushToTalkSessionDetailsView.avatarViewHash : PushToTalkSessionDetailsView@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PushToTalkSessionDetailsView.avatarViewHash.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarViewHash;
  swift_beginAccess();
  return *v1;
}

void PushToTalkSessionDetailsView.avatarViewHash.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarViewHash;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t key path getter for PushToTalkSessionDetailsView.titleLabel : PushToTalkSessionDetailsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

id PushToTalkSessionDetailsView.titleLabel.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = closure #1 in PushToTalkSessionDetailsView.titleLabel.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in PushToTalkSessionDetailsView.titleLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (one-time initialization token for channelNameLabel != -1)
  {
    swift_once();
  }

  [v0 setFont_];
  if (one-time initialization token for channelNameLabel != -1)
  {
    swift_once();
  }

  [v0 setTextColor_];
  [v0 setNumberOfLines_];
  v1 = v0;
  [v1 setClipsToBounds_];
  [v1 setLineBreakMode_];
  [v1 setAdjustsFontForContentSizeCategory_];
  LODWORD(v2) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v2];
  [v1 setAdjustsFontSizeToFitWidth_];
  [v1 setMinimumScaleFactor_];
  [v1 setMaximumContentSizeCategory_];
  [v1 setMinimumContentSizeCategory_];

  [v1 setMarqueeEnabled_];
  [v1 setMarqueeRunning_];
  return v1;
}

void PushToTalkSessionDetailsView.titleLabel.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel);
  *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel) = a1;
}

void (*PushToTalkSessionDetailsView.titleLabel.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PushToTalkSessionDetailsView.titleLabel.getter();
  return PushToTalkSessionDetailsView.titleLabel.modify;
}

void PushToTalkSessionDetailsView.titleLabel.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel);
  *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel) = v2;
}

id PushToTalkSessionDetailsView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

void *PushToTalkSessionDetailsView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarViewHash;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton;
  type metadata accessor for PushToTalkDisclosureButton();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButtonLayoutGuide;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint) = 0;
  v13 = type metadata accessor for PushToTalkSessionDetailsView();
  v5 = OUTLINED_FUNCTION_18_1();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, v13);
  v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xC0);
  v10 = v8;
  v11 = v9();
  [v10 addSubview_];

  [v10 addSubview_];
  [v10 addLayoutGuide_];
  [v10 addLayoutGuide_];
  PushToTalkSessionDetailsView.setupConstraints()();

  return v10;
}

id PushToTalkSessionDetailsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkSessionDetailsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarView) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_avatarViewHash;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView____lazy_storage___titleLabel) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton;
  type metadata accessor for PushToTalkDisclosureButton();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButtonLayoutGuide;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PushToTalkSessionDetailsView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for PushToTalkSessionDetailsView();
  objc_msgSendSuper2(&v15, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v3 = [(objc_class *)isa _backlightLuminance];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 _backlightLuminance];

  if (!isa || v3 != v5)
  {
    v6 = [v1 traitCollection];
    v7 = [v6 _backlightLuminance];

    v8 = MEMORY[0x1E69E7D40];
    v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
    v10 = v9();
    [v10 setMarqueeRunning_];

    v11 = v9();
    [v11 setMarqueeEnabled_];

    v12 = (*((*v8 & *v1) + 0x90))();
    if (v12)
    {
      v13 = v12;
      v14 = 0.2;
      if (v7 != 1)
      {
        v14 = 1.0;
      }

      [v12 setAlpha_];
    }
  }
}

void PushToTalkSessionDetailsView.setupAvatarViewConstraints(avatarView:)(id a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint;
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint];
  if (v4)
  {
    [v4 setActive_];
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [a1 bottomAnchor];
  v6 = [v1 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  LODWORD(v8) = 1132068864;
  [v7 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA920;
  v10 = [a1 topAnchor];
  v11 = [v1 topAnchor];
  v12 = OUTLINED_FUNCTION_79();
  v14 = [v12 v13];

  *(v9 + 32) = v14;
  v15 = [a1 leadingAnchor];
  v16 = [v1 leadingAnchor];
  v17 = OUTLINED_FUNCTION_79();
  v19 = [v17 v18];

  *(v9 + 40) = v19;
  v20 = [a1 widthAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v9 + 48) = v21;
  v22 = [a1 heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v9 + 56) = v23;
  *(v9 + 64) = v7;
  objc_opt_self();
  type metadata accessor for NSLayoutConstraint();
  v24 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = OUTLINED_FUNCTION_79();
  [v26 v27];

  v28 = PushToTalkSessionDetailsView.setupTextAreaLeadingAnchorConstraint(avatarView:)(a1);
  v29 = *&v1[v3];
  *&v1[v3] = v28;

  v30 = PushToTalkSessionDetailsView.setupTextAreaCenterYAnchorConstraint(avatarView:)(a1);
  v31 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint];
  *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint] = v30;
}

void PushToTalkSessionDetailsView.setupConstraints()()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v3 = v2();
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BAC30;
  v6 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide;
  v7 = [*&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide] trailingAnchor];
  v8 = [v1 trailingAnchor];
  v9 = OUTLINED_FUNCTION_79();
  v11 = [v9 v10];

  *(v5 + 32) = v11;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  v13 = v2();
  v14 = [v13 topAnchor];

  v15 = [*&v1[v6] &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v16 = [v14 constraintEqualToAnchor_];

  *(inited + 32) = v16;
  v17 = v2();
  v18 = [v17 leadingAnchor];

  v19 = [*&v1[v6] leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(inited + 40) = v20;
  v21 = v2();
  v22 = [v21 trailingAnchor];

  v23 = [*&v1[v6] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(inited + 48) = v24;
  specialized Array.append<A>(contentsOf:)(inited);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1BC4BA920;
  v26 = [v4 topAnchor];
  v27 = v2();
  v28 = [v27 bottomAnchor];

  v29 = OUTLINED_FUNCTION_79();
  v31 = [v29 v30];

  *(v25 + 32) = v31;
  v32 = [v4 leadingAnchor];
  v33 = [*&v1[v6] leadingAnchor];
  v34 = OUTLINED_FUNCTION_2_82();
  v36 = [v34 v35];

  *(v25 + 40) = v36;
  v37 = [v4 trailingAnchor];
  v38 = OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButtonLayoutGuide;
  v39 = [*&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButtonLayoutGuide] leadingAnchor];
  v40 = OUTLINED_FUNCTION_2_82();
  v42 = [v40 v41];

  *(v25 + 48) = v42;
  v43 = [v4 bottomAnchor];
  v44 = [*&v1[v6] bottomAnchor];
  v45 = OUTLINED_FUNCTION_2_82();
  v47 = [v45 v46];

  *(v25 + 56) = v47;
  v48 = [*&v1[v38] trailingAnchor];
  v49 = [*&v1[v6] trailingAnchor];
  v50 = OUTLINED_FUNCTION_2_82();
  v52 = [v50 v51];

  *(v25 + 64) = v52;
  specialized Array.append<A>(contentsOf:)(v25);
  v53 = objc_opt_self();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints_];

  v55 = PushToTalkSessionDetailsView.setupTextAreaLeadingAnchorConstraint(avatarView:)(0);
  v56 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint];
  *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLeadingAnchorConstraint] = v55;

  v57 = PushToTalkSessionDetailsView.setupTextAreaCenterYAnchorConstraint(avatarView:)(0);
  v58 = *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint];
  *&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaCenterYAnchorConstraint] = v57;
}

id PushToTalkSessionDetailsView.setupTextAreaLeadingAnchorConstraint(avatarView:)(void *a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide] leadingAnchor];
  if (!a1 || (v4 = [a1 trailingAnchor]) == 0)
  {
    v4 = [v1 leadingAnchor];
  }

  v5 = 12.0;
  if (!a1)
  {
    v5 = 0.0;
  }

  v6 = [v3 constraintEqualToAnchor:v4 constant:v5];

  [v6 setActive_];
  return v6;
}

id PushToTalkSessionDetailsView.setupTextAreaCenterYAnchorConstraint(avatarView:)(void *a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_textAreaLayoutGuide] centerYAnchor];
  if (!a1 || (v4 = [a1 centerYAnchor]) == 0)
  {
    v4 = [v1 centerYAnchor];
  }

  v5 = [v3 constraintEqualToAnchor_];

  [v5 setActive_];
  return v5;
}

id PushToTalkSessionDetailsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkSessionDetailsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SensitiveContentRecentsTipViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  SensitiveContentRecentsTipViewModel.init()();
  return v0;
}

uint64_t key path getter for SensitiveContentRecentsTipViewModel.participants : SensitiveContentRecentsTipViewModel@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = SensitiveContentRecentsTipViewModel.participants.getter(a1, a2);
  *a3 = result;
  return result;
}

uint64_t SensitiveContentRecentsTipViewModel.access<A>(keyPath:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_98();
  lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(v1, v2, &protocol conformance descriptor for SensitiveContentRecentsTipViewModel);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t SensitiveContentRecentsTipViewModel.withMutation<A, B>(keyPath:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_98();
  lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(v4, v5, &protocol conformance descriptor for SensitiveContentRecentsTipViewModel);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*SensitiveContentRecentsTipViewModel.participants.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit35SensitiveContentRecentsTipViewModel___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_98();
  v3[5] = lazy protocol witness table accessor for type SensitiveContentRecentsTipViewModel and conformance SensitiveContentRecentsTipViewModel(v4, v5, &protocol conformance descriptor for SensitiveContentRecentsTipViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_30_2(v1 + 16, v3);
  return SensitiveContentRecentsTipViewModel.participants.modify;
}

void SensitiveContentRecentsTipViewModel.participants.modify(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

void SensitiveContentRecentsTipViewModel.block(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Participant.handles.getter();
  specialized Collection.first.getter(v8);
  v10 = v9;

  if (v10)
  {
    swift_beginAccess();
    v12 = specialized Dictionary.subscript.getter(v11);
    if (v12)
    {
      v13 = v12;
      swift_endAccess();

      [v13 block];
LABEL_9:

      return;
    }

    swift_endAccess();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationKit);
  (*(v4 + 16))(v7, a1, v2);
  v13 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315138;
    Participant.handles.getter();
    v18 = Set.description.getter();
    v20 = v19;

    (*(v4 + 8))(v7, v2);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v23);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1BBC58000, v13, v15, "Not able to block participant: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
    goto LABEL_9;
  }

  (*(v4 + 8))(v7, v2);
}

uint64_t SensitiveContentRecentsTipViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit35SensitiveContentRecentsTipViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SensitiveContentRecentsTipViewModel.__deallocating_deinit()
{
  SensitiveContentRecentsTipViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t *RestrictedConversationChecker.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_56(&one-time initialization token for shared);
  }

  return &static RestrictedConversationChecker.shared;
}

id static RestrictedConversationChecker.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_56(&one-time initialization token for shared);
  }

  v1 = static RestrictedConversationChecker.shared;

  return v1;
}

id RestrictedConversationChecker.init(callCenter:)(void *a1)
{
  v3 = [a1 callFilterController];
  *&v1[OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_callFilterController] = v3;
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  OUTLINED_FUNCTION_0_99();
  _s10Foundation4UUIDVACSHAAWlTm_2(v4, v5, MEMORY[0x1E69695B8]);
  *(OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_unrestrictedAddressesForConversation + v1) = Dictionary.init(dictionaryLiteral:)();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RestrictedConversationChecker();
  v6 = objc_msgSendSuper2(&v10, sel_init);
  v7 = [a1 conversationManager];
  v8 = [a1 queue];
  [v7 addDelegate:v6 queue:v8];

  return v6;
}

void RestrictedConversationChecker.shouldRestrict(conversation:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = (&v79 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v79 - v16;
  v18 = [v2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *(v0 + OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_callFilterController);
  v20 = [v19 addressesToCheckForRestrictionsInConversation_];
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v21 + 16))
  {
    goto LABEL_5;
  }

  v83 = v3;
  v22 = OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_unrestrictedAddressesForConversation;
  swift_beginAccess();
  v81 = v0;

  OUTLINED_FUNCTION_14_29();
  v23 = specialized Dictionary.subscript.getter();

  if (v23)
  {

    v25 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v24, v23);

    if (v25)
    {

      v3 = v83;
LABEL_5:

      if (one-time initialization token for screenTime != -1)
      {
        OUTLINED_FUNCTION_1_84(&one-time initialization token for screenTime);
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, &static Log.screenTime);
      OUTLINED_FUNCTION_9_45();
      v27(v8, v17, v3);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_42();
        v31 = OUTLINED_FUNCTION_23();
        v85[0] = v31;
        *v30 = 136315138;
        OUTLINED_FUNCTION_0_99();
        _s10Foundation4UUIDVACSHAAWlTm_2(v32, v33, MEMORY[0x1E69695E0]);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        v83 = v17;
        v37 = *(v5 + 8);
        v37(v8, v3);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v85);

        *(v30 + 4) = v38;
        _os_log_impl(&dword_1BBC58000, v28, v29, "Conversation %s not restricted: addresses are known to be unrestricted.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();

        v37(v83, v3);
      }

      else
      {

        v54 = *(v5 + 8);
        v54(v8, v3);
        v55 = OUTLINED_FUNCTION_14_29();
        (v54)(v55);
      }

      goto LABEL_23;
    }
  }

  isa = Set._bridgeToObjectiveC()().super.isa;

  v40 = [v19 shouldRestrictAddresses:isa performSynchronously:0];

  if (v40)
  {

    v41 = v83;
    if (one-time initialization token for screenTime != -1)
    {
      OUTLINED_FUNCTION_1_84(&one-time initialization token for screenTime);
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, &static Log.screenTime);
    OUTLINED_FUNCTION_9_45();
    v43(v13, v17, v41);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_42();
      v82 = OUTLINED_FUNCTION_23();
      v85[0] = v82;
      *v46 = 136315138;
      OUTLINED_FUNCTION_0_99();
      _s10Foundation4UUIDVACSHAAWlTm_2(v47, v48, MEMORY[0x1E69695E0]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = OUTLINED_FUNCTION_17_35();
      v22(v52, v83);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v85);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_1BBC58000, v44, v45, "Conversation %s is restricted.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v72 = OUTLINED_FUNCTION_17_35();
      v22(v72, v41);
    }

    RestrictedConversationChecker.removeUnrestrictedAddresses(for:)();

    v73 = OUTLINED_FUNCTION_14_29();
    (v22)(v73);
  }

  else
  {
    v56 = v83;
    if (one-time initialization token for screenTime != -1)
    {
      OUTLINED_FUNCTION_1_84(&one-time initialization token for screenTime);
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, &static Log.screenTime);
    OUTLINED_FUNCTION_9_45();
    v58 = v82;
    v59(v82, v17, v56);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_42();
      v79 = v62;
      v80 = OUTLINED_FUNCTION_23();
      v85[0] = v80;
      *v62 = 136315138;
      OUTLINED_FUNCTION_0_99();
      _s10Foundation4UUIDVACSHAAWlTm_2(v63, v64, MEMORY[0x1E69695E0]);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v68 = OUTLINED_FUNCTION_11_43();
      v69(v68, v83);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v85);

      v71 = v79;
      *(v79 + 1) = v70;
      _os_log_impl(&dword_1BBC58000, v60, v61, "Conversation %s not restricted. Caching addresses.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v74 = OUTLINED_FUNCTION_11_43();
      v75(v74, v56);
    }

    v76 = v81;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v22 + v76);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v17, isUniquelyReferenced_nonNull_native);
    *(v22 + v76) = v84;
    swift_endAccess();
    v78 = OUTLINED_FUNCTION_14_29();
    v58(v78);
  }

LABEL_23:
  OUTLINED_FUNCTION_30_0();
}

void RestrictedConversationChecker.removeUnrestrictedAddresses(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_unrestrictedAddressesForConversation;
  swift_beginAccess();
  v11 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v12)
  {
    v13 = v11;
    v32 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *&v10[v0];
    v15 = *(v33 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVShySSGGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVShySSGGMR);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);
    v16 = v33;
    v17 = *(v33 + 48) + *(v6 + 72) * v13;
    v31 = *(v6 + 8);
    v31(v17, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    OUTLINED_FUNCTION_0_99();
    _s10Foundation4UUIDVACSHAAWlTm_2(v18, v19, MEMORY[0x1E69695B8]);
    _NativeDictionary._delete(at:)();
    *&v10[v1] = v16;
    swift_endAccess();
    if (one-time initialization token for screenTime != -1)
    {
      OUTLINED_FUNCTION_1_84(&one-time initialization token for screenTime);
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, &static Log.screenTime);
    (*(v6 + 16))(v9, v32, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_42();
      v24 = OUTLINED_FUNCTION_23();
      v34 = v24;
      *v23 = 136315138;
      OUTLINED_FUNCTION_0_99();
      _s10Foundation4UUIDVACSHAAWlTm_2(v25, v26, MEMORY[0x1E69695E0]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v31(v9, v4);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v34);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_1BBC58000, v21, v22, "Removed cached addresses for conversation %s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v31(v9, v4);
    }
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_30_0();
}

id RestrictedConversationChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RestrictedConversationChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RestrictedConversationChecker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void RestrictedConversationChecker.conversationManager(_:migratingFrom:to:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v41 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = [v6 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  RestrictedConversationChecker.removeUnrestrictedAddresses(for:)();
  v19 = v18;
  v43 = *(v9 + 8);
  v43(v16, v7);
  if (v19)
  {
    v20 = [*(v2 + OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_callFilterController) addressesToCheckForRestrictionsInConversation_];
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v20) = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v19, v21);

    if (v20)
    {
      v22 = [v4 UUID];
      v23 = v44;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (one-time initialization token for screenTime != -1)
      {
        OUTLINED_FUNCTION_1_84(&one-time initialization token for screenTime);
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, &static Log.screenTime);
      (*(v9 + 16))(v1, v23, v7);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_42();
        v42 = OUTLINED_FUNCTION_23();
        v46 = v42;
        *v27 = 136315138;
        OUTLINED_FUNCTION_0_99();
        _s10Foundation4UUIDVACSHAAWlTm_2(v28, v29, MEMORY[0x1E69695E0]);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        v33 = v1;
        v34 = v43;
        v43(v33, v7);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v46);

        *(v27 + 4) = v35;
        _os_log_impl(&dword_1BBC58000, v25, v26, "Migrating cached addresses to conversation %s.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        v36 = v1;
        v34 = v43;
        v43(v36, v7);
      }

      v37 = OBJC_IVAR____TtC15ConversationKit29RestrictedConversationChecker_unrestrictedAddressesForConversation;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *&v37[v2];
      v39 = v19;
      v40 = v44;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v44, isUniquelyReferenced_nonNull_native);
      *&v37[v2] = v45;
      swift_endAccess();
      v34(v40, v7);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void _sSh2eeoiySbShyxG_ABtFZ15ConversationKit17RecentsCallHandleV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  OUTLINED_FUNCTION_10_39();
  if (!v26)
  {
    return;
  }

  v4 = 0;
  v5 = v3 + 56;
  v6 = 1 << *(v3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v3 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = v2 + 56;
  v28 = v3;
  v29 = v2;
  v27 = v9;
  if (!v8)
  {
    goto LABEL_9;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_14:
    v15 = (*(v3 + 48) + 24 * (v11 | (v4 << 6)));
    v16 = *v15;
    v18 = *(v15 + 1);
    v17 = *(v15 + 2);
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v16);
    if (v17)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v19 = Hasher._finalize()();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v10 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_34:

      return;
    }

    v22 = ~v20;
    v23 = *(v2 + 48);
    while (1)
    {
      v24 = (v23 + 24 * v21);
      if (*v24 != v16)
      {
        goto LABEL_29;
      }

      v25 = *(v24 + 2);
      if (v25)
      {
        break;
      }

      if (!v17)
      {
        goto LABEL_31;
      }

LABEL_29:
      v21 = (v21 + 1) & v22;
      if (((*(v10 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if (!v17)
    {
      goto LABEL_29;
    }

    v26 = *(v24 + 1) == v18 && v25 == v17;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_31:

    v3 = v28;
    v2 = v29;
    v9 = v27;
    v8 = v30;
  }

  while (v30);
LABEL_9:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return;
    }

    ++v12;
    if (*(v5 + 8 * v4))
    {
      OUTLINED_FUNCTION_7_1();
      v30 = v14 & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v36 - v10;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v12;
  if (v4 == v2 || *(v4 + 16) != *(v2 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v15 = 0;
    v16 = *(v4 + 56);
    v37 = v4 + 56;
    v17 = 1 << *(v4 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v43 = v7 + 32;
    v45 = v2 + 56;
    v46 = v7 + 16;
    v21 = (v7 + 8);
    v38 = v20;
    v39 = &v36 - v12;
    v40 = v7;
    v41 = v4;
    if (v19)
    {
      while (2)
      {
        v22 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
LABEL_13:
        v26 = *(v4 + 48);
        v44 = *(v7 + 72);
        v27 = *(v7 + 16);
        v27(v14, v26 + v44 * (v22 | (v15 << 6)), v5, v13);
        (*(v7 + 32))(v47, v14, v5);
        OUTLINED_FUNCTION_0_99();
        _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, v28, MEMORY[0x1E69695B8]);
        v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v30 = v2;
        v31 = ~(-1 << *(v2 + 32));
        do
        {
          v32 = v29 & v31;
          if (((*(v45 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
          {
            (*v21)(v47, v5);
            goto LABEL_20;
          }

          (v27)(v0, *(v30 + 48) + v32 * v44, v5);
          OUTLINED_FUNCTION_0_99();
          _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, v33, MEMORY[0x1E69695C8]);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *v21;
          (*v21)(v0, v5);
          v29 = v32 + 1;
        }

        while ((v34 & 1) == 0);
        v35(v47, v5);
        v2 = v30;
        v7 = v40;
        v4 = v41;
        v20 = v38;
        v14 = v39;
        v19 = v42;
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_20;
      }

      ++v23;
      if (*(v37 + 8 * v15))
      {
        OUTLINED_FUNCTION_7_1();
        v42 = v25 & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5()
{
  OUTLINED_FUNCTION_16_36();
  if (v3)
  {
    if (!v2)
    {
      if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
      {
LABEL_30:
        OUTLINED_FUNCTION_18_13();
        return;
      }

      v9 = 1 << *(v1 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(v1 + 56);
      type metadata accessor for AnyCancellable();
      v12 = 0;
      v13 = (v9 + 63) >> 6;
      v4 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
      if (v11)
      {
        while (2)
        {
          v24 = (v11 - 1) & v11;
LABEL_23:
          OUTLINED_FUNCTION_4_65();
          _s10Foundation4UUIDVACSHAAWlTm_2(v17, v18, MEMORY[0x1E695BF18]);

          v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v20 = ~(-1 << *(v0 + 32));
          do
          {
            v21 = v19 & v20;
            if (((*(v0 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
            {

              goto LABEL_30;
            }

            OUTLINED_FUNCTION_4_65();
            _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, v22, MEMORY[0x1E695BF20]);
            v23 = dispatch thunk of static Equatable.== infix(_:_:)();
            v19 = v21 + 1;
          }

          while ((v23 & 1) == 0);

          v13 = (v9 + 63) >> 6;
          v11 = v24;
          v4 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v13)
        {
          goto LABEL_30;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v12))
        {
          OUTLINED_FUNCTION_7_1();
          v24 = v16 & v15;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    OUTLINED_FUNCTION_5_61();
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_5_61();
    OUTLINED_FUNCTION_18_13();

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
    MEMORY[0x1EEE6A200](v4);
    return;
  }

  OUTLINED_FUNCTION_18_13();

  specialized _NativeSet.isEqual(to:)(v6, v7);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _sSh2eeoiySbShyxG_ABtFZ15ConversationKit11BezelEffectO_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_10_39();
    if (v4)
    {
      v5 = 0;
      OUTLINED_FUNCTION_15_27();
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & v6;
      v10 = (v7 + 63) >> 6;
LABEL_8:
      if (v9)
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_15:
        v15 = *(*(v3 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1BFB22640](v15);
        v16 = Hasher._finalize()();
        v17 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(v2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v16 = v18 + 1;
          if (*(*(v2 + 48) + v18) == v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v12 = v5;
        while (1)
        {
          v5 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v5 >= v10)
          {
            return;
          }

          ++v12;
          if (*(v3 + 8 * v5))
          {
            OUTLINED_FUNCTION_7_1();
            v9 = v14 & v13;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t RestrictedConversationChecker.conversationManager(_:removedActiveConversation:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  RestrictedConversationChecker.removeUnrestrictedAddresses(for:)();

  return (*(v5 + 8))(v9, v3);
}

uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DelayedAnsweringMachine.currentTrackedCallUUID.getter()
{
  OUTLINED_FUNCTION_4_0(v0 + 32, v3);
  v1 = *(v0 + 32);

  return v1;
}

double DelayedAnsweringMachine.currentTrackedCallUUID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

uint64_t DelayedAnsweringMachine.__allocating_init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  type metadata accessor for TaskQueue();
  v4[2] = TaskQueue.__allocating_init()();
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = a1;
  v4[7] = a2;
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = *(v9 + 80);
  v11[3] = *(v9 + 88);
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  dispatch thunk of TaskQueue.async<A>(_:)();

  return v4;
}

uint64_t closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static CallScreeningActor.shared;
  v4[9] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:), v5, 0);
}

uint64_t closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_4_0(*(v0 + 48) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v5 = (*(v0 + 56) + **(v0 + 56));
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:);

    return v5();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *(v6 + 96) = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:), v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(*(v0 + 80) + 24) = *(v0 + 96);

  swift_unknownObjectRelease();
  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t partial apply for closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_7_54();

  return closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(v6, v7, v1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DelayedAnsweringMachine.start()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in DelayedAnsweringMachine.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.start(), v4, 0);
}

uint64_t closure #1 in DelayedAnsweringMachine.start()()
{
  OUTLINED_FUNCTION_4_0(v0[5] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 24))
    {
      v3 = v0[6];
      v2 = v0[7];
      v4 = *(v2 + 8);
      swift_unknownObjectRetain();
      v4(v3, v2);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t partial apply for closure #1 in DelayedAnsweringMachine.start()()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_92(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in DelayedAnsweringMachine.start()(v3, v1, v2);
}

uint64_t DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v0;
  v3 = type metadata accessor for URL();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v1[9] = *(v4 + 64);
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.open(_:), v6, v5);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v5, v2);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[14] = v8;
  *(v8 + 2) = *(v4 + 80);
  *(v8 + 3) = *(v4 + 88);
  *(v8 + 4) = v6;
  (*(v3 + 32))(&v8[v7], v1, v2);
  v12 = (*MEMORY[0x1E69D8980] + MEMORY[0x1E69D8980]);
  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *v9 = v0;
  v9[1] = DelayedAnsweringMachine.open(_:);

  return v12(v0 + 2, &async function pointer to partial apply for closure #1 in DelayedAnsweringMachine.open(_:), v8, v10);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.open(_:), v5, v4);
}

{
  OUTLINED_FUNCTION_9();

  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t closure #1 in DelayedAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static CallScreeningActor.shared;
  v3[26] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.open(_:), v4, 0);
}

uint64_t closure #1 in DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_4_0(v0[24] + 16, (v0 + 18));
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 24);
    v0[28] = v2;
    if (v2)
    {
      swift_unknownObjectRetain();
      URL._bridgeToObjectiveC()(v3);
      v5 = v4;
      v0[29] = v4;
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = closure #1 in DelayedAnsweringMachine.open(_:);
      v6 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSSgs5NeverOGMd, &_sSccySSSgs5NeverOGMR);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) (@unowned NSString?) -> () with result type String?;
      v0[13] = &block_descriptor_41_0;
      v0[14] = v6;
      [v2 openURL:v5 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  v7 = v0[23];
  *v7 = 0;
  v7[1] = 0;
  OUTLINED_FUNCTION_13();

  return v8();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.open(_:), v2, 0);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);

  swift_unknownObjectRelease();
  *v2 = *(v0 + 168);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t partial apply for closure #1 in DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_44();
  type metadata accessor for URL();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_7_54();

  return closure #1 in DelayedAnsweringMachine.open(_:)(v3, v4, v5);
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) (@unowned NSString?) -> () with result type String?(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v4, v6);
}

uint64_t @objc DelayedAnsweringMachine.open(_:)(uint64_t a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  return _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in DelayedAnsweringMachine.open(_:), v7);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in DelayedAnsweringMachine.open(_:), v6, v5);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];

  v0[9] = _Block_copy(v1);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in DelayedAnsweringMachine.open(_:);

  return DelayedAnsweringMachine.open(_:)();
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_0();
  v6 = v5;
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v2;
  OUTLINED_FUNCTION_4_6();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  if (a2)
  {
    v12 = MEMORY[0x1BFB209B0](a1, a2);
  }

  else
  {
    v12 = 0;
  }

  v13 = v6[9];
  (v13)[2](v13, v12);

  _Block_release(v13);

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)()
{
  OUTLINED_FUNCTION_44();
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = DelayedAnsweringMachine.screenCall(withUUID:manualScreening:);

  return DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  *(v4 + 40) = v3;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.screenCall(withUUID:manualScreening:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 90) = v3;
  *(v1 + 89) = v4;
  *(v1 + 16) = v5;
  *(v1 + 40) = *v0;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 56) = v7;
  *(v1 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v7, v6);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 90);
  v3 = *(v0 + 89);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  *(v7 + 16) = *(v1 + 80);
  *(v7 + 24) = *(v1 + 88);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 57) = v2;
  v11 = (*MEMORY[0x1E69D8980] + MEMORY[0x1E69D8980]);

  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:);
  v9 = MEMORY[0x1E69E6370];

  return v11(v0 + 88, &async function pointer to partial apply for closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v7, v9);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v5, v4);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)(uint64_t a1, int a2, void *a3, char a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  v10 = a3;

  return _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:), v9);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:), v6, v5);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:);
  OUTLINED_FUNCTION_8_54();

  return DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)();
}

uint64_t closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 234) = a6;
  *(v6 + 233) = a5;
  *(v6 + 184) = a3;
  *(v6 + 192) = a4;
  *(v6 + 168) = a1;
  *(v6 + 176) = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static CallScreeningActor.shared;
  *(v6 + 200) = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v7, 0);
}

uint64_t closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_4_0(*(v0 + 176) + 16, v0 + 144);
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (Strong)
  {
    v2 = *(Strong + 24);
    *(v0 + 216) = v2;
    if (v2)
    {
      v3 = *(v0 + 234);
      v4 = *(v0 + 233);
      v6 = *(v0 + 184);
      v5 = *(v0 + 192);
      swift_unknownObjectRetain();
      v7 = MEMORY[0x1BFB209B0](v6, v5);
      *(v0 + 224) = v7;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 232;
      *(v0 + 24) = closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:);
      v8 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
      *(v0 + 104) = &block_descriptor_34;
      *(v0 + 112) = v8;
      [v2 screenCallWithUUID:v7 manualScreening:v4 receptionist:v3 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }
  }

  **(v0 + 168) = 0;
  OUTLINED_FUNCTION_13();

  return v9();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v2, 0);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 224);
  v2 = *(v0 + 168);

  swift_unknownObjectRelease();
  *v2 = *(v0 + 232);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t partial apply for closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 57);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_92(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v8 = OUTLINED_FUNCTION_7_54();

  return closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(v8, v9, v1, v2, v3, v4);
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v2);
}

uint64_t @objc DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(uint64_t a1, int a2, void *a3, char a4, char a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 25) = a5;
  *(v11 + 32) = v10;
  *(v11 + 40) = a1;
  v12 = a3;

  return _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v11);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 73) = a3;
  *(v5 + 72) = a2;
  *(v5 + 16) = a1;
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v7, v6);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:);
  OUTLINED_FUNCTION_8_54();

  return DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)();
}

{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = *(v3 + 48);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t DelayedAnsweringMachine.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t DelayedAnsweringMachine.__deallocating_deinit()
{
  DelayedAnsweringMachine.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_92(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(v1, v2, v3, v5, v4);
}

uint64_t objectdestroy_25Tm_0()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_92(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)(v1, v2, v4, v3);
}

uint64_t partial apply for @objc closure #1 in DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_8_54();

  return v4(v3);
}

ConversationKit::InCallControlsBlockCell::BlockFlow_optional __swiftcall InCallControlsBlockCell.BlockFlow.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

ConversationKit::InCallControlsBlockCell::BlockFlow_optional protocol witness for RawRepresentable.init(rawValue:) in conformance InCallControlsBlockCell.BlockFlow@<W0>(Swift::Int *a1@<X0>, ConversationKit::InCallControlsBlockCell::BlockFlow_optional *a2@<X8>)
{
  result.value = InCallControlsBlockCell.BlockFlow.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InCallControlsBlockCell.BlockFlow@<X0>(uint64_t *a1@<X8>)
{
  result = InCallControlsBlockCell.BlockFlow.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(uint64_t a1)
{
  v2 = specialized Array.count.getter();
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = TUHandle.isBlocked()();

    v3 = v4 + 1;
  }

  while (v7);
}

uint64_t InCallControlsBlockCell.ViewModel.cellTitle.getter(uint64_t a1, char a2)
{
  InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(a1);
  v4 = v3;
  v5 = [objc_opt_self() conversationKit];
  if (a2)
  {
    v6 = "K_ALL_PARTICIPANTS";
    if (v4)
    {
      v6 = "ACTION_TITLE_UNBLOCK_CALLER";
    }

    v7 = 0xD000000000000023;
    if (v4)
    {
      v7 = 0xD000000000000025;
    }

    v8 = "RECENTS_REPORT_ALERT_CANCEL";
    if (v4)
    {
      v8 = "v16@?0@NSString8";
    }

    v9 = 0xD000000000000029;
    if ((v4 & 1) == 0)
    {
      v9 = 0xD000000000000027;
    }

    if (a2 == 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    if (a2 == 1)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = "LOCK_UNKNOWN_PARTICIPANTS";
    if (v4)
    {
      v10 = "ACTION_TITLE_BLOCK_CALLER";
      v11 = 0xD00000000000001BLL;
    }

    else
    {
      v11 = 0xD000000000000019;
    }
  }

  v17._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13 = v10 | 0x8000000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, v12, v5, v14, v17)._countAndFlagsBits;

  return countAndFlagsBits;
}

id InCallControlsBlockCell.ViewModel.cellTitleColor.getter(uint64_t a1)
{
  InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(a1);
  v2 = v1;
  v3 = objc_opt_self();
  v4 = &selRef_systemWhiteColor;
  if ((v2 & 1) == 0)
  {
    v4 = &selRef_systemRedColor;
  }

  v5 = [v3 *v4];

  return v5;
}

uint64_t static InCallControlsBlockCell.ViewModel.== infix(_:_:)(unint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  v5 = a2;
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8TUHandleC_Tt1g5(a1, a3);
  return v6 & (v5 == a4);
}

double InCallControlsBlockCell.viewModel.getter()
{
  swift_beginAccess();

  return result;
}

double key path getter for InCallControlsBlockCell.viewModel : InCallControlsBlockCell@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;

  return result;
}

double key path setter for InCallControlsBlockCell.viewModel : InCallControlsBlockCell(uint64_t a1)
{
  v1 = *(a1 + 8);

  return InCallControlsBlockCell.viewModel.setter(v2, v1);
}

double InCallControlsBlockCell.viewModel.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;

  return InCallControlsBlockCell.viewModel.didset();
}

double InCallControlsBlockCell.viewModel.didset()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  swift_beginAccess();
  if (*v1)
  {
    v3 = *(v1 + 8);

    v4.flow = v3;
    InCallControlsBlockCell.updateCell(viewModel:)(v4);
  }

  return result;
}

Swift::Void __swiftcall InCallControlsBlockCell.updateCell(viewModel:)(ConversationKit::InCallControlsBlockCell::ViewModel viewModel)
{
  flow = viewModel.flow;
  rawValue = viewModel.unknownHandles._rawValue;
  v3 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  InCallControlsBlockCell.ViewModel.cellTitle.getter(rawValue, flow);
  InCallControlsBlockCell.cellContentConfiguration.getter(v5);
  UIListContentConfiguration.text.setter();
  InCallControlsBlockCell.cellContentConfiguration.setter(v5);
  InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(rawValue);
  v7 = v6;
  v8 = objc_opt_self();
  v9 = &selRef_systemWhiteColor;
  if ((v7 & 1) == 0)
  {
    v9 = &selRef_systemRedColor;
  }

  v10 = [v8 *v9];
  InCallControlsBlockCell.cellContentConfiguration.getter(v5);
  v11 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v11(v12, 0);
  InCallControlsBlockCell.cellContentConfiguration.setter(v5);
  InCallControlsBlockCell.configureContent()();
}

double (*InCallControlsBlockCell.viewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return InCallControlsBlockCell.viewModel.modify;
}

double InCallControlsBlockCell.viewModel.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return InCallControlsBlockCell.viewModel.didset();
  }

  return result;
}

uint64_t InCallControlsBlockCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v9, v8, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  v10 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  closure #1 in InCallControlsBlockCell.cellContentConfiguration.getter();
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of Participant?(v5, v1 + v9, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsBlockCell.cellContentConfiguration.getter()
{
  MEMORY[0x1BFB21750]();
  v0 = [objc_opt_self() conversationKit];
  v15._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC500420;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v15);

  UIListContentConfiguration.text.setter();
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [v4 preferredFontForTextStyle_];
  UIFont.caseSensitive()();

  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v7(v14, 0);
  v8 = [objc_opt_self() systemRedColor];
  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v9(v14, 0);
  v10 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v10(v14, 0);
  v11 = [v4 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsBlockCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

double InCallControlsBlockCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
{
  v3 = [a1 fontDescriptor];
  v4 = [v3 objectForKey_];

  if (v4)
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
  if (*(&v10 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v5 scaledValueForValue_];
      a2 = v6;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd, &_sypSgMR);
  }

  return a2;
}

uint64_t InCallControlsBlockCell.cellContentConfiguration.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for UIListContentConfiguration();
  (*(*(v6 - 8) + 32))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined assign with take of Participant?(v5, v1 + v7, &_s5UIKit26UIListContentConfigurationVSgMd, &_s5UIKit26UIListContentConfigurationVSgMR);
  return swift_endAccess();
}

id InCallControlsBlockCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsBlockCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  *v2 = 0;
  *(v2 + 8) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___cellContentConfiguration;
  v4 = type metadata accessor for UIListContentConfiguration();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___blockImageAccessory;
  v6 = type metadata accessor for UICellAccessory();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___unblockImageAccessory, 1, 1, v6);
  v7 = OUTLINED_FUNCTION_18_1();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
  InCallControlsBlockCell.configureContent()();

  return v10;
}

uint64_t InCallControlsBlockCell.configureContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd, &_s5UIKit25UIBackgroundConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18[-1] - v2;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  MEMORY[0x1BFB216F0](v3);
  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  v18[3] = type metadata accessor for UIListContentConfiguration();
  v18[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  InCallControlsBlockCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  MEMORY[0x1BFB216E0](v18);
  v6 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  swift_beginAccess();
  if (*&v0[v6] && (v7 = , InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(v7), v9 = v8, , (v9 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
    v10 = *(type metadata accessor for UICellAccessory() - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = &OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___unblockImageAccessory;
    v14 = closure #1 in InCallControlsBlockCell.unblockImageAccessory.getter;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd, &_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMR);
    v15 = *(type metadata accessor for UICellAccessory() - 8);
    v11 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = &OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___blockImageAccessory;
    v14 = closure #1 in InCallControlsBlockCell.blockImageAccessory.getter;
  }

  InCallControlsBlockCell.unblockImageAccessory.getter(v13, v14, v12 + v11);
  return UICollectionViewListCell.accessories.setter();
}

id InCallControlsBlockCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsBlockCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  *v1 = 0;
  *(v1 + 8) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___cellContentConfiguration;
  v3 = type metadata accessor for UIListContentConfiguration();
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___blockImageAccessory;
  v5 = type metadata accessor for UICellAccessory();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___unblockImageAccessory, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t InCallControlsBlockCell.unblockImageAccessory.getter@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = *a1;
  swift_beginAccess();
  outlined init with copy of Participant?(v3 + v13, v12, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  v14 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(a3, v12, v14);
  }

  v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  a2(v15);
  (*(*(v14 - 8) + 16))(v9, a3, v14);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  swift_beginAccess();
  outlined assign with take of Participant?(v9, v3 + v13, &_s5UIKit15UICellAccessoryVSgMd, &_s5UIKit15UICellAccessoryVSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsBlockCell.blockImageAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIImage();
  v12 = @nonobjc UIImage.__allocating_init(systemName:)(0x6961722E646E6168, 0xEB00000000646573);
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v14 = [objc_opt_self() systemRedColor];
  [v13 setTintColor_];

  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v16 = *MEMORY[0x1E69DBF28];
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  *v15 = OUTLINED_FUNCTION_14_0;
  v15[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v4);
  v18 = type metadata accessor for UICellAccessory.LayoutDimension();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v18);
  v19 = v13;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in InCallControlsBlockCell.unblockImageAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd, &_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIImage();
  v12 = @nonobjc UIImage.__allocating_init(systemName:)(0xD000000000000016, 0x80000001BC500550);
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v14 = [objc_opt_self() systemWhiteColor];
  [v13 setTintColor_];

  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd, &_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMR) + 48)];
  v16 = *MEMORY[0x1E69DBF28];
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  *v15 = OUTLINED_FUNCTION_14_0;
  v15[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v4);
  v18 = type metadata accessor for UICellAccessory.LayoutDimension();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v18);
  v19 = v13;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v9 + 8))(v11, v8);
}

id InCallControlsBlockCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type InCallControlsBlockCell.BlockFlow and conformance InCallControlsBlockCell.BlockFlow()
{
  result = lazy protocol witness table cache variable for type InCallControlsBlockCell.BlockFlow and conformance InCallControlsBlockCell.BlockFlow;
  if (!lazy protocol witness table cache variable for type InCallControlsBlockCell.BlockFlow and conformance InCallControlsBlockCell.BlockFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsBlockCell.BlockFlow and conformance InCallControlsBlockCell.BlockFlow);
  }

  return result;
}

uint64_t type metadata accessor for InCallControlsBlockCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for InCallControlsBlockCell;
  if (!type metadata singleton initialization cache for InCallControlsBlockCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InCallControlsBlockCell(uint64_t a1)
{
  type metadata accessor for UIListContentConfiguration?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIListContentConfiguration?(319, &lazy cache variable for type metadata for UICellAccessory?, MEMORY[0x1E69DBF68]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UIListContentConfiguration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for InCallControlsBlockCell.BlockFlow(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for InCallControlsBlockCell.ViewModel(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for InCallControlsBlockCell.ViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(void *a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  v4 = ControlsButtonProvider.init(context:shape:)(a2, 2);
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDD00];
  v7 = a1;

  result = [v5 _preferredFontForTextStyle_variant_];
  if (result)
  {
    ControlsButtonProvider.titleFont.setter(result, v9);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ConversationControlsTrailingActionButtonProvider.buttonConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ControlsButtonProvider.defaultButtonConfiguration.getter(a1);
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC568], v3);
  UIButton.Configuration.buttonSize.setter();
  swift_beginAccess();
  if (*(v1 + 104))
  {
    v7 = [objc_opt_self() preferredFontForTextStyle_];
    v8 = [objc_opt_self() configurationWithFont:v7 scale:2];

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  }
}

uint64_t ConversationControlsTrailingActionButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsTrailingActionButtonProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t IntelligenceControlsViewContainerViewModel.canUpdate(with:)(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceControlsViewContainerViewModel.ControlsType();
  OUTLINED_FUNCTION_1();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v31 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSg_AFtMd, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSg_AFtMR) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMR);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  outlined init with copy of ConversationControlsType(a1, v33);
  IntelligenceControlsViewContainerViewModel.ControlsType.init(recipeType:)(v33, v20);
  IntelligenceControlsViewContainerViewModel.controlsType.getter();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v2);
  v24 = *(v6 + 56);
  outlined init with copy of Participant?(v20, v9, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMR);
  outlined init with copy of Participant?(v17, &v9[v24], &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMR);
  OUTLINED_FUNCTION_57(v9);
  if (!v26)
  {
    outlined init with copy of Participant?(v9, v14, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMR);
    OUTLINED_FUNCTION_57(&v9[v24]);
    if (!v26)
    {
      v27 = v32;
      (*(v32 + 32))(v31, &v9[v24], v2);
      lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType, MEMORY[0x1E6995938]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v27 + 8);
      v29 = OUTLINED_FUNCTION_309();
      v28(v29);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v17, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v20, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
      (v28)(v14, v2);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v9, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
      return v25 & 1;
    }

    OUTLINED_FUNCTION_56_6(v17);
    OUTLINED_FUNCTION_56_6(v20);
    (*(v32 + 8))(v14, v2);
LABEL_9:
    outlined destroy of IDView<AvatarStackView, [UUID]>(v9, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSg_AFtMd);
    v25 = 0;
    return v25 & 1;
  }

  OUTLINED_FUNCTION_56_6(v17);
  OUTLINED_FUNCTION_56_6(v20);
  OUTLINED_FUNCTION_57(&v9[v24]);
  if (!v26)
  {
    goto LABEL_9;
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v9, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
  v25 = 1;
  return v25 & 1;
}

uint64_t IntelligenceControlsViewContainerViewModel.ControlsType.init(recipeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntelligenceControlsViewContainerViewModel.ControlsType();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (*(a1 + 40) == 7)
  {
    v11 = vorrq_s8(*(a1 + 8), *(a1 + 24));
    v12 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
    if (*a1 == 21 && *&v12 == 0)
    {
      v16 = MEMORY[0x1E6995928];
    }

    else
    {
      if (*a1 != 22 || *&v12 != 0)
      {
        goto LABEL_10;
      }

      v16 = MEMORY[0x1E6995930];
    }

    (*(v6 + 104))(v10, *v16, v4);
    (*(v6 + 32))(a2, v10, v4);
    OUTLINED_FUNCTION_12();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v4);
  }

LABEL_10:
  outlined destroy of ConversationControlsType(a1);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t outlined assign with take of ConversationControlsRecipe(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id IntelligenceStrings.controlsManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceStrings(0) + 20));

  return v1;
}

void IntelligenceStrings.controlsManager.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for IntelligenceStrings(v2) + 20);

  *(v1 + v3) = v0;
}

void (*IntelligenceStrings.controlsManager.modify())()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for IntelligenceStrings(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t IntelligenceStrings.callScreeningService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceStrings(0) + 24);
  type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t IntelligenceStrings.callScreeningService.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for IntelligenceStrings(v2) + 24);
  type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*IntelligenceStrings.callScreeningService.modify())()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for IntelligenceStrings(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t IntelligenceStrings.transcriptViewModel.getter()
{
  type metadata accessor for IntelligenceStrings(0);
}

uint64_t IntelligenceStrings.title.getter()
{
  v1 = *(v0 + 80);

  return AttributedString.init(_:)();
}

uint64_t IntelligenceStrings.subtitle.getter()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB22010](0, v1);
    }

    else
    {
      v2 = *(v1 + 32);
    }

    AttributedString.init(_:)();
  }

  type metadata accessor for AttributedString();
  v3 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t IntelligenceStrings.statusMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v47[2] = a1;
  v2 = type metadata accessor for AttributeContainer();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40();
  v47[1] = v4;
  v5 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  v18 = *MEMORY[0x1E69E7D40] & **(v1 + *(type metadata accessor for IntelligenceStrings(0) + 20));
  (*(v18 + 672))();
  v20 = v19;
  ObjectType = swift_getObjectType();
  (*(v20 + 48))(v48, ObjectType, v20);
  swift_unknownObjectRelease();
  v47[0] = v1;
  CallScreeningService.screeningStatusForCall(_:)();
  __swift_destroy_boxed_opaque_existential_1(v48);
  v22 = v7[2];
  v22(v14, v17, v5);
  v23 = v7[11];
  v24 = OUTLINED_FUNCTION_45_11();
  if (v23(v24) == *MEMORY[0x1E6995EA8])
  {
    v25 = OUTLINED_FUNCTION_45_11();
    v26(v25);
    if (*(v14 + 1) || (TranscriptionViewModel.initialScreeningResponse.getter(), v37))
    {
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v38 = OUTLINED_FUNCTION_57_1();
      v39(v38);
    }

    else
    {
      v45 = OUTLINED_FUNCTION_57_1();
      v46(v45);
    }
  }

  else
  {
    v27 = v7[1];
    v28 = OUTLINED_FUNCTION_45_11();
    v27(v28);
    v22(v11, v17, v5);
    v29 = OUTLINED_FUNCTION_57_1();
    v23(v29);
    v30 = OUTLINED_FUNCTION_57_1();
    v27(v30);
    v31 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_14_2();
    v32.super.isa = v31;
    OUTLINED_FUNCTION_17_0(v33, v34, v35, v36, v32);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    (v27)(v17, v5);
  }

  type metadata accessor for AttributedString();
  v40 = OUTLINED_FUNCTION_2_23();
  return __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
}

uint64_t IntelligenceStrings.statusLeadingImage.getter()
{
  v1 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-1] - v9;
  v11 = type metadata accessor for IntelligenceStrings(0);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + *(v11 + 20))) + 0x2A0))();
  v13 = v12;
  ObjectType = swift_getObjectType();
  (*(v13 + 48))(v24, ObjectType, v13);
  swift_unknownObjectRelease();
  CallScreeningService.screeningStatusForCall(_:)();
  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v3 + 16))(v7, v10, v1);
  v15 = OUTLINED_FUNCTION_309();
  if (v16(v15) != *MEMORY[0x1E6995EA8])
  {
    v20 = *(v3 + 8);
    v20(v10, v1);
    v21 = OUTLINED_FUNCTION_309();
    (v20)(v21);
    return 0;
  }

  v17 = OUTLINED_FUNCTION_309();
  v18(v17);
  if (!*(v7 + 8))
  {
    (*(v3 + 8))(v10, v1);
    return 0;
  }

  v19 = Image.init(_internalSystemName:)();
  (*(v3 + 8))(v10, v1);
  return v19;
}

uint64_t default argument 2 of IntelligenceStrings.init(recipe:controlsManager:callScreeningService:)()
{
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  Defaults.init()();
  return CallScreeningService.init(overrides:)();
}

uint64_t IntelligenceStrings.init(recipe:controlsManager:callScreeningService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of ConversationControlsRecipe(a1, a4);
  v7 = type metadata accessor for IntelligenceStrings(0);
  *(a4 + v7[5]) = a2;
  v8 = v7[6];
  type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_7_0();
  (*(v9 + 32))(a4 + v8, a3);
  v10 = v7[7];
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_19_21(&one-time initialization token for viewModel);
  }

  *(a4 + v10) = static CallScreeningViewModelComposer.viewModel;
}

id IntelligenceControlsViewContainer.controlsManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsManager;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void IntelligenceControlsViewContainer.controlsManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsManager;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t IntelligenceControlsViewContainer.context.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_context;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IntelligenceControlsViewContainer.context.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_context;
  result = OUTLINED_FUNCTION_3_12(a1);
  *(v1 + v3) = v2;
  return result;
}

double IntelligenceControlsViewContainer.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_cnkContentAlpha;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

void IntelligenceControlsViewContainer.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_cnkContentAlpha;
  OUTLINED_FUNCTION_36_2();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t IntelligenceControlsViewContainer.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t key path getter for IntelligenceControlsViewContainer.recipe : IntelligenceControlsViewContainer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v3 + v4, a2);
}

uint64_t key path setter for IntelligenceControlsViewContainer.recipe : IntelligenceControlsViewContainer(uint64_t a1)
{
  v2 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v4);
  return IntelligenceControlsViewContainer.recipe.setter(v4);
}

uint64_t IntelligenceControlsViewContainer.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  IntelligenceControlsViewContainer.recipe.didset();
  OUTLINED_FUNCTION_4_66();
  return _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
}

id IntelligenceControlsViewContainer.recipe.didset()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel];
  swift_beginAccess();
  if (*(v2 + 24))
  {
    outlined init with copy of IDSLookupManager(v2, v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    IntelligenceControlsViewContainer.stringProvider.getter(v9);
    (*(v4 + 8))(v9, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v5 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v6)
  {
    [v6 invalidateIntrinsicContentSize];
    v7 = *&v1[v5];
    if (v7)
    {
      [v7 setNeedsLayout];
    }
  }

  [v1 invalidateIntrinsicContentSize];
  return [v1 setNeedsLayout];
}

uint64_t IntelligenceControlsViewContainer.stringProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = type metadata accessor for IntelligenceStrings(0);
  a1[3] = v4;
  a1[4] = lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type IntelligenceStrings and conformance IntelligenceStrings, type metadata accessor for IntelligenceStrings);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  outlined init with copy of ConversationControlsRecipe(v1 + v3, boxed_opaque_existential_1);
  v6 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsManager;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v7 = *(v1 + v6);
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  v8 = v7;
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  *(boxed_opaque_existential_1 + *(v4 + 20)) = v8;
  v9 = *(v4 + 28);
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_19_21(&one-time initialization token for viewModel);
  }

  *(boxed_opaque_existential_1 + v9) = static CallScreeningViewModelComposer.viewModel;
}

uint64_t IntelligenceControlsViewContainer.recipe.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

id IntelligenceControlsViewContainer.recipe.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return IntelligenceControlsViewContainer.recipe.didset();
  }

  return result;
}

void *IntelligenceControlsViewContainer.controlsView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IntelligenceControlsViewContainer.controlsView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  OUTLINED_FUNCTION_3_12(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *IntelligenceControlsViewContainer.__allocating_init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a3;
  v11 = objc_allocWithZone(v5);
  return IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(a1, a2, v8, a4, a5);
}

char *IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, double a5)
{
  v236 = a1;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for BannerCallScreeningReceptionistIncomingComposer();
  v12 = OUTLINED_FUNCTION_0_100(v11, &v231);
  v213[8] = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v14);
  v15 = type metadata accessor for IntelligenceBodyViewModel.Action();
  v16 = OUTLINED_FUNCTION_0_100(v15, &v227);
  v213[4] = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v21);
  v22 = type metadata accessor for ApertureCallScreeningReceptionistIncomingComposer();
  v23 = OUTLINED_FUNCTION_0_100(v22, v225);
  v213[1] = v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v25);
  v26 = type metadata accessor for BannerCallScreeningReceptionistRingingComposer();
  v27 = OUTLINED_FUNCTION_0_100(v26, &v237);
  v213[15] = v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v29);
  v30 = type metadata accessor for ApertureCallScreeningReceptionistRingingComposer();
  v31 = OUTLINED_FUNCTION_0_100(v30, &v234);
  v213[12] = v32;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_40();
  v34 = OUTLINED_FUNCTION_16(v33);
  v35 = type metadata accessor for ConversationControlsAction(v34);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v37);
  v38 = type metadata accessor for IntelligenceControlsViewContainerViewModel.ControlsType();
  v39 = OUTLINED_FUNCTION_0_100(v38, v240);
  v216 = v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v41);
  v42 = type metadata accessor for IntelligenceControlsViewContainerViewModel();
  v43 = OUTLINED_FUNCTION_0_100(v42, v245);
  v219 = v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_19();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_16(v213 - v46);
  v47 = type metadata accessor for WaitOnHoldHoldingDetectedViewFactory();
  v48 = OUTLINED_FUNCTION_0_100(v47, v242);
  v217 = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI29WaitOnHoldHoldingDetectedViewVyAA27ApertureButtonRepresentableVAEGMd, &_s16CommunicationsUI29WaitOnHoldHoldingDetectedViewVyAA27ApertureButtonRepresentableVAEGMR);
  OUTLINED_FUNCTION_0_100(v51, v244);
  v218 = v52;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI23AperturePlacementUIViewC13LayoutOptionsVSgMd, &_s16CommunicationsUI23AperturePlacementUIViewC13LayoutOptionsVSgMR);
  OUTLINED_FUNCTION_22(v55);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v57);
  v58 = type metadata accessor for IntelligenceBottomApertureView();
  v59 = OUTLINED_FUNCTION_0_100(v58, v247);
  v224 = v60;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMd, &_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMR);
  OUTLINED_FUNCTION_0_100(v62, v246);
  v222 = v63;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI22WaitOnHoldControlsViewVyAA0cde16LeadingAccessoryG0VGMd, &_s16CommunicationsUI22WaitOnHoldControlsViewVyAA0cde16LeadingAccessoryG0VGMR);
  OUTLINED_FUNCTION_0_100(v66, v248);
  v226 = v67;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v68);
  v70 = v213 - v69;
  v71 = type metadata accessor for AttributeContainer();
  v72 = OUTLINED_FUNCTION_22(v71);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_8();
  v75 = v74 - v73;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v77 = OUTLINED_FUNCTION_22(v76);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_16(v213 - v79);
  v228 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v81);
  *&v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView] = 0;
  v82 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  v83 = static Features.shared;
  *&v5[v82] = static Features.shared;
  *&v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_callHoldingTranscriptViewModelComposer] = 0;
  v84 = &v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel];
  *v84 = 0u;
  *(v84 + 1) = 0u;
  *(v84 + 4) = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsManager] = a2;
  v215 = a3;
  v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_context] = a3;
  *&v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_cnkContentAlpha] = a5;
  outlined init with copy of ConversationControlsRecipe(a4, &v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe]);
  v251.receiver = v5;
  v251.super_class = ObjectType;
  v85 = v83;
  v235 = a2;
  v86 = objc_msgSendSuper2(&v251, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v87 = swift_allocObject();
  *(v87 + 16) = 0u;
  *(v87 + 32) = 0u;
  *(v87 + 48) = 0;
  *v249 = 28;
  memset(&v249[8], 0, 32);
  v88 = OUTLINED_FUNCTION_37_19();
  outlined destroy of ConversationControlsType(v249);
  v233 = v88;
  v238 = a4;
  v237 = v86;
  v234 = v87;
  if (v88)
  {
    getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v87, v249);
    __swift_project_boxed_opaque_existential_1(v249, *&v249[24]);
    dispatch thunk of IntelligenceControlsViewContainerStringProvider.title.getter();
    getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v87, &v241);
    __swift_project_boxed_opaque_existential_1(&v241, v243);
    OUTLINED_FUNCTION_47_10();
    dispatch thunk of IntelligenceControlsViewContainerStringProvider.subtitle.getter();
    v89 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_14_2();
    v92.super.isa = v89;
    OUTLINED_FUNCTION_17_0(v91 | v90, 0x80000001BC500610, v93, v94, v92);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v228);
    v98 = type metadata accessor for WaitOnHoldViewModel();
    OUTLINED_FUNCTION_20_25(v98);
    OUTLINED_FUNCTION_45_11();
    WaitOnHoldViewModel.init(title:subtitle:statusMessage:service:)();
    __swift_destroy_boxed_opaque_existential_1(&v241);
    __swift_destroy_boxed_opaque_existential_1(v249);

    v99 = SBUIIsSystemApertureEnabled();
    MEMORY[0x1EEE9AC00](v99);
    type metadata accessor for WaitOnHoldLeadingAccessoryView();
    OUTLINED_FUNCTION_13_40();
    lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(v100, v101);
    WaitOnHoldControlsView.init(viewModel:apertureEnabled:leadingView:)();
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldControlsView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldControlsView<A>, &_s16CommunicationsUI22WaitOnHoldControlsViewVyAA0cde16LeadingAccessoryG0VGMd);
    v102 = v227;
    v103 = View.inLockScreenHostingController()();
    v104 = [v103 view];

    OUTLINED_FUNCTION_23_26();
    v105(v70, v102);
    v106 = v235;
    if (v104)
    {
      v107 = v104;
      OUTLINED_FUNCTION_32_12();
      goto LABEL_12;
    }

LABEL_25:

    OUTLINED_FUNCTION_26_21();

    OUTLINED_FUNCTION_32_12();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_8_55(29);
  v250 = 7;
  static ConversationControlsType.== infix(_:_:)(a4, v249);
  OUTLINED_FUNCTION_58_5();
  if ((v75 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_55(30);
    OUTLINED_FUNCTION_37_19();
    OUTLINED_FUNCTION_58_5();
    OUTLINED_FUNCTION_8_55(21);
    OUTLINED_FUNCTION_37_19();
    OUTLINED_FUNCTION_58_5();
    if (v75)
    {
      OUTLINED_FUNCTION_52_9();
      v181(*(v180 - 256));
      OUTLINED_FUNCTION_30_13();
      v182 = v221;
      IntelligenceControlsViewContainerViewModel.init(controlsType:stringProvider:)();
      v183 = v220;
      *&v249[24] = v220;
      *&v249[32] = &protocol witness table for IntelligenceControlsViewContainerViewModel;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v249);
      v185 = v219;
      (*(v219 + 16))(boxed_opaque_existential_1, v182, v183);
      v186 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel;
      OUTLINED_FUNCTION_55_8();
      outlined assign with take of Participant?(v249, &v70[v186], &_s15ConversationKit21IntelligenceViewModel_pSgMd, &_s15ConversationKit21IntelligenceViewModel_pSgMR);
      swift_endAccess();
      v187 = v214;
      v106 = v235;
      static ConversationControlsAction.rejectCall(controlsManager:)(v235, v214);
      OUTLINED_FUNCTION_22_25();
      ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
      v189 = v188;
      outlined destroy of IDView<AvatarStackView, [UUID]>(v249, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
      OUTLINED_FUNCTION_17_36();
      objc_opt_self();
      OUTLINED_FUNCTION_170();
      v190 = swift_dynamicCastObjCClass();
      if (!v190)
      {

        v190 = closure #21 in implicit closure #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)("Failed to get button from conversation action reject");
      }

      static ConversationControlsAction.acceptCall(controlsManager:)(v106, v187);
      OUTLINED_FUNCTION_22_25();
      ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
      v192 = v191;
      outlined destroy of IDView<AvatarStackView, [UUID]>(v249, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
      OUTLINED_FUNCTION_17_36();
      objc_opt_self();
      OUTLINED_FUNCTION_170();
      v193 = swift_dynamicCastObjCClass();
      if (!v193)
      {

        v193 = closure #21 in implicit closure #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)("Failed to get button from conversation action accept");
      }

      v194 = SBUIIsSystemApertureEnabled();
      IntelligenceControlsViewContainerViewModel.bottom.getter();
      IntelligenceControlsViewContainerViewModel.participant.getter();
      if (v194)
      {
        v195 = v213[11];
        ApertureCallScreeningReceptionistRingingComposer.init(bottomStatusViewModel:participantViewModel:)();
        v196 = OUTLINED_FUNCTION_31_18();
        ApertureCallScreeningReceptionistRingingComposer.compose(hostingVC:leadingButton:trailingButton:)(v199, v196, v197, v198);
        v201 = v200;

        OUTLINED_FUNCTION_23_26();
        v203 = v195;
        v204 = &v234;
      }

      else
      {
        v207 = v213[14];
        BannerCallScreeningReceptionistRingingComposer.init(bottomStatusViewModel:participantViewModel:)();
        v208 = OUTLINED_FUNCTION_31_18();
        BannerCallScreeningReceptionistRingingComposer.compose(hostingVC:leadingButton:trailingButton:)(v211, v208, v209, v210);
        v201 = v212;

        OUTLINED_FUNCTION_23_26();
        v203 = v207;
        v204 = &v237;
      }

      v202(v203, *(v204 - 32));
      (*(v185 + 8))(v221, v183);
      v107 = v201;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_8_55(22);
    v250 = 7;
    static ConversationControlsType.== infix(_:_:)(a4, v249);
    OUTLINED_FUNCTION_58_5();
    v106 = v235;
    goto LABEL_25;
  }

  v108 = v237;
  closure #2 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v87, v237, a4, v231);
  v109 = v235;
  closure #3 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v235, v108);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton, 0x1E69DC738);
  v110 = static UIButton.waitOnHoldEndCall()();
  v111 = static UIButton.waitOnHoldPickUp()();
  v112 = objc_opt_self();
  v113 = v110;
  v114 = [v112 conversationKit];
  v115.super.isa = v114;
  v116 = OUTLINED_FUNCTION_17_0(6581829, 0xE300000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v115);
  v118 = v117;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v116, v118, v113);
  v119 = v111;
  v120 = [v112 conversationKit];
  v121.super.isa = v120;
  v122 = OUTLINED_FUNCTION_17_0(0x4B4349505F484F57, 0xEB0000000050555FLL, 0x61737265766E6F43, 0xEF74694B6E6F6974, v121);
  v124 = v123;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v122, v124, v119);
  v230 = v113;
  [v113 addTarget:v109 action:sel_waitOnHoldEndCallButtonTappedWithButton_ forControlEvents:64];
  [v119 addTarget:v109 action:sel_waitOnHoldPickUpButtonTappedWithButton_ forControlEvents:64];
  if (SBUIIsSystemApertureEnabled())
  {
    v229 = type metadata accessor for AperturePlacementUIView();
    *v249 = xmmword_1BC4CA510;
    *&v249[16] = xmmword_1BC4CA520;
    v249[32] = 0;
    swift_getKeyPath();
    OUTLINED_FUNCTION_26_21();
    v228 = v125;
    AperturePlacementUIView.LayoutOptions.init(pushLeadingTrailingOutwards:layoutTopEdgeToAperture:insets:)();
    type metadata accessor for AperturePlacementUIView.LayoutOptions();
    OUTLINED_FUNCTION_12();
    v130 = __swift_storeEnumTagSinglePayload(v126, v127, v128, v129);
    v221 = v213;
    MEMORY[0x1EEE9AC00](v130);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    v131 = v238;
    *(v132 - 16) = v237;
    *(v132 - 8) = v131;
    MEMORY[0x1EEE9AC00](v133);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_51_8(v134);
    MEMORY[0x1EEE9AC00](v135);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_41_12(v136);
    MEMORY[0x1EEE9AC00](v137);
    OUTLINED_FUNCTION_41_12(v213);
    v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25TrailingActionButtonsViewVyAA27ApertureButtonRepresentableVAEGMd, &_s16CommunicationsUI25TrailingActionButtonsViewVyAA27ApertureButtonRepresentableVAEGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMR);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMR);
    lazy protocol witness table accessor for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_15_28(&lazy protocol witness table cache variable for type TrailingActionButtonsView<ApertureButtonRepresentable, ApertureButtonRepresentable> and conformance TrailingActionButtonsView<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_14_30();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(v138, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMR, v139);
    v140 = AperturePlacementUIView.__allocating_init<A, B, C, D>(hostingVC:layout:leading:trailing:center:bottom:)();
    v141 = v223;
  }

  else
  {
    v229 = type metadata accessor for InternalBannerPlacementUIView();
    MEMORY[0x1EEE9AC00](v229);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_51_8(v142);
    MEMORY[0x1EEE9AC00](v143);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_41_12(v144);
    MEMORY[0x1EEE9AC00](v145);
    OUTLINED_FUNCTION_41_12(v213);
    OUTLINED_FUNCTION_26_21();
    v226 = v146;
    v225[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9EmptyViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA9EmptyViewVAA12_FrameLayoutVGMR);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25TrailingActionButtonsViewVyAA27ApertureButtonRepresentableVAEGMd, &_s16CommunicationsUI25TrailingActionButtonsViewVyAA27ApertureButtonRepresentableVAEGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMR);
    lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_15_28(&lazy protocol witness table cache variable for type TrailingActionButtonsView<ApertureButtonRepresentable, ApertureButtonRepresentable> and conformance TrailingActionButtonsView<A, B>);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>> and conformance IntelligenceLabelView<A>, &_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMd);
    OUTLINED_FUNCTION_14_30();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(v147, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMR, v148);
    v141 = v223;
    v140 = InternalBannerPlacementUIView.__allocating_init<A, B, C, D>(hostingVC:leading:trailing:center:bottom:)();
  }

  v149 = *(v224 + 8);
  v107 = v140;
  v149(v232, v225[0]);
  OUTLINED_FUNCTION_23_26();
  v150(v231, v141);
  OUTLINED_FUNCTION_32_12();
  v106 = v235;
LABEL_12:
  [v70 addSubview_];
  [v107 setTranslatesAutoresizingMaskIntoConstraints_];
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v152 = swift_allocObject();
  v232 = xmmword_1BC4BA930;
  *(v152 + 16) = xmmword_1BC4BA930;
  v153 = [v107 leadingAnchor];
  v154 = [v70 leadingAnchor];
  v155 = [v153 constraintEqualToAnchor_];

  *(v152 + 32) = v155;
  v156 = [v107 trailingAnchor];
  v157 = [v70 trailingAnchor];
  v158 = [v156 constraintEqualToAnchor_];

  *(v152 + 40) = v158;
  v239 = v152;
  if ((v233 & 1) != 0 && SBUIIsSystemApertureEnabled())
  {
    swift_initStackObject();
    OUTLINED_FUNCTION_49_11();
    *(v160 + 16) = *(v159 - 256);
    v161 = [v107 topAnchor];
    v162 = [v70 SBUISA_systemApertureCustomControlsContentLayoutGuide];
    v163 = [v162 topAnchor];

    v164 = [v161 constraintEqualToAnchor_];
    *(v151 + 32) = v164;
    v165 = [v107 bottomAnchor];
    v166 = [v70 SBUISA_systemApertureCustomControlsContentLayoutGuide];
    v167 = [v166 bottomAnchor];
  }

  else
  {
    swift_initStackObject();
    OUTLINED_FUNCTION_49_11();
    *(v169 + 16) = *(v168 - 256);
    v170 = [v107 topAnchor];
    v171 = [v70 topAnchor];
    v172 = [v170 constraintEqualToAnchor_];

    *(v151 + 32) = v172;
    v165 = [v107 bottomAnchor];
    v167 = [v70 bottomAnchor];
  }

  v173 = [v165 constraintEqualToAnchor_];

  *(v151 + 40) = v173;
  specialized Array.append<A>(contentsOf:)(v151);
  v174 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v174 activateConstraints_];

  v176 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  swift_beginAccess();
  v177 = *&v70[v176];
  *&v70[v176] = v107;
  v178 = v107;

  [v70 setNeedsLayout];

  OUTLINED_FUNCTION_26_21();

LABEL_26:
  OUTLINED_FUNCTION_4_66();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
  return v70;
}

uint64_t getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of Participant?(a1 + 16, &v5, &_s16CommunicationsUI47IntelligenceControlsViewContainerStringProvider_pSgMd, _s16CommunicationsUI47IntelligenceControlsViewContainerStringProvider_pSgMR);
  if (v6)
  {
    return outlined init with take of TapInteractionHandler(&v5, a2);
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(&v5, &_s16CommunicationsUI47IntelligenceControlsViewContainerStringProvider_pSgMd);
  IntelligenceControlsViewContainer.stringProvider.getter(a2);
  outlined init with copy of IDSLookupManager(a2, &v5);
  swift_beginAccess();
  return outlined assign with take of Participant?(&v5, a1 + 16, &_s16CommunicationsUI47IntelligenceControlsViewContainerStringProvider_pSgMd, _s16CommunicationsUI47IntelligenceControlsViewContainerStringProvider_pSgMR);
}

id IntelligenceControlsViewContainer.leadingView(recipe:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = a1 + *(type metadata accessor for ConversationControlsRecipe(0) + 68);
  v3 = *(v2 + 16);
  if (v3 == 255)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Logger.conversationControls);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      v14 = _typeName(_:qualified:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v10, v11, "[%{public}s] omitting leading view", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    v5 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v6 = sel_init;

    return [v5 v6];
  }

  v4 = *v2;
  if (v3)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v6 = sel_initWithImage_;
    v7 = v4;

    return [v5 v6];
  }

  outlined copy of PreCallControlsContext(*v2);
  return v4;
}

uint64_t closure #2 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore18ActivityLabelStyleOSgMd, &_s20CommunicationsUICore18ActivityLabelStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14ActivitySymbolVSgMd, &_s20CommunicationsUICore14ActivitySymbolVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v18 - 8);
  getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(a1, v29);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of IntelligenceControlsViewContainerStringProvider.title.getter();
  v19 = type metadata accessor for ActivitySymbol();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(a1, v28);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  dispatch thunk of IntelligenceControlsViewContainerStringProvider.subtitle.getter();
  v20 = type metadata accessor for ActivityLabelStyle();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v20);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  type metadata accessor for ParticipantLabelViewModel();
  swift_allocObject();
  ParticipantLabelViewModel.init(title:titleSymbol:subtitle:titleStyle:subtitleStyle:subtitleSymbol:)();
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v26 = a2;
  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarF0VyAF0hij16LeadingAccessoryF0VGGMd, &_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarF0VyAF0hij16LeadingAccessoryF0VGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>();
  return IntelligenceLabelView.init(viewModel:leadingView:)();
}

uint64_t closure #1 in closure #2 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd, _s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarG0VyAH0ijk16LeadingAccessoryG0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarG0VyAH0ijk16LeadingAccessoryG0VG_GMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = SBUIIsSystemApertureEnabled();
  if (v11)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>, &_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    *(&v13 - 2) = a1;
    *(&v13 - 1) = a2;
    type metadata accessor for WaitOnHoldLeadingAccessoryView();
    lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type WaitOnHoldLeadingAccessoryView and conformance WaitOnHoldLeadingAccessoryView, MEMORY[0x1E6995C58]);
    WaitOnHoldAvatarView.init(leadingView:)();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>, &_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t closure #3 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(void *a1, uint64_t a2)
{
  type metadata accessor for CallHoldingTranscriptViewModelComposer();
  swift_allocObject();
  v4 = CallHoldingTranscriptViewModelComposer.init()();
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(v5, v6);
  swift_unknownObjectRelease();
  *(a2 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_callHoldingTranscriptViewModelComposer) = v4;

  IntelligenceBottomApertureView.init(viewModel:)();
}

double closure #6 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMd, &_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMR);
  result = 0.0;
  *(a2 + *(v5 + 36)) = xmmword_1BC4C92B0;
  return result;
}

double closure #8 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<D0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  result = *&v8;
  *(a2 + 32) = v8;
  return result;
}

uint64_t closure #5 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TrailingActionButtonsViewFactory();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  TrailingActionButtonsViewFactory.init()();
  TrailingActionButtonsViewFactory.makeWithUIButtons(_:_:)();
  return (*(v4 + 8))(v8, v2);
}

uint64_t closure #7 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>, double a6@<D1>)
{
  v10 = static Color.black.getter();
  v11 = static Edge.Set.all.getter();
  type metadata accessor for IntelligenceBottomApertureView();
  OUTLINED_FUNCTION_7_0();
  v12 = OUTLINED_FUNCTION_29_6();
  v13(v12);
  v14 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMR) + 36);
  *v14 = v10;
  *(v14 + 8) = v11;
  LOBYTE(a2) = a2();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGMR) + 36);
  *v23 = a2;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  LOBYTE(a3) = a3();
  EdgeInsets.init(_all:)();
  OUTLINED_FUNCTION_40_1();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMR);
  v25 = a4 + *(result + 36);
  *v25 = a3;
  *(v25 + 8) = a6;
  *(v25 + 16) = v16;
  *(v25 + 24) = v18;
  *(v25 + 32) = v20;
  *(v25 + 40) = 0;
  return result;
}

uint64_t closure #4 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a4@<X8>)
{
  type metadata accessor for WaitOnHoldLeadingAccessoryView();
  OUTLINED_FUNCTION_13_40();
  lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(v10, v11);
  WaitOnHoldAvatarView.init(leadingView:)();
  v12 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  OUTLINED_FUNCTION_40_1();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMR);
  v14 = a4 + *(result + 36);
  *v14 = v12;
  *(v14 + 8) = v5;
  *(v14 + 16) = v6;
  *(v14 + 24) = v7;
  *(v14 + 32) = v8;
  *(v14 + 40) = 0;
  return result;
}

uint64_t closure #15 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #16 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI29WaitOnHoldHoldingDetectedViewVyAA27ApertureButtonRepresentableVAEGMd, &_s16CommunicationsUI29WaitOnHoldHoldingDetectedViewVyAA27ApertureButtonRepresentableVAEGMR);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB029WaitOnHoldHoldingDetectedViewVyAD27ApertureButtonRepresentableVAHGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy014CommunicationsB029WaitOnHoldHoldingDetectedViewVyAD27ApertureButtonRepresentableVAHGAA14_PaddingLayoutVGMR);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t closure #17 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for WaitOnHoldLeadingAccessoryView();
  lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type WaitOnHoldLeadingAccessoryView and conformance WaitOnHoldLeadingAccessoryView, MEMORY[0x1E6995C58]);
  return WaitOnHoldAvatarView.init(leadingView:)();
}