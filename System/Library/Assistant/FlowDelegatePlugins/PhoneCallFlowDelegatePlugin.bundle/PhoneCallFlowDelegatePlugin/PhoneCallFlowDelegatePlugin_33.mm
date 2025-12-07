id SAIntentGroupProtobufMessage.init(intent:)()
{
  OUTLINED_FUNCTION_7_65();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = outlined bridged method (ob) of @objc PBCodable.data.getter([v0 backingStore]);
  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v2 = outlined consume of Data?(v5, v6);
  }

  OUTLINED_FUNCTION_10_65(v2, "setData:");

  v7 = [v0 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  return v1;
}

id SAAppsLaunchApp.init(app:)(uint64_t a1, SEL *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  App.appIdentifier.getter();
  if (v5)
  {
    String._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v2 = 0;
  }

  [v4 *a2];

  return v4;
}

id SAABPersonPicker.init(canUseServerTTS:showImmediately:canBeRefreshed:)(char a1, char a2, char a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  [v6 setShowImmediately:a2 & 1];
  [v6 setCanBeRefreshed:a3 & 1];
  [v6 setCanUseServerTTS:a1 & 1];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();

  return v6;
}

id SAUIDecoratedText.init(label:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  OUTLINED_FUNCTION_20_0();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  return v0;
}

id SAIntentGroupProtobufMessage.init(response:)()
{
  OUTLINED_FUNCTION_7_65();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [v0 backingStore];
  if (result)
  {
    v3 = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
    if (v4 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v6 = v3;
      v7 = v4;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v3 = outlined consume of Data?(v6, v7);
    }

    OUTLINED_FUNCTION_10_65(v3, "setData:");

    v8 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef__payloadResponseTypeName);
    if (v9)
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    OUTLINED_FUNCTION_10_65(v8, "setTypeName:");

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pMd, &_s27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSSSgMd, &_sSSSgMR);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
}

{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SAUIConfirmationOption.label.getter(void *a1)
{
  v2 = [a1 label];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SAUIConfirmationOption.commands.getter(void *a1)
{
  v2 = [a1 commands];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  type metadata accessor for CNContactStore(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_6_74(v4, v5, v6, v7, v8, v9, v10, v11, v12, isa);
}

void outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_6_74(v4, v5, v6, v7, v8, v9, v10, v11, v12, isa);
}

void outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter()
{
  v9 = String._bridgeToObjectiveC()();

  OUTLINED_FUNCTION_6_74(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

INPerson __swiftcall SAPerson.toINPerson()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_12_5();
  v4 = v2 - v3;
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for PersonNameComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  PersonNameComponents.init()();
  outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_firstNamePhonetic);
  PersonNameComponents.givenName.setter();
  outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_lastNamePhonetic);
  PersonNameComponents.familyName.setter();
  PersonNameComponents.init()();
  v16 = *(v9 + 16);
  v16(v7, v15, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  PersonNameComponents.phoneticRepresentation.setter();
  outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_firstName);
  PersonNameComponents.givenName.setter();
  outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_lastName);
  PersonNameComponents.familyName.setter();
  v17 = objc_allocWithZone(INPersonHandle);
  v33 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
  v16(v4, v12, v8);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  v18 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_fullName);
  v31 = v19;
  v32 = v18;
  v20 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_internalGUID);
  v22 = v21;
  v23 = [v0 me];
  type metadata accessor for NSNumber();
  v24.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  if (v23)
  {
    v25 = static NSObject.== infix(_:_:)();

    v24.super.super.isa = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_allocWithZone(INPerson);
  v27 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:isMe:)(v33, v4, v32, v31, 0, v20, v22, 0, 0, v25 & 1);
  v28 = *(v9 + 8);
  v28(v12, v8);
  v28(v15, v8);
  return v27;
}

id SAPerson.init(person:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v2 - 8);
  OUTLINED_FUNCTION_12_5();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v75 = &v74 - v7;
  __chkstk_darwin(v8);
  v76 = &v74 - v9;
  __chkstk_darwin(v10);
  v74 = &v74 - v11;
  __chkstk_darwin(v12);
  v14 = &v74 - v13;
  __chkstk_darwin(v15);
  v17 = &v74 - v16;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  __chkstk_darwin(v24);
  v26 = &v74 - v25;
  __chkstk_darwin(v27);
  v29 = &v74 - v28;
  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = [a1 nameComponents];
  if (v31)
  {
    v32 = v31;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for PersonNameComponents();
    v33 = 0;
  }

  else
  {
    type metadata accessor for PersonNameComponents();
    v33 = 1;
  }

  v77 = v5;
  OUTLINED_FUNCTION_3_93(v26, v33);
  outlined init with take of PersonNameComponents?(v26, v29);
  type metadata accessor for PersonNameComponents();
  if (OUTLINED_FUNCTION_1_100(v29))
  {
    v34 = outlined destroy of PersonNameComponents?(v29);
LABEL_6:
    v35 = 0;
    goto LABEL_9;
  }

  PersonNameComponents.givenName.getter();
  v37 = v36;
  v34 = outlined destroy of PersonNameComponents?(v29);
  if (!v37)
  {
    goto LABEL_6;
  }

  v35 = String._bridgeToObjectiveC()();

LABEL_9:
  OUTLINED_FUNCTION_2_100(v34, "setFirstName:");

  v38 = [a1 displayName];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  outlined bridged method (mbnn) of @objc SAPerson.fullName.setter(v39, v41, v30);
  v42 = [a1 nameComponents];
  if (v42)
  {
    v43 = v42;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  OUTLINED_FUNCTION_3_93(v20, v44);
  outlined init with take of PersonNameComponents?(v20, v23);
  v45 = OUTLINED_FUNCTION_1_100(v23);
  v46 = v77;
  if (v45)
  {
    v47 = outlined destroy of PersonNameComponents?(v23);
    v48 = 0;
    v49 = v76;
  }

  else
  {
    PersonNameComponents.familyName.getter();
    v51 = v50;
    v47 = outlined destroy of PersonNameComponents?(v23);
    v49 = v76;
    if (v51)
    {
      v48 = String._bridgeToObjectiveC()();
    }

    else
    {
      v48 = 0;
    }
  }

  OUTLINED_FUNCTION_2_100(v47, "setLastName:");

  v52 = [a1 nameComponents];
  if (v52)
  {
    v53 = v52;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  OUTLINED_FUNCTION_3_93(v14, v54);
  outlined init with take of PersonNameComponents?(v14, v17);
  if (OUTLINED_FUNCTION_1_100(v17))
  {
    v55 = outlined destroy of PersonNameComponents?(v17);
    v56 = 0;
    v57 = v75;
    goto LABEL_28;
  }

  v58 = v74;
  PersonNameComponents.phoneticRepresentation.getter();
  if (OUTLINED_FUNCTION_1_100(v58))
  {
    outlined destroy of PersonNameComponents?(v58);
    v55 = outlined destroy of PersonNameComponents?(v17);
  }

  else
  {
    PersonNameComponents.givenName.getter();
    v60 = v59;
    outlined destroy of PersonNameComponents?(v58);
    v55 = outlined destroy of PersonNameComponents?(v17);
    if (v60)
    {
      v56 = String._bridgeToObjectiveC()();

      goto LABEL_27;
    }
  }

  v56 = 0;
LABEL_27:
  v57 = v75;
LABEL_28:
  OUTLINED_FUNCTION_2_100(v55, "setFirstNamePhonetic:");

  v61 = [a1 nameComponents];
  if (v61)
  {
    v62 = v61;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  OUTLINED_FUNCTION_3_93(v57, v63);
  outlined init with take of PersonNameComponents?(v57, v49);
  if (OUTLINED_FUNCTION_1_100(v49))
  {
    goto LABEL_34;
  }

  PersonNameComponents.phoneticRepresentation.getter();
  if (OUTLINED_FUNCTION_1_100(v46))
  {
    outlined destroy of PersonNameComponents?(v46);
LABEL_34:
    v64 = outlined destroy of PersonNameComponents?(v49);
LABEL_35:
    v65 = 0;
    goto LABEL_36;
  }

  PersonNameComponents.familyName.getter();
  v73 = v72;
  outlined destroy of PersonNameComponents?(v46);
  v64 = outlined destroy of PersonNameComponents?(v49);
  if (!v73)
  {
    goto LABEL_35;
  }

  v65 = String._bridgeToObjectiveC()();

LABEL_36:
  OUTLINED_FUNCTION_2_100(v64, "setLastNamePhonetic:");

  v66 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a1);
  if (v67)
  {
    v68 = String._bridgeToObjectiveC()();
  }

  else
  {
    v68 = 0;
  }

  OUTLINED_FUNCTION_2_100(v66, "setInternalGUID:");

  v69 = [a1 isMe];
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(v69).super.super.isa;
  OUTLINED_FUNCTION_2_100(isa, "setMe:");

  return v30;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:isMe:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

  LOBYTE(v24) = a10 & 1;
  v22 = [v11 initWithPersonHandle:a1 nameComponents:isa displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21 isMe:v24];

  return v22;
}

void outlined bridged method (mbnn) of @objc SAPerson.fullName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setFullName:v4];
}

id SCHCardItemComponents.toCardItem()()
{
  v1 = [objc_allocWithZone(SASTCardItem) init];
  v2 = [objc_allocWithZone(SAUIDecoratedText) init];
  v3 = CallRecordDisplayTextComponents.callerNameText.getter();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v3, v4, v2);
  [v1 setTitle:v2];

  if ([*v0 callRecordType] == &dword_0 + 2)
  {
    if (one-time initialization token for missedRed != -1)
    {
      swift_once();
    }

    v5 = static ColorFactory.missedRed;
  }

  else
  {
    v5 = static ColorFactory.white.getter();
  }

  v6 = v5;
  [v1 setTitleTextColor:v5];

  v7 = SCHCardItemComponents.dateString.getter();
  [v1 setFootnote:v7];

  if (one-time initialization token for watchDarkCardItemBackgroundColor != -1)
  {
    swift_once();
  }

  [v1 setBackgroundColor:static ColorFactory.watchDarkCardItemBackgroundColor];
  if (one-time initialization token for watchDarkCardItemTitleBackgroundColor != -1)
  {
    swift_once();
  }

  [v1 setTitleBackgroundColor:static ColorFactory.watchDarkCardItemTitleBackgroundColor];
  return v1;
}

id SCHCardItemComponents.callerName.getter()
{
  v0 = [objc_allocWithZone(SAUIDecoratedText) init];
  v1 = CallRecordDisplayTextComponents.callerNameText.getter();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v1, v2, v0);
  return v0;
}

id SCHCardItemComponents.dateString.getter()
{
  v0 = CallRecordDisplayTextComponents.callDateText.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(SAUIDecoratedText) init];
  v5 = CallRecordDisplayTextComponents.callDateText.getter();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v5, v6, v4);
  return v4;
}

uint64_t Array<A>.toCardSnippet()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v6[5] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      outlined init with copy of SignalProviding(v3, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      SCHRowCardSectionComponents.toCardSection()();
      __swift_destroy_boxed_opaque_existential_1(v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for SACardSnippet();
  v4 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

  return v4;
}

id SCHRowCardSectionComponents.toCardSection()()
{
  v0 = [objc_allocWithZone(SFRowCardSection) init];
  [v0 setSeparatorStyle:4];
  v1 = OUTLINED_FUNCTION_5_26();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1_101(v3, "setLeadingText:");

  v4 = OUTLINED_FUNCTION_5_26();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1_101(v6, "setLeadingSubtitle:");

  v7 = OUTLINED_FUNCTION_5_26();
  v9 = v8(v7);
  OUTLINED_FUNCTION_1_101(v9, "setTrailingText:");

  v10 = OUTLINED_FUNCTION_5_26();
  v12 = v11(v10);
  OUTLINED_FUNCTION_1_101(v12, "setTrailingSubtitle:");

  v13 = OUTLINED_FUNCTION_5_26();
  v15 = v14(v13);
  [v0 setImage:v15];

  return v0;
}

unint64_t type metadata accessor for SACardSnippet()
{
  result = lazy cache variable for type metadata for SACardSnippet;
  if (!lazy cache variable for type metadata for SACardSnippet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SACardSnippet);
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin8SmsGroup_ps5NeverOTg5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v24;
  v44 = v26;
  v45 = v25;
  v27 = v20;
  v28 = *(v22 + 16);
  if (v28)
  {
    v29 = v22;
    a10 = _swiftEmptyArrayStorage;
    v43 = v23;
    v23(0, v28, 0);
    v30 = a10;
    v31 = *(type metadata accessor for NonTerminalIntentNode() - 8);
    v32 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v33 = *(v31 + 72);
    while (1)
    {
      v45(v46, v32);
      if (v27)
      {
        break;
      }

      v27 = 0;
      a10 = v30;
      v35 = v30[2];
      v34 = v30[3];
      if (v35 >= v34 >> 1)
      {
        v43(v34 > 1, v35 + 1, 1);
      }

      v36 = v47;
      v37 = v48;
      __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
      OUTLINED_FUNCTION_9_1();
      __chkstk_darwin(v38);
      OUTLINED_FUNCTION_4();
      v41 = v40 - v39;
      (*(v42 + 16))(v40 - v39);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v35, v41, &a10, v36, v37, v44);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v30 = a10;
      v32 += v33;
      if (!--v28)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_4_75();
    OUTLINED_FUNCTION_29_2();
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay27PhoneCallFlowDelegatePlugin04SiriD7Contact_pG_AfG_psAE_pTg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v24;
  v25 = v20;
  v26 = *(v23 + 16);
  if (v26)
  {
    v27 = v23;
    v28 = v22;
    a10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v29 = a10;
    v30 = v27 + 32;
    while (1)
    {
      v28(v41, v30, &v40);
      if (v25)
      {
        break;
      }

      v25 = 0;
      a10 = v29;
      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      }

      v33 = v42;
      v34 = v43;
      __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      OUTLINED_FUNCTION_9_1();
      __chkstk_darwin(v35);
      OUTLINED_FUNCTION_4();
      v38 = v37 - v36;
      (*(v39 + 16))(v37 - v36);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v32, v38, &a10, v33, v34, outlined init with take of SPHConversation);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v29 = a10;
      v30 += 40;
      if (!--v26)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_29_2();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo12INCallRecordCG_27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_ps5NeverOTg5(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v17;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v15 = v11;
      a1(v16, &v15);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v17 = v9;
      v13 = v9[2];
      v12 = v9[3];
      v4 = (v13 + 1);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v9 = v17;
      }

      v9[2] = v4;
      outlined init with take of SPHConversation(v16, &v9[5 * v13 + 4]);
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo12INCallRecordCG_So12SASTCardItemCs5NeverOTg5Tm(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_3_94();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_3_94();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8INPersonCG_Say11SiriKitFlow11DisplayHintVG12displayHints_AI13SemanticValueV02idM0ts5NeverOTg5()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v3 = v2;
  v23 = v4;
  v24 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  v22 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_4_75();
      OUTLINED_FUNCTION_29_2();
      return;
    }

    v10 = OUTLINED_FUNCTION_1_102();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v11, v12);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v20 = i;
    v21 = v3 & 0xC000000000000001;
    v19 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v21)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v15 = *(v3 + 8 * v13 + 32);
      }

      i = v15;
      v25 = v15;
      v23(&v25);
      if (v1)
      {
        goto LABEL_20;
      }

      v1 = 0;

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v8, _swiftEmptyArrayStorage + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17);
      ++v13;
      if (v14 == v20)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation8IndexSetV9RangeViewV_SnySS0E0VGs5NeverOTg5(void (*a1)(__int128 *__return_ptr, __int128 *))
{
  v3 = v1;
  type metadata accessor for IndexSet.RangeView();
  v4 = lazy protocol witness table accessor for type IndexSet.RangeView and conformance IndexSet.RangeView();
  v5 = dispatch thunk of Collection.count.getter();
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = _swiftEmptyArrayStorage;
    v7 = OUTLINED_FUNCTION_1_102();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v7, v8, v9);
    v22 = _swiftEmptyArrayStorage;
    dispatch thunk of Collection.startIndex.getter();
    if ((v5 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v12 = v4;
        v13 = v3;
        v14 = v12;
        v15 = dispatch thunk of Collection.subscript.read();
        v24 = *v16;
        v15(v25, 0);
        a1(&v26, &v24);
        if (v2)
        {
          goto LABEL_13;
        }

        v17 = v26;
        v18 = v22;
        v27 = v22;
        v20 = v22[2];
        v19 = v22[3];
        if (v20 >= v19 >> 1)
        {
          v23 = v26;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v17 = v23;
          v18 = v27;
        }

        v18[2] = v20 + 1;
        v22 = v18;
        *&v18[2 * v20 + 4] = v17;
        v3 = v13;
        v4 = v14;
        dispatch thunk of Collection.formIndex(after:)();
        if (v11 == v5)
        {
          return v22;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:

    __break(1u);
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology23UsoEntity_common_PersonCG_So8INPersonCsAE_pTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v12 = v9;
      a1(&v13, &v12, &v11);

      if (v3)
      {
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      OUTLINED_FUNCTION_3_94();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_3_94();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v8 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17SiriAppResolution0E0CG_0D8NLUTypes0D27_Nlu_External_UserDialogActVs5NeverOTg5()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v3 = v2;
  v23 = v4;
  v22 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_9_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v24 = v9 - v8;
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_4_75();
      OUTLINED_FUNCTION_29_2();
      return;
    }

    v11 = OUTLINED_FUNCTION_1_102();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11, v12, v13);
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v20 = v3;
    v21 = v3 & 0xC000000000000001;
    v19 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v21)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v3 + 8 * v14 + 32);
      }

      v25 = v16;
      v23(&v25);
      if (v1)
      {
        goto LABEL_20;
      }

      v1 = 0;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v24, v22);
      ++v14;
      v3 = v20;
      if (v15 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t SCHRowCardSectionComponentsFactory.init(device:displayTextCats:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = outlined init with take of SPHConversation(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

void SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:)(unint64_t a1)
{
  v3 = specialized Array.count.getter(a1);
  v4 = v3;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_10:
      __chkstk_darwin(v3);
      v10[2] = v9;
      v10[3] = 0;
      v10[4] = v1;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo12INCallRecordCG_27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_ps5NeverOTg5(partial apply for closure #2 in SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:), v10, a1);
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
        goto LABEL_12;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = [v6 callRecordType];

    ++v5;
    if (v8 != &dword_4 + 1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t implicit closure #1 in SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  outlined init with copy of SignalProviding(a2, (a4 + 2));
  *a4 = a1;
  a4[1] = a1;
  a4[7] = a3;
  v7 = a1;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed INCallRecord, @in_guaranteed DeviceState, @guaranteed PhoneCallDisplayTextCATs) -> (@out VoicemailRowCardSectionComponents)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  a7[3] = a4;
  a7[4] = a5;
  v11 = swift_allocObject();
  *a7 = v11;
  return implicit closure #1 in SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:)(a1, a2, a3, (v11 + 16));
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(a1, a2, a3, a4, a5, outlined init with take of PhoneCallFeatureFlagProviding);
}

{
  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(a1, a2, a3, a4, a5, outlined init with take of SPHConversation);
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

uint64_t outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type IndexSet.RangeView and conformance IndexSet.RangeView()
{
  result = lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView)
  {
    type metadata accessor for IndexSet.RangeView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_102_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  v121 = v12;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 41) = HIBYTE(v14) & 1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v16 = v4[13];
  v17 = v4[14];
  OUTLINED_FUNCTION_28_0(v4 + 10, v16);
  v18 = *(v17 + 8);

  v18(v136, v16, v17);
  v19 = v137;
  __swift_project_boxed_opaque_existential_1(v136, v137);
  OUTLINED_FUNCTION_26_4();
  v20 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_64_13(v20, v21, v22, v23, v24, v25, v26, v27, v108, v10, v121, a2);
  if (a2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v28 = type metadata accessor for Logger();
    v29 = OUTLINED_FUNCTION_12_1(v28, static Logger.siriPhone);
    v30 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v30))
    {
      v31 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v31);
      OUTLINED_FUNCTION_36_25(&dword_0, v32, v33, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0(v19);
    }

    OUTLINED_FUNCTION_57_20(v34, v35, v36, v37, v38, v39, v40, v41, v109, v115, v122, v128);
    swift_allocObject();
    OUTLINED_FUNCTION_5_81();
    *(v42 + 16) = v43;
    *(v42 + 24) = v15;
    OUTLINED_FUNCTION_56_11(v42, v44, v45, v46, v47, v48, v49, v50, v110, v116, v123, v129, a1, v8);
    *(v19 + 152) = v135;
    v51 = *(*v29 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

    v51(partial apply for closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForWatch(utteranceViews:_:), v19);
  }

  else
  {
    OUTLINED_FUNCTION_35_22(v4 + 10, v4[13]);
    v52 = OUTLINED_FUNCTION_26_4();
    v53(v52);
    __swift_project_boxed_opaque_existential_1(v136, v137);
    OUTLINED_FUNCTION_26_4();
    v54 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_64_13(v54, v55, v56, v57, v58, v59, v60, v61, v109, v115, v122, v128);
    OUTLINED_FUNCTION_35_22(v4 + 10, v4[13]);
    v63 = OUTLINED_FUNCTION_26_4();
    v64(v63);
    __swift_project_boxed_opaque_existential_1(v136, v137);
    OUTLINED_FUNCTION_26_4();
    v65 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_64_13(v65, v66, v67, v68, v69, v70, v71, v72, v111, v117, v124, v130);
    OUTLINED_FUNCTION_35_22(v4 + 10, v4[13]);
    v73 = OUTLINED_FUNCTION_26_4();
    v74(v73);
    v75 = v137;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    OUTLINED_FUNCTION_26_4();
    v76 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_64_13(v76, v77, v78, v79, v80, v81, v82, v83, v112, v118, v125, v131);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v84 = type metadata accessor for Logger();
    v85 = OUTLINED_FUNCTION_12_1(v84, static Logger.siriPhone);
    v86 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v86))
    {
      v87 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v87);
      OUTLINED_FUNCTION_36_25(&dword_0, v88, v89, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0(v75);
    }

    OUTLINED_FUNCTION_57_20(v90, v91, v92, v93, v94, v95, v96, v97, v113, v119, v126, v132);
    swift_allocObject();
    OUTLINED_FUNCTION_5_81();
    *(v98 + 16) = v99;
    *(v98 + 24) = v15;
    OUTLINED_FUNCTION_56_11(v98, v100, v101, v102, v103, v104, v105, v106, v114, v120, v127, v133, a1, v8);
    v107 = *(*v85 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

    v107(partial apply for closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForIOS(utteranceViews:_:), v75);
  }
}

{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_102_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 41) = HIBYTE(v14) & 1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v16 = v4[25];
  v17 = v4[26];
  LOBYTE(v12) = __swift_project_boxed_opaque_existential_1(v4 + 22, v16);
  v18 = *(v17 + 8);

  v18(v49, v16, v17);
  v19 = v50;
  OUTLINED_FUNCTION_2_101(v49);
  v20 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_46_22(v20, v21);
  if (v12)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_12_1(v22, static Logger.siriPhone);
    v24 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_43(v24))
    {
      v25 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v25);
      OUTLINED_FUNCTION_6_44(&dword_0, v26, v27, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0(v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_48(v4 + 22);
    v28 = OUTLINED_FUNCTION_25_0();
    v29(v28);
    OUTLINED_FUNCTION_2_101(v49);
    v30 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_46_22(v30, v31);
    OUTLINED_FUNCTION_16_48(v4 + 22);
    v32 = OUTLINED_FUNCTION_25_0();
    v33(v32);
    OUTLINED_FUNCTION_2_101(v49);
    v34 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_46_22(v34, v35);
    OUTLINED_FUNCTION_16_48(v4 + 22);
    v36 = OUTLINED_FUNCTION_25_0();
    v37(v36);
    v38 = v50;
    OUTLINED_FUNCTION_2_101(v49);
    v39 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_46_22(v39, v40);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v41 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_12_1(v41, static Logger.siriPhone);
    v42 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_43(v42))
    {
      v43 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v43);
      OUTLINED_FUNCTION_6_44(&dword_0, v44, v45, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0(v38);
    }
  }

  OUTLINED_FUNCTION_16_24();
  v46 = OUTLINED_FUNCTION_21_38();
  v47(v46);
}

{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_102_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  v102 = v12;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 41) = HIBYTE(v14) & 1;
  v103 = a2;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v16 = v4[7];
  v17 = v4[8];
  OUTLINED_FUNCTION_28_0(v4 + 4, v16);
  v18 = *(v17 + 8);

  v18(v105, v16, v17);
  __swift_project_boxed_opaque_existential_1(v105, v106);
  OUTLINED_FUNCTION_12_56();
  v19 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_45_17(v19, v20, v21, v22, v23, v24, v25, v26, v93, v10);
  if (a2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v27 = type metadata accessor for Logger();
    v28 = OUTLINED_FUNCTION_12_1(v27, static Logger.siriPhone);
    v29 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_43(v29))
    {
      v30 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v30);
      OUTLINED_FUNCTION_20_39(&dword_0, v31, a3, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_35();
    }

    v40 = OUTLINED_FUNCTION_3_95(v32, v33, v34, v35, v36, v37, v38, v39, v94, v98, v102, v103, a1);
    EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(v40, v41, v42);
  }

  else
  {
    v43 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v44 = OUTLINED_FUNCTION_7_66();
    v45(v44, v43);
    __swift_project_boxed_opaque_existential_1(v105, v106);
    OUTLINED_FUNCTION_12_56();
    v46 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_45_17(v46, v47, v48, v49, v50, v51, v52, v53, v94, v98);
    v54 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v55 = OUTLINED_FUNCTION_7_66();
    v56(v55, v54);
    __swift_project_boxed_opaque_existential_1(v105, v106);
    OUTLINED_FUNCTION_12_56();
    v57 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_45_17(v57, v58, v59, v60, v61, v62, v63, v64, v95, v99);
    v65 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v66 = OUTLINED_FUNCTION_7_66();
    v67(v66, v65);
    __swift_project_boxed_opaque_existential_1(v105, v106);
    OUTLINED_FUNCTION_12_56();
    v68 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_45_17(v68, v69, v70, v71, v72, v73, v74, v75, v96, v100);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v76 = type metadata accessor for Logger();
    v77 = OUTLINED_FUNCTION_12_1(v76, static Logger.siriPhone);
    v78 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_43(v78))
    {
      v79 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v79);
      OUTLINED_FUNCTION_20_39(&dword_0, v80, a3, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_35();
    }

    v89 = OUTLINED_FUNCTION_3_95(v81, v82, v83, v84, v85, v86, v87, v88, v97, v101, v102, v103, a1);
    EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:)(v89, v90, v91);
  }
}

{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v78 = v5;
  v79 = v6;
  v8 = v3[5];
  v7 = v3[6];
  OUTLINED_FUNCTION_28_0(v3 + 2, v8);
  v9 = *(v7 + 8);
  OUTLINED_FUNCTION_60_15();
  swift_retain_n();
  swift_retain_n();
  v9(v80, v8, v7);
  v10 = v81;
  OUTLINED_FUNCTION_28_0(v80, v81);
  v11 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_65_15(v11, v12, v13, v14, v15, v16);
  if (v3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_12_1(v17, static Logger.siriPhone);
    v19 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_29_28(v19))
    {
      v20 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v20);
      OUTLINED_FUNCTION_38_24(&dword_0, v21, v22, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0(v10);
    }

    SiriKitDisambiguationList.disambiguationItems.getter();
    v24 = v4[5];
    v23 = v4[6];
    OUTLINED_FUNCTION_18_31(v4 + 2, v24);
    v25(v80, v24, v23);
    OUTLINED_FUNCTION_28_0(v80, v81);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v26 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)();

    __swift_destroy_boxed_opaque_existential_1(v80);
    type metadata accessor for SiriKitAceViewBuilder();
    v27 = v4[5];
    v28 = v4[6];
    OUTLINED_FUNCTION_35_22(v4 + 2, v27);
    v29(v80, v27, v28);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v80);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();
    OUTLINED_FUNCTION_65_13();
    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();
    OUTLINED_FUNCTION_61();

    dispatch thunk of SiriKitAceViewBuilder.build()();
    OUTLINED_FUNCTION_65_13();
    OUTLINED_FUNCTION_28_24();
    closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {
    v37 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v38 = OUTLINED_FUNCTION_61();
    v39(v38, v37);
    OUTLINED_FUNCTION_28_0(v80, v81);
    v40 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_65_15(v40, v41, v42, v43, v44, v45);
    OUTLINED_FUNCTION_18_31(v3 + 2, v3[5]);
    v46 = OUTLINED_FUNCTION_8_8();
    v47(v46);
    __swift_project_boxed_opaque_existential_1(v80, v81);
    OUTLINED_FUNCTION_8_8();
    v48 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_65_15(v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_18_31(v3 + 2, v3[5]);
    v55 = OUTLINED_FUNCTION_8_8();
    v56(v55);
    v57 = v81;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    OUTLINED_FUNCTION_8_8();
    v58 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_65_15(v58, v59, v60, v61, v62, v63, v78, v79);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v64 = type metadata accessor for Logger();
    v65 = OUTLINED_FUNCTION_12_1(v64, static Logger.siriPhone);
    v66 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_29_28(v66))
    {
      v67 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v67);
      OUTLINED_FUNCTION_38_24(&dword_0, v68, v69, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0(v57);
    }

    OUTLINED_FUNCTION_28_24();
    specialized ForeignEmergencyButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(v70, v71, v72, v73, v74, v75, v76, v77);
  }

  OUTLINED_FUNCTION_60_15();
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2, a3, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

{
  return specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2, a3, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_102_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  v91 = v11;
  v95 = v13;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  HIDWORD(v87) = v15;
  *(v16 + 41) = BYTE1(v15) & 1;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  v17 = v4[4];
  v18 = v4[5];
  OUTLINED_FUNCTION_28_0(v4 + 1, v17);
  v19 = *(v18 + 8);

  v19(&v105, v17, v18);
  v20 = *(&v106 + 1);
  OUTLINED_FUNCTION_2_101(&v105);
  v21 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_66_14(v21, v22, v23, v24, v25, v26, v27, v28, v83, v87, v91, v95, a2, a3);
  if (a2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v29 = type metadata accessor for Logger();
    v30 = OUTLINED_FUNCTION_12_1(v29, static Logger.siriPhone);
    v31 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_29_28(v31))
    {
      v32 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v32);
      OUTLINED_FUNCTION_13_7(&dword_0, v33, v4, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0(v20);
    }

    if (a1 >> 62)
    {
      type metadata accessor for SAAceView();

      _bridgeCocoaArray<A>(_:)();
      OUTLINED_FUNCTION_61();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SAAceView();
    }

    OUTLINED_FUNCTION_43_26();
    v34 = OUTLINED_FUNCTION_49_23();
    OUTLINED_FUNCTION_62_20(v34, v35, v36, v37, v38, v39, v40, v41, v84, v88, v92, v96, v99, v102, v9);
  }

  else
  {
    OUTLINED_FUNCTION_16_48(v4 + 1);
    v43 = OUTLINED_FUNCTION_25_0();
    v44(v43);
    OUTLINED_FUNCTION_2_101(&v105);
    v45 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_66_14(v45, v46, v47, v48, v49, v50, v51, v52, v84, v88, v92, v96, v99, v102);
    OUTLINED_FUNCTION_16_48(v4 + 1);
    v53 = OUTLINED_FUNCTION_25_0();
    v54(v53);
    OUTLINED_FUNCTION_2_101(&v105);
    v55 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_66_14(v55, v56, v57, v58, v59, v60, v61, v62, v85, v89, v93, v97, v100, v103);
    OUTLINED_FUNCTION_16_48(v4 + 1);
    v63 = OUTLINED_FUNCTION_25_0();
    v64(v63);
    v65 = *(&v106 + 1);
    OUTLINED_FUNCTION_2_101(&v105);
    v66 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_66_14(v66, v67, v68, v69, v70, v71, v72, v73, v86, v90, v94, v98, v101, v104);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v74 = type metadata accessor for Logger();
    v75 = OUTLINED_FUNCTION_12_1(v74, static Logger.siriPhone);
    v76 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v76))
    {
      v77 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v77);
      OUTLINED_FUNCTION_13_7(&dword_0, v78, v76, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0(v65);
    }

    v79 = *v4;
    outlined init with copy of FaceTimeSettingsBuilder(v4, &v105);
    v80 = swift_allocObject();
    v81 = v106;
    *(v80 + 16) = v105;
    *(v80 + 32) = v81;
    *(v80 + 48) = v107;
    *(v80 + 64) = v108;
    *(v80 + 72) = a1;
    *(v80 + 80) = closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)partial apply;
    *(v80 + 88) = v16;
    v82 = *(*v79 + class metadata base offset for PhoneCallBaseCatTemplatingService + 120);

    v82(partial apply for closure #1 in FaceTimeSettingsBuilder.makeViewsForIOS(utteranceViews:_:), v80);
  }
}

{
  return specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2, a3, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_102_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  v169 = v12;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 41) = HIBYTE(v14) & 1;
  v186 = a2;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v17 = v4[6];
  v16 = v4[7];
  OUTLINED_FUNCTION_28_0(v4 + 3, v17);
  v18 = *(v16 + 8);
  swift_retain_n();
  swift_retain_n();
  v18(&v196, v17, v16);
  v19 = *(&v197 + 1);
  __swift_project_boxed_opaque_existential_1(&v196, *(&v197 + 1));
  OUTLINED_FUNCTION_13_52();
  v20 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_63_13(v20, v21, v22, v23, v24, v25, v26, v27, v160, v169, v10, v186);
  if (v19)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v28 = type metadata accessor for Logger();
    v29 = OUTLINED_FUNCTION_12_1(v28, static Logger.siriPhone);
    v30 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v30))
    {
      v31 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v31);
      OUTLINED_FUNCTION_26_30(&dword_0, v32, v33, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0(v19);
    }

    OUTLINED_FUNCTION_40_26(v34, v35, v36, v37, v38, v39, v40, v41, v161, v170, v178, v187);
    OUTLINED_FUNCTION_39_23();
    swift_allocObject();
    OUTLINED_FUNCTION_1_103();
    *(v42 + 16) = v43;
    *(v42 + 24) = v15;
    OUTLINED_FUNCTION_9_64(v42, v44, v45, v46, v47, v48, v49, v50, v162, v171, v179, v188, a1, v8, v196, v197, v198, v199);

    v51 = _s27PhoneCallFlowDelegatePlugin13ButtonBuilderV17makeViewsForWatch09utteranceI0_ySaySo26SAUIAssistantUtteranceViewCG_ys6ResultOySaySo05SAAceO0CGs5Error_pGctFyAJy07SiriKitC0010TemplatingP0VsAN_pGcfU_TA_0;
LABEL_13:
    (v16)(v51, v19);
  }

  OUTLINED_FUNCTION_18_31(v4 + 3, v4[6]);
  v52 = OUTLINED_FUNCTION_13_52();
  v53(v52);
  v19 = *(&v197 + 1);
  __swift_project_boxed_opaque_existential_1(&v196, *(&v197 + 1));
  OUTLINED_FUNCTION_13_52();
  v54 = dispatch thunk of DeviceState.isMac.getter();
  OUTLINED_FUNCTION_63_13(v54, v55, v56, v57, v58, v59, v60, v61, v161, v170, v178, v187);
  if (v19)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v62 = type metadata accessor for Logger();
    v63 = OUTLINED_FUNCTION_12_1(v62, static Logger.siriPhone);
    v64 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v64))
    {
      v65 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v65);
      OUTLINED_FUNCTION_26_30(&dword_0, v66, v67, "#IdiomSensitiveViewBuilder: Building views for Mac");
      OUTLINED_FUNCTION_26_0(v19);
    }

    OUTLINED_FUNCTION_40_26(v68, v69, v70, v71, v72, v73, v74, v75, v163, v172, v180, v189);
    OUTLINED_FUNCTION_39_23();
    swift_allocObject();
    OUTLINED_FUNCTION_1_103();
    *(v76 + 16) = v77;
    *(v76 + 24) = v15;
    OUTLINED_FUNCTION_9_64(v76, v78, v79, v80, v81, v82, v83, v84, v164, v173, v181, v190, a1, v8, v196, v197, v198, v199);

    v51 = closure #1 in ButtonBuilder.makeViewsForIOS(utteranceViews:_:)partial apply;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_18_31(v4 + 3, v4[6]);
  v86 = OUTLINED_FUNCTION_13_52();
  v87(v86);
  v88 = *(&v197 + 1);
  __swift_project_boxed_opaque_existential_1(&v196, *(&v197 + 1));
  OUTLINED_FUNCTION_13_52();
  v89 = dispatch thunk of DeviceState.isCarPlay.getter();
  OUTLINED_FUNCTION_63_13(v89, v90, v91, v92, v93, v94, v95, v96, v163, v172, v180, v189);
  if ((v88 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_31(v4 + 3, v4[6]);
    v104 = OUTLINED_FUNCTION_13_52();
    v105(v104);
    v19 = *(&v197 + 1);
    __swift_project_boxed_opaque_existential_1(&v196, *(&v197 + 1));
    OUTLINED_FUNCTION_13_52();
    v106 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_63_13(v106, v107, v108, v109, v110, v111, v112, v113, v165, v174, v182, v191);
    if (v19)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v114 = type metadata accessor for Logger();
      v115 = OUTLINED_FUNCTION_12_1(v114, static Logger.siriPhone);
      v116 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_16_4(v116))
      {
        v117 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_53_0(v117);
        OUTLINED_FUNCTION_26_30(&dword_0, v118, v119, "#IdiomSensitiveViewBuilder: Building views for AppleTV");
        OUTLINED_FUNCTION_26_0(v19);
      }

      OUTLINED_FUNCTION_40_26(v120, v121, v122, v123, v124, v125, v126, v127, v166, v175, v183, v192);
      OUTLINED_FUNCTION_39_23();
      swift_allocObject();
      OUTLINED_FUNCTION_1_103();
      *(v128 + 16) = v129;
      *(v128 + 24) = v15;
      OUTLINED_FUNCTION_9_64(v128, v130, v131, v132, v133, v134, v135, v136, v167, v176, v184, v193, a1, v8, v196, v197, v198, v199);

      v51 = _s27PhoneCallFlowDelegatePlugin13ButtonBuilderV14makeViewsForTV09utteranceI0_ySaySo26SAUIAssistantUtteranceViewCG_ys6ResultOySaySo05SAAceO0CGs5Error_pGctFyAJy07SiriKitC0010TemplatingP0VsAN_pGcfU_TA_0;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v137 = type metadata accessor for Logger();
      v138 = OUTLINED_FUNCTION_12_1(v137, static Logger.siriPhone);
      v139 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_16_4(v139))
      {
        v140 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_53_0(v140);
        OUTLINED_FUNCTION_26_30(&dword_0, v141, v142, "#IdiomSensitiveViewBuilder: Building views for IOS");
        OUTLINED_FUNCTION_26_0(v19);
      }

      OUTLINED_FUNCTION_40_26(v143, v144, v145, v146, v147, v148, v149, v150, v166, v175, v183, v192);
      OUTLINED_FUNCTION_39_23();
      swift_allocObject();
      OUTLINED_FUNCTION_1_103();
      *(v151 + 16) = v152;
      *(v151 + 24) = v15;
      OUTLINED_FUNCTION_9_64(v151, v153, v154, v155, v156, v157, v158, v159, v168, v177, v185, v194, a1, v8, v196, v197, v198, v199);

      v51 = _s27PhoneCallFlowDelegatePlugin13ButtonBuilderV15makeViewsForIOS09utteranceI0_ySaySo26SAUIAssistantUtteranceViewCG_ys6ResultOySaySo05SAAceO0CGs5Error_pGctFyAJy07SiriKitC0010TemplatingP0VsAN_pGcfU_TA_0;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v97 = type metadata accessor for Logger();
  v98 = OUTLINED_FUNCTION_12_1(v97, static Logger.siriPhone);
  v99 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_43(v99))
  {
    v100 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_53_0(v100);
    _os_log_impl(&dword_0, v98, v4, "#IdiomSensitiveViewBuilder: Building views for CarPlay", v88, 2u);
    OUTLINED_FUNCTION_26_0(v88);
  }

  if (a1 >> 62)
  {
    type metadata accessor for SAAceView();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for SAAceView();
  }

  v101 = OUTLINED_FUNCTION_49_23();
  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v101, v102, v8, v182, v174, v103, v191);
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)()
{
  OUTLINED_FUNCTION_47_22();
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v1 = OUTLINED_FUNCTION_8_64();
  v2(v1);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  OUTLINED_FUNCTION_2();
  v3 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_46_22(v3, v4);
  if (v0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_12_1(v5, static Logger.siriPhone);
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v7))
    {
      v8 = OUTLINED_FUNCTION_65_0();
      *v8 = 0;
      OUTLINED_FUNCTION_61_19(&dword_0, v9, v10, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0(v8);
    }

    v11 = CallRecordTableSnippetBuilder.makeItemGroup()();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
    v13 = OUTLINED_FUNCTION_8_64();
    v14(v13);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    OUTLINED_FUNCTION_2();
    v15 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_46_22(v15, v16);
    __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
    v17 = OUTLINED_FUNCTION_8_64();
    v18(v17);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    OUTLINED_FUNCTION_2();
    v19 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_46_22(v19, v20);
    __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
    v21 = OUTLINED_FUNCTION_8_64();
    v22(v21);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    OUTLINED_FUNCTION_2();
    v23 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_46_22(v23, v24);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v25 = type metadata accessor for Logger();
    v26 = OUTLINED_FUNCTION_12_1(v25, static Logger.siriPhone);
    v27 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v27))
    {
      v28 = OUTLINED_FUNCTION_65_0();
      *v28 = 0;
      OUTLINED_FUNCTION_61_19(&dword_0, v29, v30, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0(v28);
    }

    v11 = CallRecordTableSnippetBuilder.makeCardSnippet()();
  }

  OUTLINED_FUNCTION_41_29(v11);
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  OUTLINED_FUNCTION_47_22();
  v9 = v8;
  v104 = v10;
  v105 = v11;
  HIDWORD(v100) = v12;
  v13 = v4[9];
  v14 = v4[10];
  OUTLINED_FUNCTION_28_0(v4 + 6, v13);
  v15 = *(v14 + 8);
  OUTLINED_FUNCTION_60_15();
  swift_retain_n();
  swift_retain_n();
  v15(v106, v13, v14);
  __swift_project_boxed_opaque_existential_1(v106, v107);
  OUTLINED_FUNCTION_8_8();
  v16 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_45_17(v16, v17, v18, v19, v20, v21, v22, v23, v96, v100);
  if (v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v24 = type metadata accessor for Logger();
    v25 = OUTLINED_FUNCTION_12_1(v24, static Logger.siriPhone);
    v26 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_19_9(v26))
    {
      v27 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v27);
      OUTLINED_FUNCTION_47_1(&dword_0, v28, v29, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_35();
    }

    SiriKitDisambiguationList.disambiguationItems.getter();
    v30 = v6[10];
    __swift_project_boxed_opaque_existential_1(v6 + 6, v6[9]);
    v31 = OUTLINED_FUNCTION_7_66();
    v32(v31, v30);
    OUTLINED_FUNCTION_28_0(v106, v107);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v33 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)();

    __swift_destroy_boxed_opaque_existential_1(v106);
    type metadata accessor for SiriKitAceViewBuilder();
    v34 = v6[10];
    __swift_project_boxed_opaque_existential_1(v6 + 6, v6[9]);
    v35 = OUTLINED_FUNCTION_7_66();
    v36(v35, v34);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v106);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();
    OUTLINED_FUNCTION_65_13();
    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();
    OUTLINED_FUNCTION_61();

    dispatch thunk of SiriKitAceViewBuilder.build()();
    OUTLINED_FUNCTION_65_13();
    OUTLINED_FUNCTION_43_26();
    OUTLINED_FUNCTION_27_31();
    closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v47, v48, v49, v50, v51, v52, v53);

LABEL_8:

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_31(v4 + 6, v4[9]);
  v37 = OUTLINED_FUNCTION_8_8();
  v38(v37);
  __swift_project_boxed_opaque_existential_1(v106, v107);
  OUTLINED_FUNCTION_8_8();
  v39 = dispatch thunk of DeviceState.isMac.getter();
  OUTLINED_FUNCTION_45_17(v39, v40, v41, v42, v43, v44, v45, v46, v97, v101);
  OUTLINED_FUNCTION_18_31(v4 + 6, v4[9]);
  v55 = OUTLINED_FUNCTION_8_8();
  v56(v55);
  __swift_project_boxed_opaque_existential_1(v106, v107);
  OUTLINED_FUNCTION_8_8();
  v57 = dispatch thunk of DeviceState.isCarPlay.getter();
  OUTLINED_FUNCTION_45_17(v57, v58, v59, v60, v61, v62, v63, v64, v98, v102);
  if (v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v65 = type metadata accessor for Logger();
    v66 = OUTLINED_FUNCTION_12_1(v65, static Logger.siriPhone);
    v67 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_19_9(v67))
    {
      v68 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v68);
      OUTLINED_FUNCTION_47_1(&dword_0, v69, v70, "#IdiomSensitiveViewBuilder: Building views for CarPlay");
      OUTLINED_FUNCTION_35();
    }

    SiriKitDisambiguationList.disambiguationItems.getter();
    v71 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_426260;
    *(v72 + 32) = v71;
    if (a1 >> 62)
    {
      OUTLINED_FUNCTION_37_25();
      v94 = v71;

      v95 = _bridgeCocoaArray<A>(_:)();

      a1 = v95;
    }

    else
    {
      v73 = v71;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SAAceView();
    }

    v106[0] = v72;
    specialized Array.append<A>(contentsOf:)(a1);
    OUTLINED_FUNCTION_43_26();
    v74 = OUTLINED_FUNCTION_49_23();
    closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v74, v75, v9, v104, v105, v76, v77);

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_18_31(v4 + 6, v4[9]);
  v78 = OUTLINED_FUNCTION_8_8();
  v79(v78);
  __swift_project_boxed_opaque_existential_1(v106, v107);
  OUTLINED_FUNCTION_8_8();
  v80 = dispatch thunk of DeviceState.isAppleTV.getter();
  OUTLINED_FUNCTION_45_17(v80, v81, v82, v83, v84, v85, v86, v87, v99, v103);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v88 = type metadata accessor for Logger();
  v89 = OUTLINED_FUNCTION_12_1(v88, static Logger.siriPhone);
  v90 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_19_9(v90))
  {
    v91 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_102(v91);
    OUTLINED_FUNCTION_47_1(&dword_0, v92, v93, "#IdiomSensitiveViewBuilder: Building views for IOS");
    OUTLINED_FUNCTION_35();
  }

  OUTLINED_FUNCTION_43_26();
  OUTLINED_FUNCTION_27_31();
  a4();

LABEL_9:

  OUTLINED_FUNCTION_60_15();
}

uint64_t SearchCallHistoryAceViewProvider.__allocating_init(templatingService:sharedGlobals:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_9_10();
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_3_5(v5, v10);
  v7(v6);
  v8 = OUTLINED_FUNCTION_44_17();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v8;
}

uint64_t SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_9_10();
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_3_5(v5, v10);
  v7(v6);
  v8 = OUTLINED_FUNCTION_44_17();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v8;
}

uint64_t SearchCallHistoryAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v17 = type metadata accessor for CATOption();
  __chkstk_darwin(v17 - 8);

  v18._countAndFlagsBits = a2;
  v18._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v18).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_recipient)
  {
    v29 = a7;
    v30 = v9;
    v28 = direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals;
    type metadata accessor for PhoneCallDisplayTextCATs(0);
    static CATOption.defaultMode.getter();
    v19 = CATWrapper.__allocating_init(options:globals:)();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v20 = type metadata accessor for Logger();
    v21 = OUTLINED_FUNCTION_12_1(v20, static Logger.siriPhone);
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v23);
      OUTLINED_FUNCTION_20_39(&dword_0, v24, v22, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder");
      OUTLINED_FUNCTION_26_0(v19);
    }

    outlined init with copy of SignalProviding(v30 + v28, v34);
    v32[0] = a1;
    v32[1] = a4;
    v32[2] = a2;
    v32[3] = a3;
    v32[4] = a6;
    v33 = v29 & 1;
    v34[5] = v19;

    v25 = a4;

    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, a8, a9, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
    return outlined destroy of DefaultDisambiguationBuilder<INSearchCallHistoryIntent>(v32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22DefaultAceViewProviderCySo25INSearchCallHistoryIntentCSo0hijK8ResponseCGMd, &_s11SiriKitFlow22DefaultAceViewProviderCySo25INSearchCallHistoryIntentCSo0hijK8ResponseCGMR);
    v27 = method lookup function for DefaultAceViewProvider();

    return v27(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9);
  }
}

uint64_t SearchCallHistoryAceViewProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3)
{
  outlined init with copy of SignalProviding(v3 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals, &v11);
  outlined init with copy of SignalProviding(v3 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder, &v12);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;

  v7 = a2;
  v8 = a3;
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)();
  return outlined destroy of CallRecordTableSnippetBuilder(v10);
}

uint64_t SearchCallHistoryAceViewProvider.makeAceViewsForLaunchAppWithButton(app:intent:intentResolutionResult:intentResponse:utteranceViews:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(v7 + direct field offset for SearchCallHistoryAceViewProvider.templatingService);
  v18[3] = type metadata accessor for SearchCallHistoryTemplatingService(0);
  v18[4] = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;

  v14 = [a2 preferredCallProvider];
  static SCHViewBuilders.makeErrorButtonBuilder(templatingService:app:preferredCallProvider:sharedGlobals:)(v18, a1, v14, (v7 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals), v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v15 = v20;
  v16 = v21;
  OUTLINED_FUNCTION_28_0(v19, v20);
  (*(v16 + 8))(a5, a6, a7, v15, v16);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t SearchCallHistoryAceViewProvider.__ivar_destroyer()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals));
  v1 = (v0 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t SearchCallHistoryAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder));
  return v0;
}

uint64_t SearchCallHistoryAceViewProvider.__deallocating_deinit()
{
  SearchCallHistoryAceViewProvider.deinit();
  OUTLINED_FUNCTION_39_23();

  return swift_deallocClassInstance();
}

uint64_t specialized SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a5;
  v14[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + direct field offset for SearchCallHistoryAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a2, a4 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals);
  outlined init with copy of SignalProviding(v14, a4 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder);
  v12 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

uint64_t outlined destroy of DefaultDisambiguationBuilder<INSearchCallHistoryIntent>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo08INSearchB13HistoryIntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo08INSearchB13HistoryIntentCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SearchCallHistoryAceViewProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryAceViewProvider;
  if (!type metadata singleton initialization cache for SearchCallHistoryAceViewProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for SAAceView()
{
  result = lazy cache variable for type metadata for SAAceView;
  if (!lazy cache variable for type metadata for SAAceView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAAceView);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  OUTLINED_FUNCTION_39_23();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t objectdestroyTm_11()
{

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v0, v1, v2);
}

void OUTLINED_FUNCTION_26_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

BOOL OUTLINED_FUNCTION_29_28(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_36_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

unint64_t OUTLINED_FUNCTION_37_25()
{

  return type metadata accessor for SAAceView();
}

void OUTLINED_FUNCTION_38_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_40_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return outlined init with copy of ButtonBuilder(v12, va);
}

uint64_t OUTLINED_FUNCTION_45_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

void OUTLINED_FUNCTION_47_22()
{

  static Signpost.begin(_:)();
}

void *OUTLINED_FUNCTION_56_11(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(__srca, a14);
  __src = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v15 = (a1 + 32);

  return memcpy(v15, __srca, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_64_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_65_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_66_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t SearchCallHistoryBaseFlowStrategy.__allocating_init(sharedGlobals:responseGenerator:searchCallCatPatterns:appInfoBuilder:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  SearchCallHistoryBaseFlowStrategy.init(sharedGlobals:responseGenerator:searchCallCatPatterns:appInfoBuilder:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SearchCallHistoryBaseFlowStrategy.init(sharedGlobals:responseGenerator:searchCallCatPatterns:appInfoBuilder:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  outlined init with take of SPHConversation(a1, v4 + 16);
  outlined init with take of SPHConversation(a3, v4 + 56);
  outlined init with take of SPHConversation(a2, v4 + 96);
  outlined init with take of SPHConversation(a4, v4 + 136);
  return v4;
}

uint64_t SearchCallHistoryBaseFlowStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v5 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#SearchCallHistoryBaseFlowStrategy makeIntentHandledResponse should be overridden", v11, 2u);
  }

  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_11(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  v12 = swift_allocError();
  PhoneError.logged()(v13);
  outlined destroy of PhoneError(v7);
  v15[0] = v12;
  v16 = 1;
  a4(v15);
  return outlined destroy of Result<Output, Error>(v15);
}

void *SearchCallHistoryBaseFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  return v0;
}

uint64_t SearchCallHistoryBaseFlowStrategy.__deallocating_deinit()
{
  SearchCallHistoryBaseFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_11(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void (*SearchCallHistoryBinaryButtonModel.primaryText.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v2[4] = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t property wrapper backing initializer of SearchCallHistoryBinaryButtonModel.primaryAction(uint64_t a1)
{
  type metadata accessor for SABaseClientBoundCommand();

  return CodableAceObject.init(wrappedValue:)();
}

unint64_t type metadata accessor for SABaseClientBoundCommand()
{
  result = lazy cache variable for type metadata for SABaseClientBoundCommand;
  if (!lazy cache variable for type metadata for SABaseClientBoundCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseClientBoundCommand);
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.primaryAction.getter()
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchCallHistoryBinaryButtonModel;
  if (!type metadata singleton initialization cache for SearchCallHistoryBinaryButtonModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.primaryAction.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SearchCallHistoryBinaryButtonModel.primaryAction.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_76(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryText.getter()
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for SearchCallHistoryBinaryButtonModel.secondaryText : SearchCallHistoryBinaryButtonModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchCallHistoryBinaryButtonModel.secondaryText.setter(v1, v2);
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

void (*SearchCallHistoryBinaryButtonModel.secondaryText.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_76(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryAction.getter()
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryAction.setter(uint64_t a1)
{
  type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*SearchCallHistoryBinaryButtonModel.secondaryAction.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_76(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.responseViewId.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel(0) + 32));

  return v1;
}

uint64_t SearchCallHistoryBinaryButtonModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void SearchCallHistoryBinaryButtonModel.init(primaryText:primaryAction:secondaryText:secondaryAction:)(void *a3@<X2>, uint64_t a7@<X8>)
{
  v8 = (a7 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel(0) + 32));
  *v8 = 0xD000000000000021;
  v8[1] = 0x8000000000456CA0;
  Loggable.init(wrappedValue:)();
  type metadata accessor for SABaseClientBoundCommand();
  v9 = a3;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  CodableAceObject.init(wrappedValue:)();
}

uint64_t SearchCallHistoryBinaryButtonModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x547972616D697270 && a2 == 0xEB00000000747865;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t SearchCallHistoryBinaryButtonModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x547972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x417972616D697270;
      break;
    case 2:
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 4:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchCallHistoryBinaryButtonModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchCallHistoryBinaryButtonModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchCallHistoryBinaryButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE24HistoryBinaryButtonModelV10CodingKeys33_6699B77160E9E8CEC219BB3B249C7119LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE24HistoryBinaryButtonModelV10CodingKeys33_6699B77160E9E8CEC219BB3B249C7119LLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  _s10SnippetKit8LoggableVySSGACyxGSEAASeRzSERzlWlTm_0(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, &protocol conformance descriptor for <A> Loggable<A>);
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16[3] = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
    v20 = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    v12 = lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
    v13 = v3;
    v14 = v12;
    v16[2] = v13;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[0] = v14;
    v16[1] = v11;
    v19 = 2;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = 3;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = 4;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  OUTLINED_FUNCTION_7();
  v53 = v3;
  __chkstk_darwin(v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_7();
  v54 = v9;
  __chkstk_darwin(v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = &v44 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE24HistoryBinaryButtonModelV10CodingKeys33_6699B77160E9E8CEC219BB3B249C7119LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE24HistoryBinaryButtonModelV10CodingKeys33_6699B77160E9E8CEC219BB3B249C7119LLOGMR);
  OUTLINED_FUNCTION_7();
  v57 = v15;
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  __chkstk_darwin(v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();
  v59 = v18;
  v22 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v55;
  v49 = v12;
  v50 = v19;
  v24 = v21;
  v61 = a1;
  v25 = v58;
  v66 = 0;
  v26 = _s10SnippetKit8LoggableVySSGACyxGSEAASeRzSERzlWlTm_0(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, &protocol conformance descriptor for <A> Loggable<A>);
  v27 = v56;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v26;
  v28 = v8;
  v29 = *(v54 + 32);
  v48 = v24;
  v29(v24, v27, v28);
  v65 = 1;
  lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
  v30 = v23;
  v31 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v28;
  v45 = v29;
  v32 = (v53 + 32);
  v33 = *(v53 + 32);
  v33(v48 + v50[5], v30, v31);
  v64 = 2;
  v34 = v49;
  v56 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v33;
  v55 = v32;
  v45(v48 + v50[6], v34, v28);
  v63 = 3;
  v35 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v31;
  v37 = v57;
  v38 = v48;
  v46(v48 + v50[7], v35, v36);
  v62 = 4;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v40;
  v42 = (v38 + v50[8]);
  (*(v37 + 8))(v59, v60);
  *v42 = v39;
  v42[1] = v41;
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v38, v51);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return outlined destroy of SearchCallHistoryBinaryButtonModel(v38);
}

uint64_t _s10SnippetKit8LoggableVySSGACyxGSEAASeRzSERzlWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryBinaryButtonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel, &protocol conformance descriptor for SearchCallHistoryBinaryButtonModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  type metadata accessor for Loggable<String>();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SABaseClientBoundCommand>(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void type metadata accessor for CodableAceObject<SABaseClientBoundCommand>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableAceObject<SABaseClientBoundCommand>)
  {
    type metadata accessor for SABaseClientBoundCommand();
    v1 = type metadata accessor for CodableAceObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CodableAceObject<SABaseClientBoundCommand>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryBinaryButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

NSObject *static SearchCallHistoryCatParameterHelper.getFormattedContactsAsList(app:intent:intentResponse:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  if (!App.isFirstParty()())
  {
    v13 = [a2 recipient];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for PhonePerson(0);
      v15 = v14;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_17_44();
      v19 = static PhonePerson.make(phonePerson:options:locale:)(v16, v17, v18);

      (*(v7 + 8))(v11, v5);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_426260;
        *(v20 + 32) = v19;

        return v20;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(a2, a3);
}

uint64_t PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(void *a1, uint64_t a2)
{
  v48 = a2;
  v51 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = &v47 - v13;
  v50 = a1;
  [a1 callTypes];
  OUTLINED_FUNCTION_19_6();
  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v16 = (v15 + 16);
  OUTLINED_FUNCTION_1_105(v15);
  v54 = 1107296256;
  OUTLINED_FUNCTION_4_77();
  v55 = v17;
  v56 = &block_descriptor_8;
  v18 = _Block_copy(&aBlock);

  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v18);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v19 = *v16;

  v20 = *(v19 + 16);
  v49 = v14;
  if (v20)
  {
    aBlock = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_11_54();
    v21 = aBlock;
    v47 = v19;
    v22 = v19 + 40;
    do
    {

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      aBlock = v21;
      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_76(v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v24 + 1, 1);
        v21 = aBlock;
      }

      v21[2] = v24 + 1;
      OUTLINED_FUNCTION_19_1();
      (*(v4 + 32))(v21 + v25 + *(v4 + 72) * v24, v10, v51);
      v22 += 16;
      --v20;
    }

    while (v20);

    v14 = v49;
    v27 = v50;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
    v27 = v50;
  }

  if (![v27 preferredCallProvider])
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_19;
  }

  v28 = INPreferredCallProviderGetBackingType();
  switch(v28)
  {
    case 4:
      v29 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v29 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v29 = @"TELEPHONY_PROVIDER";
      break;
    default:
      v29 = [NSString stringWithFormat:@"(unknown: %i)", v28];
      goto LABEL_18;
  }

  v30 = v29;
LABEL_18:
  v31 = v29;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_19:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v51);
  [v27 callCapabilities];
  OUTLINED_FUNCTION_19_6();
  v32 = swift_allocObject();
  *(v32 + 16) = _swiftEmptyArrayStorage;
  v33 = (v32 + 16);
  OUTLINED_FUNCTION_1_105(v32);
  v54 = 1107296256;
  OUTLINED_FUNCTION_3_96();
  v55 = v34;
  v56 = &block_descriptor_4_0;
  v35 = _Block_copy(&aBlock);

  INCallCapabilityOptionsEnumerateBackingTypes();
  _Block_release(v35);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v36 = *v33;

  v37 = *(v36 + 16);
  if (v37)
  {
    v52 = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_11_54();
    v38 = v52;
    v47 = v36;
    v39 = v36 + 40;
    do
    {

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      v52 = v38;
      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v43 = OUTLINED_FUNCTION_76(v40);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43, v41 + 1, 1);
        v38 = v52;
      }

      v38[2] = v41 + 1;
      OUTLINED_FUNCTION_19_1();
      (*(v4 + 32))(v38 + v42 + *(v4 + 72) * v41, v7, v51);
      v39 += 16;
      --v37;
    }

    while (v37);

    v44 = v49;
    v27 = v50;
  }

  else
  {

    v38 = _swiftEmptyArrayStorage;
    v44 = v14;
  }

  v45 = PhoneSearchCallHistoryIntent.__allocating_init(callTypes:preferredCallProvider:callCapabilities:recipient:)(v21, v44, v38, v48);

  return v45;
}

uint64_t PhoneSearchCallHistoryIntent.__allocating_init(intent:)(id a1)
{
  v65 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v61 = v2;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v64 = v5 - v4;
  v67 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v62 = &v60 - v16;
  [a1 callTypes];
  OUTLINED_FUNCTION_19_6();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = (v17 + 16);
  OUTLINED_FUNCTION_2_102(v17);
  v70 = 1107296256;
  OUTLINED_FUNCTION_4_77();
  v71 = v19;
  v72 = &block_descriptor_9_0;
  v20 = _Block_copy(&aBlock);

  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v20);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v21 = *v18;

  v22 = *(v21 + 16);
  v63 = a1;
  v66 = _swiftEmptyArrayStorage;
  if (v22)
  {
    aBlock = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_11_54();
    v23 = aBlock;
    OUTLINED_FUNCTION_21_39();
    do
    {

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      aBlock = v23;
      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        v27 = OUTLINED_FUNCTION_76(v24);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27, v25 + 1, 1);
        v23 = aBlock;
      }

      v23[2] = v25 + 1;
      OUTLINED_FUNCTION_19_1();
      (*(v7 + 32))(v23 + v26 + *(v7 + 72) * v25, v13, v67);
      v21 += 16;
      --v22;
    }

    while (v22);

    a1 = v63;
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
  }

  if (![a1 preferredCallProvider])
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_19;
  }

  v28 = INPreferredCallProviderGetBackingType();
  if (v28 == 4)
  {
    v29 = @"THIRD_PARTY_PROVIDER";
  }

  else
  {
    if (v28 != 3)
    {
      if (v28 == 2)
      {
        v29 = @"TELEPHONY_PROVIDER";
        v30 = @"TELEPHONY_PROVIDER";
      }

      else
      {
        v29 = [NSString stringWithFormat:@"(unknown: %i)", v28];
      }

      goto LABEL_18;
    }

    v29 = @"FACETIME_PROVIDER";
  }

  v31 = v29;
LABEL_18:
  v32 = v29;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_19:
  v33 = v62;
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v67);
  [a1 callCapabilities];
  OUTLINED_FUNCTION_19_6();
  v34 = swift_allocObject();
  *(v34 + 16) = _swiftEmptyArrayStorage;
  v35 = (v34 + 16);
  OUTLINED_FUNCTION_2_102(v34);
  v70 = 1107296256;
  OUTLINED_FUNCTION_3_96();
  v71 = v36;
  v72 = &block_descriptor_14;
  v37 = _Block_copy(&aBlock);

  INCallCapabilityOptionsEnumerateBackingTypes();
  _Block_release(v37);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v38 = *v35;

  v39 = *(v38 + 16);
  if (v39)
  {
    aBlock = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_11_54();
    v40 = aBlock;
    OUTLINED_FUNCTION_21_39();
    do
    {

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      aBlock = v40;
      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v44 = OUTLINED_FUNCTION_76(v41);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44, v42 + 1, 1);
        v40 = aBlock;
      }

      v40[2] = v42 + 1;
      OUTLINED_FUNCTION_19_1();
      (*(v7 + 32))(v40 + v43 + *(v7 + 72) * v42, v10, v67);
      v38 += 16;
      --v39;
    }

    while (v39);

    a1 = v63;
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8INPersonCSgGMd, &_ss23_ContiguousArrayStorageCySo8INPersonCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  v46 = [a1 recipient];
  v67 = inited;
  v68 = _swiftEmptyArrayStorage;
  *(inited + 32) = v46;
  v47 = (v61 + 8);
  v48 = *(v67 + 32);
  type metadata accessor for PhonePerson(0);
  v49 = v48;
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&aBlock, v72);
  v50 = v64;
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  OUTLINED_FUNCTION_17_44();
  v54 = static PhonePerson.make(phonePerson:options:locale:)(v51, v52, v53);

  (*v47)(v50, v65);
  if (v54)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v55 = *(&dword_18 + (v68 & 0xFFFFFFFFFFFFFF8));
    if (*(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)) >= v55 >> 1)
    {
      v56 = OUTLINED_FUNCTION_76(v55);
      OUTLINED_FUNCTION_22_29(v56);
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v66 = v68;
  }

  type metadata accessor for PhonePersonList();
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v57 = PhonePersonList.__allocating_init(list:)(v66);
  v58 = PhoneSearchCallHistoryIntent.__allocating_init(callTypes:preferredCallProvider:callCapabilities:recipient:)(v23, v62, v40, v57);

  return v58;
}

NSObject *static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(void *a1, uint64_t a2)
{
  v124 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v123 = v9 - v8;
  v10 = [a1 recipient];
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v114 = v10;
  v12 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v10);
  if (!v12)
  {
LABEL_40:
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_41:
      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.siriPhone);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_19_9(v45))
      {
        v46 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_53_0(v46);
        OUTLINED_FUNCTION_6_75(&dword_0, v47, v48, "Formatting contacts with no siriMatches");
        OUTLINED_FUNCTION_4_5();
      }

      type metadata accessor for PhonePerson(0);
      v49 = v114;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v126, v127);
      OUTLINED_FUNCTION_13_53();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v126);
      OUTLINED_FUNCTION_17_44();
      v53 = static PhonePerson.make(phonePerson:options:locale:)(v50, v51, v52);

      (*(v6 + 8))(v2, v124);
      if (v53)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_426260;
        v11[4] = v53;
      }

      return v11;
    }

LABEL_122:
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    goto LABEL_41;
  }

  v13 = v12;
  v125 = specialized Array.count.getter(v12);
  if (!v125)
  {

    goto LABEL_40;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v15))
  {
    v16 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_53_0(v16);
    _os_log_impl(&dword_0, v2, v15, "Formatting contacts with multiple siriMatches", &dword_54B000, 2u);
    OUTLINED_FUNCTION_4_5();
  }

  v122 = v13;
  if (!a2 || (v17 = outlined bridged method (pb) of @objc INSearchCallHistoryIntentResponse.callRecords.getter(a2)) == 0)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_19_9(v31))
    {
      v32 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v32);
      OUTLINED_FUNCTION_6_75(&dword_0, v33, v34, "No callRecords found. Dialoguing about all SiriMatches without filtering.");
      OUTLINED_FUNCTION_4_5();
    }

    v35 = 0;
    v129 = _swiftEmptyArrayStorage;
    v117 = _swiftEmptyArrayStorage;
    v120 = v13 & 0xC000000000000001;
    v36 = v13 & 0xFFFFFFFFFFFFFF8;
    v11 = (v6 + 8);
    while (1)
    {
      if (v125 == v35)
      {

        return v117;
      }

      if (v120)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *(v36 + 16))
        {
          goto LABEL_111;
        }

        v37 = *(v13 + 8 * v35 + 32);
      }

      v38 = v37;
      v2 = (&v35->isa + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      v6 = v128;
      __swift_project_boxed_opaque_existential_1(v126, v127);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v126);
      v39 = static PhonePerson.make(phonePerson:options:locale:)(v38, 0, v123);

      v13 = v122;
      (*v11)(v123, v124);
      v35 = (v35 + 1);
      if (v39)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_8_65();
        if (v41)
        {
          v42 = OUTLINED_FUNCTION_76(v40);
          OUTLINED_FUNCTION_22_29(v42);
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v117 = v129;
        v35 = v2;
      }
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
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
    goto LABEL_122;
  }

  v18 = v17;
  v113 = v6;
  v19 = specialized Array.count.getter(v17);
  v6 = 0;
  v119 = _swiftEmptyArrayStorage;
  while (v19 != v6)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_113;
      }

      v20 = *(v18 + 8 * v6 + 32);
    }

    v21 = v20;
    v2 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_112;
    }

    v22 = [v20 caller];
    if (v22)
    {
      v23 = outlined bridged method (ob) of @objc INPerson.contactIdentifier.getter(v22);
      v11 = v24;

      if (!v11)
      {
        goto LABEL_24;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v119 = v28;
      }

      v26 = v119[2];
      v25 = v119[3];
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_76(v25);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v119 = v29;
      }

      v119[2] = v26 + 1;
      v27 = &v119[2 * v26];
      v27[4] = v23;
      v27[5] = v11;
      v6 = v2;
    }

    else
    {

LABEL_24:
      ++v6;
    }
  }

  v54 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v119);
  v55 = 0;
  v129 = _swiftEmptyArrayStorage;
  v2 = (v13 & 0xC000000000000001);
  v118 = v13 & 0xFFFFFFFFFFFFFF8;
  v56 = v13 + 32;
LABEL_48:
  while (v55 != v125)
  {
    if (v2)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v55 >= *(v118 + 16))
      {
        goto LABEL_115;
      }

      v57 = *(v56 + 8 * v55);
    }

    v6 = v57;
    if (__OFADD__(v55++, 1))
    {
      goto LABEL_114;
    }

    v59 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v57);
    if (v60)
    {
      v11 = v60;
      if (*(v54 + 16))
      {
        v61 = v59;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v62 = Hasher._finalize()();
        v63 = ~(-1 << *(v54 + 32));
        while (1)
        {
          v64 = v62 & v63;
          if (((*(v54 + 56 + (((v62 & v63) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v62 & v63)) & 1) == 0)
          {
            break;
          }

          v65 = (*(v54 + 48) + 16 * v64);
          if (*v65 != v61 || v11 != v65[1])
          {
            v67 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v62 = v64 + 1;
            if ((v67 & 1) == 0)
            {
              continue;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_48;
        }
      }
    }
  }

  v115 = v2;
  v6 = v129;
  v121 = specialized Array.count.getter(v129);
  v68 = 0;
  v116 = v129 & 0xC000000000000001;
  v11 = _swiftEmptyArrayStorage;
  v69 = _swiftEmptyArrayStorage;
  while (v121 != v68)
  {
    if (v116)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v68 >= *(v6 + 16))
      {
        goto LABEL_117;
      }

      v70 = *(v6 + 8 * v68 + 32);
    }

    v71 = v70;
    v2 = (&v68->isa + 1);
    if (__OFADD__(v68, 1))
    {
      goto LABEL_116;
    }

    v72 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v70);
    v74 = v73;

    v68 = (v68 + 1);
    if (v74)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v69 = v78;
      }

      v76 = v69[2];
      v75 = v69[3];
      if (v76 >= v75 >> 1)
      {
        OUTLINED_FUNCTION_76(v75);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v69 = v79;
      }

      v69[2] = v76 + 1;
      v77 = &v69[2 * v76];
      v77[4] = v72;
      v77[5] = v74;
      v68 = v2;
    }
  }

  v80 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v69);
  v81 = *(v54 + 16);

  v2 = *(v80 + 16);

  if (v81 == v2)
  {

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_19_9(v83))
    {
      v84 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v84);
      OUTLINED_FUNCTION_6_75(&dword_0, v85, v86, "Filtering for contacts with matching call records.");
      OUTLINED_FUNCTION_4_5();
    }

    v87 = 0;
    v117 = _swiftEmptyArrayStorage;
    v129 = _swiftEmptyArrayStorage;
    while (v121 != v87)
    {
      if (v116)
      {
        v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v87 >= *(v6 + 16))
        {
          goto LABEL_120;
        }

        v88 = *(v6 + 8 * v87 + 32);
      }

      v89 = v88;
      v11 = (v87 + 1);
      if (__OFADD__(v87, 1))
      {
        goto LABEL_118;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v126, v127);
      OUTLINED_FUNCTION_13_53();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v126);
      OUTLINED_FUNCTION_17_44();
      v93 = static PhonePerson.make(phonePerson:options:locale:)(v90, v91, v92);

      (*(v113 + 8))(v2, v124);
      ++v87;
      if (v93)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_8_65();
        if (v41)
        {
          v95 = OUTLINED_FUNCTION_76(v94);
          OUTLINED_FUNCTION_22_29(v95);
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v117 = v129;
        v87 = v11;
      }
    }

    return v117;
  }

  else
  {

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_19_9(v97))
    {
      v98 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v98);
      OUTLINED_FUNCTION_6_75(&dword_0, v99, v100, "Not all callRecord identifiers matched. Dialoguing about all SiriMatches without filtering.");
      OUTLINED_FUNCTION_4_5();
    }

    v101 = 0;
    v129 = _swiftEmptyArrayStorage;
    v102 = v115;
    while (v125 != v101)
    {
      if (v102)
      {
        v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v101 >= *(v118 + 16))
        {
          goto LABEL_121;
        }

        v103 = *(v122 + 8 * v101 + 32);
      }

      v104 = v103;
      v105 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_119;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      v6 = v128;
      __swift_project_boxed_opaque_existential_1(v126, v127);
      OUTLINED_FUNCTION_13_53();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v126);
      OUTLINED_FUNCTION_17_44();
      v109 = static PhonePerson.make(phonePerson:options:locale:)(v106, v107, v108);

      v102 = v115;
      (*(v113 + 8))(v2, v124);
      ++v101;
      if (v109)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_8_65();
        if (v41)
        {
          v111 = OUTLINED_FUNCTION_76(v110);
          OUTLINED_FUNCTION_22_29(v111);
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v129;
        v101 = v105;
      }
    }
  }

  return v11;
}

uint64_t outlined bridged method (ob) of @objc INPerson.contactIdentifier.getter(void *a1)
{
  v2 = [a1 contactIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATPatternsIdentifiers_optional __swiftcall SearchCallHistoryCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t SearchCallHistoryCATPatternsIdentifiers.rawValue.getter(char a1)
{
  result = 0xD00000000000002CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002ALL;
      break;
    case 2:
    case 3:
      result = 0xD000000000000029;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000034;
      break;
    case 8:
      result = 0xD00000000000002BLL;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000002DLL;
      break;
    case 13:
      result = 0xD000000000000030;
      break;
    case 14:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = SearchCallHistoryCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void SearchCallHistoryReadCannotFindCallRecordParameters.callRecordCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 20));
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.callRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.device.getter()
{
  return SearchCallHistoryReadCannotFindCallRecordParameters.device.getter();
}

{
  v0 = OUTLINED_FUNCTION_76_8();
  v1(v0);
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.device.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.intent.getter()
{
  type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(0);
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.intent.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadCannotFindCallRecordParameters.totalCallRecordCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 40));
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.totalCallRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  v4 = &v41 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_431D00;
  OUTLINED_FUNCTION_35_23();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  OUTLINED_FUNCTION_80_8();
  outlined init with copy of SpeakableString?(v9, v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v4);
  if (v13)
  {
    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    *(v5 + 72) = v12;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_80_8();
    v14();
  }

  OUTLINED_FUNCTION_3_97();
  OUTLINED_FUNCTION_59_13();
  v16 = OUTLINED_FUNCTION_78_10(v15);
  v17 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v16);
  OUTLINED_FUNCTION_64_14();
  if (v19)
  {
    v20 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v18;
    v20 = &type metadata for Double;
  }

  *(v5 + 96) = v21;
  *(v5 + 120) = v20;
  *(v5 + 128) = 0x656369766564;
  *(v5 + 136) = 0xE600000000000000;
  v22 = *(v0 + v17[6]);
  if (v22)
  {
    type metadata accessor for SirikitDeviceState();
    v23 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  *(v5 + 144) = v23;
  OUTLINED_FUNCTION_14_8();
  *(v5 + 168) = v24;
  *(v5 + 176) = v25;
  *(v5 + 184) = 0xE600000000000000;
  v26 = *(v0 + v17[7]);
  if (v26)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v27 = v26;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  *(v5 + 192) = v27;
  OUTLINED_FUNCTION_57_21();
  *(v5 + 216) = v29;
  *(v5 + 224) = v28 & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
  OUTLINED_FUNCTION_56_12();
  *(v5 + 232) = v30;
  *(v5 + 240) = *(v0 + v17[8]);
  OUTLINED_FUNCTION_27_2();
  *(v5 + 264) = v31;
  *(v5 + 272) = 0xD000000000000013;
  *(v5 + 280) = v32;
  *(v5 + 288) = *(v0 + v17[9]);
  OUTLINED_FUNCTION_27_2();
  *(v5 + 312) = v34;
  *(v5 + 320) = v33 + 1;
  *(v5 + 328) = v35;
  OUTLINED_FUNCTION_64_14();
  if (v37)
  {
    v38 = 0;
    *(v5 + 344) = 0;
    *(v5 + 352) = 0;
    v39 = 0;
  }

  else
  {
    v39 = *v36;
    v38 = &type metadata for Double;
  }

  *(v5 + 336) = v39;
  *(v5 + 360) = v38;

  return OUTLINED_FUNCTION_96_4();
}

void SearchCallHistoryReadCannotFindCallRecordParameters.init(appName:callRecordCount:device:intent:isFirstPartyApp:isShowingMissedCall:totalCallRecordCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_66();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  outlined init with take of SpeakableString?(v37, v35);
  v38 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(0);
  v39 = v36 + v38[5];
  *v39 = v34;
  *(v39 + 8) = v32 & 1;
  *(v36 + v38[6]) = v30;
  *(v36 + v38[7]) = v28;
  *(v36 + v38[8]) = v26;
  *(v36 + v38[9]) = v24;
  v40 = v36 + v38[10];
  *v40 = v22;
  *(v40 + 8) = a21 & 1;
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.newRecordsCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.savedRecordsCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void SearchCallHistoryReadCannotFindVoicemailParameters.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.init(intent:newRecordsCount:savedRecordsCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.appName.getter()
{
  return SearchCallHistoryReadMultipleCallRecordsParameters.appName.getter();
}

{
  v0 = OUTLINED_FUNCTION_29_7();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, *(v2 + 20));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.appName.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.getter()
{
  return SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.getter();
}

{
  v0 = OUTLINED_FUNCTION_76_8();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_57_16(*(v2 + 24));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

double SearchCallHistoryReadMultipleCallRecordsParameters.callRecords.getter()
{
  return SearchCallHistoryReadMultipleCallRecordsParameters.callRecords.getter();
}

{
  v0 = OUTLINED_FUNCTION_76_8();
  v1(v0);

  return result;
}

double SearchCallHistoryReadMultipleCallRecordsParameters.callRecordsItem1.getter()
{
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);

  return result;
}

double SearchCallHistoryReadMultipleCallRecordsParameters.callRecordsItem2.getter()
{
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);

  return result;
}

double SearchCallHistoryReadMultipleCallRecordsParameters.callRecordsItem3.getter()
{
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);

  return result;
}

double SearchCallHistoryReadMultipleCallRecordsParameters.callRecordsItem4.getter()
{
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);

  return result;
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.device.getter()
{
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.device.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v2) + 48);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.device.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.intent.getter()
{
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.intent.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v2) + 52);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleCallRecordsParameters.totalCallRecordCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 80));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.totalCallRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleCallRecordsParameters.windowSize.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 84));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.windowSize.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleCallRecordsParameters.asKeyValuePairs()()
{
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v8 = v64 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v9, xmmword_4441C0);
  OUTLINED_FUNCTION_143_0();
  outlined init with copy of SpeakableString?(v10, v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v8);
  if (v14)
  {
    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    *(v9 + 72) = v13;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_143_0();
    v15();
  }

  OUTLINED_FUNCTION_35_23();
  v17 = OUTLINED_FUNCTION_78_10(v16);
  v18 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v17);
  outlined init with copy of SpeakableString?(v0 + v18[5], v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21_3(v5);
  if (v14)
  {
    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v13;
    __swift_allocate_boxed_opaque_existential_1((v9 + 96));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_40_4();
    v19();
  }

  OUTLINED_FUNCTION_3_97();
  OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_87_6(v20);
  if (v23)
  {
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
    v24 = 0.0;
  }

  else
  {
    v24 = *v22;
  }

  OUTLINED_FUNCTION_63_14(v21, v24);
  v26 = *(v0 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v64[1] = v26;
  *(v9 + 192) = v26;
  OUTLINED_FUNCTION_27_2();
  *(v9 + 216) = v27;
  *(v9 + 224) = 0xD000000000000010;
  *(v9 + 232) = v28;
  *(v9 + 240) = *(v0 + v18[8]);
  OUTLINED_FUNCTION_27_2();
  *(v9 + 264) = v29;
  *(v9 + 272) = 0xD000000000000010;
  *(v9 + 280) = v30;
  *(v9 + 288) = *(v0 + v18[9]);
  OUTLINED_FUNCTION_27_2();
  *(v9 + 312) = v31;
  *(v9 + 320) = 0xD000000000000010;
  *(v9 + 328) = v32;
  *(v9 + 336) = *(v0 + v18[10]);
  OUTLINED_FUNCTION_27_2();
  *(v9 + 360) = v33;
  *(v9 + 368) = 0xD000000000000010;
  *(v9 + 376) = v34;
  *(v9 + 384) = *(v0 + v18[11]);
  *(v9 + 408) = v33;
  *(v9 + 416) = 0x656369766564;
  *(v9 + 424) = 0xE600000000000000;
  v35 = *(v0 + v18[12]);
  if (v35)
  {
    type metadata accessor for SirikitDeviceState();
    v36 = v35;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 440) = 0;
    *(v9 + 448) = 0;
  }

  *(v9 + 432) = v36;
  OUTLINED_FUNCTION_14_8();
  *(v9 + 456) = v37;
  *(v9 + 464) = v38;
  *(v9 + 472) = 0xE600000000000000;
  v39 = *(v0 + v18[13]);
  if (v39)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v40 = v39;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 488) = 0;
    *(v9 + 496) = 0;
  }

  *(v9 + 480) = v40;
  OUTLINED_FUNCTION_57_21();
  *(v9 + 504) = v42;
  *(v9 + 512) = v41 & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
  OUTLINED_FUNCTION_56_12();
  *(v9 + 520) = v43;
  LOBYTE(v43) = *(v0 + v18[14]);
  *(v9 + 552) = &type metadata for Bool;
  *(v9 + 528) = v43;
  OUTLINED_FUNCTION_57_21();
  *(v9 + 560) = v44 & 0xFFFFFFFFFFFFLL | 0x5774000000000000;
  *(v9 + 568) = 0xED0000776F646E69;
  LOBYTE(v44) = *(v0 + v18[15]);
  *(v9 + 600) = v45;
  *(v9 + 576) = v44;
  OUTLINED_FUNCTION_74_0();
  *(v9 + 608) = v46 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
  *(v9 + 616) = 0xEC000000776F646ELL;
  LOBYTE(v46) = *(v0 + v18[16]);
  *(v9 + 648) = v47;
  *(v9 + 624) = v46;
  OUTLINED_FUNCTION_27_2();
  *(v9 + 656) = 0xD000000000000013;
  *(v9 + 664) = v48;
  LOBYTE(v48) = *(v0 + v18[17]);
  *(v9 + 696) = v49;
  *(v9 + 672) = v48;
  OUTLINED_FUNCTION_27_2();
  *(v9 + 704) = v50;
  *(v9 + 712) = v51;
  LOBYTE(v51) = *(v0 + v18[18]);
  *(v9 + 744) = v52;
  *(v9 + 720) = v51;
  OUTLINED_FUNCTION_27_2();
  *(v9 + 752) = 0xD000000000000012;
  *(v9 + 760) = v53;
  LOBYTE(v53) = *(v0 + v18[19]);
  *(v9 + 792) = v54;
  *(v9 + 768) = v53;
  OUTLINED_FUNCTION_27_2();
  *(v9 + 800) = 0xD000000000000014;
  *(v9 + 808) = v55;
  OUTLINED_FUNCTION_64_14();
  if (v57)
  {
    v58 = 0;
    *(v9 + 824) = 0u;
    v59 = 0;
  }

  else
  {
    v59 = *v56;
    v58 = &type metadata for Double;
  }

  *(v9 + 816) = v59;
  *(v9 + 840) = v58;
  *(v9 + 848) = 0x6953776F646E6977;
  *(v9 + 856) = 0xEA0000000000657ALL;
  OUTLINED_FUNCTION_64_14();
  if (v61)
  {
    v62 = 0;
    *(v9 + 872) = 0u;
    v63 = 0;
  }

  else
  {
    v63 = *v60;
    v62 = &type metadata for Double;
  }

  *(v9 + 864) = v63;
  *(v9 + 888) = v62;

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.init(appBundleId:appName:callRecordCount:callRecords:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:device:intent:isFirstPartyApp:isFirstWindow:isLastWindow:isShowingMissedCall:isSingleDateRequest:isTimeRangeRequest:totalCallRecordCount:windowSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  outlined init with take of SpeakableString?(a1, a9);
  v27 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);
  result = outlined init with take of SpeakableString?(a2, a9 + v27[5]);
  v29 = a9 + v27[6];
  *v29 = a3;
  *(v29 + 8) = a4 & 1;
  *(a9 + v27[7]) = a5;
  *(a9 + v27[8]) = a6;
  *(a9 + v27[9]) = a7;
  *(a9 + v27[10]) = a8;
  *(a9 + v27[11]) = a10;
  *(a9 + v27[12]) = a11;
  *(a9 + v27[13]) = a12;
  *(a9 + v27[14]) = a13;
  *(a9 + v27[15]) = a14;
  *(a9 + v27[16]) = a15;
  *(a9 + v27[17]) = a16;
  *(a9 + v27[18]) = a17;
  *(a9 + v27[19]) = a18;
  v30 = a9 + v27[20];
  *v30 = a19;
  *(v30 + 8) = a20 & 1;
  v31 = a9 + v27[21];
  *v31 = a21;
  *(v31 + 8) = a22 & 1;
  return result;
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.getter()
{
  return SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.getter();
}

{
  v0 = OUTLINED_FUNCTION_76_8();
  v1(v0);
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.device.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v4 = *(v3(v2) + 24);

  *(v1 + v4) = v0;
  return result;
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleVoiceMailRecordsParameters.newRecordsCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 44));
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.newRecordsCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.getter()
{
  return SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.getter();
}

{
  v0 = OUTLINED_FUNCTION_76_8();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_57_16(*(v2 + 48));
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.voiceMailPosition.getter()
{
  v0 = OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  return OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, *(v1 + 52));
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.voiceMailPosition.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  v1 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v1, v2);
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.voiceMailPosition.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.asKeyValuePairs()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v10, xmmword_4441D0);
  outlined init with copy of SpeakableString?(v1, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v9);
  if (v12)
  {
    outlined destroy of SpeakableString?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    __swift_allocate_boxed_opaque_existential_1((v10 + 48));
    OUTLINED_FUNCTION_2_9();
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_3_97();
  *(v10 + 80) = v15;
  *(v10 + 88) = v14 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  v16 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(0);
  v17 = *(v1 + v16[5]);
  if (v17)
  {
    type metadata accessor for PhoneCallRecord(0);
    v18 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v18;
  OUTLINED_FUNCTION_14_8();
  *(v10 + 120) = v19;
  *(v10 + 128) = v20;
  *(v10 + 136) = 0xE600000000000000;
  v21 = *(v1 + v16[6]);
  if (v21)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v23 = v21;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
  }

  *(v10 + 144) = v23;
  *(v10 + 168) = v22;
  *(v10 + 176) = 0xD000000000000021;
  *(v10 + 184) = 0x800000000045AF80;
  *(v10 + 192) = *(v1 + v16[7]);
  *(v10 + 216) = &type metadata for Bool;
  strcpy((v10 + 224), "isNewVoicemail");
  *(v10 + 239) = -18;
  *(v10 + 240) = *(v1 + v16[8]);
  OUTLINED_FUNCTION_39_0();
  *(v10 + 264) = v25;
  *(v10 + 272) = v24 | 2;
  *(v10 + 280) = v26;
  *(v10 + 288) = *(v1 + v16[9]);
  OUTLINED_FUNCTION_39_0();
  *(v10 + 312) = v28;
  *(v10 + 320) = v27 + 1;
  *(v10 + 328) = v29;
  *(v10 + 336) = *(v1 + v16[10]);
  *(v10 + 360) = v28;
  *(v10 + 368) = 0x726F63655277656ELL;
  OUTLINED_FUNCTION_59_13();
  *(v10 + 376) = v31;
  v32 = v1 + v16[11];
  if (*(v32 + 8))
  {
    v33 = 0;
    *(v10 + 392) = 0;
    *(v10 + 400) = 0;
    v34 = 0;
  }

  else
  {
    v34 = *v32;
    v33 = &type metadata for Double;
  }

  *(v10 + 384) = v34;
  *(v10 + 408) = v33;
  *(v10 + 416) = v30;
  *(v10 + 424) = 0x8000000000460E40;
  v35 = v1 + v16[12];
  if (*(v35 + 8))
  {
    v36 = 0;
    *(v10 + 440) = 0;
    *(v10 + 448) = 0;
    v37 = 0;
  }

  else
  {
    v37 = *v35;
    v36 = &type metadata for Double;
  }

  *(v10 + 432) = v37;
  *(v10 + 456) = v36;
  *(v10 + 464) = v30;
  *(v10 + 472) = 0x8000000000460F20;
  outlined init with copy of SpeakableString?(v1 + v16[13], v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v6);
  if (v12)
  {

    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 480) = 0u;
    *(v10 + 496) = 0u;
  }

  else
  {
    *(v10 + 504) = v11;
    __swift_allocate_boxed_opaque_existential_1((v10 + 480));
    OUTLINED_FUNCTION_2_9();
    (*(v38 + 32))();
  }

  return v10;
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.init(appBundleId:callRecord:intent:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:isSingleDateRequest:isTimeRangeRequest:newRecordsCount:savedRecordsCount:voiceMailPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73_8();
  outlined init with take of SpeakableString?(v19, v14);
  v20 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(0);
  *(v14 + v20[5]) = v13;
  *(v14 + v20[6]) = v12;
  *(v14 + v20[7]) = a4;
  *(v14 + v20[8]) = a5;
  *(v14 + v20[9]) = a6;
  *(v14 + v20[10]) = a7;
  v21 = v14 + v20[11];
  *v21 = a8;
  *(v21 + 8) = a9 & 1;
  v22 = v14 + v20[12];
  *v22 = a10;
  *(v22 + 8) = a11 & 1;
  v23 = v14 + v20[13];

  return outlined init with take of SpeakableString?(a12, v23);
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v4 = *(v3(v2) + 20);

  *(v1 + v4) = v0;
  return result;
}

uint64_t SearchCallHistoryReadSingleCallRecordParameters.callRecord.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadSingleCallRecordParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleCallRecordParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadSingleCallRecordParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleCallRecordDisplayForwardParameters.callRecord.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadSingleCallRecordDisplayForwardParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleCallRecordDisplayForwardParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadSingleCallRecordDisplayForwardParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleCallRecordParameters.asKeyValuePairs()(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v7, xmmword_42BF20);
  OUTLINED_FUNCTION_40_4();
  outlined init with copy of SpeakableString?(v8, v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v6);
  if (v12)
  {
    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    v7[4].n128_u64[1] = v11;
    __swift_allocate_boxed_opaque_existential_1(&v7[3]);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_40_4();
    v13();
  }

  OUTLINED_FUNCTION_3_97();
  v15 = OUTLINED_FUNCTION_78_10(v14);
  v16 = a1(v15);
  v17 = *(v1 + v16[5]);
  if (v17)
  {
    type metadata accessor for PhoneCallRecord(0);
    v18 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v7[6].n128_u64[1] = 0;
    v7[7].n128_u64[0] = 0;
  }

  v7[6].n128_u64[0] = v18;
  OUTLINED_FUNCTION_14_8();
  v7[7].n128_u64[1] = v19;
  v7[8].n128_u64[0] = v20;
  v7[8].n128_u64[1] = 0xE600000000000000;
  v21 = *(v1 + v16[6]);
  if (v21)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v7[9].n128_u64[1] = 0;
    v7[10].n128_u64[0] = 0;
  }

  v7[9].n128_u64[0] = v21;
  OUTLINED_FUNCTION_27_2();
  v7[10].n128_u64[1] = v22;
  v7[11].n128_u64[0] = 0xD000000000000013;
  v7[11].n128_u64[1] = v23;
  v7[12].n128_u8[0] = *(v1 + v16[7]);
  OUTLINED_FUNCTION_27_2();
  v7[13].n128_u64[1] = v25;
  v7[14].n128_u64[0] = v24;
  v7[14].n128_u64[1] = v26;
  LOBYTE(v26) = *(v1 + v16[8]);
  v7[16].n128_u64[1] = v25;
  v7[15].n128_u8[0] = v26;

  return OUTLINED_FUNCTION_96_4();
}

int *SearchCallHistoryReadSingleCallRecordParameters.init(appBundleId:callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  outlined init with take of SpeakableString?(a1, a7);
  result = a6(0);
  *(a7 + result[5]) = a2;
  *(a7 + result[6]) = a3;
  *(a7 + result[7]) = a4;
  *(a7 + result[8]) = a5;
  return result;
}

uint64_t SearchCallHistoryReadSingleVoiceMailRecordParameters.callRecord.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadSingleVoiceMailRecordParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleVoiceMailRecordParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryReadSingleVoiceMailRecordParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.asKeyValuePairs()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_14_8();
  *(v2 + 32) = v3;
  *(v2 + 40) = 0xE600000000000000;
  v4 = *v0;
  v15 = v4;
  if (v4)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  *(v1 + 48) = v4;
  OUTLINED_FUNCTION_29_8();
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  OUTLINED_FUNCTION_28_25();
  *(v1 + 88) = v7;
  if (v0[2])
  {
    v8 = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  else
  {
    v8 = v0[1];
  }

  *(v1 + 96) = v8;
  OUTLINED_FUNCTION_39_0();
  *(v1 + 120) = v9;
  *(v1 + 128) = 0xD000000000000011;
  *(v1 + 136) = v10;
  if (v0[4])
  {
    v11 = 0;
    v12 = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v11 = v0[3];
    v12 = &type metadata for Double;
  }

  *(v1 + 144) = v11;
  *(v1 + 168) = v12;
  outlined init with copy of SpeakableString?(&v15, &v14, &_s27PhoneCallFlowDelegatePlugin0a6SearchB13HistoryIntentCSgMd, &_s27PhoneCallFlowDelegatePlugin0a6SearchB13HistoryIntentCSgMR);
  return v1;
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.appName.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v2, v3);
}

uint64_t SearchCallHistoryShowCallHistoryParameters.appName.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v2 = v1(v0);
  OUTLINED_FUNCTION_10_13(*(v2 + 24));
}

uint64_t SearchCallHistoryShowCallHistoryParameters.callRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.device.getter()
{
  type metadata accessor for SearchCallHistoryShowCallHistoryParameters(0);
}

uint64_t SearchCallHistoryShowCallHistoryParameters.device.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryShowCallHistoryParameters.device.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.intent.getter()
{
  type metadata accessor for SearchCallHistoryShowCallHistoryParameters(0);
}

uint64_t SearchCallHistoryShowCallHistoryParameters.intent.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryShowCallHistoryParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v2 = v1(v0);
  OUTLINED_FUNCTION_10_13(*(v2 + 48));
}

uint64_t SearchCallHistoryShowCallHistoryParameters.totalCallRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v8 = &v47 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v9, xmmword_4441E0);
  OUTLINED_FUNCTION_143_0();
  outlined init with copy of SpeakableString?(v10, v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v8);
  if (v14)
  {
    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    *(v9 + 72) = v13;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_143_0();
    v15();
  }

  OUTLINED_FUNCTION_35_23();
  v17 = OUTLINED_FUNCTION_78_10(v16);
  v18 = type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v17);
  outlined init with copy of SpeakableString?(v0 + v18[5], v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21_3(v5);
  if (v14)
  {
    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v13;
    __swift_allocate_boxed_opaque_existential_1((v9 + 96));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_40_4();
    v19();
  }

  OUTLINED_FUNCTION_3_97();
  OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_87_6(v20);
  if (v23)
  {
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
    v24 = 0.0;
  }

  else
  {
    v24 = *v22;
  }

  OUTLINED_FUNCTION_63_14(v21, v24);
  v26 = *(v0 + v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  *(v9 + 192) = v26;
  *(v9 + 216) = v27;
  *(v9 + 224) = 0x656369766564;
  *(v9 + 232) = 0xE600000000000000;
  v28 = *(v0 + v18[8]);
  if (v28)
  {
    type metadata accessor for SirikitDeviceState();
    v29 = v28;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 248) = 0;
    *(v9 + 256) = 0;
  }

  *(v9 + 240) = v29;
  OUTLINED_FUNCTION_14_8();
  *(v9 + 264) = v30;
  *(v9 + 272) = v31;
  *(v9 + 280) = 0xE600000000000000;
  v32 = *(v0 + v18[9]);
  if (v32)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v33 = v32;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 296) = 0;
    *(v9 + 304) = 0;
  }

  *(v9 + 288) = v33;
  OUTLINED_FUNCTION_57_21();
  *(v9 + 312) = v35;
  *(v9 + 320) = v34 & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
  OUTLINED_FUNCTION_56_12();
  *(v9 + 328) = v36;
  *(v9 + 336) = *(v0 + v18[10]);
  OUTLINED_FUNCTION_27_2();
  *(v9 + 360) = v37;
  *(v9 + 368) = 0xD000000000000013;
  *(v9 + 376) = v38;
  *(v9 + 384) = *(v0 + v18[11]);
  OUTLINED_FUNCTION_27_2();
  *(v9 + 408) = v40;
  *(v9 + 416) = v39 + 1;
  *(v9 + 424) = v41;
  OUTLINED_FUNCTION_64_14();
  if (v43)
  {
    v44 = 0;
    *(v9 + 440) = 0;
    *(v9 + 448) = 0;
    v45 = 0;
  }

  else
  {
    v45 = *v42;
    v44 = &type metadata for Double;
  }

  *(v9 + 432) = v45;
  *(v9 + 456) = v44;

  return OUTLINED_FUNCTION_96_4();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.init(appBundleId:appName:callRecordCount:callRecords:device:intent:isFirstPartyApp:isShowingMissedCall:totalCallRecordCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10, char a11)
{
  OUTLINED_FUNCTION_73_8();
  outlined init with take of SpeakableString?(v18, v12);
  v19 = type metadata accessor for SearchCallHistoryShowCallHistoryParameters(0);
  result = OUTLINED_FUNCTION_99_3(v19);
  v21 = v12 + v13[6];
  *v21 = v11;
  *(v21 + 8) = a4 & 1;
  *(v12 + v13[7]) = a5;
  *(v12 + v13[8]) = a6;
  *(v12 + v13[9]) = a7;
  *(v12 + v13[10]) = a8;
  *(v12 + v13[11]) = a9;
  v22 = v12 + v13[12];
  *v22 = a10;
  *(v22 + 8) = a11 & 1;
  return result;
}

double SearchCallHistoryShowVoicemailsParameters.callRecords.getter()
{
  type metadata accessor for SearchCallHistoryShowVoicemailsParameters(0);

  return result;
}

uint64_t SearchCallHistoryShowVoicemailsParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryShowVoicemailsParameters.newRecordsCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 28));
}

uint64_t SearchCallHistoryShowVoicemailsParameters.newRecordsCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryShowVoicemailsParameters.savedRecordsCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 32));
}

uint64_t SearchCallHistoryShowVoicemailsParameters.savedRecordsCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowVoicemailsParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v2);
  v4 = &v33 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v5, xmmword_42BF20);
  OUTLINED_FUNCTION_80_8();
  outlined init with copy of SpeakableString?(v6, v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v4);
  if (v10)
  {
    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    v5[4].n128_u64[1] = v9;
    __swift_allocate_boxed_opaque_existential_1(&v5[3]);
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_80_8();
    v11();
  }

  OUTLINED_FUNCTION_3_97();
  v13 = OUTLINED_FUNCTION_78_10(v12);
  v14 = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v13);
  v15 = *(v0 + *(v14 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v5[6].n128_u64[0] = v15;
  OUTLINED_FUNCTION_14_8();
  v5[7].n128_u64[1] = v16;
  v5[8].n128_u64[0] = v17;
  v5[8].n128_u64[1] = 0xE600000000000000;
  v18 = *(v0 + *(v14 + 24));
  if (v18)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v19 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v19;
  OUTLINED_FUNCTION_29_8();
  v5[10].n128_u64[1] = v20;
  v5[11].n128_u64[0] = v21;
  OUTLINED_FUNCTION_28_25();
  v5[11].n128_u64[1] = v22;
  OUTLINED_FUNCTION_64_14();
  if (v24)
  {
    v5[12].n128_u64[1] = 0;
    v5[13].n128_u64[0] = 0;
    v25 = 0;
  }

  else
  {
    v25 = *v23;
  }

  v5[12].n128_u64[0] = v25;
  OUTLINED_FUNCTION_39_0();
  v5[13].n128_u64[1] = v26;
  v5[14].n128_u64[0] = 0xD000000000000011;
  v5[14].n128_u64[1] = v27;
  OUTLINED_FUNCTION_64_14();
  if (v29)
  {
    v30 = 0;
    v5[15].n128_u64[1] = 0;
    v5[16].n128_u64[0] = 0;
    v31 = 0;
  }

  else
  {
    v31 = *v28;
    v30 = &type metadata for Double;
  }

  v5[15].n128_u64[0] = v31;
  v5[16].n128_u64[1] = v30;

  return OUTLINED_FUNCTION_96_4();
}

int *SearchCallHistoryShowVoicemailsParameters.init(appBundleId:callRecords:intent:newRecordsCount:savedRecordsCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  outlined init with take of SpeakableString?(a1, a8);
  result = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(0);
  *(a8 + result[5]) = a2;
  *(a8 + result[6]) = a3;
  v16 = a8 + result[7];
  *v16 = a4;
  *(v16 + 8) = a5 & 1;
  v17 = a8 + result[8];
  *v17 = a6;
  *(v17 + 8) = a7 & 1;
  return result;
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.confirmAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.contactToConfirm.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.displayText.getter()
{
  v0 = OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  return OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, *(v1 + 28));
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.displayText.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  v1 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v1, v2);
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.displayText.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.rejectAction.getter()
{
  v0 = OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  return OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, *(v1 + 44));
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.rejectAction.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  v1 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v1, v2);
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.rejectAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v15, xmmword_43CD90);
  outlined init with copy of SpeakableString?(v0, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v14);
  if (v17)
  {
    outlined destroy of SpeakableString?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
  }

  else
  {
    *(v15 + 72) = v16;
    __swift_allocate_boxed_opaque_existential_1((v15 + 48));
    OUTLINED_FUNCTION_2_9();
    (*(v18 + 32))();
  }

  strcpy((v15 + 80), "confirmAction");
  *(v15 + 94) = -4864;
  v19 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(0);
  outlined init with copy of SpeakableString?(v0 + v19[5], v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v11);
  if (v17)
  {
    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 96) = 0u;
    *(v15 + 112) = 0u;
  }

  else
  {
    *(v15 + 120) = v16;
    __swift_allocate_boxed_opaque_existential_1((v15 + 96));
    OUTLINED_FUNCTION_2_9();
    (*(v20 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  *(v15 + 128) = 0xD000000000000010;
  *(v15 + 136) = v21;
  v22 = *(v0 + v19[6]);
  if (v22)
  {
    v23 = type metadata accessor for DialogPerson();
    v24 = v22;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_18_2();
    *(v15 + 152) = 0;
    *(v15 + 160) = 0;
  }

  *(v15 + 144) = v24;
  *(v15 + 168) = v23;
  *(v15 + 176) = 0x5479616C70736964;
  *(v15 + 184) = 0xEB00000000747865;
  outlined init with copy of SpeakableString?(v0 + v19[7], v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v8);
  if (v17)
  {

    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 192) = 0u;
    *(v15 + 208) = 0u;
  }

  else
  {
    *(v15 + 216) = v16;
    __swift_allocate_boxed_opaque_existential_1((v15 + 192));
    OUTLINED_FUNCTION_2_9();
    (*(v25 + 32))();
  }

  *(v15 + 224) = 0x74736574614C7369;
  *(v15 + 232) = 0xE800000000000000;
  *(v15 + 240) = *(v0 + v19[8]);
  *(v15 + 264) = &type metadata for Bool;
  *(v15 + 272) = 0x64657373694D7369;
  *(v15 + 280) = 0xE800000000000000;
  *(v15 + 288) = *(v0 + v19[9]);
  *(v15 + 312) = &type metadata for Bool;
  *(v15 + 320) = 0x6D6563696F567369;
  *(v15 + 328) = 0xEB000000006C6961;
  *(v15 + 336) = *(v0 + v19[10]);
  *(v15 + 360) = &type metadata for Bool;
  strcpy((v15 + 368), "rejectAction");
  *(v15 + 381) = 0;
  *(v15 + 382) = -5120;
  OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v19[11]);
  OUTLINED_FUNCTION_6_1(v5);
  if (v17)
  {
    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 384) = 0u;
    *(v15 + 400) = 0u;
  }

  else
  {
    *(v15 + 408) = v16;
    __swift_allocate_boxed_opaque_existential_1((v15 + 384));
    OUTLINED_FUNCTION_2_9();
    (*(v26 + 32))();
  }

  return v15;
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.init(appBundleId:confirmAction:contactToConfirm:displayText:isLatest:isMissed:isVoicemail:rejectAction:)()
{
  OUTLINED_FUNCTION_66();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_73_8();
  outlined init with take of SpeakableString?(v11, v12);
  v13 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(0);
  OUTLINED_FUNCTION_99_3(v13);
  *(v1 + v2[6]) = v0;
  outlined init with take of SpeakableString?(v10, v1 + v2[7]);
  *(v1 + v2[8]) = v8;
  *(v1 + v2[9]) = v6;
  *(v1 + v2[10]) = v4;
  OUTLINED_FUNCTION_65();

  return outlined init with take of SpeakableString?(v14, v15);
}

double SearchCallHistoryOfferToReadMoreCallRecordsParameters.asKeyValuePairs()(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_424FD0;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 48) = a1;
  return result;
}

uint64_t SearchCallHistoryCATPatternsExecutor.offerToReadMoreCallRecords(isLastWindow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.offerToReadMoreCallRecords(isLastWindow:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_74_0();
  *(v4 + 32) = v3 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
  *(v4 + 40) = 0xEC000000776F646ELL;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);
  OUTLINED_FUNCTION_41_30();
  v7 = OUTLINED_FUNCTION_34_21(44);

  return v8(v7);
}

uint64_t SearchCallHistoryCATPatternsExecutor.readCannotFindCallRecord(isFirstPartyApp:isShowingMissedCall:_:)()
{
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_16_49(v1, v2, v3, v4);
  v6 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v5);
  OUTLINED_FUNCTION_24_4(v6);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_34();
  v5 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_40_27(v1[5]);
  *(v9 + 8) = 1;
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  *(v0 + v1[8]) = v4;
  *(v0 + v1[9]) = v3;
  OUTLINED_FUNCTION_40_27(v1[10]);
  *(v10 + 8) = 1;
  v2(v0);
  OUTLINED_FUNCTION_60_0();
  v11 = SearchCallHistoryReadCannotFindCallRecordParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v11);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_68(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_10_66(v13);
  v15 = OUTLINED_FUNCTION_34_21(42);

  return v16(v15);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_49_24();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_49_24();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readCannotFindVoicemail(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readCannotFindVoicemail(_:)()
{
  OUTLINED_FUNCTION_24_1();
  v7 = OUTLINED_FUNCTION_61_20();
  v8(v7);
  OUTLINED_FUNCTION_70_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = swift_allocObject();
  *(v2 + 72) = v9;
  *(v9 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_14_8();
  *(v10 + 32) = v11;
  *(v10 + 40) = 0xE600000000000000;
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v12 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
  }

  *(v9 + 48) = v12;
  OUTLINED_FUNCTION_29_8();
  *(v9 + 72) = v13;
  *(v9 + 80) = v14;
  OUTLINED_FUNCTION_28_25();
  *(v9 + 88) = v15;
  if (v4)
  {
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    v6 = 0;
  }

  *(v9 + 96) = v6;
  OUTLINED_FUNCTION_39_0();
  *(v9 + 120) = v16;
  *(v9 + 128) = 0xD000000000000011;
  *(v9 + 136) = v17;
  if (v1)
  {
    v18 = 0;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
    v5 = 0;
  }

  else
  {
    v18 = &type metadata for Double;
  }

  *(v9 + 144) = v5;
  *(v9 + 168) = v18;
  OUTLINED_FUNCTION_9_13();
  v19 = swift_task_alloc();
  *(v3 + 96) = v19;
  *v19 = v3;
  v19[1] = SearchCallHistoryCATPatternsExecutor.readCannotFindVoicemail(_:);
  OUTLINED_FUNCTION_92_4();

  return v20();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 112);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readMultipleCallRecords(callRecords:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:isFirstPartyApp:isFirstWindow:isLastWindow:isShowingMissedCall:isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v20;
  *(v1 + 72) = v0;
  *(v1 + 133) = v18;
  *(v1 + 132) = v17;
  *(v1 + 131) = v16;
  *(v1 + 130) = v2;
  *(v1 + 129) = v3;
  *(v1 + 128) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v19;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);
  *(v1 + 80) = v10;
  OUTLINED_FUNCTION_21(v10);
  *(v1 + 88) = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v28 = *(v0 + 132);
  v29 = *(v0 + 133);
  v26 = *(v0 + 130);
  v27 = *(v0 + 131);
  v25 = *(v0 + 129);
  v3 = *(v0 + 128);
  v4 = *(v0 + 48);
  v30 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = type metadata accessor for SpeakableString();
  v10 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = OUTLINED_FUNCTION_23_30(v2[5]);
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  OUTLINED_FUNCTION_40_27(v2[6]);
  *(v16 + 8) = 1;
  *(v1 + v2[7]) = v8;
  *(v1 + v2[8]) = v7;
  *(v1 + v2[9]) = v6;
  *(v1 + v2[10]) = v5;
  *(v1 + v2[11]) = v4;
  *(v1 + v2[12]) = 0;
  *(v1 + v2[13]) = 0;
  *(v1 + v2[14]) = v3;
  *(v1 + v2[15]) = v25;
  *(v1 + v2[16]) = v26;
  *(v1 + v2[17]) = v27;
  *(v1 + v2[18]) = v28;
  *(v1 + v2[19]) = v29;
  OUTLINED_FUNCTION_40_27(v2[20]);
  *(v17 + 8) = 1;
  OUTLINED_FUNCTION_40_27(v2[21]);
  *(v18 + 8) = v19;

  v30(v1);
  OUTLINED_FUNCTION_60_0();
  SearchCallHistoryReadMultipleCallRecordsParameters.asKeyValuePairs()();
  *(v0 + 96) = v20;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v31 = v21;
  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  v22[1] = SearchCallHistoryCATPatternsExecutor.readMultipleCallRecords(callRecords:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:isFirstPartyApp:isFirstWindow:isLastWindow:isShowingMissedCall:isSingleDateRequest:isTimeRangeRequest:_:);
  OUTLINED_FUNCTION_41_30();
  v23 = OUTLINED_FUNCTION_42_23(41);

  return v31(v23);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_23();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 120);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_23();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  OUTLINED_FUNCTION_40();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t SearchCallHistoryCATPatternsExecutor.readMultipleVoiceMailRecords(isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 91) = v4;
  v8 = OUTLINED_FUNCTION_94_7(v5, v6, v7);
  v9 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v8);
  OUTLINED_FUNCTION_24_4(v9);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for SpeakableString();
  v6 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = OUTLINED_FUNCTION_23_30(v2[13]);
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = v4;
  OUTLINED_FUNCTION_72_9();
  OUTLINED_FUNCTION_40_27(v2[11]);
  *(v12 + 8) = 1;
  OUTLINED_FUNCTION_40_27(v2[12]);
  *(v13 + 8) = v14;
  v3(v1);
  OUTLINED_FUNCTION_60_0();
  v15 = SearchCallHistoryReadMultipleVoiceMailRecordsParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v15);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_68(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_10_66(v17);
  v19 = OUTLINED_FUNCTION_34_21(46);

  return v20(v19);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_48_22();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_48_22();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v4(0xD00000000000002CLL, 0x8000000000453C80, _swiftEmptyArrayStorage);
}

uint64_t SearchCallHistoryCATPatternsExecutor.readSingleCallRecord(isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_16_49(v1, v2, v3, v4);
  v6 = type metadata accessor for SearchCallHistoryReadSingleCallRecordParameters(v5);
  OUTLINED_FUNCTION_24_4(v6);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48_4();
  v15 = v1;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_34();
  v2 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_11_55();
  v0(v6);
  OUTLINED_FUNCTION_60_0();
  v7 = SearchCallHistoryReadSingleCallRecordParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v7);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = v8;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_68(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_66(v10);
  v12 = OUTLINED_FUNCTION_42_23(38);

  return v14(v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_44_18();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_44_18();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readSingleCallRecordDisplayForward(isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_16_49(v1, v2, v3, v4);
  v6 = type metadata accessor for SearchCallHistoryReadSingleCallRecordDisplayForwardParameters(v5);
  OUTLINED_FUNCTION_24_4(v6);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48_4();
  v15 = v1;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_34();
  v2 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_11_55();
  v0(v6);
  OUTLINED_FUNCTION_60_0();
  v7 = SearchCallHistoryReadSingleCallRecordDisplayForwardParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v7);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = v8;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_68(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_66(v10);
  v12 = OUTLINED_FUNCTION_42_23(52);

  return v14(v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_47_23();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_47_23();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readSingleVoiceMailRecord(isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_16_49(v1, v2, v3, v4);
  v6 = type metadata accessor for SearchCallHistoryReadSingleVoiceMailRecordParameters(v5);
  OUTLINED_FUNCTION_24_4(v6);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48_4();
  v15 = v1;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_34();
  v2 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_11_55();
  v0(v6);
  OUTLINED_FUNCTION_60_0();
  v7 = SearchCallHistoryReadSingleVoiceMailRecordParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v7);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = v8;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_68(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_66(v10);
  v12 = OUTLINED_FUNCTION_42_23(43);

  return v14(v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_18();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_18();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readVoicemailsIntroduction(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readVoicemailsIntroduction(_:)()
{
  OUTLINED_FUNCTION_24_1();
  v7 = OUTLINED_FUNCTION_61_20();
  v8(v7);
  OUTLINED_FUNCTION_70_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = swift_allocObject();
  *(v2 + 72) = v9;
  *(v9 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_14_8();
  *(v10 + 32) = v11;
  *(v10 + 40) = 0xE600000000000000;
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v12 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
  }

  *(v9 + 48) = v12;
  OUTLINED_FUNCTION_29_8();
  *(v9 + 72) = v13;
  *(v9 + 80) = v14;
  OUTLINED_FUNCTION_28_25();
  *(v9 + 88) = v15;
  if (v4)
  {
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    v6 = 0;
  }

  *(v9 + 96) = v6;
  OUTLINED_FUNCTION_39_0();
  *(v9 + 120) = v16;
  *(v9 + 128) = 0xD000000000000011;
  *(v9 + 136) = v17;
  if (v1)
  {
    v18 = 0;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
    v5 = 0;
  }

  else
  {
    v18 = &type metadata for Double;
  }

  *(v9 + 144) = v5;
  *(v9 + 168) = v18;
  OUTLINED_FUNCTION_9_13();
  v19 = swift_task_alloc();
  *(v3 + 96) = v19;
  *v19 = v3;
  v19[1] = SearchCallHistoryCATPatternsExecutor.readVoicemailsIntroduction(_:);
  OUTLINED_FUNCTION_92_4();

  return v20();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t SearchCallHistoryCATPatternsExecutor.showCallHistory(callRecords:isFirstPartyApp:isShowingMissedCall:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 97) = v3;
  *(v1 + 96) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = type metadata accessor for SearchCallHistoryShowCallHistoryParameters(0);
  *(v1 + 48) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 56) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 97);
  v5 = *(v0 + 96);
  v6 = *(v0 + 16);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11 = OUTLINED_FUNCTION_23_30(v2[5]);
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
  OUTLINED_FUNCTION_40_27(v2[6]);
  *(v14 + 8) = 1;
  *(v1 + v2[7]) = v6;
  *(v1 + v2[8]) = 0;
  *(v1 + v2[9]) = 0;
  *(v1 + v2[10]) = v5;
  *(v1 + v2[11]) = v4;
  OUTLINED_FUNCTION_40_27(v2[12]);
  *(v15 + 8) = 1;

  v3(v1);
  OUTLINED_FUNCTION_60_0();
  *(v0 + 64) = SearchCallHistoryShowCallHistoryParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = SearchCallHistoryCATPatternsExecutor.showCallHistory(callRecords:isFirstPartyApp:isShowingMissedCall:_:);
  OUTLINED_FUNCTION_41_30();
  v17 = OUTLINED_FUNCTION_34_21(33);

  return v18(v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_52_18();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_52_18();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.showVoicemails(callRecords:_:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[7] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48_4();
  v17 = v1;
  OUTLINED_FUNCTION_31();
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];
  v5 = v0[2];
  type metadata accessor for SpeakableString();
  v6 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *(v2 + v3[5]) = v5;
  *(v2 + v3[6]) = 0;
  OUTLINED_FUNCTION_40_27(v3[7]);
  *(v10 + 8) = 1;
  OUTLINED_FUNCTION_40_27(v3[8]);
  *(v11 + 8) = 1;

  v4(v2);
  OUTLINED_FUNCTION_60_0();
  v0[8] = SearchCallHistoryShowVoicemailsParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v16 = v12;
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = SearchCallHistoryCATPatternsExecutor.showVoicemails(callRecords:_:);
  OUTLINED_FUNCTION_41_30();
  v14 = OUTLINED_FUNCTION_42_23(32);

  return v16(v14);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_51_26();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_51_26();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.unsupportedSearchParameters(isLatest:isMissed:isVoicemail:_:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v7 = OUTLINED_FUNCTION_94_7(v4, v5, v6);
  v8 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v7);
  OUTLINED_FUNCTION_24_4(v8);
  v1[6] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = OUTLINED_FUNCTION_23_30(v2[5]);
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  v11 = OUTLINED_FUNCTION_23_30(v2[7]);
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  v14 = OUTLINED_FUNCTION_23_30(v2[11]);
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
  *(v1 + v2[6]) = 0;
  OUTLINED_FUNCTION_72_9();
  v3(v1);
  OUTLINED_FUNCTION_60_0();
  v17 = SearchCallHistoryUnsupportedSearchParametersParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v17);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v24 = v18;
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_68(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_10_66(v20);
  v22 = OUTLINED_FUNCTION_42_23(45);

  return v24(v22);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_46_23();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_46_23();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.voiceMailOfferToFollowUpAction(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.voiceMailOfferToFollowUpAction(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_74_0();
  *(v4 + 32) = v3 & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
  *(v4 + 40) = 0xEA00000000006567;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);
  OUTLINED_FUNCTION_41_30();
  v7 = OUTLINED_FUNCTION_34_21(48);

  return v8(v7);
}

uint64_t SearchCallHistoryCATPatternsExecutor.voiceMailPromptToPlay()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = SearchCallHistoryCATPatternsExecutor.voiceMailPromptToPlay();

  return v4(0xD000000000000027, 0x8000000000453E50, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_17_5();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void SearchCallHistoryCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_2_4();
  v25 = type metadata accessor for CATOption();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v27);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v28);
  outlined init with copy of SpeakableString?(v20, &a9 - v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_80_8();
  v30();
  CATWrapper.init(templateDir:options:globals:)();
  (*(v26 + 8))(v24, v25);
  outlined destroy of SpeakableString?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATPatternsIdentifiers and conformance SearchCallHistoryCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATPatternsIdentifiers and conformance SearchCallHistoryCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATPatternsIdentifiers and conformance SearchCallHistoryCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATPatternsIdentifiers and conformance SearchCallHistoryCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.offerToReadMoreCallRecords(isLastWindow:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1)
{
  v6 = (*(**v1 + class metadata base offset for SearchCallHistoryCATPatternsExecutor) + **(**v1 + class metadata base offset for SearchCallHistoryCATPatternsExecutor));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6(a1);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readCannotFindCallRecord(isFirstPartyApp:isShowingMissedCall:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 8) + **(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 8));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readCannotFindVoicemail(_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 16) + **(**v2 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 16));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v8(a1, a2);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readMultipleCallRecords(callRecords:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:isFirstPartyApp:isFirstWindow:isLastWindow:isShowingMissedCall:isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9)
{
  v13 = a9;
  v16 = (*(**v9 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 24) + **(**v9 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 24));
  v14 = swift_task_alloc();
  *(v10 + 16) = v14;
  *v14 = v10;
  v14[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  BYTE2(a9) = v25;
  LOWORD(a9) = v24;

  return v16(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readMultipleVoiceMailRecords(isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 32) + **(**v6 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 32));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readPlayVoiceMailPrePrompt() in conformance SearchCallHistoryCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 40) + **(**v0 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 40));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v4();
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readSingleCallRecord(isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 48) + **(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 48));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readSingleCallRecordDisplayForward(isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 56) + **(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 56));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readSingleVoiceMailRecord(isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 64) + **(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 64));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readVoicemailsIntroduction(_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 72) + **(**v2 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 72));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v8(a1, a2);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.showCallHistory(callRecords:isFirstPartyApp:isShowingMissedCall:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 80) + **(**v5 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 80));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.showVoicemails(callRecords:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 88) + **(**v3 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.unsupportedSearchParameters(isLatest:isMissed:isVoicemail:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 96) + **(**v5 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 96));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v14(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.voiceMailOfferToFollowUpAction(isLastPage:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1)
{
  v6 = (*(**v1 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 104) + **(**v1 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6(a1);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.voiceMailPromptToPlay() in conformance SearchCallHistoryCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 112) + **(**v0 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v4();
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for SearchCallHistoryReadCannotFindCallRecordParameters(uint64_t a1)
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for Double?();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v6;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t type metadata completion function for SearchCallHistoryReadMultipleCallRecordsParameters(uint64_t a1)
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for Double?();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for [PhoneCallRecord], type metadata accessor for PhoneCallRecord, &type metadata accessor for Array);
      if (v7 > 0x3F)
      {
        return v6;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
      if (v8 > 0x3F)
      {
        return v6;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v9 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t type metadata completion function for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(uint64_t a1)
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneCallRecord?, type metadata accessor for PhoneCallRecord, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v4;
    }

    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
    if (v6 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for Double?();
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void type metadata completion function for SearchCallHistoryReadSingleCallRecordParameters(uint64_t a1)
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneCallRecord?, type metadata accessor for PhoneCallRecord, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_76Tm()
{
  OUTLINED_FUNCTION_55_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_58_12();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_26_31();
    return OUTLINED_FUNCTION_89_3(v6);
  }
}

void __swift_store_extra_inhabitant_index_77Tm()
{
  OUTLINED_FUNCTION_25_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_27_32();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

uint64_t getEnumTagSinglePayload for SearchCallHistoryReadCannotFindVoicemailParameters(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for SearchCallHistoryReadCannotFindVoicemailParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_67Tm()
{
  OUTLINED_FUNCTION_55_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_58_12();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_26_31();
    return (v6 + 1);
  }
}

void __swift_store_extra_inhabitant_index_68Tm()
{
  OUTLINED_FUNCTION_25_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_27_32();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28)) = (v0 - 1);
  }
}

uint64_t type metadata completion function for SearchCallHistoryShowCallHistoryParameters(uint64_t a1)
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for Double?();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for [PhoneCallRecord], type metadata accessor for PhoneCallRecord, &type metadata accessor for Array);
      if (v7 > 0x3F)
      {
        return v6;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
      if (v8 > 0x3F)
      {
        return v6;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v9 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void type metadata completion function for SearchCallHistoryShowVoicemailsParameters(uint64_t a1)
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for [PhoneCallRecord], type metadata accessor for PhoneCallRecord, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_55_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_58_12();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_26_31();
    return OUTLINED_FUNCTION_89_3(v6);
  }
}

void __swift_store_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_25_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_27_32();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }
}

uint64_t type metadata completion function for SearchCallHistoryUnsupportedSearchParametersParameters(uint64_t a1)
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for DialogPerson?, &type metadata accessor for DialogPerson, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryOfferToReadMoreCallRecordsParameters(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_45_18()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_47_23()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_50_23()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_51_26()
{

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

void OUTLINED_FUNCTION_72_9()
{
  *(v0 + v1[8]) = v4;
  *(v0 + v1[9]) = v3;
  *(v0 + v1[10]) = v2;
}

uint64_t OUTLINED_FUNCTION_78_10@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return 0;
}

double OUTLINED_FUNCTION_79_7()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_5@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of SpeakableString?(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_89_3@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_94_7(char a1, char a2, char a3)
{
  v3[90] = a3;
  v3[89] = a2;
  v3[88] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_99_3(uint64_t a1)
{
  v4 = v2 + *(a1 + 20);

  return outlined init with take of SpeakableString?(v1, v4);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATs::Properties_optional __swiftcall SearchCallHistoryCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v1;
  }
}

unint64_t SearchCallHistoryCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000027;
  switch(a1)
  {
    case 1:
    case 12:
    case 22:
      result = 0xD00000000000002CLL;
      break;
    case 2:
    case 4:
      result = 0xD000000000000022;
      break;
    case 3:
    case 13:
    case 15:
      result = 0xD000000000000024;
      break;
    case 5:
    case 6:
    case 35:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD000000000000037;
      break;
    case 8:
    case 38:
      result = 0xD000000000000027;
      break;
    case 9:
    case 36:
      result = 0xD000000000000031;
      break;
    case 10:
    case 16:
      result = 0xD000000000000021;
      break;
    case 11:
    case 21:
    case 31:
      result = 0xD000000000000028;
      break;
    case 14:
    case 25:
    case 28:
    case 29:
    case 30:
    case 32:
      result = 0xD000000000000026;
      break;
    case 17:
      result = 0xD000000000000020;
      break;
    case 18:
    case 24:
      result = 0xD000000000000033;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 20:
      result = 0xD00000000000002FLL;
      break;
    case 23:
      result = 0xD00000000000002ALL;
      break;
    case 26:
      result = 0xD00000000000002BLL;
      break;
    case 27:
      result = 0xD000000000000032;
      break;
    case 33:
      result = 0xD00000000000002DLL;
      break;
    case 34:
      result = 0xD000000000000023;
      break;
    case 37:
      result = 0xD000000000000030;
      break;
    case 39:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATs::Properties_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = SearchCallHistoryCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SearchCallHistoryCATs.buildCallRecordDetail(callRecord:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_1_106(v3, xmmword_424FD0);
  if (v0)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_54_6(v4, v5);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0(39, v1 | 0x8000000000000000);
}

uint64_t SearchCallHistoryCATs.buildCallRecordDetail(callRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDetail(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_24(v8);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(39);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_1_106(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v3, v4);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180(39);
}

uint64_t SearchCallHistoryCATs.buildCallRecordDetail(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDisplayName(callRecord:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_1_106(v3, xmmword_424FD0);
  if (v0)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_54_6(v4, v5);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0(44, v1 | 0x8000000000000000);
}

uint64_t SearchCallHistoryCATs.buildCallRecordDisplayName(callRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDisplayName(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_24(v8);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_1_106(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(44);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_1_106(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v3, v4);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180(44);
}

uint64_t SearchCallHistoryCATs.buildCallRecordDisplayName(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

void SearchCallHistoryCATs.confirmCallTypes(callTypeToConfirm:callTypesCount:completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  *(v11 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v12 + 32) = 0xD000000000000011;
  *(v12 + 40) = v13;
  outlined init with copy of SpeakableString?(v5, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
  {
    outlined destroy of SpeakableString?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v14;
    __swift_allocate_boxed_opaque_existential_1((v11 + 48));
    OUTLINED_FUNCTION_40();
    (*(v15 + 32))();
  }

  OUTLINED_FUNCTION_143_1();
  *(v11 + 80) = v16;
  *(v11 + 88) = v17;
  if (v1)
  {
    v3 = 0;
    v18 = 0;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v18 = &type metadata for Double;
  }

  *(v11 + 96) = v3;
  *(v11 + 120) = v18;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.confirmCallTypes(callTypeToConfirm:callTypesCount:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 80) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_125_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  *(OUTLINED_FUNCTION_197(v4) + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = v2;
  *(v5 + 40) = v6;
  OUTLINED_FUNCTION_54_2(v5, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v8) == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_136_2();
  if (v10)
  {
    OUTLINED_FUNCTION_160_0();
    v1[13] = 0;
    v1[14] = 0;
  }

  else
  {
    v11 = v0[4];
    v12 = &type metadata for Double;
  }

  v1[12] = v11;
  v1[15] = v12;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_44_2(v13);
  OUTLINED_FUNCTION_65_1();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
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
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_125_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  *(OUTLINED_FUNCTION_46_15(v4) + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = v2;
  *(v5 + 40) = v6;
  OUTLINED_FUNCTION_54_2(v5, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v8) == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_136_2();
  if (v10)
  {
    OUTLINED_FUNCTION_160_0();
    v1[13] = 0;
    v1[14] = 0;
  }

  else
  {
    v11 = *(v0 + 24);
    v12 = &type metadata for Double;
  }

  v1[12] = v11;
  v1[15] = v12;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_22_19(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_114_0(v14);
  OUTLINED_FUNCTION_65_1();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

void SearchCallHistoryCATs.confirmCallTypes(callTypeToConfirm:callTypesCount:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_2_48();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  *(v8 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v9 + 32) = 0xD000000000000011;
  *(v9 + 40) = v10;
  v11 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v0, 1, v13) == 1)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    *(v8 + 72) = v13;
    __swift_allocate_boxed_opaque_existential_1((v8 + 48));
    OUTLINED_FUNCTION_40();
    (*(v14 + 32))();
  }

  OUTLINED_FUNCTION_143_1();
  *(v8 + 80) = v15;
  *(v8 + 88) = v16;
  if (v2)
  {
    v4 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  else
  {
    v17 = &type metadata for Double;
  }

  *(v8 + 96) = v4;
  *(v8 + 120) = v17;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  *(v5 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v6 + 32) = 0xD000000000000014;
  *(v6 + 40) = v7;
  if (v3)
  {
    type metadata accessor for DialogCalendar();
    v8 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  *(v5 + 48) = v8;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 72) = v9;
  *(v5 + 80) = 0xD000000000000011;
  *(v5 + 88) = v10;
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 96) = v1 & 1;

  OUTLINED_FUNCTION_149(0xD000000000000024, 0x8000000000453F10, v5);
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125_2();
  v13 = *(v10 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  *(OUTLINED_FUNCTION_50_0(v15) + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 32) = v12 + 3;
  *(v16 + 40) = v17;
  if (v13)
  {
    type metadata accessor for DialogCalendar();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  *(v11 + 48) = v13;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 88) = v18;
  *(v11 + 120) = &type metadata for Bool;
  *(v11 + 96) = v19;
  OUTLINED_FUNCTION_218();
  *(v11 + 72) = v20;
  *(v11 + 80) = v12;

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_16_12(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_24(v22);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125_2();
  v13 = *(v10 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  *(OUTLINED_FUNCTION_51(v15) + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 32) = v12 + 3;
  *(v16 + 40) = v17;
  if (v13)
  {
    type metadata accessor for DialogCalendar();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  *(v11 + 48) = v13;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 88) = v18;
  *(v11 + 120) = &type metadata for Bool;
  *(v11 + 96) = v19;
  OUTLINED_FUNCTION_218();
  *(v11 + 72) = v20;
  *(v11 + 80) = v12;

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_76_9(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_39(v22);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)()
{
  OUTLINED_FUNCTION_61_6();
  v3 = v2;
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_125_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  *(v5 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v6 + 32) = v1 + 3;
  *(v6 + 40) = v7;
  if (v0)
  {
    type metadata accessor for DialogCalendar();
    v8 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v8;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 72) = v9;
  *(v5 + 80) = v1;
  *(v5 + 88) = v10;
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 96) = v3 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_23_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = v4;
  if (v0)
  {
    v5 = type metadata accessor for DialogPerson();
    v6 = v0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_18_2();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_54_6(v5, v6);

  OUTLINED_FUNCTION_29_11(0xD000000000000022, 0x8000000000453F40);
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_35_1(v13);
  *(OUTLINED_FUNCTION_50_0(v14) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v15 + 32) = 0xD000000000000012;
  *(v15 + 40) = v16;
  v17 = 0;
  if (v12)
  {
    v17 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v17);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_16_12(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_24(v19);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_35_1(v13);
  *(OUTLINED_FUNCTION_51(v14) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v15 + 32) = 0xD000000000000012;
  *(v15 + 40) = v16;
  v17 = 0;
  if (v12)
  {
    v17 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v17);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_76_9(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_39(v19);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:)()
{
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1(v1) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v2 + 32) = 0xD000000000000012;
  *(v2 + 40) = v3;
  if (v0)
  {
    v4 = type metadata accessor for DialogPerson();
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v4, v5);

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchCallHistoryCATs.confirmUnseen(intent:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_12_6(v3, xmmword_424FD0);
  if (v0)
  {
    v4 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_54_6(v4, v5);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0(31, v1 | 0x8000000000000000);
}

uint64_t SearchCallHistoryCATs.confirmUnseen(intent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmUnseen(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_50_0(v4);
  OUTLINED_FUNCTION_12_6(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_24(v8);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_12_6(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(31);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_37_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v3, v4);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180(31);
}

uint64_t SearchCallHistoryCATs.confirmUnseen(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.errorWithCode()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(31);
}

void SearchCallHistoryCATs.errorWithCodeAppConfigurationRequired(appName:intent:completion:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_2_48();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  OUTLINED_FUNCTION_0_4(v6, xmmword_424FF0);
  v7 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v0, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    v6[4].n128_u64[1] = v9;
    __swift_allocate_boxed_opaque_existential_1(&v6[3]);
    OUTLINED_FUNCTION_40();
    (*(v10 + 32))();
  }

  OUTLINED_FUNCTION_15_48();
  v6[5].n128_u64[0] = v11;
  v6[5].n128_u64[1] = v12;
  if (v2)
  {
    v13 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v14 = v2;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_18_2();
    v6[6].n128_u64[1] = 0;
    v6[7].n128_u64[0] = 0;
  }

  v6[6].n128_u64[0] = v14;
  v6[7].n128_u64[1] = v13;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0(55, v0 | 0x8000000000000000);

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.errorWithCodeAppConfigurationRequired(appName:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[6] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_197(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v7) == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = v0[4];
  OUTLINED_FUNCTION_15_48();
  v1[10] = v10;
  v1[11] = v11;
  v12 = 0;
  if (v9)
  {
    v12 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  v1[12] = v9;
  v1[15] = v12;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_44_2(v13);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
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
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_8_1();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v4 = OUTLINED_FUNCTION_46_15(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v7) == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = v0[3];
  OUTLINED_FUNCTION_15_48();
  v1[10] = v10;
  v1[11] = v11;
  v12 = 0;
  if (v9)
  {
    v12 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  v1[12] = v9;
  v1[15] = v12;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_114_0(v13);
  OUTLINED_FUNCTION_43_4(55);
  OUTLINED_FUNCTION_65_1();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

void SearchCallHistoryCATs.errorWithCodeAppConfigurationRequired(appName:intent:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_27_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_0_4(v8, xmmword_424FF0);
  outlined init with copy of SpeakableString?(v4, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v9);
  if (v10)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v8 + 48));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_47_15();
    v11();
  }

  OUTLINED_FUNCTION_15_48();
  *(v8 + 80) = v12;
  *(v8 + 88) = v13;
  if (v2)
  {
    v14 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v15 = v2;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18_2();
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v15;
  *(v8 + 120) = v14;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180(55);

  OUTLINED_FUNCTION_60_1();
}

void SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_66();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  OUTLINED_FUNCTION_200();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v34);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_27_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v37 = OUTLINED_FUNCTION_19_16(v36);
  OUTLINED_FUNCTION_0_104(v37, xmmword_427BC0);
  if (v24)
  {
    v27 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  *(v37 + 48) = v27;
  OUTLINED_FUNCTION_39_0();
  *(v37 + 72) = v38;
  *(v37 + 80) = 0xD000000000000014;
  *(v37 + 88) = v39;
  if (v26)
  {
    v25 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  *(v37 + 96) = v25;
  OUTLINED_FUNCTION_71_8();
  *(v37 + 120) = v40;
  *(v37 + 128) = v41;
  *(v37 + 136) = 0xE600000000000000;
  if (v22)
  {
    type metadata accessor for SirikitDeviceState();
    v42 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v37 + 152) = 0;
    *(v37 + 160) = 0;
  }

  *(v37 + 144) = v42;
  OUTLINED_FUNCTION_14_8();
  *(v37 + 168) = v43;
  *(v37 + 176) = v44;
  *(v37 + 184) = 0xE600000000000000;
  if (v33)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v45 = v33;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v37 + 200) = 0;
    *(v37 + 208) = 0;
  }

  *(v37 + 192) = v45;
  OUTLINED_FUNCTION_55_22();
  *(v37 + 216) = v46;
  *(v37 + 224) = v47;
  OUTLINED_FUNCTION_56_12();
  *(v37 + 232) = v48;
  *(v37 + 240) = v31 & 1;
  OUTLINED_FUNCTION_21_40();
  *(v37 + 264) = v49;
  *(v37 + 272) = v50;
  *(v37 + 280) = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v29, v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v51 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v51);
  if (v52)
  {

    outlined destroy of SpeakableString?(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v37 + 288) = 0u;
    *(v37 + 304) = 0u;
  }

  else
  {
    *(v37 + 312) = v24;
    __swift_allocate_boxed_opaque_existential_1((v37 + 288));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_47_15();
    v53();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15();
  v10[7] = a9;
  v10[8] = v9;
  OUTLINED_FUNCTION_157_0(v11, v12, v13, v14, v15, v16, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v19);
  v10[9] = OUTLINED_FUNCTION_45();
  v20 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v20, v21, v22);
}

uint64_t SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v10 + 104);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_19_16(v14);
  v16 = OUTLINED_FUNCTION_193(v15);
  OUTLINED_FUNCTION_0_104(v16, xmmword_427BC0);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_219();
  *(v11 + 48) = v17;
  OUTLINED_FUNCTION_104_3();
  *(v11 + 72) = v18;
  *(v11 + 80) = v12;
  *(v11 + 88) = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = *(v10 + 40);
  OUTLINED_FUNCTION_36_26(v21);
  if (v22)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v23 = *(v10 + 48);
  *(v11 + 144) = v22;
  OUTLINED_FUNCTION_14_8();
  v26 = OUTLINED_FUNCTION_98_5(v24, v25);
  if (v23)
  {
    v26 = type metadata accessor for PhoneSearchCallHistoryIntent(v26);
  }

  else
  {
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  OUTLINED_FUNCTION_20_40(v26);
  *(v11 + 240) = v27;
  OUTLINED_FUNCTION_21_40();
  *(v11 + 264) = v29;
  *(v11 + 272) = v28;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v30);
  v31 = type metadata accessor for SpeakableString();
  v32 = OUTLINED_FUNCTION_69_12(v31);
  v33 = *(v10 + 72);
  if (v32 == 1)
  {

    outlined destroy of SpeakableString?(v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v34();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 88) = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_109_3(v35);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v41(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v10 + 96);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_19_16(v14);
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_0_104(v16, xmmword_427BC0);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_219();
  *(v11 + 48) = v17;
  OUTLINED_FUNCTION_104_3();
  *(v11 + 72) = v18;
  *(v11 + 80) = v12;
  *(v11 + 88) = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v21 = &type metadata for Double;
  }

  v22 = *(v10 + 32);
  OUTLINED_FUNCTION_36_26(v21);
  if (v22)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v23 = *(v10 + 40);
  *(v11 + 144) = v22;
  OUTLINED_FUNCTION_14_8();
  v26 = OUTLINED_FUNCTION_98_5(v24, v25);
  if (v23)
  {
    v26 = type metadata accessor for PhoneSearchCallHistoryIntent(v26);
  }

  else
  {
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  OUTLINED_FUNCTION_20_40(v26);
  *(v11 + 240) = v27;
  OUTLINED_FUNCTION_21_40();
  *(v11 + 264) = v29;
  *(v11 + 272) = v28;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v30);
  v31 = type metadata accessor for SpeakableString();
  v32 = OUTLINED_FUNCTION_69_12(v31);
  v33 = *(v10 + 64);
  if (v32 == 1)
  {

    outlined destroy of SpeakableString?(v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_123_0();
    v34();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v35 = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_77_12(v35);
  *v36 = v37;
  OUTLINED_FUNCTION_156_0(v36);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}