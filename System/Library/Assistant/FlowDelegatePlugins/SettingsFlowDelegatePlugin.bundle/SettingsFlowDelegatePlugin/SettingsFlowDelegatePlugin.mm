const char *sub_19FC(char a1)
{
  if (a1)
  {
    return "DisableAllActions";
  }

  else
  {
    return "IntelligenceFlow";
  }
}

Swift::Int sub_1A5C(char a1)
{
  sub_5234();
  sub_5244(a1 & 1);
  return sub_5254();
}

Swift::Int sub_1AC0(uint64_t a1)
{
  v2 = *v1;
  sub_5234();
  sub_5244(v2);
  return sub_5254();
}

uint64_t sub_1B14()
{
  v5 = &type metadata for IntelligenceFlowHelper.Features;
  v0 = sub_1BA0();
  v6 = v0;
  LOBYTE(v4[0]) = 0;
  v1 = sub_4EF4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  v5 = &type metadata for IntelligenceFlowHelper.Features;
  v6 = v0;
  LOBYTE(v4[0]) = 1;
  v2 = sub_4EF4();
  __swift_destroy_boxed_opaque_existential_1(v4);
  result = 0;
  if ((v1 & 1) != 0 && (v2 & 1) == 0)
  {
    return AFDeviceSupportsSAE();
  }

  return result;
}

unint64_t sub_1BA0()
{
  result = qword_C280;
  if (!qword_C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C280);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowHelper.Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowHelper.Features(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DB4);
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

unint64_t sub_1E08()
{
  result = qword_C288;
  if (!qword_C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C288);
  }

  return result;
}

uint64_t sub_1E5C()
{
  sub_4864(0, &qword_C4F8, OS_os_log_ptr);
  result = sub_51E4();
  qword_C8B0 = result;
  return result;
}

uint64_t sub_1EE4(uint64_t a1)
{
  sub_21B0(a1, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = sub_4D24();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1;
}

uint64_t sub_1F44(uint64_t a1)
{
  sub_4F54();
  type metadata accessor for SettingsFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_4F44();

  if (qword_C278 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_C278);
  }

  v4 = qword_C8B0;
  v5 = sub_51C4();
  sub_5154("SettingsFlowDelegatePlugin | FindFlowForX.", 42, 2, &dword_0, v4, v5, &_swiftEmptyArrayStorage);
  sub_21B0(a1, v15);
  sub_4B14(v15, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C520, &qword_57C0);
  type metadata accessor for NoOpFlow();
  if (swift_dynamicCast())
  {

    v6 = sub_51C4();
    sub_5154("SettingsFlowDelegatePlugin | FindFlowForX returning .noFlow", 59, 2, &dword_0, v4, v6, &_swiftEmptyArrayStorage);
    sub_4D84();
  }

  else
  {
    v7 = sub_51C4();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
    v9 = OUTLINED_FUNCTION_13(v8);
    *(v9 + 16) = xmmword_55D0;
    sub_4B14(v15, v14);
    v10 = sub_51A4();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_47E8();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_5154("SettingsFlowDelegatePlugin | FindFlowForX returning %@.", 55, 2, &dword_0, v4, v7, v9);

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_4D24();
    sub_4D94();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_21B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_5144();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = sub_5094();
  OUTLINED_FUNCTION_2();
  v77 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  sub_4EC4();
  OUTLINED_FUNCTION_2();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v17 = sub_50E4();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  sub_5114();
  sub_5104();
  sub_50F4();

  v24 = (*(v19 + 88))(v23, v17);
  if (v24 == enum case for SupportedFlowDomain.invalidParse(_:))
  {
    if (qword_C278 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_C278);
    }

    sub_51D4();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
    v26 = OUTLINED_FUNCTION_13(v25);
    OUTLINED_FUNCTION_1(v26, xmmword_55D0);
    OUTLINED_FUNCTION_8();
    (v5)();
    OUTLINED_FUNCTION_9();
    sub_51A4();
    OUTLINED_FUNCTION_7();
    v26[3].n128_u64[1] = &type metadata for String;
    v26[4].n128_u64[0] = sub_47E8();
    v26[2].n128_u64[0] = v15;
    v26[2].n128_u64[1] = v3;
    OUTLINED_FUNCTION_17("Given parse cannot be handled by this domain: %@.", 49, v27, &dword_0);
LABEL_5:

    v28 = OUTLINED_FUNCTION_15();
    (v5)(v28);
    OUTLINED_FUNCTION_9();
LABEL_6:
    v29 = sub_51A4();
    v31 = v30;
    v32 = type metadata accessor for NoOpFlow();
    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    *(v33 + 24) = v31;
    a2[3] = v32;
    OUTLINED_FUNCTION_4();
    result = sub_4ACC(v34, 255, v35, &unk_56D0);
    a2[4] = result;
    *a2 = v33;
    return result;
  }

  if (v24 != enum case for SupportedFlowDomain.playbackControls(_:))
  {
    if (v24 == enum case for SupportedFlowDomain.settings(_:))
    {
      sub_2E70(a1);
      if (qword_C278 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_C278);
      }

      v39 = qword_C8B0;
      v40 = sub_51C4();
      sub_5154("Attempting to get a settings flow.", 34, 2, &dword_0, v39, v40, &_swiftEmptyArrayStorage);
      sub_50D4();
      sub_50C4();
      sub_50B4();

      if (v81)
      {
        goto LABEL_16;
      }

      sub_49EC(v80);
      v59 = sub_51D4();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
      v61 = OUTLINED_FUNCTION_13(v60);
      OUTLINED_FUNCTION_1(v61, xmmword_55D0);
      OUTLINED_FUNCTION_14();
      (v5)();
      OUTLINED_FUNCTION_15();
      sub_51A4();
      OUTLINED_FUNCTION_7();
      v61[3].n128_u64[1] = &type metadata for String;
      v61[4].n128_u64[0] = sub_47E8();
      v61[2].n128_u64[0] = v15;
      v61[2].n128_u64[1] = v3;
      sub_5154("FlowProvider failed to get settings flow for this parse: %@.", 60, 2, &dword_0, v39, v59, v61);
    }

    else
    {
      if (v24 == enum case for SupportedFlowDomain.invalidDomainIdentifier(_:))
      {
        if (qword_C278 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_C278);
        }

        sub_51D4();
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
        v42 = OUTLINED_FUNCTION_13(v41);
        OUTLINED_FUNCTION_1(v42, xmmword_55D0);
        OUTLINED_FUNCTION_8();
        (v5)();
        OUTLINED_FUNCTION_9();
        sub_51A4();
        OUTLINED_FUNCTION_7();
        v42[3].n128_u64[1] = &type metadata for String;
        v42[4].n128_u64[0] = sub_47E8();
        v42[2].n128_u64[0] = v15;
        v42[2].n128_u64[1] = v3;
        OUTLINED_FUNCTION_17("Given intent's domain name is unexpected: %@.", 45, v43, &dword_0);
        goto LABEL_5;
      }

      if (v24 == enum case for SupportedFlowDomain.unsupportedSiriX(_:))
      {
        if (qword_C278 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_C278);
        }

        sub_51D4();
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
        v50 = OUTLINED_FUNCTION_13(v49);
        *(v50 + 16) = xmmword_55D0;
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_12();
        v51();
        v52 = sub_51A4();
        v54 = v53;
        *(v50 + 56) = &type metadata for String;
        *(v50 + 64) = sub_47E8();
        *(v50 + 32) = v52;
        *(v50 + 40) = v54;
        OUTLINED_FUNCTION_17("Given parse cannot be handled because Siri X flag is not enabled: %@.", 69, v55, &dword_0);

        v45 = 0x8000000000006220;
        type metadata accessor for NoOpFlow();
        v46 = swift_allocObject();
        v47 = v46;
        v48 = 0xD000000000000024;
        goto LABEL_28;
      }

      if (v24 != enum case for SupportedFlowDomain.clarityUIEnabled(_:))
      {
        if (v24 == enum case for SupportedFlowDomain.deviceExpertTellMeGenerated(_:))
        {
          sub_5084();
          v68 = sub_5054();
          v45 = *(v77 + 8);
          (v45)(v15, v10);
          if (!v68)
          {
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_12();
            v76();
            goto LABEL_6;
          }

          sub_5084();
          sub_5074();
          (v45)(v15, v10);
          sub_5084();
          sub_5064();
          (v45)(v15, v10);
          sub_4E94();
          sub_5174();
          swift_allocObject();
          sub_5164();
          v81 = sub_5004();
          v82 = &protocol witness table for CoreAnalyticsLogger;
          __swift_allocate_boxed_opaque_existential_1(v80);
          sub_4FF4();
          sub_4FA4();
          swift_allocObject();
          sub_4F94();
          v81 = sub_4FC4();
          v82 = &protocol witness table for BiomeEventSender;
          __swift_allocate_boxed_opaque_existential_1(v80);
          sub_4FB4();
          v69 = sub_5024();
          OUTLINED_FUNCTION_10(v69);
          v79[8] = v68;
          v79[9] = &protocol witness table for SiriKitTaskLoggingProvider;
          v79[5] = sub_5014();
          v79[3] = sub_4FE4();
          v79[4] = &protocol witness table for TipKitEventSender;
          __swift_allocate_boxed_opaque_existential_1(v79);
          sub_4FD4();
          v70 = sub_4E74();
          OUTLINED_FUNCTION_10(v70);
          sub_4E64();
          sub_4ED4();
          v71 = sub_4F84();
          OUTLINED_FUNCTION_10(v71);
          v47 = sub_4F74();
          OUTLINED_FUNCTION_11();
          v56 = &unk_C518;
          v57 = &type metadata accessor for DeviceExpertTellMeGeneratedFlow;
          v58 = &protocol conformance descriptor for DeviceExpertTellMeGeneratedFlow;
        }

        else
        {
          if (v24 != enum case for SupportedFlowDomain.deviceExpertSetting(_:))
          {
            result = sub_5214();
            __break(1u);
            return result;
          }

          if (qword_C278 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_C278);
          }

          sub_51C4();
          OUTLINED_FUNCTION_6("Received device expert setting frame, returning.");
          sub_5154(v72);
          OUTLINED_FUNCTION_5();
          v45 = *(v73 - 256);
          OUTLINED_FUNCTION_12();
          v74();
          v75 = type metadata accessor for IntelligenceFlow(0);
          OUTLINED_FUNCTION_10(v75);
          v47 = sub_3700(v45);
          OUTLINED_FUNCTION_11();
          v56 = &unk_C4D8;
          v57 = type metadata accessor for IntelligenceFlow;
          v58 = &unk_5668;
        }

LABEL_29:
        result = sub_4ACC(v56, 255, v57, v58);
        *(v45 + 32) = result;
        *v45 = v47;
        return result;
      }

      if (qword_C278 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_C278);
      }

      v63 = qword_C8B0;
      v64 = sub_51C4();
      sub_5154("Attempting to get a ClarityUI flow.", 35, 2, &dword_0, v63, v64, &_swiftEmptyArrayStorage);
      sub_50D4();
      sub_50C4();
      sub_50A4();

      if (v81)
      {
LABEL_16:
        sub_4A54(v80, &v83);
        return sub_4A54(&v83, a2);
      }

      sub_49EC(v80);
      v65 = sub_51D4();
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
      v67 = OUTLINED_FUNCTION_13(v66);
      OUTLINED_FUNCTION_1(v67, xmmword_55D0);
      OUTLINED_FUNCTION_14();
      (v5)();
      OUTLINED_FUNCTION_15();
      sub_51A4();
      OUTLINED_FUNCTION_7();
      v67[3].n128_u64[1] = &type metadata for String;
      v67[4].n128_u64[0] = sub_47E8();
      v67[2].n128_u64[0] = v15;
      v67[2].n128_u64[1] = v3;
      sub_5154("FlowProvider failed to get ClarityUI flow for this parse: %@.", 61, 2, &dword_0, v63, v65, v67);
    }

    v62 = OUTLINED_FUNCTION_9();
    (v5)(v62);
    OUTLINED_FUNCTION_15();
    goto LABEL_6;
  }

  sub_5134();
  v37 = sub_5124();
  (*(v5 + 8))(v9, v3);
  if (!v37)
  {
    if (qword_C278 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_C278);
    }

    sub_51C4();
    OUTLINED_FUNCTION_6("Unable to determine suitable PlaybackControls flow. Returning nil.");
    sub_5154(v44);
    v45 = 0x8000000000006380;
    type metadata accessor for NoOpFlow();
    v46 = swift_allocObject();
    v47 = v46;
    v48 = 0xD000000000000044;
LABEL_28:
    *(v46 + 16) = v48;
    *(v46 + 24) = v45;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4();
    v58 = &unk_56D0;
    goto LABEL_29;
  }

  if (qword_C278 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_C278);
  }

  sub_51C4();
  OUTLINED_FUNCTION_6("Received playback controls frame, returning.");
  sub_5154(v38);
  result = sub_4D14();
  a2[3] = result;
  a2[4] = &protocol witness table for AnyFlow;
  *a2 = v37;
  return result;
}

uint64_t sub_2E70(uint64_t a1)
{
  v4 = sub_4EC4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  if ((*(v6 + 88))(v10, v4) == enum case for Parse.uso(_:))
  {
    if (qword_C278 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_C278);
    }

    sub_51C4();
    OUTLINED_FUNCTION_16("Got .uso intent.");
    sub_5154(v11);
    sub_4F34();
    if (sub_4F14() && (sub_4F04(), , v12 = sub_5034(), v14 = v13, , v14))
    {
      v15 = v12 == 48 && v14 == 0xE100000000000000;
      if (v15 || (sub_5224() & 1) != 0)
      {

        sub_51C4();
        OUTLINED_FUNCTION_16("SettingsFlowDelegatePlugin sending IntentSignal to pre-warm first party extension");
        sub_5154(v16);
        v17 = [objc_allocWithZone(SAIntentGroupIntentSignal) init];
        sub_4864(0, &qword_C500, INSetBinarySettingIntent_ptr);
        v18 = sub_3300(0, 0, 0);
        sub_4914(0xD00000000000003ALL, 0x8000000000006120, v18, &selRef__setExtensionBundleId_);
        v19 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
        sub_48A4([v18 backingStore]);
        isa = 0;
        if (v21 >> 60 != 15)
        {
          OUTLINED_FUNCTION_7();
          isa = sub_4CF4().super.isa;
          sub_4980(v1, v2);
        }

        [v19 setData:isa];

        v22 = [v18 typeName];
        sub_5194();
        OUTLINED_FUNCTION_7();

        sub_4914(v1, v2, v19, &selRef_setTypeName_);
        [v17 setIntent:v19];
        sub_4DE4();
        __swift_project_boxed_opaque_existential_1(v36, v36[3]);
        sub_4E84();

        __swift_destroy_boxed_opaque_existential_1(v36);
      }

      else
      {
        sub_51C4();
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
        v34 = OUTLINED_FUNCTION_13(v33);
        *(v34 + 16) = xmmword_55D0;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_47E8();
        *(v34 + 32) = v12;
        *(v34 + 40) = v14;
        OUTLINED_FUNCTION_16("SettingsFlowDelegatePlugin NOT sending IntentSignal to pre-warm first party extension because resultCandidateId is not 0: %@");
        sub_5154(v35);
      }
    }

    else
    {
      sub_51C4();
      OUTLINED_FUNCTION_16("SettingsFlowDelegatePlugin NOT sending IntentSignal to pre-warm first party extension because resultCandidateId is nil");
      sub_5154(v25, v26, v27, v28, v29, v30, v31);
    }
  }

  else
  {
    if (qword_C278 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_C278);
    }

    v23 = qword_C8B0;
    v24 = sub_51C4();
    sub_5154("SettingsFlowDelegatePlugin NOT sending IntentSignal to pre-warm first party extension because it's not an NLV4 intent.", 118, 2, &dword_0, v23, v24, &_swiftEmptyArrayStorage);
  }

  return (*(v6 + 8))(v10, v4);
}

id sub_3300(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:a1 binaryValue:a2 temporalEventTrigger:a3];

  return v5;
}

uint64_t sub_33BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ED4();
  *a1 = result;
  return result;
}

void sub_3420()
{
  sub_51F4(54);
  v1._object = 0x8000000000005EE0;
  v1._countAndFlagsBits = 0xD000000000000034;
  sub_51B4(v1);
  sub_51B4(v0[1]);
  sub_5204();
  __break(1u);
}

uint64_t sub_34B8()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_353C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4B80;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_3610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4B7C;

  return Flow.execute()(a1, a2, a3);
}

uint64_t sub_36C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NoOpFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

void *sub_3700(uint64_t a1)
{
  v2 = v1;
  sub_4864(0, &qword_C4F8, OS_os_log_ptr);
  v4 = sub_51E4();
  v1[5] = &type metadata for IntelligenceFlowHelper;
  v1[6] = &off_8748;
  v1[2] = v4;
  if (qword_C278 != -1)
  {
    swift_once();
  }

  v5 = qword_C8B0;
  v6 = sub_51C4();
  sub_5154("SettingsFlowDelegatePlugin IntelligenceFlow | creating IntelligenceFlow.", 72, 2, &dword_0, v5, v6, &_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC26SettingsFlowDelegatePluginP33_78101825AF663525EA54C1C34E6D560416IntelligenceFlow_parse;
  v8 = sub_4EC4();
  (*(*(v8 - 8) + 32))(v2 + v7, a1, v8);
  return v2;
}

uint64_t sub_3850(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_4EB4();
  v2[4] = swift_task_alloc();
  v3 = sub_4E04();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E0, &qword_57A8);
  v2[8] = swift_task_alloc();
  v4 = sub_4E14();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_4F64();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_4E34();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = sub_4EC4();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = sub_4EE4();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_3B58, 0, 0);
}

uint64_t sub_3B58(uint64_t a1)
{
  if (qword_C278 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_C278);
  }

  v2 = v1[3];
  sub_51C4();
  OUTLINED_FUNCTION_6("SettingsFlowDelegatePlugin IntelligenceFlow | executing IntelligenceFlow.");
  sub_5154(v3);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if ((sub_1B14() & 1) == 0)
  {
    sub_51D4();
    v23 = "SettingsFlowDelegatePlugin IntelligenceFlow | IntelligenceFlow is disabled or unsupported";
LABEL_11:
    OUTLINED_FUNCTION_6(v23);
    sub_5154(v24);
    sub_4E44();
    goto LABEL_12;
  }

  v4 = v1[22];
  v5 = v1[18];
  v6 = v1[19];
  v7 = *(v6 + 16);
  v7(v4, v1[3] + OBJC_IVAR____TtC26SettingsFlowDelegatePluginP33_78101825AF663525EA54C1C34E6D560416IntelligenceFlow_parse, v5);
  if ((*(v6 + 88))(v4, v5) != enum case for Parse.uso(_:))
  {
    (*(v1[19] + 8))(v1[22], v1[18]);
    sub_51D4();
    v23 = "SettingsFlowDelegatePlugin IntelligenceFlow | no usoParse found";
    goto LABEL_11;
  }

  v9 = v1[24];
  v8 = v1[25];
  v11 = v1[22];
  v10 = v1[23];
  (*(v1[19] + 96))(v11, v1[18]);
  (*(v9 + 32))(v8, v11, v10);
  sub_4F34();
  if (!sub_4F14())
  {
    sub_4F24();
  }

  sub_4F04();
  v42 = sub_5044();
  v13 = v12;

  v14 = v1[24];
  v15 = v1[25];
  v16 = v1[23];
  if (v13)
  {
    v35 = v1[21];
    v36 = v1[19];
    v37 = v1[18];
    v38 = v1[20];
    v44 = v1[17];
    v33 = v1[16];
    v34 = v1[15];
    v28 = v1[14];
    v43 = v1[23];
    v17 = v1[13];
    v29 = v1[12];
    v45 = v1[24];
    v19 = v1[10];
    v18 = v1[11];
    v30 = v1[9];
    v31 = v1[8];
    v39 = v1[7];
    v40 = v1[6];
    v41 = v1[5];
    sub_51C4();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E8, &qword_57B0);
    v32 = v7;
    v21 = OUTLINED_FUNCTION_13(v20);
    *(v21 + 16) = xmmword_55D0;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_47E8();
    *(v21 + 32) = v42;
    *(v21 + 40) = v13;

    OUTLINED_FUNCTION_6("SettingsFlowDelegatePlugin IntelligenceFlow | creating IF redirect with utterance %@");
    sub_5154(v22);

    (*(v17 + 104))(v28, enum case for NLRoutingDecisionMessage.RoutingDecision.planner(_:), v29);
    *v18 = v42;
    v18[1] = v13;
    (*(v19 + 104))(v18, enum case for NLRouterParse.InputCandidate.text(_:), v30);
    (*(v45 + 16))(v31, v15, v43);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v43);
    sub_4E24();
    (*(v33 + 16))(v35, v44, v34);
    (*(v36 + 104))(v35, enum case for Parse.nlRouter(_:), v37);
    v32(v38, v35, v37);
    sub_4EA4();
    sub_4DF4();
    sub_4E54();

    (*(v40 + 8))(v39, v41);
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v44, v34);
    (*(v45 + 8))(v15, v43);
  }

  else
  {
    sub_51D4();
    OUTLINED_FUNCTION_6("SettingsFlowDelegatePlugin IntelligenceFlow | no utterance found");
    sub_5154(v27);
    sub_4E44();

    (*(v14 + 8))(v15, v16);
  }

LABEL_12:

  v25 = v1[1];

  return v25();
}

uint64_t sub_4124(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceFlow(0);
  sub_4ACC(&qword_C4D8, 255, type metadata accessor for IntelligenceFlow, &unk_5668);
  return sub_4D34();
}

uint64_t sub_41B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC26SettingsFlowDelegatePluginP33_78101825AF663525EA54C1C34E6D560416IntelligenceFlow_parse;
  v2 = sub_4EC4();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for IntelligenceFlow(uint64_t a1)
{
  result = qword_C428;
  if (!qword_C428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42B0(uint64_t a1)
{
  result = sub_4EC4();
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

uint64_t sub_4374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_4424;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_4424(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_4544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_45E0;

  return sub_3850(a1);
}

uint64_t sub_45E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_46D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IntelligenceFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_47E8()
{
  result = qword_C4F0;
  if (!qword_C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4F0);
  }

  return result;
}

uint64_t sub_4864(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_48A4(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_4D04();

  return v3;
}

void sub_4914(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_5184();

  [a3 *a4];
}

uint64_t sub_4980(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4994(a1, a2);
  }

  return a1;
}

uint64_t sub_4994(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_49EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C508, &qword_57B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4A54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_4ACC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_4B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_5154(a1, a2, 2, a4, v5, v4, v6);
}