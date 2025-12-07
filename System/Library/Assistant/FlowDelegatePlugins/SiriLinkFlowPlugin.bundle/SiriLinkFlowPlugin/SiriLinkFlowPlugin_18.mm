uint64_t Siri_Nlu_External_UserDialogAct.BOOLValue.getter()
{
  v63 = type metadata accessor for Google_Protobuf_StringValue();
  OUTLINED_FUNCTION_7_1();
  v61 = v0;
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  v5 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  OUTLINED_FUNCTION_7_1();
  v62 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  OUTLINED_FUNCTION_7_1();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  OUTLINED_FUNCTION_7_1();
  v20 = v19;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
  {
    return 1;
  }

  if (Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
  {
    return 0;
  }

  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v20 + 8))(v24, v18);
  v27 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v13 + 8))(v17, v11);
  v59 = *(v27 + 16);
  if (!v59)
  {
LABEL_28:

    if (one-time initialization token for voiceCommands != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v28 = 0;
  v60 = v27 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  while (v28 < *(v27 + 16))
  {
    v29 = v27;
    (*(v62 + 16))(v10, v60 + *(v62 + 72) * v28, v5);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v30 = Google_Protobuf_StringValue.value.getter();
    v32 = v31;
    (*(v61 + 8))(v4, v63);
    if (v30 == 0xD000000000000018 && 0x8000000000232140 == v32)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_26_24();
        v36(v35);
        goto LABEL_27;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x747065636361 && v37 == 0xE600000000000000)
    {

LABEL_33:
      v55 = OUTLINED_FUNCTION_26_24();
      v56(v55);

      return 1;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_33;
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x7463656A6572 && v40 == 0xE600000000000000)
    {

      v57 = OUTLINED_FUNCTION_26_24();
      v58(v57);
LABEL_35:

      return 0;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v43 = OUTLINED_FUNCTION_26_24();
    v44(v43);
    if (v42)
    {
      goto LABEL_35;
    }

LABEL_27:
    ++v28;
    v27 = v29;
    if (v59 == v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_37:
  OUTLINED_FUNCTION_0_1();
  swift_once();
LABEL_29:
  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.voiceCommands);
  v46 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v47 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v47, v48))
  {
    v25 = 2;
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_44_14();
    _os_log_impl(v49, v50, v51, v52, v53, v54);
    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    return 2;
  }

  return v25;
}

uint64_t Siri_Nlu_External_UserDialogAct.measurementValue(locale:)(uint64_t a1)
{
  v5 = Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter();
  if (v2)
  {
    return v1;
  }

  if (v5)
  {

    v6 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

    if (v6)
    {
      dispatch thunk of UsoEntity_common_VoiceCommandPayload.measurement.getter();
      OUTLINED_FUNCTION_48_11();

      if (v3)
      {
        v7 = dispatch thunk of UsoEntity_common_Measurement.components.getter();
        if (v7)
        {
          v8 = v7;
          if (!specialized Array.count.getter(v7))
          {

            goto LABEL_14;
          }

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
          if ((v8 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          dispatch thunk of CodeGenListEntry.entry.getter();

          if (v17)
          {
            v1 = UsoEntity_common_MeasurementComponent.measurementValue(locale:)(a1);

            return v1;
          }
        }
      }
    }
  }

LABEL_14:
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v9, static Logger.voiceCommands);
  v10 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v11 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_18_1();
    v13 = swift_slowAlloc();
    OUTLINED_FUNCTION_44_2(v13);
    OUTLINED_FUNCTION_21_6(&dword_0, v14, v15, "#NLUUserDialogActInputUtils: Unable to extract measurement component from parse");
    OUTLINED_FUNCTION_15_1();
  }

  return 0;
}

id Siri_Nlu_External_UserDialogAct.currencyValue(locale:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8CurrencyVSgMd, &_s10Foundation6LocaleV8CurrencyVSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  v7 = &v60 - v6;
  v8 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter();
  if (!v2)
  {
    v19 = v18;
    if (!v18)
    {
LABEL_12:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v25, static Logger.voiceCommands);
      v26 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v27 = OUTLINED_FUNCTION_17_18();
      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_18_1();
        v29 = swift_slowAlloc();
        OUTLINED_FUNCTION_44_2(v29);
        OUTLINED_FUNCTION_21_6(&dword_0, v30, v31, "#NLUUserDialogActInputUtils: Unable to extract currency information from parse");
        OUTLINED_FUNCTION_15_1();
      }

      return 0;
    }

    v20 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

    if (!v20 || (v70 = a1, dispatch thunk of UsoEntity_common_VoiceCommandPayload.currency.getter(), OUTLINED_FUNCTION_35_17(), , !a1))
    {
LABEL_11:

      goto LABEL_12;
    }

    v21 = dispatch thunk of UsoEntity_common_CurrencyAmount.currency.getter();
    if (!v21)
    {
LABEL_10:

      goto LABEL_11;
    }

    v68 = a1;
    v69 = v21;
    v22 = dispatch thunk of UsoEntity_common_CurrencyAmount.amount.getter();
    if (!v22 || (v63 = UsoEntity_common_Number.doubleValue.getter(v22), v24 = v23, , (v24 & 1) != 0))
    {

      goto LABEL_10;
    }

    v33 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
    if (v33)
    {
      v67 = *(v33 + 16);
      if (v67)
      {
        v61 = v7;
        v62 = v19;
        v34 = 0;
        v65 = v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v64 = v10 + 16;
        v66 = (v10 + 8);
        while (v34 < *(v33 + 16))
        {
          v7 = v33;
          (*(v10 + 16))(v14, v65 + *(v10 + 72) * v34, v8);
          v35 = UsoIdentifier.namespace.getter();
          if (v36)
          {
            if (v35 == 0x79636E6572727563 && v36 == 0xEC00000074696E55)
            {

LABEL_34:

              (*(v10 + 32))(v17, v14, v8);
              v67 = UsoIdentifier.value.getter();
              v14 = v39;
              (*(v10 + 8))(v17, v8);
LABEL_35:
              v7 = v61;
              goto LABEL_36;
            }

            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v38)
            {
              goto LABEL_34;
            }
          }

          ++v34;
          (*v66)(v14, v8);
          v33 = v7;
          if (v67 == v34)
          {

            v67 = 0;
            v14 = 0;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    v67 = 0;
    v14 = 0;
LABEL_36:
    if (one-time initialization token for voiceCommands == -1)
    {
LABEL_37:
      v40 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v40, static Logger.voiceCommands);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v71 = v44;
        *v43 = 136315138;
        if (v14)
        {
          v45 = v67;
        }

        else
        {
          v45 = 0x296C696E28;
        }

        LODWORD(v66) = v42;
        if (v14)
        {
          v46 = v14;
        }

        else
        {
          v46 = 0xE500000000000000;
        }

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v71);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_0, v41, v66, "#NLUUserDialogActInputUtils: Currency parser received unit with identifier: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        OUTLINED_FUNCTION_15_1();

        OUTLINED_FUNCTION_15_1();
      }

      if (v14)
      {

        v48._countAndFlagsBits = 0x756F756769626D61;
        v48._object = 0xE900000000000073;
        v49 = String.hasPrefix(_:)(v48);

        if (!v49)
        {
          v53 = String.uppercased()();
          countAndFlagsBits = v53._countAndFlagsBits;
          object = v53._object;

          goto LABEL_52;
        }

        Locale.currency.getter();
        v50 = type metadata accessor for Locale.Currency();
        if (__swift_getEnumTagSinglePayload(v7, 1, v50) != 1)
        {
          countAndFlagsBits = Locale.Currency.identifier.getter();
          object = v54;
          OUTLINED_FUNCTION_21_2();
          v55 = OUTLINED_FUNCTION_31_16();
          v56(v55);
          goto LABEL_52;
        }

        outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s10Foundation6LocaleV8CurrencyVSgMd, &_s10Foundation6LocaleV8CurrencyVSgMR);
      }

      countAndFlagsBits = 0;
      object = 0xE000000000000000;
LABEL_52:
      v57 = HIBYTE(object) & 0xF;
      if ((object & 0x2000000000000000) == 0)
      {
        v57 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v57)
      {
        v58 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:*&v63];
        v59 = objc_allocWithZone(INCurrencyAmount);
        v1 = @nonobjc INCurrencyAmount.init(amount:currencyCode:)(v58);

        return v1;
      }

      return 0;
    }

LABEL_58:
    OUTLINED_FUNCTION_0_1();
    swift_once();
    goto LABEL_37;
  }

  return v1;
}

uint64_t Siri_Nlu_External_UserDialogAct.intValue.getter(uint64_t (*a1)(uint64_t))
{
  v4 = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (v2)
  {
    return v1;
  }

  v1 = v4;
  if (!v4)
  {
    return v1;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  OUTLINED_FUNCTION_22_23();

  if (!v18)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v17, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  v5 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_36_14(v5, v6, v7, v5, v8, v9, v10, v11, v14, v15);
  OUTLINED_FUNCTION_21_20();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v16;
  dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
  OUTLINED_FUNCTION_20_14();

  if (v16)
  {
    dispatch thunk of UsoEntity_common_VoiceCommandPayload.number.getter();
    OUTLINED_FUNCTION_35_17();

    v1 = a1(v12);
  }

  return v1;
}

SiriLinkFlowPlugin::VoiceCommandsNLIntent::VoiceCommandPagination_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Siri_Nlu_External_UserDialogAct.paginationValue()()
{
  result.value = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v0)
  {
    static UsoTask_CodegenConverter.convert(task:)();

    outlined init with copy of SiriWorkflowRunnerEvent?(&v10, &v8, &_sypSgMd, &_sypSgMR);
    if (*(&v9 + 1))
    {
      v2 = type metadata accessor for UsoTask_skipForward_uso_NoEntity();
      if (OUTLINED_FUNCTION_27_18(v2, v3))
      {

        outlined destroy of Siri_Nlu_External_UserDialogAct?(&v10, &_sypSgMd, &_sypSgMR);
        return 0;
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(&v8, &_sypSgMd, &_sypSgMR);
    }

    outlined init with copy of SiriWorkflowRunnerEvent?(&v10, &v8, &_sypSgMd, &_sypSgMR);
    if (*(&v9 + 1))
    {
      v4 = type metadata accessor for UsoTask_skipBackward_uso_NoEntity();
      if (OUTLINED_FUNCTION_27_18(v4, v5))
      {

        outlined destroy of Siri_Nlu_External_UserDialogAct?(&v10, &_sypSgMd, &_sypSgMR);
        return 1;
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(&v8, &_sypSgMd, &_sypSgMR);
    }

    v8 = v10;
    v9 = v11;
    if (*(&v11 + 1))
    {
      v6 = type metadata accessor for UsoTask_repeat_uso_NoEntity();
      if (OUTLINED_FUNCTION_27_18(v6, v7))
      {

        return 2;
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(&v8, &_sypSgMd, &_sypSgMR);
    }

    return 3;
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.dateValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_17_30(v1, v2, v3, v4, v5, v6);
  v7 = type metadata accessor for DateComponents();
  v0[14] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[15] = v8;
  v0[16] = OUTLINED_FUNCTION_27();
  v0[17] = swift_task_alloc();
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(0);
  v0[18] = v9;
  OUTLINED_FUNCTION_14(v9);
  v0[19] = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = *(v0 + 152);

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v1);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t Siri_Nlu_External_UserDialogAct.dateValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  if (Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {

    static UsoTask_CodegenConverter.convert(task:)();
    OUTLINED_FUNCTION_22_23();

    if (v14[5])
    {
      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      OUTLINED_FUNCTION_21_20();
      v21 = swift_dynamicCast();
      if (v21)
      {
        OUTLINED_FUNCTION_68_11(v21);
        OUTLINED_FUNCTION_1_18();

        dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter();
        OUTLINED_FUNCTION_48_11();

        if (v16)
        {
          v23 = v14[18];
          v22 = v14[19];
          v14[20] = OUTLINED_FUNCTION_45_9();

          outlined init with copy of DeviceState(v19, v22);
          outlined init with copy of DeviceState(v18, v22 + 40);
          v24 = v23[6];
          type metadata accessor for Locale();
          OUTLINED_FUNCTION_4_11();
          (*(v25 + 16))(v22 + v24, v17);
          v26 = v23[7];
          type metadata accessor for Calendar();
          OUTLINED_FUNCTION_4_11();
          (*(v27 + 16))(v22 + v26, v15);
          v28 = v23[8];
          type metadata accessor for TimeZone();
          OUTLINED_FUNCTION_4_11();
          (*(v29 + 16))(v22 + v28, a10);
          v30 = swift_task_alloc();
          v14[21] = v30;
          *v30 = v14;
          v30[1] = Siri_Nlu_External_UserDialogAct.dateValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:);
          OUTLINED_FUNCTION_6_1();

          return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
        }
      }
    }

    else
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?((v14 + 2), &_sypSgMd, &_sypSgMR);
    }
  }

  type metadata accessor for Date();
  OUTLINED_FUNCTION_62_9();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t Siri_Nlu_External_UserDialogAct.dateValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  if (v12[22])
  {
    v13 = v12[17];
    v15 = v12[14];
    v14 = v12[15];
    a9 = v12[19];

    dispatch thunk of DateTime.dateComponents.getter();

    v16 = OUTLINED_FUNCTION_13_5();
    v17(v16);
    Calendar.date(from:)();

    (*(v14 + 8))(v13, v15);
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(a9);
  }

  else
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v12[19]);

    type metadata accessor for Date();
    OUTLINED_FUNCTION_62_9();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t Siri_Nlu_External_UserDialogAct.durationValue()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMd, &_s12SiriOntology25UsoEntity_common_TimeUnitC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v2);
  type metadata accessor for UsoEntity_common_TimeUnit.DefinedValues();
  OUTLINED_FUNCTION_7_1();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_50_0();
  __chkstk_darwin(v4);
  result = Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter();
  if (!v0)
  {
    if (result)
    {

      v6 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();

      if (v6)
      {
        dispatch thunk of UsoEntity_common_VoiceCommandPayload.measurement.getter();
        OUTLINED_FUNCTION_59_9();
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v7, static Logger.voiceCommands);
    v8 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v9 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_18_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_44_14();
      _os_log_impl(v11, v12, v13, v14, v15, v16);
      OUTLINED_FUNCTION_15_1();
    }

    return 0;
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.recurrenceRuleValue(calendar:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v1[11] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for Calendar.MatchingPolicy();
  v1[14] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for Calendar.RecurrenceRule.End();
  OUTLINED_FUNCTION_14(v8);
  v1[17] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for Calendar();
  v1[18] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Calendar.RecurrenceRule.Frequency();
  v1[21] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[22] = v12;
  v1[23] = OUTLINED_FUNCTION_27();
  v1[24] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8DateTimeC0D4UnitOSgMd, &_s13SiriInference8DateTimeC0D4UnitOSgMR);
  OUTLINED_FUNCTION_14(v13);
  v1[25] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for DateTime.TimeUnit();
  v1[26] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[27] = v15;
  v1[28] = OUTLINED_FUNCTION_27();
  v1[29] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v16);
}

{
  if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {
    goto LABEL_17;
  }

  static UsoTask_CodegenConverter.convert(task:)();
  OUTLINED_FUNCTION_22_23();

  if (!v1[5])
  {
    v7 = &_sypSgMd;
    v8 = &_sypSgMR;
    v9 = (v1 + 2);
    goto LABEL_13;
  }

  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_21_20();
  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_68_11(v3);
  OUTLINED_FUNCTION_1_18();

  dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTimeRange.getter();
  OUTLINED_FUNCTION_59_9();

  if (!v0)
  {
    goto LABEL_17;
  }

  CodeGenBase.entity.getter();
  OUTLINED_FUNCTION_1_18();

  type metadata accessor for UsoEntity_common_RecurringDateTimeRange();
  OUTLINED_FUNCTION_63_9();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v1[7])
  {
LABEL_16:

    goto LABEL_17;
  }

  if (!dispatch thunk of UsoEntity_common_RecurringDateTimeRange.recurrencePattern.getter() || (UsoEntity_common_RecurringDateTime.toRecurrencePattern()(), OUTLINED_FUNCTION_35_17(), , !v2))
  {
LABEL_15:

    goto LABEL_16;
  }

  if (!DateTime.RecurrencePattern.recurrencePeriod.getter())
  {

    goto LABEL_15;
  }

  v5 = v1[25];
  v4 = v1[26];
  DateTime.Interval.timeUnit.getter();
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) != 1)
  {
    (*(v1[27] + 32))(v1[29], v1[25], v1[26]);
    *&result = COERCE_DOUBLE(DateTime.Interval.quantity.getter());
    if (v15)
    {
      v16 = 1;
LABEL_28:
      (*(v1[27] + 16))(v1[28], v1[29], v1[26]);
      v17 = OUTLINED_FUNCTION_13_5();
      v19 = v18(v17);
      if (v19 == enum case for DateTime.TimeUnit.day(_:))
      {
LABEL_29:
        v20 = OUTLINED_FUNCTION_56_6();
        v21(v20);
LABEL_32:
        v41 = v1[29];
        v39 = v1[27];
        v40 = v1[26];
        v22 = v1[23];
        v23 = v1[24];
        v24 = v1[22];
        v42 = v1[21];
        v25 = v1[15];
        v35 = v1[16];
        v36 = v1[14];
        v37 = v1[13];
        v26 = v1[12];
        v38 = v1[11];
        (*(v1[19] + 16))();
        (*(v24 + 16))(v22, v23, v42);
        static Calendar.RecurrenceRule.End.never.getter();
        (*(v25 + 104))(v35, enum case for Calendar.MatchingPolicy.nextTimePreservingSmallerComponents(_:), v36);
        (*(v26 + 104))(v37, enum case for Calendar.RepeatedTimePolicy.first(_:), v38);
        Calendar.RecurrenceRule.init(calendar:frequency:interval:end:matchingPolicy:repeatedTimePolicy:months:daysOfTheYear:daysOfTheMonth:weeks:weekdays:hours:minutes:seconds:setPositions:)();

        (*(v24 + 8))(v23, v42);
        (*(v39 + 8))(v41, v40);
        type metadata accessor for Calendar.RecurrenceRule();
        v10 = OUTLINED_FUNCTION_62_9();
        v12 = 0;
        goto LABEL_18;
      }

      if (v19 != enum case for DateTime.TimeUnit.fortnight(_:))
      {
        if (v19 != enum case for DateTime.TimeUnit.hour(_:) && v19 != enum case for DateTime.TimeUnit.minute(_:) && v19 != enum case for DateTime.TimeUnit.month(_:))
        {
          if (v19 == enum case for DateTime.TimeUnit.quarterOfYear(_:))
          {
            v27 = OUTLINED_FUNCTION_56_6();
            v19 = v28(v27);
            if ((v16 * 3) >> 64 == (3 * v16) >> 63)
            {
              goto LABEL_32;
            }

            __break(1u);
          }

          if (v19 != enum case for DateTime.TimeUnit.week(_:) && v19 != enum case for DateTime.TimeUnit.year(_:))
          {
            v29 = *(v1[27] + 8);
            (v29)(v1[29], v1[26]);

            type metadata accessor for Calendar.RecurrenceRule();
            OUTLINED_FUNCTION_37_2();
            __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
            v34 = OUTLINED_FUNCTION_13_5();
            v29(v34);
            goto LABEL_19;
          }
        }

        goto LABEL_29;
      }

      *&result = COERCE_DOUBLE((*(v1[22] + 104))(v1[24], enum case for Calendar.RecurrenceRule.Frequency.weekly(_:), v1[21]));
      if (v16 + 0x4000000000000000 >= 0)
      {
        goto LABEL_32;
      }

LABEL_45:
      __break(1u);
      return result;
    }

    if ((~result & 0x7FF0000000000000) != 0)
    {
      if (*&result > -9.22337204e18)
      {
        if (*&result < 9.22337204e18)
        {
          v16 = *&result;
          goto LABEL_28;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  v6 = v1[25];

  v7 = &_s13SiriInference8DateTimeC0D4UnitOSgMd;
  v8 = &_s13SiriInference8DateTimeC0D4UnitOSgMR;
  v9 = v6;
LABEL_13:
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, v7, v8);
LABEL_17:
  type metadata accessor for Calendar.RecurrenceRule();
  v10 = OUTLINED_FUNCTION_62_9();
  v12 = 1;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);
LABEL_19:

  OUTLINED_FUNCTION_6_7();

  *&result = COERCE_DOUBLE(v13());
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.placeDescriptorValue(locationResolving:locationProviding:locale:timeZone:)()
{
  OUTLINED_FUNCTION_15_2();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v2);
  v0[3] = OUTLINED_FUNCTION_28();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v0[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_28();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_37_13(v5);

  return Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *(v1 + 64) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v1 = v0[4];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
    type metadata accessor for PlaceDescriptor();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v2, v1);
    if (static InputUtils.getPlacemark(_:)())
    {
      PlaceDescriptor.init(placemark:)();
    }

    v7 = v0[2];
    v8 = type metadata accessor for PlaceDescriptor();
    OUTLINED_FUNCTION_52_10(v7, v9, v10, v8);
    v11 = OUTLINED_FUNCTION_9_3();
    v12(v11);
  }

  OUTLINED_FUNCTION_6_7();

  return v13();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t Siri_Nlu_External_UserDialogAct.personNameComponentsValue()@<X0>(uint64_t a1@<X8>)
{
  result = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v1)
  {
    if (result)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v11[3])
      {
        type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_35_17();

          if (v2)
          {
            if (dispatch thunk of UsoEntity_common_VoiceCommandPayload.agent.getter())
            {
              CodeGenBase.entity.getter();
            }

            type metadata accessor for UsoEntity_common_Person();
            OUTLINED_FUNCTION_63_9();
            static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

            if (v11[0])
            {
              dispatch thunk of UsoEntity_common_Person.name.getter();
              if (v5)
              {
                PersonNameComponents.init(_:)();
                v6 = type metadata accessor for PersonNameComponents();
                __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
              }
            }
          }
        }
      }

      else
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v11, &_sypSgMd, &_sypSgMR);
      }
    }

    type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.entityValue.getter()
{
  v4 = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v1)
  {
    v0 = v4;
    if (v4)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v19)
      {
        v5 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_36_14(v5, v6, v7, v5, v8, v9, v10, v11, v16, v17);
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_35_17();

          if (v3)
          {
            v12 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.appEntity.getter();
            if (v12)
            {
              v13 = v12;
              v14 = dispatch thunk of UsoEntity_common_AppEntity.type.getter();
              if (v14)
              {
                v0 = v14;
                dispatch thunk of UsoEntity_common_AppEntityType.name.getter();
                OUTLINED_FUNCTION_64_6();

                if (v2)
                {

LABEL_15:

                  return v0;
                }
              }

              v0 = v13;
              dispatch thunk of UsoEntity_common_AppEntity.name.getter();
              OUTLINED_FUNCTION_64_6();

              if (v2)
              {
                goto LABEL_15;
              }
            }

            v0 = v3;
            dispatch thunk of UsoEntity_common_VoiceCommandPayload.stringValue.getter();
            OUTLINED_FUNCTION_64_6();
            goto LABEL_15;
          }
        }
      }

      else
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v18, &_sypSgMd, &_sypSgMR);
      }

      return 0;
    }
  }

  return v0;
}

_UNKNOWN **Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:)(int64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  v7 = v93 - v6;
  v8 = type metadata accessor for UsoEntity_common_ListPosition.DefinedValues();
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v17 = v93 - v16;
  Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (v2)
  {
    return v1;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!v94[3])
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v94, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  OUTLINED_FUNCTION_21_20();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v23, static Logger.voiceCommands);
    v24 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v25 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_18_1();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_44_2(v27);
      OUTLINED_FUNCTION_21_6(&dword_0, v28, v29, "#NLUUserDialogActInputUtils task is not UsoTask_noVerb_uso_NoEntity");
      OUTLINED_FUNCTION_15_1();
    }

    return _swiftEmptyArrayStorage;
  }

  v18 = v94[5];

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  v93[1] = v18;

  if (!v94[0] || (v19 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter(), , !v19))
  {
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v8);
    goto LABEL_16;
  }

  dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
LABEL_16:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMd, &_s12SiriOntology29UsoEntity_common_ListPositionC13DefinedValuesOSgMR);

    return _swiftEmptyArrayStorage;
  }

  (*(v10 + 32))(v17, v7, v8);
  (*(v10 + 16))(v14, v17, v8);
  v20 = (*(v10 + 88))(v14, v8);
  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourth(_:))
  {

    v21 = OUTLINED_FUNCTION_3_56();
    v22(v21);
    return &outlined read-only object #3 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  v34 = v20;
  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Second(_:))
  {

    v35 = OUTLINED_FUNCTION_3_56();
    v36(v35);
    return &outlined read-only object #1 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Beginning(_:))
  {
LABEL_22:

    v37 = OUTLINED_FUNCTION_3_56();
    v38(v37);
    return &outlined read-only object #0 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFourth(_:))
  {

    v39 = OUTLINED_FUNCTION_3_56();
    v40(v39);
    return &outlined read-only object #23 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventeenth(_:))
  {

    v41 = OUTLINED_FUNCTION_3_56();
    v42(v41);
    return &outlined read-only object #16 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighth(_:))
  {

    v43 = OUTLINED_FUNCTION_3_56();
    v44(v43);
    return &outlined read-only object #7 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_ThirdToLast(_:))
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v46 = OUTLINED_FUNCTION_64(v45);
    *(v46 + 16) = xmmword_216850;
    v47 = a1 - 3;
    if (__OFSUB__(a1, 3))
    {
      __break(1u);
LABEL_62:
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_216840;
      *(v1 + 32) = a1 / 2 - 1;
      *(v1 + 40) = a1 / 2;
      goto LABEL_33;
    }

LABEL_31:
    v1 = v46;
LABEL_32:
    *(v46 + 32) = v47;
LABEL_33:

    v48 = OUTLINED_FUNCTION_3_56();
    v49(v48);
    return v1;
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixth(_:))
  {

    v50 = OUTLINED_FUNCTION_3_56();
    v51(v50);
    return &outlined read-only object #5 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Nineteenth(_:))
  {

    v52 = OUTLINED_FUNCTION_3_56();
    v53(v52);
    return &outlined read-only object #18 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFifth(_:))
  {

    v54 = OUTLINED_FUNCTION_3_56();
    v55(v54);
    return &outlined read-only object #24 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Ninth(_:))
  {

    v56 = OUTLINED_FUNCTION_3_56();
    v57(v56);
    return &outlined read-only object #8 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eleventh(_:))
  {

    v58 = OUTLINED_FUNCTION_3_56();
    v59(v58);
    return &outlined read-only object #10 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v20 != enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_End(_:))
  {
    goto LABEL_48;
  }

  do
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v46 = OUTLINED_FUNCTION_64(v60);
    *(v46 + 16) = xmmword_216850;
    v47 = a1 - 1;
    if (!__OFSUB__(a1, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_48:
    if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourteenth(_:))
    {

      v61 = OUTLINED_FUNCTION_3_56();
      v62(v61);
      return &outlined read-only object #13 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
    }

    if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_SecondToLast(_:))
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v46 = OUTLINED_FUNCTION_64(v63);
      *(v46 + 16) = xmmword_216850;
      v47 = a1 - 2;
      if (!__OFSUB__(a1, 2))
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFirst(_:))
    {

      v64 = OUTLINED_FUNCTION_3_56();
      v65(v64);
      return &outlined read-only object #20 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
    }

    if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Middle(_:))
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      if ((a1 & 0x8000000000000001) != 1)
      {
        goto LABEL_62;
      }

      v46 = OUTLINED_FUNCTION_64(v66);
      v1 = v46;
      *(v46 + 16) = xmmword_216850;
      v47 = a1 >> 1;
      goto LABEL_32;
    }

    if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Thirteenth(_:))
    {

      v67 = OUTLINED_FUNCTION_3_56();
      v68(v67);
      return &outlined read-only object #12 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
    }
  }

  while (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:));
  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentySecond(_:))
  {

    v69 = OUTLINED_FUNCTION_3_56();
    v70(v69);
    return &outlined read-only object #21 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Previous(_:))
  {
    goto LABEL_67;
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifteenth(_:))
  {

    v73 = OUTLINED_FUNCTION_3_56();
    v74(v73);
    return &outlined read-only object #14 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Current(_:))
  {
    goto LABEL_67;
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twentieth(_:))
  {

    v75 = OUTLINED_FUNCTION_3_56();
    v76(v75);
    return &outlined read-only object #19 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifth(_:))
  {

    v77 = OUTLINED_FUNCTION_3_56();
    v78(v77);
    return &outlined read-only object #4 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixteenth(_:))
  {

    v79 = OUTLINED_FUNCTION_3_56();
    v80(v79);
    return &outlined read-only object #15 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_First(_:))
  {
    goto LABEL_22;
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventh(_:))
  {

    v81 = OUTLINED_FUNCTION_3_56();
    v82(v81);
    return &outlined read-only object #6 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighteenth(_:))
  {

    v83 = OUTLINED_FUNCTION_3_56();
    v84(v83);
    return &outlined read-only object #17 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyThird(_:))
  {

    v85 = OUTLINED_FUNCTION_3_56();
    v86(v85);
    return &outlined read-only object #22 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twelfth(_:))
  {

    v87 = OUTLINED_FUNCTION_3_56();
    v88(v87);
    return &outlined read-only object #11 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Third(_:))
  {

    v89 = OUTLINED_FUNCTION_3_56();
    v90(v89);
    return &outlined read-only object #2 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  if (v34 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
  {
LABEL_67:

    v71 = OUTLINED_FUNCTION_3_56();
    v72(v71);
    return _swiftEmptyArrayStorage;
  }

  v91 = enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Tenth(_:);

  v92 = *(v10 + 8);
  v92(v17, v8);
  if (v34 == v91)
  {
    return &outlined read-only object #9 of Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:);
  }

  v92(v14, v8);
  return _swiftEmptyArrayStorage;
}

uint64_t Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter()
{
  result = Siri_Nlu_External_UserDialogAct.userDialogTask.getter();
  if (!v0)
  {
    if (result)
    {

      static UsoTask_CodegenConverter.convert(task:)();
      OUTLINED_FUNCTION_22_23();

      if (v13)
      {
        v2 = type metadata accessor for UsoTask_execute_common_VoiceCommand();
        OUTLINED_FUNCTION_36_14(v2, v3, v4, v2, v5, v6, v7, v8, v9, v10);
        OUTLINED_FUNCTION_21_20();
        if (swift_dynamicCast())
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }

      outlined destroy of Siri_Nlu_External_UserDialogAct?(v12, &_sypSgMd, &_sypSgMR);
    }

    return 0;
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_27();
  v1[5] = swift_task_alloc();
  v4 = type metadata accessor for DateTimeResolutionSpec.DateTimeConvergenceStrategy();
  v1[6] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for DateTimeResolutionSpec.ExpandToType();
  v1[9] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for DateTimeResolutionSpec();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14(v10);
  v1[15] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Calendar.Identifier();
  v1[16] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_14(v13);
  v1[19] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for TimeZone();
  OUTLINED_FUNCTION_14(v14);
  v1[20] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Locale();
  v1[21] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[22] = v16;
  v1[23] = OUTLINED_FUNCTION_27();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v17 = type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v1[26] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[27] = v18;
  v1[28] = OUTLINED_FUNCTION_27();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v19);
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 40), *(*(v0 + 24) + 64));
  OUTLINED_FUNCTION_39_17();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:);
  v3 = OUTLINED_FUNCTION_9_3();

  return v5(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    [*(v0 + 256) lat];
    v6 = v5;

    v7 = &enum case for DateTimeResolutionContext.Hemisphere.north(_:);
    if (v6 <= 0.0)
    {
      v7 = &enum case for DateTimeResolutionContext.Hemisphere.south(_:);
    }

    (*(v4 + 104))(v2, *v7, v3);
    v8 = OUTLINED_FUNCTION_9_3();
    v9(v8);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_18_1();
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v11, v12, "#NLUUserDialogActInputUtils: Could not get location, setting hemisphere to north", v15, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    v16 = *(v0 + 240);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);

    (*(v18 + 104))(v16, enum case for DateTimeResolutionContext.Hemisphere.north(_:), v17);
  }

  v19 = *(v0 + 216);
  v20 = *(v0 + 200);
  v64 = *(v0 + 208);
  v65 = *(v0 + 240);
  v21 = *(v0 + 192);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v60 = *(v0 + 184);
  v24 = *(v0 + 136);
  v62 = *(v0 + 144);
  v63 = *(v0 + 224);
  v61 = *(v0 + 128);
  v72 = *(v0 + 112);
  v66 = *(v0 + 80);
  v67 = *(v0 + 88);
  v68 = *(v0 + 72);
  v69 = *(v0 + 56);
  v70 = *(v0 + 64);
  v71 = *(v0 + 48);
  v25 = *(v0 + 24);
  v73 = *(v0 + 16);
  v26 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(0) + 24);
  v27 = *(v22 + 16);
  v27(v20, &v25[v26], v23);
  v27(v21, &v25[v26], v23);
  v27(v60, &v25[v26], v23);
  static TimeZone.current.getter();
  (*(v19 + 16))(v63, v65, v64);
  (*(v24 + 104))(v62, enum case for Calendar.Identifier.gregorian(_:), v61);
  Calendar.init(identifier:)();
  (*(v24 + 8))(v62, v61);
  static Date.now.getter();
  type metadata accessor for DateTimeResolutionContext();
  swift_allocObject();
  v28 = DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)();
  (*(v66 + 104))(v67, enum case for DateTimeResolutionSpec.ExpandToType.pointInTime(_:), v68);
  (*(v69 + 104))(v70, enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.future(_:), v71);
  type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
  type metadata accessor for DateTime();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange, &protocol conformance descriptor for DateTime.DateTimeRange.DefinedDateTimeRange);
  Dictionary.init(dictionaryLiteral:)();
  DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)();
  v29 = *(v25 + 3);
  v30 = *(v25 + 4);
  __swift_project_boxed_opaque_existential_1(v25, v29);
  (*(v30 + 8))(v73, v28, v72, v29, v30);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v33 = *(v0 + 96);
  v34 = *(v0 + 40);

  (*(v32 + 8))(v31, v33);
  v35 = OUTLINED_FUNCTION_9_3();
  v36(v35);
  v37 = OUTLINED_FUNCTION_9_3();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  OUTLINED_FUNCTION_52_10(v34, v40, v41, v39);
  v42 = OUTLINED_FUNCTION_75();
  outlined init with take of Recommendation<DateTime>?(v42, v43);
  v44 = OUTLINED_FUNCTION_9_3();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
  OUTLINED_FUNCTION_58_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, v48, v49);
  v51 = *(v0 + 32);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v51, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  }

  else
  {
    v52 = (*(*(v46 - 8) + 88))(v51, v46);
    v53 = *(v0 + 32);
    if (v52 == enum case for Recommendation.confident<A>(_:))
    {
      v54 = OUTLINED_FUNCTION_22();
      v55(v54);
      v74 = *v53;
      goto LABEL_16;
    }

    v56 = OUTLINED_FUNCTION_22();
    v57(v56);
  }

  v74 = 0;
LABEL_16:

  v58 = *(v0 + 8);

  return v58(v74);
}

uint64_t Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = type metadata accessor for TimeZone();
  v1[8] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[9] = v8;
  v1[10] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for Locale();
  v1[11] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[12] = v10;
  v1[13] = OUTLINED_FUNCTION_27();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = type metadata accessor for LocationResolutionContext();
  v1[16] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for Location();
  v1[19] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[20] = v14;
  v1[21] = OUTLINED_FUNCTION_27();
  v1[22] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15);
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  OUTLINED_FUNCTION_39_17();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:);
  v3 = OUTLINED_FUNCTION_9_3();

  return v5(v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  v2 = v0[24];
  if (v2)
  {
    if (Siri_Nlu_External_UserDialogAct.executeCommonVoiceCommand.getter() && (dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter(), OUTLINED_FUNCTION_35_17(), , v1))
    {
      dispatch thunk of UsoEntity_common_VoiceCommandPayload.geographicArea.getter();
      OUTLINED_FUNCTION_20_14();

      v3 = v0[21];
      v29 = v0[22];
      v5 = v0[19];
      v4 = v0[20];
      v26 = v0[18];
      v27 = v0[17];
      v28 = v0[16];
      v19 = v0[14];
      v7 = v0[11];
      v6 = v0[12];
      v20 = v0[13];
      v21 = v0[9];
      v23 = v0[10];
      v24 = v0[8];
      v8 = v0[5];
      v22 = v0[6];
      v25 = v0[3];
      UsoEntity_common_GeographicArea.toLocation()(v3);

      (*(v4 + 32))(v29, v3, v5);
      v9 = *(v6 + 16);
      v10 = OUTLINED_FUNCTION_75();
      v9(v10);
      (v9)(v19, v8, v7);
      (v9)(v20, v8, v7);
      (*(v21 + 16))(v23, v22, v24);
      [v2 lat];
      [v2 lng];
      LocationResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:latitude:longitude:)();
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      v11 = OUTLINED_FUNCTION_75();
      v12(v11);

      (*(v27 + 8))(v26, v28);
      (*(v4 + 8))(v29, v5);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v13 = OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_52_10(v13, v14, v15, v16);

  OUTLINED_FUNCTION_6_7();

  return v17();
}

uint64_t Siri_Nlu_External_UserDialogAct.userDialogTask.getter()
{
  v2 = v1;
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  if ((Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter() & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v20, static Logger.voiceCommands);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = OUTLINED_FUNCTION_17_18();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_18_1();
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "#NLUUserDialogActInputUtils: NLUUserDialogAct does not have a user stated task";
    goto LABEL_10;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
  (*(v5 + 16))(v9, v0, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40[6] = v39;
    *v13 = 136315138;
    type metadata accessor for SiriNLUTypesPrintUtils();
    v40[3] = type metadata accessor for Siri_Nlu_External_UserStatedTask();
    v40[4] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserStatedTask and conformance Siri_Nlu_External_UserStatedTask, &type metadata accessor for Siri_Nlu_External_UserStatedTask, &protocol conformance descriptor for Siri_Nlu_External_UserStatedTask);
    __swift_allocate_boxed_opaque_existential_1(v40);
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    v14 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
    v15 = OUTLINED_FUNCTION_31_16();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v17 = OUTLINED_FUNCTION_22();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v19);
    OUTLINED_FUNCTION_59_9();

    *(v13 + 4) = v14;
    _os_log_impl(&dword_0, v11, v12, "UserStatedTask: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    OUTLINED_FUNCTION_15_1();

    v2 = v1;
    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_31_16();
    v28(v27);
  }

  v29 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!v2)
  {
    v30 = v29;
    if (specialized Array.count.getter(v29))
    {
      if (specialized Array.count.getter(v30) >= 2)
      {
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        v33 = OUTLINED_FUNCTION_17_18();
        if (os_log_type_enabled(v33, v34))
        {
          OUTLINED_FUNCTION_18_1();
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_0, v31, v32, "#NLUUserDialogActInputUtils: More than one task found in UDA", v35, 2u);
          OUTLINED_FUNCTION_15_1();
        }
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v30 & 0xC000000000000001) != 0)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v0 = *(v30 + 32);
      }

      return v0;
    }

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v37 = OUTLINED_FUNCTION_17_18();
    if (!os_log_type_enabled(v37, v38))
    {
LABEL_11:

      return 0;
    }

    OUTLINED_FUNCTION_18_1();
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "#NLUUserDialogActInputUtils: No tasks found in UDA";
LABEL_10:
    _os_log_impl(&dword_0, v21, v22, v26, v25, 2u);
    OUTLINED_FUNCTION_15_1();

    goto LABEL_11;
  }

  return v0;
}

uint64_t type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(uint64_t a1)
{
  result = type metadata singleton initialization cache for Siri_Nlu_External_UserDialogAct.DateTimeHydrator;
  if (!type metadata singleton initialization cache for Siri_Nlu_External_UserDialogAct.DateTimeHydrator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7D54(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for Locale();
    OUTLINED_FUNCTION_60_7();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      type metadata accessor for Calendar();
      OUTLINED_FUNCTION_60_7();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        v10 = type metadata accessor for TimeZone();
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_1B7E70(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Locale();
    OUTLINED_FUNCTION_60_7();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      type metadata accessor for Calendar();
      OUTLINED_FUNCTION_60_7();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for TimeZone();
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t type metadata completion function for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(uint64_t a1)
{
  result = type metadata accessor for DateTimeResolving(319, &lazy cache variable for type metadata for DateTimeResolving, &protocol descriptor for DateTimeResolving);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DateTimeResolving(319, &lazy cache variable for type metadata for LocationProviding, &protocol descriptor for LocationProviding);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Locale();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Calendar();
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for TimeZone();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for DateTimeResolving(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with take of Recommendation<DateTime>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_17_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_45_9()
{

  return UsoEntity_common_DateTime.toDateTime(recurrencePattern:)();
}

uint64_t OUTLINED_FUNCTION_52_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, a4);
}

uint64_t OUTLINED_FUNCTION_68_11(uint64_t a1)
{

  return dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
}

uint64_t WFInputDateFlow.exitValue.getter()
{
  type metadata accessor for WFInputDateFlow.State(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  v5 = OBJC_IVAR____TtC18SiriLinkFlowPlugin15WFInputDateFlow_state;
  swift_beginAccess();
  outlined init with copy of WFInputDateFlow.State(v0 + v5, v4);
  OUTLINED_FUNCTION_9_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return *v4;
  }

  lazy protocol witness table accessor for type WFInputTextFlowError and conformance WFInputTextFlowError();
  v7 = swift_allocError();
  OUTLINED_FUNCTION_0_47();
  outlined destroy of WFInputDateFlow.State(v4, v8);
  return v7;
}

uint64_t outlined init with copy of WFInputDateFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFInputDateFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WFInputDateFlow.__allocating_init(request:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(void *a1, void *a2, void *a3, __int128 *a4, __int128 *a5)
{
  v10 = swift_allocObject();
  WFInputDateFlow.init(request:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(a1, a2, a3, a4, a5);
  return v10;
}

void *WFInputDateFlow.init(request:deviceState:outputPublisher:locationProvider:dateTimeResolver:)(void *a1, void *a2, void *a3, __int128 *a4, __int128 *a5)
{
  v6 = v5;
  v10 = type metadata accessor for CATOption();
  v11 = OUTLINED_FUNCTION_14(v10);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v6[2] = a1;
  outlined init with copy of DeviceState(a2, (v6 + 3));
  v30 = a3;
  outlined init with copy of DeviceState(a3, (v6 + 8));
  outlined init with copy of DeviceState(a2, v33);
  v12 = one-time initialization token for shared;
  v29 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_2();
  v28 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for WorkflowRunnerCATsSimple(0);
  OUTLINED_FUNCTION_32_8(v14);
  OUTLINED_FUNCTION_19_2();
  v15 = CATWrapperSimple.__allocating_init(options:globals:)();
  v16 = type metadata accessor for RunCustomIntentCATs(0);
  OUTLINED_FUNCTION_32_8(v16);
  OUTLINED_FUNCTION_19_2();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  v18 = type metadata accessor for RunCustomIntentCATsSimple(0);
  OUTLINED_FUNCTION_32_8(v18);
  OUTLINED_FUNCTION_19_2();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  v20 = type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_32_8(v20);
  OUTLINED_FUNCTION_19_2();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  v22 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_32_8(v22);
  OUTLINED_FUNCTION_19_2();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  v24 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_32_8(v24);
  OUTLINED_FUNCTION_19_2();
  v25 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  v6[13] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v33, v13, v28, v15, v17, v19, v21, v23, v25);
  type metadata accessor for WorkflowSnippetProvider();
  v26 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(a2);

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v6[14] = v26;
  type metadata accessor for WorkflowNLContextProvider();
  v6[15] = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(a4, (v6 + 16));
  outlined init with take of AceServiceInvokerAsync(a5, (v6 + 21));
  type metadata accessor for WFInputDateFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v6;
}

uint64_t WFInputDateFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v62 = v5;
  v7 = __chkstk_darwin(v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v53 - v11;
  __chkstk_darwin(v10);
  v58 = &v53 - v13;
  v61 = type metadata accessor for WFInputDateFlow.State(0);
  OUTLINED_FUNCTION_7();
  v15 = __chkstk_darwin(v14);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = &v53 - v17;
  v18 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v20 = v19;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.voiceCommands);
  v26 = *(v20 + 16);
  v59 = a1;
  v26(v24, a1, v18);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v57 = v12;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55 = v9;
    v32 = v31;
    v64[0] = v31;
    *v30 = 136315138;
    v33 = Input.description.getter();
    v54 = v2;
    v34 = v4;
    v36 = v35;
    (*(v20 + 8))(v24, v18);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, v64);
    v4 = v34;
    v2 = v54;

    *(v30 + 4) = v37;
    _os_log_impl(&dword_0, v27, v28, "#WFInputDateFlow on input: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v38 = v32;
    v9 = v55;
    OUTLINED_FUNCTION_15_0(v38);
    OUTLINED_FUNCTION_15_0(v30);
  }

  else
  {

    (*(v20 + 8))(v24, v18);
  }

  v39 = OBJC_IVAR____TtC18SiriLinkFlowPlugin15WFInputDateFlow_state;
  swift_beginAccess();
  v40 = v60;
  outlined init with copy of WFInputDateFlow.State(v2 + v39, v60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_0_47();
  outlined destroy of WFInputDateFlow.State(v40, v42);
  v43 = v62;
  if (EnumCaseMultiPayload == 4)
  {
    v44 = v58;
    Input.parse.getter();
    v45 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v44);
    v46 = *(v43 + 8);
    v46(v44, v4);
    switch(v45)
    {
      case 2:

        return 0;
      case 3:
        break;
      default:
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          return 0;
        }

        break;
    }

    v48 = v57;
    Input.parse.getter();
    (*(v43 + 16))(v9, v48, v4);
    v49 = (*(v43 + 88))(v9, v4);
    if (v49 == enum case for Parse.NLv3IntentOnly(_:) || v49 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0)
    {
      v50 = v48;
      v51 = v56;
      (*(v43 + 32))(v56, v50, v4);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_57_0(v2 + v39, v63);
      outlined assign with take of WFInputDateFlow.State(v51, v2 + v39);
      swift_endAccess();
      v46(v9, v4);
      return 1;
    }

    v46(v48, v4);
    v46(v9, v4);
  }

  return 0;
}

uint64_t WFInputDateFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[22] = v2;
  v1[23] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[24] = OUTLINED_FUNCTION_27();
  v1[25] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[26] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[27] = v5;
  v1[28] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for Parse();
  v1[29] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[30] = v7;
  v1[31] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for WFInputDateFlow.State(0);
  v1[32] = v8;
  OUTLINED_FUNCTION_14(v8);
  v1[33] = OUTLINED_FUNCTION_27();
  v1[34] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9);
}

{
  v60 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v0[35] = __swift_project_value_buffer(v1, static Logger.voiceCommands);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = 0x7974706D65;
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v59 = v7;
    *v6 = 136315394;
    v8 = *(v5 + 16);
    v9 = [v8 message];
    if (v9)
    {
      v10 = v9;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v12, &v59);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    v14 = [v8 prompt];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE500000000000000;
      v16 = 0x7974706D65;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v59);

    *(v6 + 14) = v19;
    _os_log_impl(&dword_0, v2, v3, "#WFInputDateFlow begins execution, message: %s, prompt: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0(v7);
    OUTLINED_FUNCTION_17();
  }

  v20 = v0[34];
  v21 = v0[23];
  v22 = OBJC_IVAR____TtC18SiriLinkFlowPlugin15WFInputDateFlow_state;
  v0[36] = OBJC_IVAR____TtC18SiriLinkFlowPlugin15WFInputDateFlow_state;
  swift_beginAccess();
  outlined init with copy of WFInputDateFlow.State(v21 + v22, v20);
  OUTLINED_FUNCTION_9_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_47();
      outlined destroy of WFInputDateFlow.State(v53, v54);
      v39 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v55))
      {
        goto LABEL_30;
      }

      v56 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v56);
      v44 = "#WFInputDateFlow completed";
      break;
    case 2u:
      OUTLINED_FUNCTION_0_47();
      outlined destroy of WFInputDateFlow.State(v37, v38);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v40))
      {
        goto LABEL_30;
      }

      v41 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v41);
      v44 = "#WFInputDateFlow error state";
      break;
    case 3u:
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v46))
      {
        v47 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v47);
        OUTLINED_FUNCTION_26(&dword_0, v48, v49, "#WFInputDateFlow submitting output");
        OUTLINED_FUNCTION_17();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[37] = v50;
      *v50 = v51;
      v50[1] = WFInputDateFlow.execute();
      OUTLINED_FUNCTION_27_0();

      return WFInputDateFlow.buildOutput()();
    case 4u:
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v33))
      {
        v34 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v34);
        OUTLINED_FUNCTION_26(&dword_0, v35, v36, "#WFInputDateFlow waiting for response");
        OUTLINED_FUNCTION_17();
      }

      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_31;
    default:
      (*(v0[30] + 32))(v0[31], v0[34], v0[29]);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v24))
      {
        v25 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v25);
        OUTLINED_FUNCTION_26(&dword_0, v26, v27, "#WFInputDateFlow responseReceived");
        OUTLINED_FUNCTION_17();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[41] = v28;
      *v28 = v29;
      v28[1] = WFInputDateFlow.execute();
      OUTLINED_FUNCTION_27_0();

      return WFInputDateFlow.buildDateFromParse(parse:)();
  }

  OUTLINED_FUNCTION_26(&dword_0, v42, v43, v44);
  OUTLINED_FUNCTION_17();
LABEL_30:

  static ExecuteResponse.complete()();
LABEL_31:
  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }

  return result;
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v1 = *(v0 + 184);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 312) = v4;
  *v4 = v5;
  v4[1] = WFInputDateFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[23];
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0(v3 + v1, (v0 + 19));
  outlined assign with take of WFInputDateFlow.State(v2, v3 + v1);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  v1 = v0[25];
  v2 = v0[26];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[36];
  v5 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  if (EnumTagSinglePayload == 1)
  {
    v9 = v0[23];
    outlined destroy of Any?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0(v9 + v4, (v0 + 10));
    outlined assign with take of WFInputDateFlow.State(v5, v9 + v4);
    swift_endAccess();
    static ExecuteResponse.ongoing(requireInput:)();
  }

  else
  {
    v21 = v0[29];
    v22 = v0[31];
    v10 = v0[27];
    v11 = v0[28];
    v12 = v0[24];
    v20 = v0[23];
    (*(v10 + 32))(v11, v1, v2);
    (*(v10 + 16))(v12, v11, v2);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v2);
    v13 = objc_allocWithZone(WFInputDateDialogResponse);
    v14 = v12;
    v8 = v21;
    v15 = @nonobjc WFInputDateDialogResponse.init(inputtedDate:cancelled:)(v14, 0);
    *v5 = v15;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0(v20 + v4, (v0 + 13));
    v16 = v15;
    outlined assign with take of WFInputDateFlow.State(v5, v20 + v4);
    swift_endAccess();
    static ExecuteResponse.ongoing(requireInput:)();

    v17 = v11;
    v6 = v22;
    (*(v10 + 8))(v17, v2);
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();

  return v18();
}

uint64_t WFInputDateFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[38];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_52();
    *v14 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v15, v16, "#WFInputDateFlow error submitting output");
    OUTLINED_FUNCTION_15_0(v14);
  }

  v17 = v10[36];
  v18 = v10[33];
  v19 = v10[23];

  *v18 = v11;
  OUTLINED_FUNCTION_20_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0(v19 + v17, (v10 + 16));
  swift_errorRetain();
  outlined assign with take of WFInputDateFlow.State(v18, v19 + v17);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 2);
  v11 = v10[40];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_52();
    *v14 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v15, v16, "#WFInputDateFlow error submitting output");
    OUTLINED_FUNCTION_15_0(v14);
  }

  v17 = v10[36];
  v18 = v10[33];
  v19 = v10[23];

  *v18 = v11;
  OUTLINED_FUNCTION_20_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0(v19 + v17, (v10 + 16));
  swift_errorRetain();
  outlined assign with take of WFInputDateFlow.State(v18, v19 + v17);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_13_27();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t WFInputDateFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFInputDateFlow(0);
  lazy protocol witness table accessor for type WFInputDateFlow and conformance WFInputDateFlow(&lazy protocol witness table cache variable for type WFInputDateFlow and conformance WFInputDateFlow, type metadata accessor for WFInputDateFlow, &protocol conformance descriptor for WFInputDateFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFInputDateFlow.buildDateFromParse(parse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for DateComponents();
  v1[25] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_27();
  v1[28] = swift_task_alloc();
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator(0);
  v1[29] = v6;
  OUTLINED_FUNCTION_14(v6);
  v1[30] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TimeZone();
  v1[31] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[32] = v8;
  v1[33] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for Calendar();
  v1[34] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[35] = v10;
  v1[36] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Locale();
  v1[37] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[38] = v12;
  v1[39] = OUTLINED_FUNCTION_28();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[40] = v13;
  OUTLINED_FUNCTION_14(v13);
  v1[41] = OUTLINED_FUNCTION_27();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v1[44] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1[45] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[46] = v16;
  v1[47] = OUTLINED_FUNCTION_27();
  v1[48] = swift_task_alloc();
  v17 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1[49] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[50] = v18;
  v1[51] = OUTLINED_FUNCTION_28();
  v19 = type metadata accessor for USOParse();
  v1[52] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[53] = v20;
  v1[54] = OUTLINED_FUNCTION_28();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_14(v21);
  v1[55] = OUTLINED_FUNCTION_28();
  v22 = type metadata accessor for VoiceCommandsNLIntent(0);
  v1[56] = v22;
  OUTLINED_FUNCTION_14(v22);
  v1[57] = OUTLINED_FUNCTION_28();
  v23 = type metadata accessor for NLIntent();
  v1[58] = v23;
  OUTLINED_FUNCTION_5_0(v23);
  v1[59] = v24;
  v1[60] = OUTLINED_FUNCTION_28();
  v25 = type metadata accessor for Parse();
  v1[61] = v25;
  OUTLINED_FUNCTION_5_0(v25);
  v1[62] = v26;
  v1[63] = OUTLINED_FUNCTION_28();
  v27 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v27);
}

{
  (*(*(v0 + 496) + 16))(*(v0 + 504), *(v0 + 184), *(v0 + 488));
  v1 = OUTLINED_FUNCTION_22_4();
  v3 = v2(v1);
  if (v3 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v4 = *(v0 + 504);
    v5 = *(v0 + 480);
    v6 = *(v0 + 464);
    v7 = *(v0 + 472);
    v8 = *(v0 + 456);
    (*(*(v0 + 496) + 96))(v4, *(v0 + 488));
    (*(v7 + 32))(v5, v4, v6);
    (*(v7 + 16))(v8, v5, v6);
    if (one-time initialization token for voiceCommandDateTimeNode != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type WFInputDateFlow and conformance WFInputDateFlow(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    static Device.current.getter();
    static AceService.currentAsync.getter();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 512) = v9;
    *v9 = v10;
    v9[1] = WFInputDateFlow.buildDateFromParse(parse:);
    OUTLINED_FUNCTION_35_4();

    return static InputUtils.getDate(dateTimeValue:locationProviding:deviceState:aceServiceInvoker:)();
  }

  v13 = *(v0 + 504);
  if (v3 != enum case for Parse.uso(_:))
  {
    v35 = *(v0 + 176);
    v36 = type metadata accessor for Date();
    OUTLINED_FUNCTION_36_15(v35, v37, v38, v36);
    v39 = OUTLINED_FUNCTION_22_4();
    v40(v39);
    goto LABEL_22;
  }

  v15 = *(v0 + 424);
  v14 = *(v0 + 432);
  v16 = *(v0 + 416);
  v17 = *(v0 + 384);
  v18 = *(v0 + 368);
  v109 = *(v0 + 360);
  v111 = *(v0 + 392);
  v19 = *(v0 + 352);
  v20 = OUTLINED_FUNCTION_22_4();
  v21(v20);
  (*(v15 + 32))(v14, v13, v16);
  USOParse.userParse.getter();
  v22 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v25 = *(v18 + 8);
  v24 = v18 + 8;
  v23 = v25;
  (v25)(v17, v109);
  specialized Collection.first.getter(v22, v19);

  if (__swift_getEnumTagSinglePayload(v19, 1, v111) == 1)
  {
    outlined destroy of Any?(*(v0 + 352), &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.voiceCommands);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v28))
    {
      v29 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v29);
      OUTLINED_FUNCTION_26(&dword_0, v30, v31, "#WFInputDateFlow: missing UDA");
      OUTLINED_FUNCTION_17();
    }

    v32 = *(v0 + 176);

    v33 = OUTLINED_FUNCTION_9_3();
    v34(v33);
    v53 = type metadata accessor for Date();
    OUTLINED_FUNCTION_36_15(v32, v54, v55, v53);
    goto LABEL_22;
  }

  (*(*(v0 + 400) + 32))(*(v0 + 408), *(v0 + 352), *(v0 + 392));
  USOParse.userParse.getter();
  v41 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v42 = OUTLINED_FUNCTION_9_3();
  v23(v42);
  v43 = *(v41 + 16);

  if (v43 >= 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.voiceCommands);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v46))
    {
      v47 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v47);
      OUTLINED_FUNCTION_26(&dword_0, v48, v49, "#WFInputDateFlow: more than one task found in UDA");
      OUTLINED_FUNCTION_17();
    }
  }

  v50 = *(v0 + 264);
  v51 = *(v0 + 192);
  v52 = *(v51 + 48);
  __swift_project_boxed_opaque_existential_1((v51 + 24), v52);
  OUTLINED_FUNCTION_13_5();
  dispatch thunk of DeviceState.siriLocale.getter();
  static Calendar.current.getter();
  static TimeZone.current.getter();
  if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
  {
    goto LABEL_33;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(v0 + 160))
  {
    v75 = OUTLINED_FUNCTION_27_19();
    v76(v75);
    v77 = OUTLINED_FUNCTION_20_1();
    v78(v77);
    v72 = v52 + 8;
    v79 = OUTLINED_FUNCTION_22_4();
    v80(v79);
    outlined destroy of Any?(v0 + 136, &_sypSgMd, &_sypSgMR);
    goto LABEL_35;
  }

  type metadata accessor for UsoTask_execute_common_VoiceCommand();
  if ((swift_dynamicCast() & 1) == 0 || (v58 = dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter(), , !v58) || (v59 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter(), , !v59))
  {
LABEL_33:
    v68 = OUTLINED_FUNCTION_27_19();
    v69(v68);
    v70 = OUTLINED_FUNCTION_20_1();
    v71(v70);
    v72 = v52 + 8;
    v73 = OUTLINED_FUNCTION_22_4();
    v74(v73);
LABEL_35:
    v81 = *(v0 + 344);
    v82 = type metadata accessor for Date();
    OUTLINED_FUNCTION_36_15(v81, v83, v84, v82);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v85 = *(v0 + 336);
    v86 = type metadata accessor for Logger();
    v87 = __swift_project_value_buffer(v86, static Logger.voiceCommands);
    v88 = OUTLINED_FUNCTION_22_4();
    outlined init with copy of Date?(v88, v89);
    v90 = v87;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    os_log_type_enabled(v91, v92);
    OUTLINED_FUNCTION_41_13();
    if (v93)
    {
      v112 = v90;
      v94 = *(v0 + 328);
      v95 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v95 = 136315138;
      outlined init with copy of Date?(v24, v94);
      OUTLINED_FUNCTION_22_4();
      String.init<A>(describing:)();
      outlined destroy of Any?(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v96 = OUTLINED_FUNCTION_22_4();
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v98);

      *(v95 + 4) = v99;
      OUTLINED_FUNCTION_44_15(&dword_0, v100, v101, "#WFInputDateFlow: usoParse has date: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      OUTLINED_FUNCTION_15_0(v113);
      OUTLINED_FUNCTION_15_0(v95);

      (*(v72 + 8))(&unk_2B7000, v51);
      (*(v50 + 8))(v112, v85);
    }

    else
    {

      outlined destroy of Any?(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v72 + 8))(&unk_2B7000, v51);
      v102 = OUTLINED_FUNCTION_22_4();
      v104(v102, v103);
    }

    outlined init with take of Date?(*(v0 + 344), *(v0 + 176));
LABEL_22:
    OUTLINED_FUNCTION_2_57();
    OUTLINED_FUNCTION_7_35();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_35_4();

    __asm { BRAA            X1, X16 }
  }

  v60 = *(v0 + 304);
  v61 = *(v0 + 296);
  v62 = *(v0 + 280);
  v105 = *(v0 + 312);
  v106 = *(v0 + 272);
  v63 = *(v0 + 256);
  v110 = *(v0 + 264);
  v64 = *(v0 + 240);
  v107 = *(v0 + 288);
  v108 = *(v0 + 248);
  v65 = *(v0 + 232);
  *(v0 + 520) = UsoEntity_common_DateTime.toDateTime(recurrencePattern:)();

  outlined init with copy of DeviceState(v51 + 168, v64);
  outlined init with copy of DeviceState(v51 + 128, v64 + 40);
  (*(v60 + 16))(v64 + v65[6], v105, v61);
  (*(v62 + 16))(v64 + v65[7], v107, v106);
  (*(v63 + 16))(v64 + v65[8], v110, v108);
  v66 = swift_task_alloc();
  *(v0 + 528) = v66;
  *v66 = v0;
  v66[1] = WFInputDateFlow.buildDateFromParse(parse:);
  OUTLINED_FUNCTION_35_4();

  return Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  outlined destroy of Any?(v2 + 16, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  v1 = *(v0 + 456);
  outlined destroy of Any?(*(v0 + 440), &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  outlined destroy of WFInputDateFlow.State(v1, type metadata accessor for VoiceCommandsNLIntent);
  v2 = OUTLINED_FUNCTION_22_4();
  v3(v2);
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_7_35();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 536) = v4;
  *(v2 + 544) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = v0[38];
  v17 = v0[39];
  v2 = v0[37];
  v3 = v0[30];

  OUTLINED_FUNCTION_4_52();
  outlined destroy of WFInputDateFlow.State(v3, v4);
  v5 = OUTLINED_FUNCTION_13_5();
  v6(v5);
  v7 = OUTLINED_FUNCTION_20_1();
  v8(v7);
  (*(v1 + 8))(v17, v2);
  v9 = v0[22];
  (*(v0[50] + 8))(v0[51], v0[49]);
  v10 = OUTLINED_FUNCTION_9_3();
  v11(v10);

  v12 = type metadata accessor for Date();
  OUTLINED_FUNCTION_36_15(v9, v13, v14, v12);
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_7_35();

  OUTLINED_FUNCTION_6_0();

  return v15();
}

void WFInputDateFlow.buildDateFromParse(parse:)()
{
  v1 = v0[43];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v53 = v0[31];
  v54 = v0[33];
  v51 = v0[30];
  if (v0[67])
  {
    v49 = v0[36];
    v50 = v0[37];
    v5 = v0[28];
    v1 = v0[25];
    v9 = v0[26];

    dispatch thunk of DateTime.dateComponents.getter();

    v10 = OUTLINED_FUNCTION_13_5();
    v11(v10);
    Calendar.date(from:)();

    (*(v9 + 8))(v5, v1);
    OUTLINED_FUNCTION_4_52();
    outlined destroy of WFInputDateFlow.State(v51, v12);
    v14 = *(v8 + 8);
    v13 = v8 + 8;
    v14(v54, v53);
    v16 = *(v6 + 8);
    v15 = v6 + 8;
    v16(v49, v7);
    v18 = *(v3 + 8);
    v17 = v3 + 8;
    v18(v2, v50);
  }

  else
  {

    OUTLINED_FUNCTION_4_52();
    outlined destroy of WFInputDateFlow.State(v51, v19);
    v20 = *(v8 + 8);
    v13 = v8 + 8;
    v20(v54, v53);
    v15 = v6 + 8;
    v21 = OUTLINED_FUNCTION_13_5();
    v22(v21);
    v23 = *(v3 + 8);
    v17 = v3 + 8;
    v23(v2, v4);
    v24 = type metadata accessor for Date();
    OUTLINED_FUNCTION_36_15(v1, v25, v26, v24);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v27 = v0[42];
  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Logger.voiceCommands);
  v30 = OUTLINED_FUNCTION_22_4();
  outlined init with copy of Date?(v30, v31);
  v32 = v29;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  os_log_type_enabled(v33, v34);
  OUTLINED_FUNCTION_41_13();
  if (v35)
  {
    v55 = v32;
    v36 = v0[41];
    v52 = v1;
    v37 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v37 = 136315138;
    outlined init with copy of Date?(v13, v36);
    OUTLINED_FUNCTION_22_4();
    String.init<A>(describing:)();
    outlined destroy of Any?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v38 = OUTLINED_FUNCTION_22_4();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v40);

    *(v37 + 4) = v41;
    OUTLINED_FUNCTION_44_15(&dword_0, v42, v43, "#WFInputDateFlow: usoParse has date: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    OUTLINED_FUNCTION_15_0(v56);
    OUTLINED_FUNCTION_15_0(v37);

    (*(v5 + 8))(v52, v17);
    (*(v15 + 8))(v55, v27);
  }

  else
  {

    outlined destroy of Any?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v5 + 8))(v1, v17);
    v44 = OUTLINED_FUNCTION_22_4();
    v46(v44, v45);
  }

  outlined init with take of Date?(v0[43], v0[22]);
  OUTLINED_FUNCTION_2_57();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35_4();

  __asm { BRAA            X1, X16 }
}

uint64_t WFInputDateFlow.buildOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for DialogPhase();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_27();
  v1[8] = swift_task_alloc();
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[9] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[12] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for NLContextUpdate();
  v1[15] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(**(v0[3] + 120) + 232))();
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v5 = OUTLINED_FUNCTION_9_3();
  v6(v5);
  if (v4)
  {
    OUTLINED_FUNCTION_38_14();
    v12 = (*(v7 + 208) + **(v7 + 208));
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = WFInputDateFlow.buildOutput();

    return v12(v1);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[24] = v10;
    *v10 = v11;
    v10[1] = WFInputDateFlow.buildOutput();

    return WFInputDateFlow.buildOutput_prerfv2(_:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();

  v1 = OUTLINED_FUNCTION_22_4();
  v2(v1);
  v3 = OUTLINED_FUNCTION_21_21();
  v4(v3);

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_15_2();
  v0 = OUTLINED_FUNCTION_21_21();
  v1(v0);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t WFInputDateFlow.buildOutput()(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 152) = v1;

  if (!v1)
  {
    *(v5 + 160) = a1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  v2 = v1[20];
  v3 = v1[16];
  v18 = v1[17];
  v20 = v2;
  v5 = v1[7];
  v4 = v1[8];
  v7 = v1[5];
  v6 = v1[6];
  v16 = v1[4];
  v17 = v1[15];
  static DialogPhase.confirmed.getter();
  v8 = [v2 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v5, v4, v7);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v4, v7);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  (*(v3 + 16))(v16, v18, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  OutputGenerationManifest.nlContextUpdate.setter();
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v1[21] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v1[22] = v9;
  *(v9 + 16) = xmmword_216010;
  *(v9 + 32) = v20;
  v19 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v10 = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[23] = v11;
  *v11 = v12;
  v11[1] = WFInputDateFlow.buildOutput();
  v13 = v1[11];
  v14 = v1[2];

  return v19(v14, v9, v13);
}

uint64_t WFInputDateFlow.buildOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v10 = OUTLINED_FUNCTION_20_18();
  v11(v10);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v10 = OUTLINED_FUNCTION_20_18();
  v11(v10);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t WFInputDateFlow.buildOutput_prerfv2(_:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[10] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for TemplatingResult();
  v1[11] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v11 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 24), *(*(v0 + 72) + 48));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v6 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7();
  (*(v7 + 16))(v3, v4, v6);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5[3] = v8;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v11);

  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t WFInputDateFlow.buildOutput_prerfv2(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_38_14();
  v8 = (*(v3 + 216) + **(v3 + 216));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v2 + 112) = v4;
  *v4 = v5;
  v4[1] = WFInputDateFlow.buildOutput_prerfv2(_:);
  v6 = *(v2 + 104);

  return v8(v6, v1);
}

uint64_t WFInputDateFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  OUTLINED_FUNCTION_0_47();
  outlined destroy of WFInputDateFlow.State(v0 + v1, v2);
  return v0;
}

uint64_t WFInputDateFlow.__deallocating_deinit()
{
  WFInputDateFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFInputDateFlow(uint64_t a1)
{
  v6 = (*(**v1 + 200) + **(**v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFInputDateFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t outlined assign with take of WFInputDateFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFInputDateFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id @nonobjc WFInputDateDialogResponse.init(inputtedDate:cancelled:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithInputtedDate:isa cancelled:a2 & 1];

  return v8;
}

unint64_t lazy protocol witness table accessor for type WFInputDateFlowError and conformance WFInputDateFlowError()
{
  result = lazy protocol witness table cache variable for type WFInputDateFlowError and conformance WFInputDateFlowError;
  if (!lazy protocol witness table cache variable for type WFInputDateFlowError and conformance WFInputDateFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFInputDateFlowError and conformance WFInputDateFlowError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFInputDateFlowError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1BCA80);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata completion function for WFInputDateFlow(uint64_t a1)
{
  result = type metadata accessor for WFInputDateFlow.State(319);
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

void type metadata completion function for WFInputDateFlow.State(uint64_t a1)
{
  type metadata accessor for (parse: Parse)(319, &lazy cache variable for type metadata for (parse: Parse), &type metadata accessor for Parse);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (parse: Parse)(319, &lazy cache variable for type metadata for (response: WFDialogResponse), type metadata accessor for WFDialogResponse);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Error();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (parse: Parse)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

unint64_t type metadata accessor for WFDialogResponse()
{
  result = lazy cache variable for type metadata for WFDialogResponse;
  if (!lazy cache variable for type metadata for WFDialogResponse)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for WFDialogResponse);
  }

  return result;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WFInputDateFlow.State(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type WFInputDateFlow and conformance WFInputDateFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_35()
{
}

uint64_t OUTLINED_FUNCTION_13_27()
{
}

uint64_t OUTLINED_FUNCTION_36_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_44_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = *(a3 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v22 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
  v13 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v15 = *i;
    v21[0] = *(i - 1);
    v21[1] = v15;

    (a1)(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v13;
    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= v16 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16 > 1, v17 + 1, 1);
      v13 = v22;
    }

    v13[2] = v17 + 1;
    (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v11, v19);
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSayypG_18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVsAE_pTg5(void (*a1)(void *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    for (i = a3 + 32; ; i += 32)
    {
      a1(__src, i, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v15 = v6;
      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v15;
      }

      v6[2] = v11 + 1;
      memcpy(&v6[11 * v11 + 4], __src, 0x51uLL);
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

void *INIntentResolutionResult.getDisplayHints(intent:parameter:locale:shouldIncludeOrdinalReference:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(a1);
  v11 = [a1 _codableDescription];
  v12 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(a2, a3, v11);

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      if ([v13 valueType] == &stru_20.vmsize + 1)
      {
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
        v15 = static INIntentResolutionResult.getDisplayHintsForEnum(attribute:dictionary:locale:shouldIncludeOrdinalReference:)(v14, v10, a4, a5 & 1);

        return v15;
      }
    }
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
  static INIntentResolutionResult.getInferredDisplayHints(dictionary:shouldIncludeOrdinalReference:)(v10, a5 & 1);
  v18 = v17;

  return v18;
}

uint64_t static INIntentResolutionResult.makeAsIdString(input:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v8 = OUTLINED_FUNCTION_30_15(v1, v2, v3, v1, v4, v5, v6, v7, v16, v18, v20[0]);
  if (v8)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
    static INIntentResolutionResult.encodeDictionary(input:)();
LABEL_5:

    goto LABEL_6;
  }

  if (OUTLINED_FUNCTION_30_15(v8, v9, v10, &type metadata for String, v11, v12, v13, v14, v17, v19, v20[0]))
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
    static INIntentResolutionResult.base64FromString(string:)();
    goto LABEL_5;
  }

LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return OUTLINED_FUNCTION_22();
}

void *static INIntentResolutionResult.makeOrdinalDisplayHints(idValue:index:count:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(a2, a3);
  v7[2] = a1;
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(partial apply for closure #1 in static INIntentResolutionResult.makeOrdinalDisplayHints(idValue:index:count:), v7, v4);

  return v5;
}

void *static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(unint64_t a1, uint64_t a2)
{
  if (a1 > 0x18)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v8 = &outlined read-only object #0 of one-time initialization function for NUMBERICREFERENCENODEVALUES + 2 * a1;
  v4 = v8[4];
  v2 = v8[5];

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v10 = v9;
  v5 = v9[2];
  v11 = v9[3];
  v3 = v5 + 1;
  if (v5 >= v11 >> 1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v10[2] = v3;
    v12 = &v10[2 * v5];
    v12[4] = v4;
    v12[5] = v2;
LABEL_5:
    v11 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_14_8(v11);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v21;
  }

  if (v11 == a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_58();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v22;
    }

    OUTLINED_FUNCTION_9_29();
    if (v14)
    {
      OUTLINED_FUNCTION_3_57(v13);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v23;
    }

    v15 = 0xE400000000000000;
    v16 = 1953718636;
LABEL_24:
    v10[2] = a1;
    v19 = &v10[2 * a2];
    v19[4] = v16;
    v19[5] = v15;
    return v10;
  }

  if (__OFSUB__(a2, 2))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a2 - 2 == a1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_15:
      v15 = 0xEC0000007473614CLL;
      OUTLINED_FUNCTION_9_29();
      if (v14)
      {
        OUTLINED_FUNCTION_3_57(v17);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v25;
      }

      v16 = 0x6F54646E6F636573;
      goto LABEL_24;
    }

LABEL_29:
    OUTLINED_FUNCTION_2_58();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v24;
    goto LABEL_15;
  }

  if (__OFSUB__(a2, 3))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 - 3 == a1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_21:
      v15 = 0xEB00000000747361;
      OUTLINED_FUNCTION_9_29();
      if (v14)
      {
        OUTLINED_FUNCTION_3_57(v18);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v27;
      }

      v16 = 0x4C6F546472696874;
      goto LABEL_24;
    }

LABEL_31:
    OUTLINED_FUNCTION_2_58();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v26;
    goto LABEL_21;
  }

  return v10;
}

id static INIntentResolutionResult.getCodableEnumValueFromAny(item:attribute:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = outlined init with copy of Any(a1, &v48);
  if (!OUTLINED_FUNCTION_13_28(v11, v12, v13, &type metadata for String))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v34 = type metadata accessor for Logger();
    v29 = __swift_project_value_buffer(v34, static Logger.voiceCommands);
    v30 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_31(v35))
    {
      goto LABEL_22;
    }

    v36 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_25_16(v36);
    v33 = "Unable to convert enum item to a string";
    goto LABEL_21;
  }

  static String.Encoding.utf8.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;

  (*(v6 + 8))(v10, v4);
  if (v16 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v17 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v48 = 0;
  v4 = [v17 JSONObjectWithData:isa options:0 error:&v48];

  if (!v4)
  {
    v37 = v48;
    v38 = _convertNSErrorToError(_:)();

    LOBYTE(v4) = v38;
    swift_willThrow();
    outlined consume of Data?(v14, v16);

    goto LABEL_17;
  }

  v19 = v48;
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data?(v14, v16);
  swift_unknownObjectRelease();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((OUTLINED_FUNCTION_13_28(v20, v21, v22, v20) & 1) == 0)
  {
LABEL_17:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v39 = type metadata accessor for Logger();
    v29 = __swift_project_value_buffer(v39, static Logger.voiceCommands);
    v30 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_31(v40))
    {
      goto LABEL_22;
    }

    v41 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_25_16(v41);
    v33 = "Unable to convert enum string to a dictionary";
    goto LABEL_21;
  }

  v23 = OUTLINED_FUNCTION_18_29();
  specialized Dictionary.subscript.getter(v46, &v48, v23, 0xE500000000000000);

  if (!v49)
  {
    outlined destroy of String?(&v48, &_sypSgMd, &_sypSgMR);
    goto LABEL_25;
  }

  if ((OUTLINED_FUNCTION_13_28(v24, v25, v26, &type metadata for String) & 1) == 0)
  {
LABEL_25:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v43 = type metadata accessor for Logger();
    v29 = __swift_project_value_buffer(v43, static Logger.voiceCommands);
    v30 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_31(v44))
    {
      goto LABEL_22;
    }

    v45 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_25_16(v45);
    v33 = "Unable to convert value string from enum dictionary";
    goto LABEL_21;
  }

  v27 = outlined bridged method (mbgnn) of @objc INCodableEnumAttribute.value(withName:)(v46, v47, a2);

  if (!v27)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v28 = type metadata accessor for Logger();
    v29 = __swift_project_value_buffer(v28, static Logger.voiceCommands);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_31(v31))
    {
      goto LABEL_22;
    }

    v32 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_25_16(v32);
    v33 = "Unable to convert enum value string to INCodableEnumValue";
LABEL_21:
    _os_log_impl(&dword_0, v30, v4, v33, v29, 2u);

LABEL_22:

    return 0;
  }

  return v27;
}

void *static INIntentResolutionResult.getSynonymsForEnum(enumValue:language:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = outlined bridged method (pb) of @objc INCodableEnumValue.synonyms.getter(a1);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  if (!specialized Array.count.getter(v6))
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_32:

    return v19;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.voiceCommands);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableEnumValueSynonym, INCodableEnumValueSynonym_ptr);
    v12 = Array.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v42);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "Getting synonyms for disambiguation item: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  result = outlined bridged method (pb) of @objc INCodableEnumValue.synonyms.getter(a1);
  if (!result)
  {
    goto LABEL_35;
  }

  v16 = result;

  result = specialized Array.count.getter(v16);
  if (!result)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v17 = result;
  if (result >= 1)
  {
    v18 = 0;
    v40 = v16 & 0xC000000000000001;
    v19 = _swiftEmptyArrayStorage;
    v41 = v16;
    do
    {
      if (v40)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v16 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = outlined bridged method (mbgnb) of @objc INCodableEnumValueSynonym.localizedSynonym(forLanguage:)(a2, a3, v20, &selRef_localizedSynonymForLanguage_);
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_53();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v36;
        }

        v27 = v19[2];
        v26 = v19[3];
        if (v27 >= v26 >> 1)
        {
          OUTLINED_FUNCTION_14_8(v26);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v37;
        }

        v19[2] = v27 + 1;
        v28 = &v19[2 * v27];
        v28[4] = v24;
        v28[5] = v25;
      }

      v29 = outlined bridged method (mbgnb) of @objc INCodableEnumValueSynonym.localizedSynonym(forLanguage:)(a2, a3, v21, &selRef_localizedPronunciationHintForLanguage_);
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_53();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v38;
        }

        v34 = v19[2];
        v33 = v19[3];
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_14_8(v33);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v39;
        }

        v19[2] = v34 + 1;
        v35 = &v19[2 * v34];
        v35[4] = v31;
        v35[5] = v32;
      }

      else
      {
      }

      v18 = (v18 + 1);
      v16 = v41;
    }

    while (v17 != v18);
    goto LABEL_32;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *static INIntentResolutionResult.getDisplayHintsForEnum(attribute:dictionary:locale:shouldIncludeOrdinalReference:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v151 = a4;
  v137 = a3;
  v138 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  OUTLINED_FUNCTION_14(v6);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v172 = v129 - v8;
  OUTLINED_FUNCTION_22_10();
  v9 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_7_1();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_24_23();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_12_8();
  v153 = v18;
  OUTLINED_FUNCTION_22_10();
  v174 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7_1();
  v20 = v19;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_19_19();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_12_8();
  v173 = v25;
  OUTLINED_FUNCTION_22_10();
  v136 = type metadata accessor for Locale.Language();
  OUTLINED_FUNCTION_7_1();
  v27 = v26;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_3();
  v135 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  OUTLINED_FUNCTION_14(v31);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v32);
  v134 = v129 - v33;
  OUTLINED_FUNCTION_22_10();
  v34 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_7_1();
  v36 = v35;
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_3();
  v159 = v39 - v38;
  v40 = OUTLINED_FUNCTION_11_34();
  specialized Dictionary.subscript.getter(a2, &v181, v40, v41);
  v42 = &type metadata for Any;
  if (!v182)
  {
    outlined destroy of String?(&v181, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  OUTLINED_FUNCTION_28_15();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v43 = v179;
LABEL_6:
  v146 = 0;
  v44 = v43[2];
  v177 = v43 + 4;
  v158 = v36 + 8;
  v133 = v27 + 8;
  v45 = v44;
  v150 = "voiceCommandContact";
  v149 = "voiceCommandReference";
  v170 = (v20 + 16);
  v148 = v11 + 16;
  v169 = v11 + 32;
  v161 = "voiceCommandConfirmation";
  v168 = (v20 + 8);
  v147 = v11 + 8;
  OUTLINED_FUNCTION_5_36();
  v132 = xmmword_216850;
  v156 = _swiftEmptyArrayStorage;
  v139 = v15;
  v48 = v47;
  v163 = v9;
  v155 = v34;
  v157 = v47;
  v160 = v45;
  while (v46 != v45)
  {
    if (v46 >= v48[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    v49 = v177[v46];
    v50 = v46 + 1;
    if (*(v49 + 16))
    {
      v178 = v46 + 1;
      v175 = v46;

      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v42, 0xEF65756C61567972);
      if ((v52 & 1) == 0)
      {

        v50 = v178;
        goto LABEL_15;
      }

      outlined init with copy of Any(*(v49 + 56) + 32 * v51, &v181);

      OUTLINED_FUNCTION_28_15();
      if (swift_dynamicCast())
      {
        v53 = v179;
        v45 = v180;
        v54 = v159;
        static String.Encoding.utf8.getter();
        v55 = v53;
        v48 = String.data(using:allowLossyConversion:)();
        v57 = v56;
        OUTLINED_FUNCTION_3_27();
        v58(v54, v34);
        if (v57 >> 60 == 15)
        {
          goto LABEL_27;
        }

        v59 = objc_opt_self();
        OUTLINED_FUNCTION_22();
        isa = Data._bridgeToObjectiveC()().super.isa;
        *&v181 = 0;
        v61 = [v59 JSONObjectWithData:isa options:0 error:&v181];

        if (!v61)
        {
          v79 = v181;

          v45 = _convertNSErrorToError(_:)();

          v42 = v45;
          swift_willThrow();
          OUTLINED_FUNCTION_5_36();
          v80 = OUTLINED_FUNCTION_22();
          outlined consume of Data?(v80, v81);

          v146 = 0;
          v34 = v155;
          goto LABEL_28;
        }

        v62 = v181;
        _bridgeAnyObjectToAny(_:)();
        v63 = OUTLINED_FUNCTION_22();
        outlined consume of Data?(v63, v64);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        OUTLINED_FUNCTION_28_15();
        v65 = &type metadata for Any;
        v66 = swift_dynamicCast();
        v34 = v155;
        if ((v66 & 1) == 0)
        {
          goto LABEL_27;
        }

        v67 = v179;
        if (!v179[2] || (v68 = OUTLINED_FUNCTION_18_29(), v69 = specialized __RawDictionaryStorage.find<A>(_:)(v68, 0xE500000000000000), (v70 & 1) == 0))
        {
LABEL_26:

          goto LABEL_27;
        }

        outlined init with copy of Any(*(v67 + 56) + 32 * v69, &v181);

        OUTLINED_FUNCTION_28_15();
        if (swift_dynamicCast())
        {
          v71 = v179;
          v48 = v180;
          v130 = outlined bridged method (mbgnn) of @objc INCodableEnumAttribute.value(withName:)(v179, v180, v138);
          if (!v130)
          {
            goto LABEL_26;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          *(inited + 16) = v132;
          *(inited + 32) = v71;
          *(inited + 40) = v48;
          v167 = inited;
          v179 = inited;
          v73 = v135;
          Locale.language.getter();
          v74 = v134;
          Locale.Language.languageCode.getter();
          OUTLINED_FUNCTION_3_27();
          v75(v73, v136);
          v76 = type metadata accessor for Locale.LanguageCode();
          if (__swift_getEnumTagSinglePayload(v74, 1, v76) == 1)
          {
            outlined destroy of String?(v74, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
            v77 = 0xE200000000000000;
            v78 = 28261;
          }

          else
          {
            v176 = Locale.LanguageCode.identifier.getter();
            v77 = v82;
            (*(*(v76 - 8) + 8))(v74, v76);
            v78 = v176;
          }

          v145 = v4;
          v176 = v78;
          v83 = v130;
          v84 = outlined bridged method (mbgnb) of @objc INCodableEnumValueSynonym.localizedSynonym(forLanguage:)(v78, v77, v130, &selRef_localizedDisplayNameForLanguage_);
          if (v85)
          {
            v86 = v84;
            v87 = v85;
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v88[2] = 2;
            v88[6] = v86;
            v88[7] = v87;
            v179 = v88;
          }

          v89 = static INIntentResolutionResult.getSynonymsForEnum(enumValue:language:)(v83, v176, v77);

          specialized Array.append<A>(contentsOf:)(v89);
          v182 = &type metadata for String;
          *&v181 = v55;
          *(&v181 + 1) = v45;
          v143 = static INIntentResolutionResult.makeAsIdString(input:)(&v181);
          v144 = v90;
          __swift_destroy_boxed_opaque_existential_1Tm(&v181);
          v48 = v179;
          v142 = v179[2];
          if (v142)
          {
            v91 = 0;
            v129[1] = v179;
            v141 = v179 + 4;
            v92 = v163;
            OUTLINED_FUNCTION_6_34();
            v140 = v11;
            while (1)
            {
              v154 = v91;

              OUTLINED_FUNCTION_29_20();
              OUTLINED_FUNCTION_14_28();
              SemanticValue.init(string:label:)();
              OUTLINED_FUNCTION_14_28();
              OUTLINED_FUNCTION_22();
              SemanticValue.init(string:label:)();
              v93 = *v170;
              (*v170)(v172, v55, v65);
              OUTLINED_FUNCTION_49_3();
              __swift_storeEnumTagSinglePayload(v94, v95, v96, v65);
              v165 = v93;
              v93(v171, v45, v65);
              OUTLINED_FUNCTION_22();
              DisplayHint.init(idValue:displayValue:)();
              OUTLINED_FUNCTION_3_27();
              v42 = v145;
              v97(v145, v34, v92);
              v98 = v156;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v117 = OUTLINED_FUNCTION_4_53();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v117, v118, v119, v98);
                v98 = v120;
              }

              v100 = *(v98 + 16);
              v99 = *(v98 + 24);
              v45 = v160;
              if (v100 >= v99 >> 1)
              {
                v121 = OUTLINED_FUNCTION_14_8(v99);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121, v100 + 1, 1, v98);
                v98 = v122;
              }

              *(v98 + 16) = v100 + 1;
              v167 = (*(v11 + 80) + 32) & ~*(v11 + 80);
              v166 = *(v11 + 72);
              v164 = *(v11 + 32);
              v164(v98 + v167 + v166 * v100, v42, v92);
              if (v151)
              {
                v101 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(v175, v45);
                v45 = v101[2];
                if (v45)
                {
                  v156 = v98;
                  *&v181 = _swiftEmptyArrayStorage;
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
                  v65 = v181;
                  v131 = v101;
                  v55 = v101 + 5;
                  v42 = v139;
                  do
                  {
                    v176 = v45;
                    swift_bridgeObjectRetain_n();
                    OUTLINED_FUNCTION_29_20();
                    OUTLINED_FUNCTION_14_28();
                    v102 = v171;
                    SemanticValue.init(string:label:)();
                    v34 = v174;
                    v103 = v165;
                    v165(v172, v173, v174);
                    OUTLINED_FUNCTION_49_3();
                    __swift_storeEnumTagSinglePayload(v104, v105, v106, v34);
                    v103(v162, v102, v34);
                    DisplayHint.init(idValue:displayValue:)();
                    OUTLINED_FUNCTION_3_27();
                    v107(v102, v34);

                    *&v181 = v65;
                    v109 = v65[2];
                    v108 = v65[3];
                    if (v109 >= v108 >> 1)
                    {
                      v111 = OUTLINED_FUNCTION_14_8(v108);
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v111, v109 + 1, 1);
                      v65 = v181;
                    }

                    v65[2] = v109 + 1;
                    v110 = v65 + v167 + v109 * v166;
                    v92 = v163;
                    v164(v110, v42, v163);
                    v55 += 2;
                    v45 = v176 - 1;
                  }

                  while (v176 != 1);

                  v98 = v156;
                }

                else
                {

                  v65 = _swiftEmptyArrayStorage;
                }

                v112 = v65[2];
                v113 = *(v98 + 16);
                v11 = v140;
                if (__OFADD__(v113, v112))
                {
                  goto LABEL_64;
                }

                if (v113 + v112 > *(v98 + 24) >> 1)
                {
                  v123 = OUTLINED_FUNCTION_22_24();
                  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123, v124, v125, v98);
                  v98 = v126;
                  v113 = *(v126 + 16);
                  if (!v65[2])
                  {
LABEL_57:

                    OUTLINED_FUNCTION_6_34();
                    OUTLINED_FUNCTION_5_36();
                    if (v112)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_58;
                  }
                }

                else if (!v112)
                {
                  goto LABEL_57;
                }

                if ((*(v98 + 24) >> 1) - v113 < v112)
                {
                  goto LABEL_66;
                }

                swift_arrayInitWithCopy();

                if (v112)
                {
                  v114 = *(v98 + 16);
                  v115 = __OFADD__(v114, v112);
                  v116 = v114 + v112;
                  v34 = v153;
                  v55 = v173;
                  v65 = v174;
                  v45 = v152;
                  v42 = 0x616C756261636F76;
                  if (v115)
                  {
                    goto LABEL_67;
                  }

                  *(v98 + 16) = v116;
                  goto LABEL_58;
                }
              }

              else
              {
                v11 = v140;
              }

              OUTLINED_FUNCTION_6_34();
              OUTLINED_FUNCTION_5_36();
LABEL_58:
              v156 = v98;
              v91 = v154 + 1;
              OUTLINED_FUNCTION_3_27();
              v127(v34, v92);
              v48 = *v168;
              (*v168)(v45, v65);
              (v48)(v55, v65);
              if (v91 == v142)
              {

                v34 = v155;
                goto LABEL_61;
              }
            }
          }

LABEL_61:

          OUTLINED_FUNCTION_21_22();
          v4 = v145;
        }

        else
        {
LABEL_27:

LABEL_28:
          OUTLINED_FUNCTION_21_22();
        }
      }

      else
      {
        v46 = v178;
      }
    }

    else
    {
LABEL_15:
      v46 = v50;
    }
  }

  return v156;
}

void static INIntentResolutionResult.getInferredDisplayHints(dictionary:shouldIncludeOrdinalReference:)(uint64_t a1, int a2)
{
  v4 = v2;
  v112 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  OUTLINED_FUNCTION_14(v6);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v127 = v96 - v8;
  OUTLINED_FUNCTION_22_10();
  v9 = type metadata accessor for DisplayHint();
  OUTLINED_FUNCTION_7_1();
  v113 = v10;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v14 = v12 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = v96 - v17;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_8();
  v20 = v19;
  OUTLINED_FUNCTION_22_10();
  v21 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7_1();
  v23 = v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_50_0();
  v119 = (v25 - v26);
  v28 = __chkstk_darwin(v27);
  v126 = v96 - v29;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_24_23();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_12_8();
  v128 = v31;
  v32 = OUTLINED_FUNCTION_11_34();
  specialized Dictionary.subscript.getter(a1, &v134, v32, v33);
  if (!v135)
  {
    outlined destroy of String?(&v134, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v34 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v34 = v132;
LABEL_6:
  v35 = v128;
  v36 = 0;
  v116 = v34[2];
  v111 = "voiceCommandContact";
  v110 = "voiceCommandReference";
  v125 = (v23 + 16);
  v109 = v113 + 16;
  v124 = v113 + 32;
  v118 = "voiceCommandConfirmation";
  v123 = (v23 + 8);
  v107 = v113 + 8;
  v115 = _swiftEmptyArrayStorage;
  v100 = v14;
  v108 = v20;
  while (1)
  {
    if (v116 == v36)
    {

      return;
    }

    if (v36 >= v34[2])
    {
      break;
    }

    v37 = v34[v36 + 4];
    if (!*(v37 + 16))
    {
      goto LABEL_12;
    }

    v117 = v36;

    v38 = OUTLINED_FUNCTION_18_29();
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v38, 0xE500000000000000);
    if (v40)
    {
      outlined init with copy of Any(*(v37 + 56) + 32 * v39, &v132);
      outlined init with take of Any(&v132, &v134);
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v132 = v37;
      static INIntentResolutionResult.inferDescriptionStrings(input:)(&v132);
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1Tm(&v132);
      v105 = static INIntentResolutionResult.makeAsIdString(input:)(&v134);
      v104 = *(v42 + 16);
      if (v104)
      {
        v106 = v43;
        v97 = v4;
        v44 = 0;
        v96[1] = v42;
        v102 = v42 + 32;
        v45 = v35;
        v46 = v20;
        v122 = v9;
        v99 = v18;
        v98 = v3;
        v103 = v34;
        while (1)
        {
          v114 = v44;

          OUTLINED_FUNCTION_29_20();
          OUTLINED_FUNCTION_14_28();
          SemanticValue.init(string:label:)();
          OUTLINED_FUNCTION_14_28();
          v9 = v122;
          SemanticValue.init(string:label:)();
          v47 = *v125;
          v48 = v127;
          (*v125)(v127, v45, v21);
          OUTLINED_FUNCTION_49_3();
          __swift_storeEnumTagSinglePayload(v49, v50, v51, v21);
          v52 = v126;
          v121 = v47;
          v47(v126, v3, v21);
          v53 = v115;
          DisplayHint.init(idValue:displayValue:)();
          OUTLINED_FUNCTION_3_27();
          v54(v18, v46, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = OUTLINED_FUNCTION_2_58();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v75, v76, v77, v78);
            v53 = v79;
          }

          OUTLINED_FUNCTION_9_29();
          if (v56)
          {
            v80 = OUTLINED_FUNCTION_3_57(v55);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v80, v81, v82, v83);
            v53 = v84;
          }

          *(v53 + 16) = v48;
          v130 = (*(v113 + 80) + 32) & ~*(v113 + 80);
          v129 = *(v113 + 72);
          v120 = *(v113 + 32);
          v120(v53 + v130 + v129 * v52, v18, v9);
          if (v112)
          {
            v57 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(v117, v116);
            v58 = v57[2];
            if (v58)
            {
              v115 = v53;
              *&v132 = _swiftEmptyArrayStorage;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
              v59 = v132;
              v101 = v57;
              v60 = v57 + 5;
              v61 = v100;
              do
              {
                v131 = v58;
                swift_bridgeObjectRetain_n();
                OUTLINED_FUNCTION_29_20();
                OUTLINED_FUNCTION_14_28();
                v62 = v126;
                SemanticValue.init(string:label:)();
                v63 = v121;
                v121(v127, v128, v21);
                OUTLINED_FUNCTION_49_3();
                __swift_storeEnumTagSinglePayload(v64, v65, v66, v21);
                v63(v119, v62, v21);
                DisplayHint.init(idValue:displayValue:)();
                (*v123)(v62, v21);

                *&v132 = v59;
                v68 = v59[2];
                v67 = v59[3];
                if (v68 >= v67 >> 1)
                {
                  v69 = OUTLINED_FUNCTION_14_8(v67);
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v69, v68 + 1, 1);
                  v59 = v132;
                }

                v59[2] = v68 + 1;
                v9 = v122;
                v120(v59 + v130 + v68 * v129, v61, v122);
                v60 += 2;
                v58 = v131 - 1;
              }

              while (v131 != 1);

              v18 = v99;
              v3 = v98;
              v53 = v115;
            }

            else
            {

              v59 = _swiftEmptyArrayStorage;
            }

            v70 = v59[2];
            v71 = *(v53 + 16);
            v34 = v103;
            if (__OFADD__(v71, v70))
            {
              goto LABEL_45;
            }

            if (v71 + v70 > *(v53 + 24) >> 1)
            {
              v85 = OUTLINED_FUNCTION_22_24();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85, v86, v87, v53);
              v53 = v88;
              v71 = *(v88 + 16);
              if (!v59[2])
              {
LABEL_37:

                if (v70)
                {
                  goto LABEL_46;
                }

                goto LABEL_38;
              }
            }

            else if (!v70)
            {
              goto LABEL_37;
            }

            if ((*(v53 + 24) >> 1) - v71 < v70)
            {
              goto LABEL_47;
            }

            swift_arrayInitWithCopy();

            if (v70)
            {
              v72 = *(v53 + 16);
              v73 = __OFADD__(v72, v70);
              v74 = v72 + v70;
              if (v73)
              {
                goto LABEL_48;
              }

              *(v53 + 16) = v74;
            }
          }

          else
          {
            v34 = v103;
          }

LABEL_38:
          v115 = v53;
          v89 = v18;
          v90 = v114 + 1;
          OUTLINED_FUNCTION_3_27();
          v46 = v91;
          v92();
          v93 = *v123;
          (*v123)(v3, v21);
          v45 = v128;
          v93(v128, v21);
          v94 = v90 == v104;
          v44 = v90;
          v18 = v89;
          if (v94)
          {
            v20 = v46;

            v4 = v97;
            v35 = v45;
            goto LABEL_42;
          }
        }
      }

LABEL_42:
      v95 = v117 + 1;
      __swift_destroy_boxed_opaque_existential_1Tm(&v134);
      v36 = v95;
    }

    else
    {

      v36 = v117;
LABEL_12:
      ++v36;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void static INIntentResolutionResult.inferDescriptionStrings(input:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    v1 = 0;
    v2 = v55;
    v4 = v55 + 64;
    v3 = *(v55 + 64);
    v5 = 1 << *(v55 + 32);
    v54 = _swiftEmptyArrayStorage;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & v3;
    v8 = (v5 + 63) >> 6;
    if ((v6 & v3) == 0)
    {
      goto LABEL_7;
    }

    do
    {
      v9 = v1;
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(v2 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      outlined init with copy of Any(*(v2 + 56) + 32 * v11, v48);
      *&v49 = v14;
      *(&v49 + 1) = v13;
      outlined init with take of Any(v48, &v50);

LABEL_12:
      v52 = v49;
      v53[0] = v50;
      v53[1] = v51;
      v15 = *(&v49 + 1);
      if (!*(&v49 + 1))
      {

        goto LABEL_46;
      }

      v16 = v52;
      v17 = outlined init with take of Any(v53, &v49);
      *&v48[0] = v16;
      *(&v48[0] + 1) = v15;
      __chkstk_darwin(v17);
      v47[2] = v48;
      LOBYTE(v16) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v47, &outlined read-only object #0 of one-time initialization function for interestingFields);

      if (v16)
      {
        static INIntentResolutionResult.inferDescriptionStrings(input:)(&v49);
        specialized Array.append<A>(contentsOf:)(v18);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v49);
    }

    while (v7);
LABEL_7:
    while (1)
    {
      v9 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        v7 = 0;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        goto LABEL_12;
      }

      v7 = *(v4 + 8 * v9);
      ++v1;
      if (v7)
      {
        v1 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v30 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_216850;
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      if (v30)
      {
        v32 = 1702195828;
      }

      else
      {
        v32 = 0x65736C6166;
      }

      if (v30)
      {
        v33 = 0xE400000000000000;
      }

      else
      {
        v33 = 0xE500000000000000;
      }

      v34 = v33;
      String.append(_:)(*&v32);
    }

    else
    {
      if (swift_dynamicCast())
      {
        v36 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_216850;
        *&v49 = v36;
        *(v37 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v37 + 40) = v38;
        goto LABEL_46;
      }

      if (!swift_dynamicCast())
      {
LABEL_50:
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v39 = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_216850;
          v41 = [v39 stringValue];
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          *(v40 + 32) = v42;
          *(v40 + 40) = v44;
        }

        else if (swift_dynamicCast())
        {
          v45 = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_216850;
          *(v46 + 32) = v45;
        }

        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_216850;
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      Double.write<A>(to:)();
    }

    v35 = *(&v52 + 1);
    *(v31 + 32) = v52;
    *(v31 + 40) = v35;
LABEL_46:
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    return;
  }

  v19 = *(v49 + 16);
  if (!v19)
  {

    goto LABEL_46;
  }

  v20 = v49 + 32;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    outlined init with copy of Any(v20, &v52);
    static INIntentResolutionResult.inferDescriptionStrings(input:)(&v52);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(&v52);
    v24 = *(v23 + 16);
    v25 = v21[2];
    if (__OFADD__(v25, v24))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v25 + v24 > v21[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v21 = v26;
    }

    if (*(v23 + 16))
    {
      if ((v21[3] >> 1) - v21[2] < v24)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v27 = v21[2];
        v28 = __OFADD__(v27, v24);
        v29 = v27 + v24;
        if (v28)
        {
          goto LABEL_57;
        }

        v21[2] = v29;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_55;
      }
    }

    v20 += 32;
    if (!--v19)
    {

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t closure #1 in static INIntentResolutionResult.makeOrdinalDisplayHints(idValue:index:count:)(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for SemanticValue();
  OUTLINED_FUNCTION_7_1();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_50_0();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;

  SemanticValue.init(string:label:)();
  v17 = *(v9 + 16);
  v17(v6, a2, v7);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v7);
  v17(v13, v16, v7);
  DisplayHint.init(idValue:displayValue:)();
  return (*(v9 + 8))(v16, v7);
}

uint64_t static INIntentResolutionResult.encodeDictionary(input:)()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = 0;
  v2 = [v0 dataWithJSONObject:isa options:2 error:&v10];

  v3 = v10;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return countAndFlagsBits;
}

uint64_t static INIntentResolutionResult.base64FromString(string:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  outlined consume of Data?(v4, v6);
  return countAndFlagsBits;
}

uint64_t outlined bridged method (pb) of @objc INCodableEnumValue.synonyms.getter(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableEnumValueSynonym, INCodableEnumValueSynonym_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id outlined bridged method (mbgnn) of @objc INCodableEnumAttribute.value(withName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 valueWithName:v4];

  return v5;
}

uint64_t outlined bridged method (mbgnb) of @objc INCodableEnumValueSynonym.localizedSynonym(forLanguage:)(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a3 *a4];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t OUTLINED_FUNCTION_13_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_17_31(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_30_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

void *WFConfirmInteractionFlow.exitValue.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  if (v2 == 2)
  {
    swift_errorRetain();
  }

  else if (v2 == 1)
  {
    v3 = v1;
  }

  else
  {
    lazy protocol witness table accessor for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError();
    return swift_allocError();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError()
{
  result = lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError;
  if (!lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError;
  if (!lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowConfirmInteractionError and conformance WorkflowConfirmInteractionError);
  }

  return result;
}

uint64_t WFConfirmInteractionFlow.__allocating_init(shortcutName:request:appBundleId:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  WFConfirmInteractionFlow.init(shortcutName:request:appBundleId:deviceState:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t WFConfirmInteractionFlow.init(shortcutName:request:appBundleId:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = type metadata accessor for CATOption();
  v15 = OUTLINED_FUNCTION_14(v14);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3_40();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v18))
  {
    v41 = a3;
    v19 = a6;
    v20 = a1;
    v21 = a2;
    v22 = a4;
    v23 = a5;
    v24 = OUTLINED_FUNCTION_52();
    *v24 = 0;
    _os_log_impl(&dword_0, v17, v18, "#WFConfirmInteractionFlow initialized.", v24, 2u);
    v25 = v24;
    a5 = v23;
    a4 = v22;
    a2 = v21;
    a1 = v20;
    a6 = v19;
    a3 = v41;
    OUTLINED_FUNCTION_15_0(v25);
  }

  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  outlined init with copy of DeviceState(a6, v7 + 56);
  type metadata accessor for WorkflowSnippetProvider();
  v42 = a3;
  *(v7 + 96) = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(a6);
  outlined init with copy of DeviceState(a6, v43);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6(&one-time initialization token for shared);
  }

  v26 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_2_44();
  v40 = CATWrapper.__allocating_init(options:globals:)();
  v27 = type metadata accessor for WorkflowRunnerCATsSimple(0);
  OUTLINED_FUNCTION_29_21(v27);
  OUTLINED_FUNCTION_2_44();
  v28 = CATWrapperSimple.__allocating_init(options:globals:)();
  v29 = type metadata accessor for RunCustomIntentCATs(0);
  OUTLINED_FUNCTION_29_21(v29);
  OUTLINED_FUNCTION_2_44();
  v30 = CATWrapper.__allocating_init(options:globals:)();
  v31 = type metadata accessor for RunCustomIntentCATsSimple(0);
  OUTLINED_FUNCTION_29_21(v31);
  OUTLINED_FUNCTION_2_44();
  v32 = CATWrapperSimple.__allocating_init(options:globals:)();
  v33 = type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_29_21(v33);
  OUTLINED_FUNCTION_2_44();
  v34 = CATWrapper.__allocating_init(options:globals:)();
  v35 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_29_21(v35);
  OUTLINED_FUNCTION_2_44();
  v36 = CATWrapperSimple.__allocating_init(options:globals:)();
  v37 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_29_21(v37);
  OUTLINED_FUNCTION_2_44();
  v38 = CATWrapper.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *(v7 + 104) = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v43, v26, v40, v28, v30, v32, v34, v36, v38);
  type metadata accessor for WorkflowNLContextProvider();
  *(v7 + 112) = swift_allocObject();
  *(v7 + 120) = 0;
  *(v7 + 128) = 3;
  return v7;
}

uint64_t WFConfirmInteractionFlow.on(input:)()
{
  v2 = v0;
  v3 = type metadata accessor for Parse();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3_40();
  if (*(v0 + 128) != 3 || *(v0 + 120) != 1)
  {
    return 0;
  }

  Input.parse.getter();
  v6 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v1);
  (*(v4 + 8))(v1, v3);
  if (v6 == 3)
  {
    return 0;
  }

  v8 = *(v2 + 120);
  *(v2 + 120) = v6;
  v9 = *(v2 + 128);
  *(v2 + 128) = 0;
  outlined consume of WFShowAlertFlow.State(v8, v9);
  return 1;
}

uint64_t WFConfirmInteractionFlow.execute()(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3);
}

{
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[20] = v4;
  *v4 = v5;
  v4[1] = WFConfirmInteractionFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v1 + 2, v2, v3);
}

uint64_t WFConfirmInteractionFlow.execute()()
{
  v41 = v0;
  v1 = *(v0 + 136);
  v2 = *(v1 + 120);
  switch(*(v1 + 128))
  {
    case 1:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v24 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v24, static Logger.voiceCommands);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_50(v26))
      {
        v27 = OUTLINED_FUNCTION_52();
        *v27 = 0;
        OUTLINED_FUNCTION_26(&dword_0, v28, v29, "#WFConfirmInteractionFlow completed");
        OUTLINED_FUNCTION_15_0(v27);
      }

      static ExecuteResponse.complete()();
      goto LABEL_32;
    case 2:
      swift_errorRetain();
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v10 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
      swift_errorRetain();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      outlined consume of WFShowAlertFlow.State(v2, 2);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = v14;
        *v13 = 136315138;
        swift_getErrorValue();
        v15 = Error.localizedDescription.getter();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v40);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_0, v11, v12, "#WFConfirmInteractionFlow error state: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        OUTLINED_FUNCTION_15_0(v14);
        OUTLINED_FUNCTION_15_0(v13);
      }

      static ExecuteResponse.complete()();
      outlined consume of WFShowAlertFlow.State(v2, 2);
      goto LABEL_32;
    case 3:
      if (v2)
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v18 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_50(v20))
        {
          v21 = OUTLINED_FUNCTION_52();
          *v21 = 0;
          OUTLINED_FUNCTION_26(&dword_0, v22, v23, "#WFConfirmInteractionFlow waiting for response");
          OUTLINED_FUNCTION_15_0(v21);
        }

        goto LABEL_31;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 144) = v34;
      *v34 = v35;
      v34[1] = WFConfirmInteractionFlow.execute();

      return WFConfirmInteractionFlow.buildOutput()();
    default:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v3 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v5))
      {
        v6 = OUTLINED_FUNCTION_52();
        *v6 = 0;
        OUTLINED_FUNCTION_40(&dword_0, v7, v8, "#WFConfirmInteractionFlow responseReceived");
        OUTLINED_FUNCTION_15_0(v6);
      }

      if (v2 - 1 < 2)
      {
        v9 = 0;
LABEL_26:
        v30 = [objc_allocWithZone(WFConfirmInteractionDialogResponse) initWithInteractionResponseCode:v9];
        v31 = *(v1 + 120);
        *(v1 + 120) = v30;
        v32 = *(v1 + 128);
        *(v1 + 128) = 1;
        v33 = v30;
        outlined consume of WFShowAlertFlow.State(v31, v32);
        static ExecuteResponse.ongoing(requireInput:)();

        goto LABEL_32;
      }

      if (!v2)
      {
        v9 = 1;
        goto LABEL_26;
      }

      v37 = *(v1 + 120);
      *(v1 + 120) = 0;
      v38 = *(v1 + 128);
      *(v1 + 128) = 3;
      outlined consume of WFShowAlertFlow.State(v37, v38);
LABEL_31:
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_32:
      OUTLINED_FUNCTION_6_0();

      return v39();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = *(v1 + 120);
  *(v1 + 120) = 1;
  v3 = *(v1 + 128);
  *(v1 + 128) = 3;
  outlined consume of WFShowAlertFlow.State(v2, v3);
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v3))
  {
    v0 = OUTLINED_FUNCTION_52();
    *v0 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v4, v5, "#WFConfirmInteractionFlow error creating or submitting output");
    OUTLINED_FUNCTION_15_0(v0);
  }

  OUTLINED_FUNCTION_15_22();
  outlined consume of WFShowAlertFlow.State(v2, v0);
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v4))
  {
    v1 = OUTLINED_FUNCTION_52();
    *v1 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v5, v6, "#WFConfirmInteractionFlow error creating or submitting output");
    OUTLINED_FUNCTION_15_0(v1);
  }

  OUTLINED_FUNCTION_15_22();
  outlined consume of WFShowAlertFlow.State(v3, v1);
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t WFConfirmInteractionFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WFConfirmInteractionFlow();
  lazy protocol witness table accessor for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow(&lazy protocol witness table cache variable for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow, v2, type metadata accessor for WFConfirmInteractionFlow, &protocol conformance descriptor for WFConfirmInteractionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFConfirmInteractionFlow.buildOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[36] = v2;
  v1[37] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v3);
  v1[38] = OUTLINED_FUNCTION_28();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[39] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for DialogPhase();
  v1[40] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[41] = v6;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[44] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[45] = v8;
  v1[46] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[47] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[48] = v10;
  v1[49] = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    OUTLINED_FUNCTION_2_59((v0[37] + 56));
    if (dispatch thunk of DeviceState.isHomePod.getter())
    {
      v5 = v0[37];
      type metadata accessor for WFDialogState();
      v6 = static WFDialogState.isAppFirstRun(appId:)(*(v5 + 40), *(v5 + 48));
    }

    else
    {
      v6 = 0;
    }

    v11 = *(v0[37] + 32);
    v0[50] = v11;
    OUTLINED_FUNCTION_18_4();
    v14 = (*(v12 + 176) + **(v12 + 176));
    v13 = swift_task_alloc();
    v0[51] = v13;
    *v13 = v0;
    v13[1] = WFConfirmInteractionFlow.buildOutput();

    return v14(v11, v6 & 1);
  }

  else
  {
    v7 = v0[36];
    v7[3] = type metadata accessor for AceOutput();
    v7[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[79] = v8;
    *v8 = v9;
    v8[1] = WFConfirmInteractionFlow.buildOutput();

    return WFConfirmInteractionFlow.buildOutput_prerfv2()();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 416) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_34_16();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v8[61] = v6;
  v8[62] = v7;
  v8[63] = v9;
  v8[64] = v10;
  v8[65] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 248));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  v1 = v0[57];
  v2 = v0[56];
  v3 = v0[52];
  swift_setDeallocating();
  CustomIntentsDialogTemplating.deinit();
  swift_deallocClassInstance();

  v4 = OUTLINED_FUNCTION_9_3();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 26);
  OUTLINED_FUNCTION_34_16();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 640) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_0();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 288));
  OUTLINED_FUNCTION_33_12();

  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);

  swift_setDeallocating();
  CustomIntentsDialogTemplating.deinit();
  swift_deallocClassInstance();
  v3 = OUTLINED_FUNCTION_9_3();
  v4(v3);
  OUTLINED_FUNCTION_33_12();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t WFConfirmInteractionFlow.buildOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  v15 = *(v14 + 416);
  v17 = *(v14 + 336);
  v16 = *(v14 + 344);
  v19 = *(v14 + 320);
  v18 = *(v14 + 328);
  v20 = *(v14 + 312);
  v57 = *(v14 + 296);
  v58 = *(v14 + 400);
  static DialogPhase.confirmation.getter();
  v21 = [v15 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v18 + 16))(v17, v16, v19);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v18 + 8))(v16, v19);
  v22 = [v58 interaction];
  v23 = [v22 intent];

  OUTLINED_FUNCTION_18_4();
  (*(v24 + 216))(v23);

  v25 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v25);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  OUTLINED_FUNCTION_2_59((v57 + 56));
  if (dispatch thunk of DeviceState.isHomePod.getter() & 1) != 0 || (OUTLINED_FUNCTION_2_59((*(v14 + 296) + 56)), (dispatch thunk of DeviceState.isMac.getter()) || (OUTLINED_FUNCTION_2_59((*(v14 + 296) + 56)), (dispatch thunk of DeviceState.isCarPlay.getter()))
  {
    v26 = *(v14 + 416);
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    *(v14 + 424) = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v27 = swift_allocObject();
    *(v14 + 432) = v27;
    *(v27 + 16) = xmmword_216010;
    *(v27 + 32) = v26;
    OUTLINED_FUNCTION_12_30(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v28 = v26;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 440) = v29;
    *v29 = v30;
    v29[1] = WFConfirmInteractionFlow.buildOutput();
    OUTLINED_FUNCTION_6_1();

    return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, v57, v58, a12, a13, a14);
  }

  else
  {
    v40 = *(v14 + 400);
    v41 = [v40 interaction];
    v42 = [v41 intent];
    *(v14 + 448) = v42;

    v43 = [v40 interaction];
    *(v14 + 456) = [v43 intentResponse];

    static Device.current.getter();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_6(&one-time initialization token for shared);
    }

    v44 = static WFDialogState.shared;
    type metadata accessor for RunCustomIntentCATs(0);

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v45 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v46 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v47 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v48 = CATWrapperSimple.__allocating_init(options:globals:)();
    v49 = type metadata accessor for AppNameResolver();
    v50 = swift_allocObject();
    type metadata accessor for CustomIntentsDialogTemplating();
    inited = swift_initStackObject();
    *(v14 + 464) = inited;
    *(inited + 136) = v49;
    *(inited + 144) = &protocol witness table for AppNameResolver;
    *(inited + 112) = v50;
    *(inited + 56) = v44;
    outlined init with take of Output((v14 + 168), inited + 16);
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(inited + 80) = v45;
    *(inited + 88) = v46;
    *(inited + 96) = v47;
    *(inited + 104) = v48;
    v52 = [v42 verb];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *(v14 + 472) = v54;
    v55 = swift_task_alloc();
    *(v14 + 480) = v55;
    *v55 = v14;
    v55[1] = WFConfirmInteractionFlow.buildOutput();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_6_1();

    return CustomIntentsDialogTemplating.yesAndCancel(intentVerb:)();
  }
}

{
  OUTLINED_FUNCTION_21_1();
  v15 = *(v14 + 448);
  v16 = *(v14 + 296);
  type metadata accessor for App();

  OUTLINED_FUNCTION_9_3();
  *(v14 + 528) = App.__allocating_init(appIdentifier:)();
  v17 = [v15 _title];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v14 + 536) = v20;
  v61 = [v15 _keyImage];
  *(v14 + 544) = v61;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v21 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  *(v14 + 552) = v21;
  __swift_project_boxed_opaque_existential_1((v16 + 56), *(v16 + 80));
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v23 = *(v14 + 504);
    v22 = *(v14 + 512);
    v60 = *(v14 + 488);
    v24 = *(v14 + 448);

    v25 = [v24 _title];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v14 + 232) = &type metadata for WorkflowDataModels.WatchModel;
    *(v14 + 240) = &protocol witness table for WorkflowDataModels.WatchModel;
    v29 = swift_allocObject();
    *(v14 + 208) = v29;

    *(v29 + 16) = v26;
    *(v29 + 24) = v28;
    *(v29 + 32) = v60;
    *(v29 + 48) = v23;
    *(v29 + 56) = v22;
    *(v29 + 64) = 0u;
    *(v29 + 80) = 0u;
    v30 = *(v14 + 416);
    type metadata accessor for ResponseFactory();
    swift_allocObject();
    v31 = ResponseFactory.init()();
    *(v14 + 272) = OUTLINED_FUNCTION_20_19(v31);
    OUTLINED_FUNCTION_10_36();
    *(v14 + 280) = lazy protocol witness table accessor for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow(v32, 255, v33, &protocol conformance descriptor for WorkflowDataModels);
    __swift_allocate_boxed_opaque_existential_1((v14 + 248));
    v34 = OUTLINED_FUNCTION_20_1();
    v20(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v35 = swift_allocObject();
    *(v14 + 616) = v35;
    *(v35 + 16) = xmmword_216010;
    *(v35 + 32) = v30;
    OUTLINED_FUNCTION_12_30(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
    v36 = v30;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 624) = v37;
    *v37 = v38;
    OUTLINED_FUNCTION_3_58(v37);
    OUTLINED_FUNCTION_6_1();

    return v43(v39, v40, v41, v42, v43, v44, v45, v46, v60, *(&v60 + 1), v61, a12, a13, a14);
  }

  else
  {
    v49 = *(v14 + 448);
    v48 = *(v14 + 456);
    *(v14 + 560) = v18;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
    v50 = v49;
    v51 = v48;
    v62.value.super.isa = v48;
    isa = INInteraction.__allocating_init(intent:response:)(v50, v62).super.isa;
    *(v14 + 568) = isa;
    v53 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
    *(v14 + 576) = v53;
    *(v14 + 232) = v53;
    *(v14 + 240) = &protocol witness table for WorkflowDataModels.CustomIntentConfirmationModel;
    *(v14 + 584) = __swift_allocate_boxed_opaque_existential_1((v14 + 208));
    v54 = v21;
    CodableAceObject.init(wrappedValue:)();
    *(v14 + 592) = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
    v55 = isa;
    CodableINInteraction.init(wrappedValue:)();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 600) = v56;
    *v56 = v57;
    v56[1] = WFConfirmInteractionFlow.buildOutput();
    OUTLINED_FUNCTION_6_1();

    return INImage.convertToVisualProperty()(v58);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  v15 = *(v14 + 592);
  v16 = *(v14 + 584);
  v17 = *(v14 + 576);
  v18 = *(v14 + 568);
  v19 = *(v14 + 560);
  v20 = *(v14 + 544);
  v21 = *(v14 + 536);
  v45 = *(v14 + 504);
  v46 = *(v14 + 512);
  v22 = *(v14 + 488);
  v44 = *(v14 + 496);

  v23 = (v16 + *(v15 + 28));
  *v23 = v19;
  v23[1] = v21;

  v24 = (v16 + *(v17 + 20));
  *v24 = v22;
  v24[1] = v44;
  v25 = (v16 + *(v17 + 24));
  *v25 = v45;
  v25[1] = v46;
  v26 = *(v14 + 416);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v27 = ResponseFactory.init()();
  *(v14 + 272) = OUTLINED_FUNCTION_20_19(v27);
  OUTLINED_FUNCTION_10_36();
  *(v14 + 280) = lazy protocol witness table accessor for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow(v28, 255, v29, &protocol conformance descriptor for WorkflowDataModels);
  __swift_allocate_boxed_opaque_existential_1((v14 + 248));
  v30 = OUTLINED_FUNCTION_20_1();
  (v20)(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v31 = swift_allocObject();
  *(v14 + 616) = v31;
  *(v31 + 16) = xmmword_216010;
  *(v31 + 32) = v26;
  OUTLINED_FUNCTION_12_30(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v32 = v26;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v14 + 624) = v33;
  *v33 = v34;
  OUTLINED_FUNCTION_3_58(v33);
  OUTLINED_FUNCTION_6_1();

  return v39(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, a12, a13, a14);
}

uint64_t WFConfirmInteractionFlow.buildOutput_prerfv2()()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[9] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for NLContextUpdate();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v1[13] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8);
}

{
  v1 = v0[8];
  v0[16] = v1[4];
  v0[17] = v1[5];
  v0[18] = v1[6];
  OUTLINED_FUNCTION_18_4();
  v6 = (*(v2 + 104) + **(v2 + 104));
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = WFConfirmInteractionFlow.buildOutput_prerfv2();
  v4 = OUTLINED_FUNCTION_9_3();

  return v6(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  if (specialized Array.count.getter(v0[20]))
  {
    v1 = 0;
  }

  else
  {
    v2 = v0[17];
    v3 = v0[18];
    type metadata accessor for WFDialogState();
    v1 = static WFDialogState.isAppFirstRun(appId:)(v2, v3);
  }

  OUTLINED_FUNCTION_18_4();
  v10 = (*(v4 + 184) + **(v4 + 184));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[21] = v5;
  *v5 = v6;
  v5[1] = WFConfirmInteractionFlow.buildOutput_prerfv2();
  v7 = v0[15];
  v8 = v0[16];

  return v10(v7, v8, v1 & 1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v1 = v0;
  v2 = *(v0 + 160);
  v3 = *(v1 + 64);
  v4 = [*(v1 + 128) interaction];
  v5 = [v4 intent];

  OUTLINED_FUNCTION_18_4();
  (*(v6 + 216))(v5);

  OUTLINED_FUNCTION_2_59((v3 + 56));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  if (v2 >> 62)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

    OUTLINED_FUNCTION_20_1();
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  v9 = *(v1 + 96);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = *(v1 + 72);
  v17 = *(v1 + 104);

  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v13 = OUTLINED_FUNCTION_20_1();
  v14(v13);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v10);
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v1 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v12, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v11 + 8))(v9, v10);
  (*(v7 + 8))(v8, v17);

  v15 = *(v1 + 8);

  return v15();
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t protocol witness for Flow.execute() in conformance WFConfirmInteractionFlow(uint64_t a1)
{
  v6 = (*(**v1 + 192) + **(**v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFConfirmInteractionFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowConfirmInteractionError(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C38F4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin020WFConfirmInteractionC0C5State33_220071A64E3E8D776517CBE45A2C4B77LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t lazy protocol witness table accessor for type WFConfirmInteractionFlow and conformance WFConfirmInteractionFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C39A0()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1)
{
  v1[76] = a1;
  __swift_project_boxed_opaque_existential_1(v1 + 26, v1[29]);

  return type metadata accessor for WorkflowDataModels(0);
}

uint64_t OUTLINED_FUNCTION_29_21(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_33_12()
{
}

uint64_t OUTLINED_FUNCTION_34_16()
{
}

uint64_t static FlowStrategyUtils.makeIntentFromParse(parse:currentIntent:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v2);
  v8 = (*(v4 + 88))(v7, v2);
  if (v8 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v8 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v4 + 96))(v7, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);
      v9 = Parse.ServerConversion.siriKitIntent.getter();

      type metadata accessor for NLIntent();
      OUTLINED_FUNCTION_23_0();
      (*(v10 + 8))(v7);
      return v9;
    }

    if (v8 != enum case for Parse.directInvocation(_:))
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.voiceCommands);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "Unknown parse in FlowStrategyUtils.makeIntentFromParse", v15, 2u);
      }
    }
  }

  (*(v4 + 8))(v7, v2);
  return 0;
}

uint64_t static FlowStrategyUtils.makeConfirmationStateFromInput(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7_1();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v44 - v19;
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v50 = a1;
  Input.parse.getter();
  static VoiceCommandConfirmationUtils.getSiriKitConfirmationState(parse:)(v11, v22);
  v51 = v5;
  v46 = *(v5 + 8);
  v46(v11, v3);
  v23 = *(v14 + 104);
  v52 = enum case for SiriKitConfirmationState.unset(_:);
  v48 = v23;
  v49 = v14 + 104;
  (v23)(v20);
  lazy protocol witness table accessor for type SiriKitConfirmationState and conformance SiriKitConfirmationState();
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v14 + 8);
  v24(v20, v12);
  if ((v11 & 1) == 0)
  {
    return (*(v14 + 32))(v53, v22, v12);
  }

  v45 = v24;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.voiceCommands);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v44 = v26;
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Waiting for a confirmation response but there is no confirmation state in the input. Checking for server side resolution.", v29, 2u);
  }

  Input.parse.getter();
  v30 = v51;
  if ((*(v51 + 88))(v9, v3) != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v45(v22, v12);
    v46(v9, v3);
    v41 = v53;
    v42 = v52;
    return v48(v41, v42, v12);
  }

  (*(v30 + 96))(v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_23_0();
  (*(v31 + 8))(v9);
  v32 = v47;
  Parse.ServerConversion.confirmationState.getter();
  v33 = (*(v14 + 88))(v32, v12);
  v34 = v45;
  v45(v32, v12);
  v35 = v52;
  if (v33 == v52)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v53;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v36, v37, "Could not find the current a server side intent confirmation. Treating input as not understood.", v40, 2u);
    }

    v45(v22, v12);
    v41 = v39;
    v42 = v35;
    return v48(v41, v42, v12);
  }

  Parse.ServerConversion.confirmationState.getter();

  return v34(v22, v12);
}

unint64_t lazy protocol witness table accessor for type SiriKitConfirmationState and conformance SiriKitConfirmationState()
{
  result = lazy protocol witness table cache variable for type SiriKitConfirmationState and conformance SiriKitConfirmationState;
  if (!lazy protocol witness table cache variable for type SiriKitConfirmationState and conformance SiriKitConfirmationState)
  {
    type metadata accessor for SiriKitConfirmationState();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitConfirmationState and conformance SiriKitConfirmationState);
  }

  return result;
}

uint64_t static InputCompletionConverter.toUserData(state:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    if (a3 != 1)
    {
      v75 = &type metadata for String;
      *&v74 = 0x6C65636E6163;
      *(&v74 + 1) = 0xE600000000000000;
      OUTLINED_FUNCTION_4_25(v6, v7, v8, v9, v10, v11, v12, v13, v63, v67, v71, v72, v73, v74);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_48();
      goto LABEL_7;
    }

    *&v74 = 0x497375636F666E75;
    *(&v74 + 1) = 0xEF786F427475706ELL;
    OUTLINED_FUNCTION_4_25(v6, v7, v8, v9, v10, v11, v12, v13, v63, v67, v71, v72, v73, v74);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_5_37(v14, v15, v16, v17, v18, v19);
    v20 = v68;
    v75 = &type metadata for String;
    OUTLINED_FUNCTION_8_34();
    *&v74 = v21;
    *(&v74 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_25(v22, v23, v24, v25, v26, v27, v28, v29, v64, v68, v71, v72, v73, v74);
    v30 = a1;
    v31 = a2;
    v32 = 1;
  }

  else
  {
    *&v74 = 1701736292;
    *(&v74 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_25(v6, v7, v8, v9, v10, v11, v12, v13, v63, v67, v71, v72, v73, v74);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_48();
    OUTLINED_FUNCTION_5_37(v33, v34, v35, v36, v37, v38);
    v20 = v69;
    v75 = &type metadata for String;
    OUTLINED_FUNCTION_8_34();
    *&v74 = v39;
    *(&v74 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_25(v40, v41, v42, v43, v44, v45, v46, v47, v66, v69, v71, v72, v73, v74);
    v30 = a1;
    v31 = a2;
    v32 = 0;
  }

  outlined copy of InputCompletionState(v30, v31, v32);
  swift_isUniquelyReferenced_nonNull_native();
  v48 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v71, 1701869940, 0xE400000000000000);
  v75 = &type metadata for String;
  *&v74 = a1;
  *(&v74 + 1) = a2;
  OUTLINED_FUNCTION_4_25(v48, v49, v50, v51, v52, v53, v54, v55, v65, v20, v71, v72, v73, v74);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = isUniquelyReferenced_nonNull_native;
  v70 = v20;
  v61 = 0x7475706E69;
LABEL_7:
  OUTLINED_FUNCTION_5_37(isUniquelyReferenced_nonNull_native, v61, v57, v60, v58, v59);
  return v70;
}

uint64_t static InputCompletionConverter.toInputCompletionState(userData:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574617473, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = outlined init with copy of Any(*(a1 + 56) + 32 * v2, &v104);
  if ((OUTLINED_FUNCTION_1_63(v4, v5, v6, &type metadata for String, v7, v8, v9, v10, v86, v96, v104) & 1) == 0)
  {
    return 0;
  }

  v11 = v87 == 1701736292 && v97 == 0xE400000000000000;
  if (!v11 && (OUTLINED_FUNCTION_7_36(1701736292, 0xE400000000000000) & 1) == 0)
  {
    v40 = v87 == 0x6C65636E6163 && v97 == 0xE600000000000000;
    if (v40 || (OUTLINED_FUNCTION_7_36(0x6C65636E6163, 0xE600000000000000) & 1) != 0)
    {

      return 0;
    }

    if (v87 == 0x497375636F666E75 && v97 == 0xEF786F427475706ELL)
    {
    }

    else
    {
      v50 = OUTLINED_FUNCTION_7_36(0x497375636F666E75, 0xEF786F427475706ELL);

      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_3_59(v51, v52, v53, v54, v55, v56, v57, v58, v87, v97, v104);
    if (v105)
    {
      if ((OUTLINED_FUNCTION_1_63(v59, v60, v61, &type metadata for String, v62, v63, v64, v65, v92, v101, v104) & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_8_34();
      if (v93 == v68 && v102 == 0xE400000000000000)
      {
      }

      else
      {
        v70 = OUTLINED_FUNCTION_6_35(v66, v67, v93);

        if ((v70 & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_2_60(v71, v72, v73, v74, v75, v76, v77, v78, v93, v102, v104);
      if (v105)
      {
        if (OUTLINED_FUNCTION_1_63(v79, v80, v81, &type metadata for String, v82, v83, v84, v85, v94, v103, v104))
        {
          return v95;
        }

        return 0;
      }
    }

LABEL_46:
    outlined destroy of Any?(&v104);
    return 0;
  }

  OUTLINED_FUNCTION_3_59(v12, v13, v14, v15, v16, v17, v18, v19, v87, v97, v104);
  if (!v105)
  {
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_1_63(v20, v21, v22, &type metadata for String, v23, v24, v25, v26, v88, v98, v104))
  {
    OUTLINED_FUNCTION_8_34();
    if (v89 == v29 && v99 == 0xE400000000000000)
    {
    }

    else
    {
      v31 = OUTLINED_FUNCTION_6_35(v27, v28, v89);

      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_2_60(v32, v33, v34, v35, v36, v37, v38, v39, v89, v99, v104);
    if (v105)
    {
      if (OUTLINED_FUNCTION_1_63(v42, v43, v44, &type metadata for String, v45, v46, v47, v48, v90, v100, v104))
      {
        return v91;
      }

      return 0;
    }

    goto LABEL_46;
  }

  return 0;
}

double outlined copy of InputCompletionState(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(v11, &a11, 0x7475706E69, 0xE500000000000000);
}

double OUTLINED_FUNCTION_3_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(v11, &a11, 1701869940, 0xE400000000000000);
}

_OWORD *OUTLINED_FUNCTION_5_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(va, a2, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_6_35(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7_36(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.__allocating_init(appPolicyHandler:bundleId:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  outlined init with take of Output(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.bundleId.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.init(appPolicyHandler:bundleId:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  outlined init with take of Output(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse()()
{
  OUTLINED_FUNCTION_8_0();
  v0[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v0[13] = swift_task_alloc();
  v2 = type metadata accessor for TemplatingResult();
  v0[14] = v2;
  v0[15] = *(v2 - 8);
  v0[16] = swift_task_alloc();

  return _swift_task_switch(VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse());
}

{
  OUTLINED_FUNCTION_8_0();
  static Device.current.getter();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  v2 = *(v0 + 128);

  return static ResponseTemplates.appDisabledByScreenTime()(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  }

  else
  {
    v2 = VoiceCommandsScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse();
  }

  return _swift_task_switch(v2);
}

{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v5[3] = v7;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

{
  return _swift_unexpectedError(*(v0 + 144), "SiriLinkFlowPlugin/VoiceCommandScreentimeCheckFlowStrategy.swift", 64, 1, 25);
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t VoiceCommandsScreentimeCheckFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance VoiceCommandsScreentimeCheckFlowStrategy(uint64_t a1)
{
  v6 = (*(**v1 + 104) + **(**v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy;

  return v6(a1);
}

uint64_t OutputGenerationManifest.init(dialogPhase:responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DialogPhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  return (*(v5 + 8))(a1, v4);
}

uint64_t RunLinkActionCATs.actionConfirmation(customDialog:verb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = swift_task_alloc();
  *(v0 + 56) = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v0[8] = v4;
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  v9 = v0[6];
  v10 = v0[4];
  *(v4 + 80) = 1651664246;
  *(v4 + 88) = 0xE400000000000000;
  outlined init with copy of SpeakableString?(v10, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_28_16();
  if (v11)
  {
    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[9] = v13;
  *v13 = v14;
  v13[1] = RunLinkActionCATs.actionConfirmation(customDialog:verb:);
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_10_33();

  return v15();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunLinkActionCATs.actionConfirmationHeader(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v15 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_32_15(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_46_10(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_43(v11);
  OUTLINED_FUNCTION_10_33();

  return v13();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunLinkActionCATs.actionPerformed(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v15 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_32_15(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_46_10(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_43(v11);
  OUTLINED_FUNCTION_10_33();

  return v13();
}

uint64_t RunLinkActionCATs.confirmationButtonLabel(confirmationVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_32_15(v4);
  *(v5 + 16) = xmmword_216850;
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = 0x8000000000231530;
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v16 = v10;
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_46_10(v11);
  *v12 = v13;
  v12[1] = RunLinkActionCATs.actionConfirmationHeader(customDialog:);
  v14 = *(v1 + 16);

  return v16(v14, 0xD000000000000025, 0x800000000022DF00, v2);
}

uint64_t RunLinkActionCATs.continueInApp(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v15 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_32_15(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_46_10(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_4_43(v11);
  OUTLINED_FUNCTION_10_33();

  return v13();
}

uint64_t RunLinkActionCATs.errorDialog(customDialog:nonOptionalParameterIsNil:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_64_0();
  v18 = v3;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_33_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_32_15(v5);
  v7 = OUTLINED_FUNCTION_0_14(v6, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_29(v9);
  if (v10)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = *(v1 + 72);
  *(v2 + 80) = 0xD000000000000019;
  *(v2 + 88) = 0x8000000000231550;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v12;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_46_10(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_4_43(v14);
  OUTLINED_FUNCTION_10_33();

  return v16();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RunLinkActionCATs.needsDisambiguation(customDialog:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[6];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2(v2);
  v0[7] = v3;
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v6);
  OUTLINED_FUNCTION_28_16();
  if (v7)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  v9 = v0[4];
  v3[5].n128_u64[0] = 0x736D657469;
  v3[5].n128_u64[1] = 0xE500000000000000;
  if (v9)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  }

  else
  {
    v10 = 0;
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v9;
  v3[7].n128_u64[1] = v10;
  v15 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[8] = v11;
  *v11 = v12;
  v11[1] = RunLinkActionCATs.needsDisambiguation(customDialog:items:);
  v13 = v0[2];

  return v15(v13, 0xD000000000000021, 0x800000000022DF70, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RunLinkActionCATs.needsValue(customDialog:parameterName:isSearchAction:isDeleteAction:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 89) = v1;
  *(v0 + 88) = v2;
  OUTLINED_FUNCTION_32_4(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  *(v0 + 48) = swift_task_alloc();
  *(v0 + 56) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_21A520);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_24_2(v6);
  v8 = *(v0 + 56);
  if (v7 == 1)
  {
    outlined destroy of String?(*(v0 + 56), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  v10 = OUTLINED_FUNCTION_22_25();
  *(v3 + 80) = v11;
  *(v3 + 88) = 0xED0000656D614E72;
  outlined init with copy of SpeakableString?(v10, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_28_16();
  if (v12)
  {
    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = *(v0 + 89);
  v15 = *(v0 + 88);
  strcpy((v3 + 128), "isSearchAction");
  *(v3 + 143) = -18;
  *(v3 + 144) = v15;
  *(v3 + 168) = &type metadata for Bool;
  strcpy((v3 + 176), "isDeleteAction");
  *(v3 + 191) = -18;
  *(v3 + 216) = &type metadata for Bool;
  *(v3 + 192) = v14;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 72) = v16;
  *v16 = v17;
  v16[1] = RunLinkActionCATs.needsValue(customDialog:parameterName:isSearchAction:isDeleteAction:);
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_10_33();

  return v18();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v8();
  }
}

uint64_t RunLinkActionCATs.parameterConfirmation(customDialog:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v0 + 48) = swift_task_alloc();
  *(v0 + 56) = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_64_0();
  v19 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v0[8] = v4;
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v0[7];
  if (v8 == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = OUTLINED_FUNCTION_22_25();
  *(v4 + 80) = v12;
  *(v4 + 88) = 0xEE0065756C615672;
  outlined init with copy of SpeakableString?(v11, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_28_16();
  if (v13)
  {
    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[9] = v15;
  *v15 = v16;
  v15[1] = RunLinkActionCATs.actionConfirmation(customDialog:verb:);
  OUTLINED_FUNCTION_11_35();
  OUTLINED_FUNCTION_10_33();

  return v17();
}

uint64_t RunLinkActionCATs.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunLinkActionCATs.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t RunLinkActionCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

uint64_t type metadata accessor for RunLinkActionCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for RunLinkActionCATs;
  if (!type metadata singleton initialization cache for RunLinkActionCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PartialMatcher.match(term:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *v3;
  v80 = type metadata accessor for CharacterSet();
  v79 = *(v80 - 8);
  v7 = __chkstk_darwin(v80);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + 80);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v7);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v58 - v15;
  v59 = v17;
  __chkstk_darwin(v14);
  v67 = &v58 - v18;
  v75 = String.sanitized.getter();
  v20 = v19;
  v21._rawValue = Array.init()();
  rawValue = v21._rawValue;
  v22 = Array.startIndex.getter();
  after = v22;
  v23 = Array.endIndex.getter();
  v60 = v6;
  if (v22 == v23)
  {

LABEL_25:
    v83._countAndFlagsBits = v21._rawValue;
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {

      return 0;
    }

    else
    {
      return CustomIntentDisambiguationItemContainer.init(items:)(v21).items._rawValue;
    }
  }

  else
  {
    v24 = v16;
    v71 = v20;
    v25 = *(v6 + 88);
    v70 = *(v25 + 8);
    v73 = (v11 + 16);
    v66 = (v11 + 32);
    ++v79;
    v63 = (v11 + 8);
    v68 = v25;
    v74 = v25 + 8;
    v26 = v11;
    v61 = v10;
    v65 = a3;
    v64 = v11;
    v69 = v24;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v28 = a3 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22;
        v29 = v67;
        v72 = *(v26 + 16);
        v72(v67, v28, v10);
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v59 != 8)
        {
          goto LABEL_29;
        }

        v83._countAndFlagsBits = result;
        v29 = v67;
        v72 = *v73;
        v72(v67, &v83, v10);
        swift_unknownObjectRelease();
      }

      Array.formIndex(after:)(&after);
      v30 = v10;
      (*v66)(v24, v29, v10);
      v70(&v86, v10, v25);
      v99 = v87;
      outlined destroy of String?(&v99, &_sSSSgMd, &_sSSSgMR);
      v98 = v88;
      outlined destroy of String?(&v98, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
      v97 = v89;
      outlined destroy of String?(&v97, &_sSaySSGMd, &_sSaySSGMR);
      v31 = String.lowercased()();

      v83 = v31;
      static CharacterSet.punctuationCharacters.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v32 = StringProtocol.components(separatedBy:)();
      v78 = *v79;
      v78(v9, v80);

      v83._countAndFlagsBits = v32;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v34 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v77 = v33;
      v76 = v34;
      v35 = BidirectionalCollection<>.joined(separator:)();
      v37 = v36;

      v83._countAndFlagsBits = v35;
      v83._object = v37;
      OUTLINED_FUNCTION_0_49();
      v82 = v71;
      LOBYTE(v32) = StringProtocol.contains<A>(_:)();

      if ((v32 & 1) == 0)
      {
        break;
      }

LABEL_19:
      v56 = v69;
      v72(v62, v69, v30);
      type metadata accessor for Array();
      Array.append(_:)();
LABEL_21:
      v24 = v56;
      (*v63)(v56, v30);
      a3 = v65;
      v57 = Array.endIndex.getter();
      v22 = after;
      v25 = v68;
      v10 = v30;
      v26 = v64;
      if (after == v57)
      {

        v21._rawValue = rawValue;
        goto LABEL_25;
      }
    }

    v70(v90, v10, v68);
    v38 = v92;
    v96 = v92;
    v95 = v90[0];

    outlined destroy of String(&v95);
    v94 = v90[1];
    outlined destroy of String?(&v94, &_sSSSgMd, &_sSSSgMR);
    v93 = v91;
    outlined destroy of String?(&v93, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
    outlined destroy of String?(&v96, &_sSaySSGMd, &_sSaySSGMR);
    v39 = *(v38 + 16);
    if (v39)
    {
      v81 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
      v40 = v81;
      v41 = v38 + 40;
      do
      {
        v83 = String.lowercased()();

        static CharacterSet.punctuationCharacters.getter();
        v42 = StringProtocol.components(separatedBy:)();
        v78(v9, v80);

        v83._countAndFlagsBits = v42;
        v43 = BidirectionalCollection<>.joined(separator:)();
        v45 = v44;

        v81 = v40;
        v47 = v40[2];
        v46 = v40[3];
        if (v47 >= v46 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1);
          v40 = v81;
        }

        v40[2] = v47 + 1;
        v48 = &v40[2 * v47];
        v48[4] = v43;
        v48[5] = v45;
        v41 += 16;
        --v39;
      }

      while (v39);
      result = outlined destroy of String?(&v96, &_sSaySSGMd, &_sSaySSGMR);
      v30 = v61;
    }

    else
    {
      result = outlined destroy of String?(&v96, &_sSaySSGMd, &_sSaySSGMR);
      v40 = _swiftEmptyArrayStorage;
    }

    v50 = (v40 + 5);
    v51 = -v40[2];
    v52 = -1;
    v53 = v71;
    while (1)
    {
      if (v51 + v52 == -1)
      {

        v56 = v69;
        goto LABEL_21;
      }

      if (++v52 >= v40[2])
      {
        break;
      }

      v54 = v50 + 2;
      v55 = *v50;
      v83._countAndFlagsBits = *(v50 - 1);
      v83._object = v55;
      OUTLINED_FUNCTION_0_49();
      v82 = v53;
      result = StringProtocol.contains<A>(_:)();
      v50 = v54;
      if (result)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);

  return specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(a1, v8, v4, v3, v6, v7);
}

uint64_t App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 8))(v5, a1, v9, v10);
  if (v11)
  {
    if (a3 == 2)
    {
      App.appIdentifier.getter();
      if (v12)
      {
        lazy protocol witness table accessor for type String and conformance String();
        lazy protocol witness table accessor for type String and conformance String();
        BidirectionalCollection<>.starts<A>(with:)();
      }
    }

    AppDisplayInfo.init(displayName:isFirstParty:)();
    v15 = type metadata accessor for AppDisplayInfo();
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v15);
  }

  else
  {
    v13 = type metadata accessor for AppDisplayInfo();

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v13);
  }
}

uint64_t specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v19[-1] - v12;
  v19[3] = a5;
  v19[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(a1, v19, a3, v13);
  v15 = type metadata accessor for AppDisplayInfo();
  if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
  {
    outlined destroy of AppDisplayInfo?(v13);
    v16 = 0;
  }

  else
  {
    v16 = AppDisplayInfo.displayName.getter();
    (*(*(v15 - 8) + 8))(v13, v15);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v16;
}

uint64_t outlined destroy of AppDisplayInfo?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkflowRunnerCATs.inputDate(device:inputType:message:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v2 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[9] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_218630);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_3_60(v4);
  outlined init with copy of SpeakableString?(v5, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_16_7();
  v8 = v1[8];
  if (v7 == 1)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  v10 = v1[7];
  OUTLINED_FUNCTION_1_61();
  *(v3 + 128) = v11;
  *(v3 + 136) = v12;
  outlined init with copy of SpeakableString?(v13, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v1[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v6;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v19 = v15;
  v16 = swift_task_alloc();
  v1[10] = v16;
  *v16 = v1;
  v16[1] = WorkflowRunnerCATs.inputDate(device:inputType:message:);
  v17 = OUTLINED_FUNCTION_1_64();

  return v19(v17);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v2 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v6);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkflowRunnerCATs.inputText(device:inputType:message:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  v2 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[9] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_218630);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_3_60(v4);
  outlined init with copy of SpeakableString?(v5, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_16_7();
  v8 = v1[8];
  if (v7 == 1)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  v10 = v1[7];
  OUTLINED_FUNCTION_1_61();
  *(v3 + 128) = v11;
  *(v3 + 136) = v12;
  outlined init with copy of SpeakableString?(v13, v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v1[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v6;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v19 = v15;
  v16 = swift_task_alloc();
  v1[10] = v16;
  *v16 = v1;
  v16[1] = WorkflowRunnerCATs.inputText(device:inputType:message:);
  v17 = OUTLINED_FUNCTION_1_64();

  return v19(v17);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v2 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v6);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v7();
  }
}

uint64_t WorkflowRunnerCATs.showAlert(message:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_1_61();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = v9;
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = WorkflowRunnerCATs.showAlert(message:);
  v11 = OUTLINED_FUNCTION_1_64();

  return v13(v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v6);
  }

  else
  {

    OUTLINED_FUNCTION_6_7();

    return v7();
  }
}

uint64_t WorkflowRunnerCATs.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return WorkflowRunnerCATs.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t WorkflowRunnerCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

uint64_t type metadata accessor for WorkflowRunnerCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkflowRunnerCATs;
  if (!type metadata singleton initialization cache for WorkflowRunnerCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_60(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x7079547475706E69;
  v2[11] = 0xE900000000000065;
  return result;
}

void static CustomIntentPlatformSpecificSnippets.buildIntentsSnippet(app:intent:intentResponse:isForConfirmation:vcShortcut:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_38();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_17_17(v4);
  if (dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 || (OUTLINED_FUNCTION_17_17(v5), (dispatch thunk of DeviceState.isHomePod.getter()))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = OUTLINED_FUNCTION_64(v12);
    *(v13 + 16) = xmmword_216010;
    v14 = static CustomIntentPlatformSpecificSnippets.getEmptySnippet(app:)();
LABEL_4:
    *(v13 + 32) = v14;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_17_17(v5);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = OUTLINED_FUNCTION_64(v15);
    *(v13 + 16) = xmmword_216010;
    OUTLINED_FUNCTION_24_4();
    static CustomIntentPlatformSpecificSnippets.buildWatchSnippet(app:intent:intentResponse:)(v16, v17, v18, v19, v20);
    goto LABEL_4;
  }

  v21 = [v11 _metadata];
  if (!v21 || (v22 = v21, v23 = [v21 showsWhenRun], v22, v23))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = OUTLINED_FUNCTION_64(v24);
    *(v25 + 16) = xmmword_216010;
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    OUTLINED_FUNCTION_24_4();
    v26 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    v27 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

    v28 = static CasinoFactory.makePlaceholderCardSection()();
    v29 = OUTLINED_FUNCTION_64(v24);
    *(v29 + 16) = xmmword_216010;
    *(v29 + 32) = v27;
    v30 = v27;
    outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v29, v28);
    if (!v9 || (v31 = [v9 _code], v31 > 99) || v31 < 0) && (v7)
    {
      v32 = [v9 backingStore];
      v9 = [objc_allocWithZone(INIntentResponse) initWithBackingStore:v32];

      if (v9)
      {
        [v9 _setCode:8];
      }
    }

    else
    {
      v33 = v9;
    }

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    v34 = OUTLINED_FUNCTION_64(v24);
    *(v34 + 16) = xmmword_216010;
    *(v34 + 32) = v28;
    v35 = v28;
    OUTLINED_FUNCTION_24_4();
    v36 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

    v37 = OUTLINED_FUNCTION_64(v24);
    *(v37 + 16) = xmmword_216010;
    *(v37 + 32) = v26;
    v38 = v26;
    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v37, v36, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setReferencedCommands_);

    *(v25 + 32) = v36;
  }

LABEL_5:
  OUTLINED_FUNCTION_3_61();
}

void static CustomIntentPlatformSpecificSnippets.attachConfirmationButtons(snippet:yes:no:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_38();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v10;
    v13 = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v12, &selRef_templateItems, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v14 = _swiftEmptyArrayStorage;
    if (v13)
    {
      v14 = v13;
    }

    v42 = v14;
    v15 = OUTLINED_FUNCTION_63_6();
    static CustomIntentPlatformSpecificSnippets.makeWatchButton(model:)(v15, v16, v8);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_11_36();
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      v40 = OUTLINED_FUNCTION_14_8(v18);
      OUTLINED_FUNCTION_11_26(v40, v19 + 1);
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    OUTLINED_FUNCTION_24_4();
    static CustomIntentPlatformSpecificSnippets.makeWatchButton(model:)(v20, v21, v22);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_11_36();
    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    if (v25 >= v24 >> 1)
    {
      v41 = OUTLINED_FUNCTION_14_8(v24);
      OUTLINED_FUNCTION_11_26(v41, v25 + 1);
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v42, v12, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    if (dispatch thunk of DeviceState.isCarPlay.getter())
    {
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_10_37();
      static CustomIntentPlatformSpecificSnippets.getCarplayConfirmationOptions(yes:no:)(v26, v27, v28, v29, v30, v31);
    }

    else
    {
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_10_37();
      static CustomIntentPlatformSpecificSnippets.getIOSConfirmationOptions(yes:no:)(v32, v33, v34, v35, v36, v37);
    }

    [v10 setConfirmationOptions:?];
  }

  OUTLINED_FUNCTION_3_61();
}

void static CustomIntentPlatformSpecificSnippets.buildConfirmationSnippet(app:yes:no:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_38();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    OUTLINED_FUNCTION_63_6();
    OUTLINED_FUNCTION_8_35();
    v21 = static CustomIntentPlatformSpecificSnippets.getCarplayConfirmationOptions(yes:no:)(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_63_6();
    OUTLINED_FUNCTION_8_35();
    v21 = static CustomIntentPlatformSpecificSnippets.getIOSConfirmationOptions(yes:no:)(v22, v23, v24, v25, v26, v27);
  }

  v37 = v21;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    static CustomIntentPlatformSpecificSnippets.attachConfirmationButtons(snippet:yes:no:device:)([objc_allocWithZone(SASTItemGroup) init], v14, v12, v10, v8);
    v28 = v37;
  }

  else
  {
    v29 = [objc_allocWithZone(SAUIConfirmationView) init];
    v28 = v37;
    v30 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v37, &selRef_confirmText);
    if (v31)
    {
      String._bridgeToObjectiveC()();
      v30 = OUTLINED_FUNCTION_6_36();
    }

    else
    {
      v6 = 0;
    }

    OUTLINED_FUNCTION_12_31(v30, "setConfirmText:");

    v32 = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v37, &selRef_confirmCommands, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
      Array._bridgeToObjectiveC()();
      v32 = OUTLINED_FUNCTION_6_36();
    }

    else
    {
      v6 = 0;
    }

    OUTLINED_FUNCTION_12_31(v32, "setConfirmCommands:");

    v33 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v37, &selRef_denyText);
    if (v34)
    {
      String._bridgeToObjectiveC()();
      v33 = OUTLINED_FUNCTION_6_36();
    }

    else
    {
      v6 = 0;
    }

    OUTLINED_FUNCTION_12_31(v33, "setDenyText:");

    v35 = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v37, &selRef_denyCommands, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
      Array._bridgeToObjectiveC()();
      v35 = OUTLINED_FUNCTION_6_36();
    }

    else
    {
      v6 = 0;
    }

    OUTLINED_FUNCTION_12_31(v35, "setDenyCommands:");

    if (outlined bridged method (pb) of @objc SAUIConfirmationOptions.allConfirmationOptions.getter(v37))
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
      v36.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v36.super.isa = 0;
    }

    [v29 setAllConfirmationOptions:v36.super.isa];
  }

  OUTLINED_FUNCTION_3_61();
}

id static CustomIntentPlatformSpecificSnippets.makeDialogFromUtteranceView(utteranceViews:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    return 0;
  }

LABEL_3:
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = [objc_allocWithZone(SADialog) init];
  outlined bridged method (pb) of @objc INIntent.identifier.getter(v4, &selRef_dialogIdentifier);
  if (v6)
  {
    String._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_6_36();
  }

  else
  {
    v1 = 0;
  }

  [v5 setDialogIdentifier:v1];

  [v5 setSpokenOnly:1];
  v7 = [objc_allocWithZone(SADialogText) init];
  outlined bridged method (pb) of @objc INIntent.identifier.getter(v4, &selRef_text);
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = v4;
  outlined bridged method (ob) of @objc SAAceView.speakableText.getter(v10);
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v7 setSpeakableTextOverride:v12];

  [v5 setContent:v7];
  v13 = [v10 canUseServerTTS];

  [v5 setCanUseServerTTS:v13];
  return v5;
}

id static CustomIntentPlatformSpecificSnippets.getEmptySnippet(app:)()
{
  v0 = [objc_allocWithZone(SAIntentGroupSnippet) init];
  App.appIdentifier.getter();
  if (v1)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  [v0 setAppId:v2];

  return v0;
}

void static CustomIntentPlatformSpecificSnippets.buildWatchSnippet(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_38();
  v6 = v5;
  v7 = [objc_allocWithZone(SASTItemGroup) init];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v8 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v9 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  v10 = [objc_allocWithZone(SASTApplicationBannerItem) init];
  v11 = [objc_allocWithZone(SAUIDecoratedText) init];
  v12 = [objc_allocWithZone(SASTLineDetailItem) init];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = OUTLINED_FUNCTION_64(v13);
  *(v14 + 16) = xmmword_216010;
  *(v14 + 32) = v8;
  v15 = v8;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v14, v9);
  App.appIdentifier.getter();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v10 setBundleId:v17];

  [v10 setAction:v9];
  v18 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_11_36();
  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  if (v21 >= v20 >> 1)
  {
    v31 = OUTLINED_FUNCTION_14_8(v20);
    OUTLINED_FUNCTION_11_26(v31, v21 + 1);
  }

  OUTLINED_FUNCTION_63_6();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v22 = [v6 _codableDescription];
  v23 = [v22 localizedTitle];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v24, v26, v11);
  [v12 setTitle:v11];
  v27 = v12;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_11_36();
  v30 = *(v28 + 16);
  v29 = *(v28 + 24);
  if (v30 >= v29 >> 1)
  {
    v32 = OUTLINED_FUNCTION_14_8(v29);
    OUTLINED_FUNCTION_11_26(v32, v30 + 1);
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(_swiftEmptyArrayStorage, v7, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);

  OUTLINED_FUNCTION_3_61();
}

id static CustomIntentPlatformSpecificSnippets.makeWatchButton(model:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(SASTButtonItem) init];
  v7 = [objc_allocWithZone(SAUIDecoratedText) init];
  v8 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  outlined bridged method (mbgnn) of @objc SAUIDecoratedText.text.setter(a1, a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_216010;
  *(v9 + 32) = a3;
  v10 = a3;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v9, v8);
  [v6 setDecoratedLabel:v7];
  [v6 setCentered:1];
  [v6 setAction:v8];

  return v6;
}

id static CustomIntentPlatformSpecificSnippets.getCarplayConfirmationOptions(yes:no:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [objc_allocWithZone(SAUIConfirmationOptions) init];
  v13 = [objc_allocWithZone(SAUIConfirmationOption) init];
  v14 = [objc_allocWithZone(SAUIConfirmationOption) init];
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOption.label.setter(a1, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = a3;
  v16 = a3;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOption.commands.setter(v15, v13);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOption.label.setter(a4, a5, v14);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_216010;
  *(v17 + 32) = a6;
  v18 = a6;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOption.commands.setter(v17, v14);
  outlined bridged method (pb) of @objc SAUIConfirmationOption.label.getter(v13);
  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  [v12 setConfirmText:{v20, 1, 3}];

  if (outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v13))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  [v12 setConfirmCommands:v21.super.isa];

  outlined bridged method (pb) of @objc SAUIConfirmationOption.label.getter(v14);
  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v12 setDenyText:v23];

  if (outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v14))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v24.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v24.super.isa = 0;
  }

  [v12 setDenyCommands:v24.super.isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_224CE0;
  *(v25 + 32) = v13;
  *(v25 + 40) = v14;
  v26 = v13;
  v27 = v14;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(v25, v12);
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.cancelTrigger.setter(2037278020, 0xE400000000000000, v12);

  return v12;
}

id static CustomIntentPlatformSpecificSnippets.getIOSConfirmationOptions(yes:no:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [objc_allocWithZone(SAUIConfirmationOptions) init];
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.confirmText.setter(a1, a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_216010;
  *(v13 + 32) = a3;
  v14 = a3;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.confirmCommands.setter(v13, v12);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.denyText.setter(a4, a5, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = a6;
  v16 = a6;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.denyCommands.setter(v15, v12);
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.cancelTrigger.setter(2037278020, 0xE400000000000000, v12);
  return v12;
}

id static CustomIntentPlatformSpecificSnippets.makeDisambiguationSnippet(intent:app:disambiguationItems:parameterName:isSilentMode:canUseServerTTS:utteranceView:vcShortcut:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, void *a10)
{
  v62 = a5;
  v61 = a4;
  v60 = a2;
  v59 = a1;
  v64 = type metadata accessor for ImageSize();
  v13 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a10, a10[3]);
  v15 = dispatch thunk of DeviceState.isWatch.getter();
  v58 = a10;
  OUTLINED_FUNCTION_17_17(a10);
  dispatch thunk of DeviceState.isLockedWithPasscode.getter();
  if (v15)
  {
    v16 = static CustomIntentPlatformSpecificSnippets.cardSectionsFromDetailedSelectionItemsForWatch(disambiguationItems:deviceIsLocked:)(a3);
    v17 = [objc_allocWithZone(SASTItemGroup) init];

    if (v16 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
      v18 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v18 = v16;
    }

    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v18, v17, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR, &selRef_setTemplateItems_);
    [v17 setCanUseServerTTS:a7 & 1];
  }

  else
  {
    v69 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    if (a8)
    {
      v19 = a8;
      outlined bridged method (pb) of @objc INIntent.identifier.getter(v19, &selRef_text);
      (*(v13 + 104))(v63, enum case for ImageSize.original(_:), v64);
      OUTLINED_FUNCTION_9_30();
      static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();

      v20 = OUTLINED_FUNCTION_63_6();
      v21(v20);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = *(&dword_18 + (v69 & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)) >= v22 >> 1)
      {
        OUTLINED_FUNCTION_14_8(v22);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v23 = *(a3 + 16);
    v24 = _swiftEmptyArrayStorage;
    if (v23)
    {
      HIDWORD(v51) = a7;
      v68 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v25 = a3 + 32;
      v56 = type metadata accessor for CATSpeakableString();
      v26 = 0;
      HIDWORD(v55) = enum case for ImageSize.original(_:);
      v54 = (v13 + 104);
      v53 = v13 + 8;
      v52 = xmmword_216010;
      v57 = v23;
      v27 = v63;
      v28 = v64;
      do
      {
        outlined init with copy of CustomIntentDisambiguationItem(v25, v67);
        memcpy(v66, v67, 0x51uLL);
        v29 = v66[0];
        v30 = v66[1];
        static CATSpeakableString.stripTTSHint(print:)(v66[0], v66[1], v31, v32, v33, v34, v35, v36, v50, v51, v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v26, v66[0]);
        (*v54)(v27, HIDWORD(v55), v28);
        OUTLINED_FUNCTION_9_30();
        v37 = static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();

        v38 = OUTLINED_FUNCTION_63_6();
        v39(v38);
        v40 = static CustomIntentPlatformSpecificSnippets.makeCommandsForDisambiguationItem(intent:rawItem:app:parameterName:title:deviceState:)(v59, v25, v60, v61, v62, v29, v30, v58);
        v41 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v43 = OUTLINED_FUNCTION_64(v42);
        *(v43 + 16) = v52;
        *(v43 + 32) = v41;
        v44 = v41;
        outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v43, v37);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v45 = *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= v45 >> 1)
        {
          OUTLINED_FUNCTION_14_8(v45);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v26;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v46 = v70;

        outlined destroy of (offset: Int, element: CustomIntentDisambiguationItem)(v65);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v25 += 88;
      }

      while (v57 != v26);
      v24 = v68;
      LOBYTE(a7) = BYTE4(v51);
    }

    else
    {
      v46 = _swiftEmptyArrayStorage;
    }

    specialized Array.append<A>(contentsOf:)(v24);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    v47 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v46, v47, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR, &selRef_setReferencedCommands_);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v17 = v47;
    isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v17 setListenAfterSpeaking:isa];

    [v17 setCanUseServerTTS:a7 & 1];
  }

  return v17;
}

void *static CustomIntentPlatformSpecificSnippets.cardSectionsFromDetailedSelectionItemsForWatch(disambiguationItems:deviceIsLocked:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v9 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    v5 = a1 + 32;
    do
    {
      outlined init with copy of CustomIntentDisambiguationItem(v5, v8);
      v6 = v4;
      memcpy(v7, v8, 0x51uLL);
      closure #1 in static CustomIntentPlatformSpecificSnippets.cardSectionsFromDetailedSelectionItemsForWatch(disambiguationItems:deviceIsLocked:)(v4, v7);
      outlined destroy of (offset: Int, element: CustomIntentDisambiguationItem)(&v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 88;
      ++v4;
    }

    while (v2 != v4);
    return v9;
  }

  return result;
}

id static CustomIntentPlatformSpecificSnippets.makeCommandsForDisambiguationItem(intent:rawItem:app:parameterName:title:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = static SLFDisambiguationItemConverter.toDirectInvocationPayload(intent:chosenItem:parameterName:)(a1, a2, a4, a5);
  if (v11)
  {
    v12 = v11;
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.voiceCommands);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "CustomIntentPlatformSpecificSnippet.makeCommandsForDisambiguationItem constructed payload", v16, 2u);
    }

    v17 = App.appIdentifier.getter();
    v19 = static OutputUtils.makeRSKECommandFromDirectInvocation(payload:appId:deviceState:)(v12, v17, v18, a8);

    v20 = [objc_opt_self() wrapCommandInStartLocalRequest:v19];
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.voiceCommands);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "CustomIntentPlatformSpecificSnippet.makeCommandsForDisambiguationItem unable to construct payload", v24, 2u);
    }

    v25 = [objc_allocWithZone(SAStartRequest) init];
    outlined bridged method (mbgnn) of @objc SAStartRequest.utterance.setter(a6, a7, v25);
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined bridged method (mbnn) of @objc SAStartRequest.origin.setter(v26, v27, v25);
    v20 = [objc_allocWithZone(SASendCommands) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_216010;
    *(v28 + 32) = v25;
    outlined bridged method (mbnn) of @objc SASendCommands.commands.setter(v28, v20);
  }

  return v20;
}