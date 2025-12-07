uint64_t HandleIntentSubmitter.submit(app:intent:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = HandleIntentSubmitter.submit(app:intent:);
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = HandleIntentSubmitter.submit(app:intent:);
  }

  return _swift_task_switch(v5, 0, 0);
}

id HandleIntentSubmitter.makeIntentResponse(from:)(void *a1)
{
  result = [a1 intentResponse];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  v4 = [result typeName];

  result = [a1 intentResponse];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result data];

  if (v6)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v7, v9);
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = INIntentResponseCreate();

  if (v11)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

Swift::Bool __swiftcall PhoneSettingProvider.restrictReturnMissedCalls()()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  return AppBooleanValue == 0;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_55_10();
      break;
    case 3:
      OUTLINED_FUNCTION_87_3();
      break;
    case 5:
      OUTLINED_FUNCTION_90_0();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_58_4();
  switch(v0)
  {
    case 2:
      break;
    default:
      OUTLINED_FUNCTION_23_12();
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_86_4();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_81_2();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_31_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_55_10();
      break;
    case 3:
      OUTLINED_FUNCTION_87_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_48_12();
  switch(v0)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_24_7();
      break;
    case 2:
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_77_6();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_55_10();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_23_12();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_24_7();
  return OUTLINED_FUNCTION_44_8(v1, v0 & 0xFFFFFFFFFFFFLL | 0x7546000000000000, 0x656D614E6C6CLL);
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_37_13();
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_73_3();
      break;
    case 2:
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_84_4();
LABEL_4:
      OUTLINED_FUNCTION_13_16();
      break;
    case 5:
      OUTLINED_FUNCTION_1_63();
      break;
    case 6:
      OUTLINED_FUNCTION_14_32();
      break;
    case 7:
      OUTLINED_FUNCTION_63_5();
      break;
    case 8:
      OUTLINED_FUNCTION_82_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_63_5();
  return OUTLINED_FUNCTION_17_20(v0, v1, 0x6C6C614379);
}

{
  OUTLINED_FUNCTION_59_5();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_10_34();
      break;
    case 3:
      OUTLINED_FUNCTION_9_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_61_10();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_60_6();
      break;
    case 6:
      OUTLINED_FUNCTION_14_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_56_3();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_1_63();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_60_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_61_10();
      break;
    case 3:
      OUTLINED_FUNCTION_62_9();
      OUTLINED_FUNCTION_23_12();
      break;
    case 4:
      OUTLINED_FUNCTION_23_12();
      OUTLINED_FUNCTION_29_17();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_73_3();
      break;
    case 2:
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_84_4();
LABEL_6:
      OUTLINED_FUNCTION_13_16();
      break;
    case 4:
      OUTLINED_FUNCTION_1_63();
      break;
    case 6:
      OUTLINED_FUNCTION_55_10();
      break;
    case 12:
      OUTLINED_FUNCTION_90_0();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_59_5();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_10_34();
      break;
    case 4:
      OUTLINED_FUNCTION_9_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_1_63();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_14_32();
      break;
    case 2:
      OUTLINED_FUNCTION_82_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_56_3();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_73_3();
      break;
    case 8:
      OUTLINED_FUNCTION_1_63();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_63_5();
  return String.hash(into:)();
}

{
  OUTLINED_FUNCTION_31_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_86_4();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_31_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_31_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_5_42();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_23_12();
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_69_5();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_85_2();
      break;
    case 4:
      OUTLINED_FUNCTION_14_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_85_2();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_5_42();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_30_15();
      break;
    case 2:
      OUTLINED_FUNCTION_30_15();
      break;
    case 3:
      OUTLINED_FUNCTION_36_13();
      break;
    case 4:
      OUTLINED_FUNCTION_36_13();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 2:
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_23_12();
      break;
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    OUTLINED_FUNCTION_58_4();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_23_12();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_23_12();
      OUTLINED_FUNCTION_76_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_47_12();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    OUTLINED_FUNCTION_35_9();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_27_13();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_78_5();
  }

  else
  {
    OUTLINED_FUNCTION_28_14();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_12_34();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_29_17();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_80_3();
  }

  OUTLINED_FUNCTION_79_4();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_12_34();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_78_5();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_27_13();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_30_15();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_65_7();
    OUTLINED_FUNCTION_12_34();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_67_4();
      break;
    case 2:
      OUTLINED_FUNCTION_34_9();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_26_3();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_75_4();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_5_42();
      break;
    case 3:
      OUTLINED_FUNCTION_14_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_65_7();
    OUTLINED_FUNCTION_26_3();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_12_34();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_62_9();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_27_13();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    case 2:
      OUTLINED_FUNCTION_28_14();
      break;
    default:
      OUTLINED_FUNCTION_23_12();
      break;
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_12_34();
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UsoIdentifierNamespaceType.rawValue.getter);
}

{
  OUTLINED_FUNCTION_36_13();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_89_1();
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_73_3();
  return OUTLINED_FUNCTION_21_17(v3, v2 | 0x7473694800000000, 7959151);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, DucFamilyNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallSlotNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallAttribute.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallRecord.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallVerb.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallControlCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallContactReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallDisplayTextCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallControlAction.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallNLConstants.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallControlCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, OngoingCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, OngoingCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SearchCallHistoryCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SearchCallHistoryCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SearchCallHistoryCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.ConfirmContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.RelationshipDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AddCallParticipantCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AddCallParticipantCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UnsupportedPhoneCall.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UnsupportedFlowCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UnsupportedFlowCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UnsupportedFlowCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1)
{
  return OUTLINED_FUNCTION_0_58(a1, 21, 0x8000000000454630);
}

{
  return OUTLINED_FUNCTION_0_58(a1, 21, 0x80000000004566C0);
}

{
  return OUTLINED_FUNCTION_19_22(a1, 0x74706D6F7270);
}

{
  return OUTLINED_FUNCTION_0_58(a1, 17, 0x8000000000453330);
}

{
  return OUTLINED_FUNCTION_17_20(a1, 0x6553657461647075, 0x676E697474);
}

{
  return OUTLINED_FUNCTION_2_54(a1, 0x6E776F6E6B6E75);
}

{
  return OUTLINED_FUNCTION_17_20(a1, 0x697263736E617254, 0x6E6F697470);
}

{
  return OUTLINED_FUNCTION_21_17(a1, 0x6974746553707061, 7563118);
}

{
  return OUTLINED_FUNCTION_2_54(a1, 0x7070416E65706FLL);
}

{
  return OUTLINED_FUNCTION_6_41(a1, 1819042147);
}

{
  return String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_42_10(a1, 0x6C6562616CLL);
}

{
  return OUTLINED_FUNCTION_2_54(a1, 0x6C6C614377656ELL);
}

{
  return OUTLINED_FUNCTION_40_12(a1, 0x746E6F436E65706FLL, 1937007457);
}

{
  return OUTLINED_FUNCTION_19_22(a1, 0x6C65636E6163);
}

{
  return OUTLINED_FUNCTION_6_41(a1, 1954047342);
}

{
  return OUTLINED_FUNCTION_6_41(a1, 1852403562);
}

{
  return OUTLINED_FUNCTION_44_8(a1, 0x56495443415F4F4ELL, 0x4C4C41435F45);
}

{
  return OUTLINED_FUNCTION_0_58(a1, 16, 0x8000000000452470);
}

{
  return String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_6_41(a1, 1953720684);
}

{
  return OUTLINED_FUNCTION_42_10(a1, 0x6573756170);
}

{
  return OUTLINED_FUNCTION_21_17(a1, 0x6C646E7542707061, 6572389);
}

{
  return OUTLINED_FUNCTION_2_54(a1, 0x636972656E6567);
}

{
  return OUTLINED_FUNCTION_0_58(a1, 24, 0x8000000000455860);
}

{
  return OUTLINED_FUNCTION_0_58(a1, 18, 0x8000000000455840);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_94_3();
  return String.hash(into:)();
}

{
  OUTLINED_FUNCTION_73_3();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_23_12();
      OUTLINED_FUNCTION_29_17();
      break;
    case 2:
      OUTLINED_FUNCTION_62_9();
      OUTLINED_FUNCTION_23_12();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_73_3();
  switch(v3)
  {
    case 2:
      OUTLINED_FUNCTION_23_12();
      break;
    case 4:
      OUTLINED_FUNCTION_58_4();
      break;
    case 5:
      OUTLINED_FUNCTION_73_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    OUTLINED_FUNCTION_73_3();
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_88_3();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_49_9();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_46_10();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_54_12();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_53_12();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_24_7();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_68_3();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_51_11();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_5_42();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_50_11();
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2, uint64_t a3)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_63_5();
      break;
    case 4:
      OUTLINED_FUNCTION_73_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ActionableCallControlFlow.UnsupportedHoldActionReason.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UnsupportedFlowCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UnsupportedFlowCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UnsupportedFlowCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UnsupportedPhoneCall.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceIncomingCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, FaceTimeMessageControllerFlow.State.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AddCallParticipantCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AddCallParticipantCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AddCallParticipantCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PostCallInquiryAnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnswerCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SiriPhoneDefaultsKey.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.ConfirmAppDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.RelationshipDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.ConfirmContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.EmergencyCountdownDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.DisambiguateContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.DisambiguateContactsHandlesDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, HangUpCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, OngoingCallCATsSimple.NewCallPromptDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, OngoingCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, OngoingCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceCallBellCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneAppResolutionLogger.CodePathId.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneAppSelectionSignalsGathererType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, CallControlUsoIdentifiers.PhoneSetting.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneStartCallIntent.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneSearchCallHistoryIntent.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneIncomingCall.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallAudioRoute.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallCommonCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallNLConstants.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallConfirmation.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlAction.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallVerbSemantics.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlNLIntent.Verb.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlNLIntent.Target.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallDestinationType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallDisplayTextCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallCommonCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallContactReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATsSimple.CallControlDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallCommonCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallNoun.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallVerb.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallRecord.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallProvider.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallAttribute.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallSlotNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, DucFamilyNames.rawValue.getter);
}

{
  OUTLINED_FUNCTION_73_3();
  return OUTLINED_FUNCTION_22_13(v3, v2 | 0x7473694800000000, 7959151);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ContactSourceType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, FollowUpOfferType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ReaderNLConstants.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SlotResolutionError.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceVoicemailCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoicemailVerbSemantics.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SpecifyingContactAddress.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UsoIdentifierNamespaceType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ForcedAppDisambiguationPhase.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceVoicemailDirectAction.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, TrialSmartAppSelectionConfigKey.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, LogTag.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceMail.VoiceMailVerb.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x636972656E6567;
  }

  else
  {
    v4 = 0x79616C50726163;
  }

  OUTLINED_FUNCTION_93_0(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x46676E6974696177;
    }

    else
    {
      v4 = 0x6365527475706E69;
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_11();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x646C6F486E4FLL;
    }

    else
    {
      v4 = 0x676E69676E6952;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_42();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x6F725074726F6873;
  }

  else
  {
    v4 = 0x6D6F7250676E6F6CLL;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 1735289202;
  }

  else
  {
    v4 = 6579297;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x756F687469575446;
    }

    else
    {
      v4 = 0x636972656E6547;
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_11();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x6423317473726966;
  }

  else
  {
    OUTLINED_FUNCTION_68_3();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x32676F6C616964;
  }

  else
  {
    v4 = 0x6E776F6E6B6E55;
  }

  OUTLINED_FUNCTION_93_0(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_16_10();
  if (v3)
  {
    v4 = 0x32676F6C616964;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  OUTLINED_FUNCTION_39_3(v1, v4, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_16_10();
  if (v3)
  {
    v4 = 0x436D7269666E6F43;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  OUTLINED_FUNCTION_39_3(v1, v4, v2);

  return Hasher._finalize()();
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_16_10();
  if (v3)
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0x65766947656D6153;
  }

  OUTLINED_FUNCTION_39_3(v1, v4, v2);

  return Hasher._finalize()();
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_3_44(a1, 0x636972656E6567);
}

{
  return OUTLINED_FUNCTION_22_13(a1, 0x6C646E7542707061, 6572389);
}

{
  OUTLINED_FUNCTION_71_2(a1);
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_39_3(v1, v2, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_71_2(a1);
  v4 = 28494;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_67_4();
      break;
    case 2:
      OUTLINED_FUNCTION_34_9();
      break;
    case 3:
      v4 = 7562585;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_16_10();
  if (v3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x31676F6C616964;
  }

  OUTLINED_FUNCTION_39_3(v1, v4, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_16_10();
  if (v3)
  {
    v4 = 0x32676F6C616964;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  OUTLINED_FUNCTION_39_3(v1, v4, v2);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_43_13(a1, 0x6573756170);
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_93_0(v1, v2, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x636972656E6567;
  }

  else
  {
    v4 = 0x656D695465636166;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x654E646E41646E65;
    }

    else
    {
      v4 = 0x4E646E41646C6F68;
    }
  }

  else
  {
    v4 = 6579297;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x6C61436F54646461;
  }

  else
  {
    v4 = 0x6C6C614377656ELL;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_39_3(v2, v1 & 0xFFFFFFFFFFFFLL | 0x6423000000000000, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x32676F6C616964;
  }

  else
  {
    v4 = 0x6573557473726946;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_35(a1, 1953720684);
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x7461446567616D69;
    }

    else
    {
      v4 = 0x63417463656C6573;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_7();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, 0x6F68706F7263696DLL, 0xEA0000000000656ELL);
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6563696F76;
    }

    else
    {
      v4 = 0x656D756C6F76;
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_12();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_62_9();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_45_9(a1, 0x56495443415F4F4ELL, 0x4C4C41435F45);
}

{
  OUTLINED_FUNCTION_38_11(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_78_5();
    if (v4)
    {
      v5 = 1836020326;
    }

    else
    {
      v5 = 1752459639;
    }
  }

  else
  {
    v5 = 28532;
  }

  OUTLINED_FUNCTION_39_3(v2, v5, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6C6F566B63656863;
    }

    else
    {
      v4 = 0x636972656E6567;
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_10();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x656D697465636166;
    }

    else
    {
      v4 = 0x7261506472696874;
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_12();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_71_2(a1);
  OUTLINED_FUNCTION_59_5();
  switch(v1)
  {
    case 1:
      v3 = 28526;
      break;
    case 2:
      OUTLINED_FUNCTION_10_34();
      break;
    case 3:
      OUTLINED_FUNCTION_9_32();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v2, v3, v4);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_35(a1, 1852403562);
}

{
  return OUTLINED_FUNCTION_7_35(a1, 1954047342);
}

{
  return OUTLINED_FUNCTION_20_22(a1, 0x6C65636E6163);
}

{
  return OUTLINED_FUNCTION_41_12(a1, 0x746E6F436E65706FLL, 1937007457);
}

{
  return OUTLINED_FUNCTION_3_44(a1, 0x6C6C614377656ELL);
}

{
  return OUTLINED_FUNCTION_43_13(a1, 0x6C6562616CLL);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, 0x64656C65636E6163, 0xE800000000000000);
}

{
  return OUTLINED_FUNCTION_7_35(a1, 1819042147);
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x656E6F6850657375;
  }

  else
  {
    v4 = 0x68506E6F4E657375;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_3_44(a1, 0x7070416E65706FLL);
}

{
  OUTLINED_FUNCTION_38_11(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_22_13(a1, 0x6974746553707061, 7563118);
}

{
  return OUTLINED_FUNCTION_18_15(a1, 0x697263736E617254, 0x6E6F697470);
}

{
  return OUTLINED_FUNCTION_3_44(a1, 0x6E776F6E6B6E75);
}

{
  return OUTLINED_FUNCTION_18_15(a1, 0x6553657461647075, 0x676E697474);
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 28532;
    }

    else
    {
      v4 = 0x6F68576F74;
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_9();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  if (!v1)
  {
    OUTLINED_FUNCTION_80_3();
  }

  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_39_3(v2, v3, v4);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_20_22(a1, 0x74706D6F7270);
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6C61636F4C6E6F6ELL;
    }

    else
    {
      v4 = 1701736302;
    }
  }

  else
  {
    OUTLINED_FUNCTION_88_3();
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x644970756F7267;
  }

  else
  {
    v4 = 0x6D614E70756F7267;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x7069636974726170;
  }

  else
  {
    v4 = 0x7954657469766E69;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x6E6F697461727564;
  }

  else
  {
    v4 = 0x73456F54656D6974;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_78_5();
    if (v4)
    {
      v5 = 1886352499;
    }

    else
    {
      v5 = 0x746165706572;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_14();
  }

  OUTLINED_FUNCTION_39_3(v2, v5, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x6C61636F6CLL;
  }

  else
  {
    v4 = 0x6E676965726F66;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_71_2(a1);
  v4 = 863390798;
  switch(v1)
  {
    case 1:
      v4 = 880168014;
      break;
    case 2:
      OUTLINED_FUNCTION_37_13();
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_71_2(a1);
  OUTLINED_FUNCTION_36_13();
  v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_89_1();
      break;
    case 2:
      v5 = 1953718636;
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v2, v5, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_47_12();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    OUTLINED_FUNCTION_35_9();
  }

  OUTLINED_FUNCTION_39_3(v2, v3, v4);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_71_2(a1);
  OUTLINED_FUNCTION_48_12();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_24_7();
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_77_6();
      break;
    case 3:
      OUTLINED_FUNCTION_24_7();
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v2, v3, v4);

  return Hasher._finalize()();
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  OUTLINED_FUNCTION_62_9();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_16_10();
  if (v3)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x6F56746165706572;
  }

  OUTLINED_FUNCTION_39_3(v1, v4, v2);

  return Hasher._finalize()();
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_16_10();
  if (v3)
  {
    v4 = 0x746163696C707041;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  OUTLINED_FUNCTION_39_3(v1, v4, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11(a1);
  OUTLINED_FUNCTION_81_2();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x6D69547472617473;
  }

  else
  {
    v4 = 0x69546C65636E6163;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x32676F6C616964;
  }

  else
  {
    v4 = 0x31676F6C616964;
  }

  OUTLINED_FUNCTION_93_0(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_38_11(a1);
  if (v1)
  {
    v4 = 0x6563696F76;
  }

  else
  {
    v4 = 0x69616D6563696F76;
  }

  OUTLINED_FUNCTION_39_3(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  OUTLINED_FUNCTION_63_5();
  return specialized RawRepresentable<>._rawHashValue(seed:)(v0, v1, 0xEF7265626D754E79);
}

{
  OUTLINED_FUNCTION_63_5();
  return OUTLINED_FUNCTION_18_15(v0, v1, 0x6C6C614379);
}

{
  OUTLINED_FUNCTION_24_7();
  return OUTLINED_FUNCTION_45_9(v1, v0 & 0xFFFFFFFFFFFFLL | 0x7546000000000000, 0x656D614E6C6CLL);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_94_3();
  return specialized RawRepresentable<>._rawHashValue(seed:)(v3, v4, v5);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  Hasher.init(_seed:)();
  v5 = a3(a2 & 1);
  OUTLINED_FUNCTION_72_3(v5, v6, v7);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  OUTLINED_FUNCTION_72_3(v5, v6, v7);

  return Hasher._finalize()();
}

uint64_t specialized CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  static UnlockDevicePolicy.default.getter();
  *(v3 + direct field offset for CallingIntentContinueInAppStrategy.additionalCommands) = _swiftEmptyArrayStorage;
  outlined init with take of SPHConversation(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:), 0, 0);
}

uint64_t specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = v20[7];
  v21 = v20[8];
  v23 = v20[6];
  v24 = v20[4];
  v20[2] = _swiftEmptyArrayStorage;
  (*(v22 + 16))(v21, v24, v23, a4, a5, a6, a7, a8);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriPhone);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v27))
  {
    v28 = OUTLINED_FUNCTION_65_0();
    *v28 = 0;
    OUTLINED_FUNCTION_14_1(&dword_0, v29, v30, "#CallingIntentContinueInAppStrategy: Building launch app command for INStartCallIntent");
    OUTLINED_FUNCTION_26_0(v28);
  }

  v31 = v20[8];
  v32 = v20[5];

  v33 = swift_task_alloc();
  v20[9] = v33;
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  v34 = swift_task_alloc();
  v20[10] = v34;
  v35 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  *v34 = v20;
  v34[1] = specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v20 + 3, 0, 0, 0xD000000000000040, 0x8000000000458F30, partial apply for specialized closure #1 in CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:), v33, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);
  }

  else
  {
    v2 = specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 56) + 8);
  v4 = *(v0 + 24);
  v3(v1, v2);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v0 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = *(v0 + 16);

  v6 = *(v0 + 8);

  return v6(v5);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t specialized closure #1 in CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v4 = type metadata accessor for CATOption();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.app.getter();
  v9 = IntentResolutionRecord.intent.getter();
  v10 = IntentResolutionRecord.intentResponse.getter();
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  type metadata accessor for UnsupportedFlowCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin05Startb7RCHFlowD0C29makeLaunchAppCommandForHandle3app13sharedGlobals6intent0Q8Response16biomeEventSender011unsupportedC4Cats_y04SiriJ10Resolution0J0C_AA06SharedP9Providing_pSo07INStartB6IntentCSo07INStartb6IntentR0CSgAA05BiomeT7Sending_pAA011UnsupportedC4CATsCys6ResultOySo013SAIntentGroupiJ10WithIntentCs5Error_pGctFZTf4nnnnennn_nAA05BiometU0V_Tt6g5();
}

uint64_t specialized CallingIntentContinueInAppStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = direct field offset for CallingIntentContinueInAppStrategy.authenticationPolicy;
  v2 = type metadata accessor for UnlockDevicePolicy();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  *(v3 + direct field offset for HangUpAndCallHandleIntentStrategy.options) = a2;
  outlined init with copy of SignalProviding(a1, v11);
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v7 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  v9 = specialized CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(v11, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:), 0, 0);
}

uint64_t HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)()
{
  v13 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x8000000000458F30, &v12);
    *(v4 + 12) = 2080;
    lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions();
    v6 = Set.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_0, v2, v3, "#HangUpAndCallHandleIntentStrategy %s, options: %s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_26_0(v4);
  }

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);
  v10 = v0[7];

  return specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(v10);
}

uint64_t HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:), 0, 0);
  }
}

{
  v3 = *(v1[9] + direct field offset for HangUpAndCallHandleIntentStrategy.options);
  if (!*(v3 + 16))
  {
    goto LABEL_32;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_33_11();
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if (*(v3 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_33_11();
      if (v7)
      {
        while (!*(*(v3 + 48) + v2) || *(*(v3 + 48) + v2) == 1)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v8)
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_57_9();
          if ((v9 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_27:
        v21 = v1[9];
        v22 = v21[5];
        v23 = v21[6];
        __swift_project_boxed_opaque_existential_1(v21 + 2, v22);
        (*(v23 + 120))(v22, v23);
        v24 = v1[5];
        v25 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v24);
        if ((*(v25 + 24))(v24, v25))
        {
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_1(v1 + 2);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_16_4(v29))
          {
            v30 = OUTLINED_FUNCTION_65_0();
            *v30 = 0;
            _os_log_impl(&dword_0, v28, v29, "#HangUpAndCallHandleIntentStrategy Holding call and sending default continueInApp commands", v30, 2u);
            OUTLINED_FUNCTION_26_0(v30);
          }

          ObjectType = swift_getObjectType();
          (*(v27 + 200))(ObjectType, v27);
          swift_unknownObjectRelease();
          goto LABEL_35;
        }

        __swift_destroy_boxed_opaque_existential_1(v1 + 2);
      }
    }

LABEL_32:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v33))
    {
      v34 = OUTLINED_FUNCTION_65_0();
      *v34 = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v35, v36, "#HangUpAndCallHandleIntentStrategy Unexpected case: sending default continueInApp commands");
      OUTLINED_FUNCTION_26_0(v34);
    }

LABEL_35:
    v20 = v1[12];
    goto LABEL_36;
  }

  while (!*(*(v3 + 48) + v2) || *(*(v3 + 48) + v2) == 2)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_57_9();
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_15:
  v10 = specialized Array.count.getter(v1[12]);
  if (!v10)
  {

    v20 = _swiftEmptyArrayStorage;
LABEL_36:
    v37 = v1[1];

    return v37(v20);
  }

  v11 = v10;

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
    goto LABEL_41;
  }

  v13 = 0;
  v14 = v1[12];
  v15 = v14 & 0xC000000000000001;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  v17 = v14 + 32;
  while (1)
  {
    if (v15)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_23;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *(v16 + 16))
    {
      goto LABEL_40;
    }

    v18 = *(v17 + 8 * v13);
LABEL_23:
    v19 = v18;
    ++v13;
    HangUpAndCallHandleIntentStrategy.wrapLaunchAppWithHangUp(command:)(v18);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v11 == v13)
    {

      v20 = _swiftEmptyArrayStorage;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

id HangUpAndCallHandleIntentStrategy.wrapLaunchAppWithHangUp(command:)(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = one-time initialization token for siriPhone;
  if (v3)
  {
    v5 = v3;
    v6 = a1;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v9))
    {
      v10 = OUTLINED_FUNCTION_65_0();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "#HangUpAndCallHandleIntentStrategy HandleIntent(INHangUpCallIntent) before LaunchAppWithIntent", v10, 2u);
      OUTLINED_FUNCTION_26_0(v10);
    }

    v11 = [objc_allocWithZone(SAResultCallback) init];
    [v11 setCode:SAResultCallbackAnySuccessCodeValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_426260;
    *(v12 + 32) = v5;
    v13 = v6;
    outlined bridged method (mbnn) of @objc SAResultCallback.commands.setter(v12, v11);
    v14 = [objc_allocWithZone(INHangUpCallIntent) init];
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
    v33 = &type metadata for PhoneCallFeatureFlags;
    v34 = &protocol witness table for PhoneCallFeatureFlags;
    *&v32 = swift_allocObject();
    memcpy((v32 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
    outlined init with take of SPHConversation(&v32, v35);
    outlined init with copy of PhoneCallFeatureFlags(__dst, v30);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    v15 = OUTLINED_FUNCTION_3_13();
    v16(v15);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    OUTLINED_FUNCTION_3_13();
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriFaceTimeMacExtension != -1)
      {
        swift_once();
      }

      v17 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v30, v31);
      OUTLINED_FUNCTION_3_13();
      if (dispatch thunk of DeviceState.isWatch.getter())
      {
        if (one-time initialization token for siriPhoneWatchExtension != -1)
        {
          swift_once();
        }

        v17 = &static DefaultPhoneApps.siriPhoneWatchExtension;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v30, v31);
        OUTLINED_FUNCTION_3_13();
        if (dispatch thunk of DeviceState.isXRDevice.getter())
        {
          if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
          {
            swift_once();
          }

          v17 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
        }

        else
        {
          if (one-time initialization token for siriPhoneExtension != -1)
          {
            swift_once();
          }

          v17 = &static DefaultPhoneApps.siriPhoneExtension;
        }
      }
    }

    v23 = *v17;

    __swift_destroy_boxed_opaque_existential_1(v30);

    v24 = v14;
    INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v23, 0, (v2 + 16));

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntent, SAIntentGroupHandleIntent_ptr);
    v25 = SAIntentGroupHandleIntent.init(intent:appIdentifier:)(v24, 0, 0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_426260;
    *(v26 + 32) = v11;
    v27 = v25;
    v28 = v11;
    outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(v26, v27);

    return v27;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_65_0();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "#HangUpAndCallHandleIntentStrategy Not LaunchApp - no modification to AceCommand", v21, 2u);
      OUTLINED_FUNCTION_26_0(v21);
    }

    return a1;
  }
}

uint64_t HangUpAndCallHandleIntentStrategy.deinit()
{
  v0 = specialized CallingIntentContinueInAppStrategy.deinit();

  return v0;
}

uint64_t HangUpAndCallHandleIntentStrategy.__deallocating_deinit()
{
  specialized CallingIntentContinueInAppStrategy.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions()
{
  result = lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions;
  if (!lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions;
  if (!lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions);
  }

  return result;
}

uint64_t type metadata accessor for HangUpAndCallHandleIntentStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for HangUpAndCallHandleIntentStrategy;
  if (!type metadata singleton initialization cache for HangUpAndCallHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_TA_0(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);

  return _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_(a1, a2 & 1);
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t a1)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_72_3(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

PhoneCallFlowDelegatePlugin::HangUpCallCATs::Properties_optional __swiftcall HangUpCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATs.Properties.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t HangUpCallCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000026;
    }

    else
    {
      return 0xD000000000000020;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::HangUpCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::HangUpCallCATs::Properties_optional *a2@<X8>)
{
  result.value = HangUpCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HangUpCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = HangUpCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t HangUpCallCATs.errorWithCode()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = HangUpCallCATs.errorWithCode();
  v4 = OUTLINED_FUNCTION_5_0();

  return v6(v4, 0xD000000000000018);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000018, 0x8000000000452600, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(24);
}

uint64_t HangUpCallCATs.errorWithCodeNoCallToHangUp()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;
  v4 = OUTLINED_FUNCTION_5_0();

  return v6(v4, 0xD000000000000026);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v5(0xD000000000000026, 0x8000000000452620, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(38);
}

uint64_t HangUpCallCATs.intentHandledResponse()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = HangUpCallCATs.errorWithCode();
  v4 = OUTLINED_FUNCTION_5_0();

  return v6(v4, 0xD000000000000020);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000020, 0x8000000000452650, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(32);
}

uint64_t HangUpCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v11;
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATs.Properties and conformance HangUpCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATs.Properties and conformance HangUpCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type HangUpCallCATs.Properties and conformance HangUpCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATs.Properties and conformance HangUpCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for HangUpCallCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for HangUpCallCATs;
  if (!type metadata singleton initialization cache for HangUpCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HangUpCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::HangUpCallCATsSimple::Properties_optional __swiftcall HangUpCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::HangUpCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::HangUpCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = HangUpCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t HangUpCallCATsSimple.errorWithCode()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v4(0xD000000000000018, 0x8000000000452600, _swiftEmptyArrayStorage);
}

BOOL HangUpCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = HangUpCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t HangUpCallCATsSimple.errorWithCodeAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000018, 0x8000000000452600, _swiftEmptyArrayStorage, &type metadata for HangUpCallCATsSimple.ErrorWithCodeDialogIds);
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

uint64_t HangUpCallCATsSimple.errorWithCodeNoCallToHangUp()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v4(0xD000000000000026, 0x8000000000452620, _swiftEmptyArrayStorage);
}

BOOL HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t HangUpCallCATsSimple.errorWithCodeNoCallToHangUpAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000026, 0x8000000000452620, _swiftEmptyArrayStorage, &type metadata for HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds);
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds);
  }

  return result;
}

uint64_t HangUpCallCATsSimple.intentHandledResponse(callRinging:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(HangUpCallCATsSimple.intentHandledResponse(callRinging:), 0, 0);
}

uint64_t HangUpCallCATsSimple.intentHandledResponse(callRinging:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x676E69526C6C6163;
  *(v2 + 40) = 0xEB00000000676E69;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v7 = v3;
  *(v0 + 24) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = HangUpCallCATsSimple.intentHandledResponse(callRinging:);

  return v7(0xD000000000000020, 0x8000000000452650, v2);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(HangUpCallCATsSimple.intentHandledResponse(callRinging:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(v3);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

BOOL HangUpCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = HangUpCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t HangUpCallCATsSimple.intentHandledResponseAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000020, 0x8000000000452650, _swiftEmptyArrayStorage, &type metadata for HangUpCallCATsSimple.IntentHandledResponseDialogIds);
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t HangUpCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of URL?(a1, &v16 - v13);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of URL?(a1);
  return v14;
}

uint64_t HangUpCallCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t HangUpCallCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATsSimple.Properties and conformance HangUpCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.Properties and conformance HangUpCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.Properties and conformance HangUpCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.Properties and conformance HangUpCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for HangUpCallCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for HangUpCallCATsSimple;
  if (!type metadata singleton initialization cache for HangUpCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HangUpCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for HangUpCallCATsSimple.ErrorWithCodeDialogIds(_BYTE *result, int a2, int a3)
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

void *specialized PhoneFlow.init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  return specialized PhoneFlow.init(state:sharedGlobals:)(a1, a2, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
}

{
  return specialized PhoneFlow.init(state:sharedGlobals:)(a1, a2, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
}

void *specialized PhoneFlow.init(state:sharedGlobals:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4)
{
  v4[2] = 0x6F6C46656E6F6850;
  v4[3] = 0xE900000000000077;
  outlined init with take of PhoneCallFlowState<INAnswerCallIntent, INAnswerCallIntentResponse>(a1, v4 + *(*v4 + 112), a3, a4);
  outlined init with take of SPHConversation(a2, v4 + *(*v4 + 120));
  return v4;
}

void *HangUpCallFlow.init(input:sharedGlobals:app:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriPhone);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#HangUpCallFlow: initialize", v11, 2u);
    OUTLINED_FUNCTION_26_0(v11);
  }

  *(v4 + direct field offset for HangUpCallFlow.app) = a3;
  outlined init with copy of SignalProviding(a2, v16);
  v12 = specialized PhoneFlow.init(sharedGlobals:)(v16);
  v13 = *(*v12 + 192);

  v13(a1);

  __swift_destroy_boxed_opaque_existential_1(a2);
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  (*(v14 + 8))(a1);
  return v12;
}

void *HangUpCallFlow.init(state:sharedGlobals:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(v21, &static PhoneCallFeatureFlags.instance, sizeof(v21));
  v18 = &type metadata for PhoneCallFeatureFlags;
  v19 = &protocol witness table for PhoneCallFeatureFlags;
  *&v17 = swift_allocObject();
  memcpy((v17 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v17, v20);
  outlined init with copy of PhoneCallFeatureFlags(v21, &v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = OUTLINED_FUNCTION_3_13();
  v10(v9);
  __swift_project_boxed_opaque_existential_1(&v15, v16);
  OUTLINED_FUNCTION_3_13();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v11 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    OUTLINED_FUNCTION_3_13();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v11 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      OUTLINED_FUNCTION_3_13();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v11 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v11 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v12 = *v11;

  __swift_destroy_boxed_opaque_existential_1(&v15);
  *(v3 + direct field offset for HangUpCallFlow.app) = v12;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v8);
  outlined init with copy of SignalProviding(a2, &v15);
  v13 = specialized PhoneFlow.init(state:sharedGlobals:)(v8, &v15, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v13;
}

uint64_t HangUpCallFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_42();
    v33 = v4;
    v15 = v14;
    v32 = OUTLINED_FUNCTION_36();
    v34[0] = v32;
    *v15 = 136315138;
    (*(*v1 + 128))();
    v16 = specialized PhoneCallFlowState.description.getter();
    v17 = a1;
    v19 = v18;
    outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v10);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, v34);
    OUTLINED_FUNCTION_11_0();
    a1 = v17;

    *(v15 + 4) = v16;
    _os_log_impl(&dword_0, v12, v13, "#HangUpCallFlow: State = %s", v15, 0xCu);
    v20 = v32;
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_26_0(v20);
    OUTLINED_FUNCTION_26_0(v15);
  }

  (*(*v2 + 128))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v29 = dispatch thunk of AnyValueFlow.on(input:)();
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR) + 48);
    type metadata accessor for Input();
    OUTLINED_FUNCTION_23_1();
    (*(v23 + 16))(v10, a1);
    *&v10[v22] = *(v2 + direct field offset for HangUpCallFlow.app);
    v24 = *(*v2 + 152);

    v24(v34, v25);
    v26 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v27 = OUTLINED_FUNCTION_11_0();
    v28(v27, v26);
    v29 = 1;
    swift_storeEnumTagMultiPayload();
    (*(*v2 + 136))(v10);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v7);
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t HangUpCallFlow.execute()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Input();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(HangUpCallFlow.execute(), 0, 0);
}

uint64_t HangUpCallFlow.execute()()
{
  v69 = v0;
  OUTLINED_FUNCTION_41_0();
  v2 = *(v1 + 128);
  v2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = v0[12];
      v20 = v0[9];
      v22 = v0[5];
      v21 = v0[6];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v67 = *(v19 + *(v23 + 48));
      (*(v21 + 32))(v20, v19, v22);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v25 = v0[8];
      v24 = v0[9];
      v27 = v0[5];
      v26 = v0[6];
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.siriPhone);
      v65 = *(v26 + 16);
      v65(v25, v24, v27);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v0[8];
      if (v31)
      {
        v33 = OUTLINED_FUNCTION_42();
        v61 = OUTLINED_FUNCTION_36();
        *&v68[0] = v61;
        *v33 = 136315138;
        lazy protocol witness table accessor for type Input and conformance Input();
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v23;
        v36 = v35;
        v37 = OUTLINED_FUNCTION_4_33();
        v38(v37);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v68);
        OUTLINED_FUNCTION_11_0();
        v23 = v63;

        *(v33 + 4) = v32;
        _os_log_impl(&dword_0, v29, v30, "#HangUpCallFlow: Converting input: %s to INHangUpCallIntent.", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        OUTLINED_FUNCTION_26_0(v61);
        OUTLINED_FUNCTION_26_0(v33);
      }

      else
      {

        v52 = OUTLINED_FUNCTION_4_33();
        v53(v52);
      }

      v54 = v0[9];
      v55 = v0[7];
      v57 = v0[4];
      v56 = v0[5];
      v62 = *(v23 + 64);
      v64 = v0[12];
      v65(v55, v54, v56);
      v58 = *(*v57 + 152);

      v58(v68, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMR);
      swift_allocObject();
      v0[2] = specialized IntentConversionFlow.init(input:app:sharedGlobals:)(v55, v67, v68, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMR, &outlined read-only object #0 of specialized IntentConversionFlow.init(input:app:sharedGlobals:));
      v60 = swift_allocObject();
      *(v60 + 16) = partial apply for implicit closure #4 in implicit closure #3 in HangUpCallFlow.execute();
      *(v60 + 24) = v57;
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type IntentConversionFlow<INHangUpCallIntent> and conformance IntentConversionFlow<A>, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMR, &protocol conformance descriptor for IntentConversionFlow<A>);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      v66(v54, v56);
      __swift_destroy_boxed_opaque_existential_1((v64 + v62));
      goto LABEL_18;
    case 2u:
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
        _os_log_impl(&dword_0, v16, v17, "#HangUpCallFlow: Executing RCHFlow.", v18, 2u);
        OUTLINED_FUNCTION_26_0(v18);
      }

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_18;
    case 4u:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.siriPhone);
      OUTLINED_FUNCTION_11_0();

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = v0[11];
        v45 = OUTLINED_FUNCTION_42();
        v46 = OUTLINED_FUNCTION_36();
        *&v68[0] = v46;
        *v45 = 136315138;
        v2();
        v47 = specialized PhoneCallFlowState.description.getter();
        v49 = v48;
        outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v44);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v68);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_0, v42, v43, "#HangUpCallFlow: encountered unexpected state %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        OUTLINED_FUNCTION_26_0(v46);
        OUTLINED_FUNCTION_26_0(v45);
      }

      v51 = v0[12];
      static ExecuteResponse.complete()();
      outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v51);
      goto LABEL_18;
    case 5u:
      goto LABEL_3;
    case 6u:
      (*(*v0[4] + 232))();
      goto LABEL_18;
    case 7u:
      goto LABEL_17;
    default:
      outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0[12]);
LABEL_3:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.siriPhone);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = v0[11];
        v7 = OUTLINED_FUNCTION_42();
        v8 = OUTLINED_FUNCTION_36();
        *&v68[0] = v8;
        *v7 = 136315138;
        v2();
        v9 = specialized PhoneCallFlowState.description.getter();
        v11 = v10;
        outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v6);
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v68);

        *(v7 + 4) = v12;
        _os_log_impl(&dword_0, v4, v5, "#HangUpCallFlow: encountered unexpected state %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        OUTLINED_FUNCTION_26_0(v8);
        OUTLINED_FUNCTION_26_0(v7);
      }

      v13 = v0[11];
      v14 = v0[4];
      swift_storeEnumTagMultiPayload();
      (*(*v14 + 136))(v13);
LABEL_17:
      static ExecuteResponse.complete()();
LABEL_18:

      v39 = v0[1];

      return v39();
  }
}

uint64_t HangUpCallFlow.makeRCHFlow(input:intent:app:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = a2;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315394;
    v12 = [v7 debugDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v23);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = dispatch thunk of App.debugDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v23);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_0, v8, v9, "#HangUpCallFlow: Making RCHFlow for intent %s and App %s.", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v11);
    OUTLINED_FUNCTION_26_0(v10);
  }

  (*(*v4 + 152))(v23);
  static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)();
  v21 = v20;
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v21;
}

uint64_t HangUpCallFlow.processIntentConversionResult(exitValue:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v4);
  v44 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v1 + 128);
  v14(v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
    v16 = *&v8[*(v15 + 48)];
    v17 = *(v15 + 64);
    (*(v10 + 32))(v13, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v8[v17]);
    if (a1)
    {
      v18 = a1;
      v45 = HangUpCallFlow.makeRCHFlow(input:intent:app:)(v18, v18, v16);
      v43 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR, &protocol conformance descriptor for AnyValueFlow<A>);
      v19 = Flow.eraseToAnyValueFlow()();

      v20 = v44;
      *v44 = v19;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_41_0();
      (*(v21 + 136))(v20);

      return (*(v10 + 8))(v13, v43);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.siriPhone);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "#HangUpCallFlow: Could not convert input to INHangUpCallIntent, stopping", v39, 2u);
        OUTLINED_FUNCTION_26_0(v39);
      }

      v40 = v44;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_41_0();
      (*(v41 + 136))(v40);

      return (*(v10 + 8))(v13, v9);
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v8);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v44;
    if (v26)
    {
      v28 = OUTLINED_FUNCTION_42();
      v43 = v3;
      v29 = v28;
      v30 = OUTLINED_FUNCTION_36();
      v45 = v30;
      *v29 = 136315138;
      (v14)();
      v31 = specialized PhoneCallFlowState.description.getter();
      v33 = v32;
      outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v27);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v45);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_0, v24, v25, "#HangUpCallFlow: Unexpected state, stopping: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_26_0(v30);
      OUTLINED_FUNCTION_26_0(v29);
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_0();
    return (*(v35 + 136))(v27);
  }
}

void *HangUpCallFlow.deinit()
{
  v0 = specialized PhoneFlow.deinit();

  return v0;
}

uint64_t HangUpCallFlow.__deallocating_deinit()
{
  specialized PhoneFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized IntentConversionFlow.init(input:app:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  *(v6 + 16) = 0;
  v11 = (v6 + direct field offset for IntentConversionFlow.logPrefix);
  *v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11[1] = a6;
  v11[2] = 0;
  v11[3] = 0;
  v12 = direct field offset for IntentConversionFlow.input;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1();
  (*(v13 + 32))(v6 + v12, a1);
  *(v6 + direct field offset for IntentConversionFlow.appResolved) = a2;
  outlined init with take of SPHConversation(a3, v6 + direct field offset for IntentConversionFlow.sharedGlobals);
  return v6;
}

uint64_t outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HangUpCallFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for HangUpCallFlow;
  if (!type metadata singleton initialization cache for HangUpCallFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of PhoneCallFlowState<INAnswerCallIntent, INAnswerCallIntentResponse>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_23_1();
  (*(v6 + 32))(a2, a1);
  return a2;
}

void *HangUpCallHandleIntentFlowStrategy.__allocating_init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(__int128 *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = swift_allocObject();
  v11 = a3[3];
  v10 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_29_5(v13);
  v15(v14);
  v17 = a4[3];
  v16 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v20 = OUTLINED_FUNCTION_24_0(v19);
  v21(v20);
  v22 = specialized HangUpCallHandleIntentFlowStrategy.init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(a1, a2, v4, v5, v9, v11, v17, v10, v16);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v22;
}

void *HangUpCallHandleIntentFlowStrategy.init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(__int128 *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3[3];
  v10 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v14 = OUTLINED_FUNCTION_29_5(v13);
  v15(v14);
  v17 = a4[3];
  v16 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v17);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v20 = OUTLINED_FUNCTION_24_0(v19);
  v21(v20);
  v22 = specialized HangUpCallHandleIntentFlowStrategy.init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(a1, a2, v4, v5, v24, v11, v17, v10, v16);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v22;
}

uint64_t HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_83();
    *v1 = 136315138;
    type metadata accessor for HangUpCallHandleIntentFlowStrategy();
    OUTLINED_FUNCTION_16_29();
    OUTLINED_FUNCTION_27_14(v5, _swiftEmptyArrayStorage, v6);
    v15 = OUTLINED_FUNCTION_20_23(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v23, v24);

    *(v1 + 4) = v15;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMR);
  v0[5] = IntentResolutionRecord.app.getter();
  v0[6] = IntentResolutionRecord.intent.getter();
  v0[7] = IntentResolutionRecord.intentResponse.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_51_1(v18);

  return HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:)();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
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
    v10 = *(v3 + 48);

    OUTLINED_FUNCTION_8_1();

    return v11();
  }
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_83();
    *v1 = 136315138;
    type metadata accessor for HangUpCallHandleIntentFlowStrategy();
    OUTLINED_FUNCTION_16_29();
    OUTLINED_FUNCTION_27_14(v5, _swiftEmptyArrayStorage, v6);
    v15 = OUTLINED_FUNCTION_20_23(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24, v25);

    *(v1 + 4) = v15;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMR);
  v18 = IntentResolutionRecord.intent.getter();
  v19 = IntentResolutionRecord.intentResponse.getter();
  HangUpCallHandleIntentFlowStrategy.logForHandleIntent(intent:intentResponse:)(v19, v19);

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_8_1();

  return v20();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_83();
    *v1 = 136315138;
    type metadata accessor for HangUpCallHandleIntentFlowStrategy();
    OUTLINED_FUNCTION_16_29();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, _swiftEmptyArrayStorage, 0xD00000000000002DLL, v5 | 0x8000000000000000);
    v15 = OUTLINED_FUNCTION_20_23(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);

    *(v1 + 4) = v15;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMR);
  v18 = IntentResolutionRecord.intent.getter();
  v19 = IntentResolutionRecord.intentResponse.getter();
  HangUpCallHandleIntentFlowStrategy.logForHandleIntent(intent:intentResponse:)(v19, v19);

  v0[5] = IntentResolutionRecord.app.getter();
  v0[6] = IntentResolutionRecord.intent.getter();
  v0[7] = IntentResolutionRecord.intentResponse.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_51_1(v20);

  return HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
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
    v10 = *(v3 + 48);

    OUTLINED_FUNCTION_8_1();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  type metadata accessor for DialogPhase();
  v1[14] = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_23_0();
  __swift_project_boxed_opaque_existential_1((v0[13] + 16), *(v0[13] + 40));
  v1 = OUTLINED_FUNCTION_4_3();
  v2(v1);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = OUTLINED_FUNCTION_4_3();
  v6 = v4(v3);
  if (v6)
  {
    v7 = v5;
    ObjectType = swift_getObjectType();
    LODWORD(v7) = (*(v7 + 16))(ObjectType, v7);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v6 = v7 == 4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v11 = (*(**(v0[13] + 56) + class metadata base offset for HangUpCallCATsSimple + 32) + **(**(v0[13] + 56) + class metadata base offset for HangUpCallCATsSimple + 32));
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:);

  return v11(v6);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 152) = v3;
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[19];
  v2 = v0[13];
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_0_59();
  OutputGenerationManifest.init(dialogPhase:_:)();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  v0[20] = v7;
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v1;
  v8 = *(v6 + 8);
  v9 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v13;
  *v13 = v14;
  v13[1] = HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:);
  v15 = v0[17];
  v16 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v7, v15, v5, v8, v10, v11, v12);
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
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v4();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  type metadata accessor for DialogPhase();
  v1[16] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 120);
  v2 = [*(v0 + 112) code];
  v3 = (**(v1 + 56) + class metadata base offset for HangUpCallCATsSimple);
  if (v2 == &dword_4 + 2)
  {
    v8 = (v3[2] + *v3[2]);
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    v5 = v8;
  }

  else
  {
    v9 = (*v3 + **v3);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    v5 = v9;
  }

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[7] = v1;
  v3[8] = v5;
  v3[9] = v0;
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
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[8];
  v2 = v0[15];
  v0[22] = v1;
  v3 = v1;
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_0_59();
  OutputGenerationManifest.init(dialogPhase:_:)();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v4 = OUTLINED_FUNCTION_13_30();
  v5(v4);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v0[23] = v6;
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_34(v7);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[10] = v1;
  v3[11] = v5;
  v3[12] = v0;
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
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[11];
  v2 = v0[15];
  v0[22] = v1;
  v3 = v1;
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_0_59();
  OutputGenerationManifest.init(dialogPhase:_:)();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v4 = OUTLINED_FUNCTION_13_30();
  v5(v4);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v0[23] = v6;
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_4_34(v7);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13, v14, v15, v16);
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
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_8_1();

  return v4();
}

uint64_t HangUpCallHandleIntentFlowStrategy.logForHandleIntent(intent:intentResponse:)(int a1, id a2)
{
  if ([a2 code] == &dword_0 + 3 || objc_msgSend(a2, "code") == &dword_4 + 2)
  {
    v4 = v2[5];
    v5 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v4);
    (*(v5 + 40))(v11, v4, v5);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    SiriKitEventSending.sendCallStateEvent(hangUpIntentResponse:)(a2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v6 = v2[11];
  v7 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v6);
  v8 = v2[5];
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  (*(v9 + 8))(v11, v8, v9);
  BiomeEventSending.logEventForHangUp(intentResponse:device:)(a2, v11, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = HangUpCallHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:);

  return static HangUpCallIntentExecutionBehavior.getIntentExecutionBehavior(app:intent:sharedGlobals:callRegistrationManager:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = PhoneIntentExecutionBehavior.asSiriKitIntentExecutionBehavior.getter(v3, v1, v2);
  outlined consume of PhoneIntentExecutionBehavior(v3, v1, v2);
  v5 = v0[1];

  return v5(v4);
}

void *HangUpCallHandleIntentFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  return v0;
}

uint64_t HangUpCallHandleIntentFlowStrategy.__deallocating_deinit()
{
  HangUpCallHandleIntentFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 128) + **(**v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 136) + **(**v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v8(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 176) + **(**v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return v8(a1, a2);
}

void *specialized HangUpCallHandleIntentFlowStrategy.init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a5[11] = a6;
  a5[12] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 8);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  a5[16] = a7;
  a5[17] = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(a5 + 13);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  outlined init with take of PhoneCallFeatureFlagProviding(a1, (a5 + 2));
  a5[7] = a2;
  return a5;
}

void outlined consume of PhoneIntentExecutionBehavior(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy()
{
  result = lazy protocol witness table cache variable for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy;
  if (!lazy protocol witness table cache variable for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy)
  {
    type metadata accessor for HangUpCallHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy);
  }

  return result;
}

uint64_t static HangUpCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMR);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  outlined init with copy of SignalProviding(a3, v20);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a4;
  outlined init with take of PhoneCallFeatureFlagProviding(v20, (v14 + 4));
  v14[9] = a5;
  v15 = a5;

  v16 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INHangUpCallIntent();
  Transformer.init(transform:)();
  v17 = Transformer.transform.getter();
  (*(v11 + 8))(v13, v10);
  v17(v20, a1);

  return *&v20[0];
}

unint64_t type metadata accessor for INHangUpCallIntent()
{
  result = lazy cache variable for type metadata for INHangUpCallIntent;
  if (!lazy cache variable for type metadata for INHangUpCallIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INHangUpCallIntent);
  }

  return result;
}

void *HangUpCallIntentRCHFlowStrategy.__allocating_init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  v12 = a4[3];
  v11 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v15 = OUTLINED_FUNCTION_29_5(v14);
  v16(v15);
  v18 = a5[3];
  v17 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v21 = OUTLINED_FUNCTION_24_0(v20);
  v22(v21);
  v23 = specialized HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(a1, a2, a3, v5, v6, v10, v18, v12, v17, v11);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v23;
}

void *HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5)
{
  v12 = a4[3];
  v11 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v15 = OUTLINED_FUNCTION_29_5(v14);
  v16(v15);
  v18 = a5[3];
  v17 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v21 = OUTLINED_FUNCTION_24_0(v20);
  v22(v21);
  v23 = specialized HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(a1, a2, a3, v5, v6, v26, v18, v12, v17, v11);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v23;
}

uint64_t HangUpCallIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t HangUpCallIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v28 = v0;
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
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27[0] = v6;
    *v5 = 136315394;
    *(v0 + 16) = v4;
    type metadata accessor for HangUpCallIntentRCHFlowStrategy();

    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045BB60, v27);
    _os_log_impl(&dword_0, v2, v3, "#%s %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v10 = *(v0 + 96);
  OUTLINED_FUNCTION_9_33();
  v11 = OUTLINED_FUNCTION_7_1();
  v13 = v12(v11);
  (*(*v13 + 192))(v10);

  if (*(v0 + 80))
  {
    v14 = *(v0 + 104);
    outlined init with take of SPHConversation((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_9_33();
    v15 = OUTLINED_FUNCTION_7_1();
    v16(v15);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

    v17 = v14;
    specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
    v19 = v18;

    outlined destroy of SKTransformer(v0 + 56);
    if (v19)
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      OUTLINED_FUNCTION_17_5();

      return v20(v19);
    }

    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_15_5(xmmword_42D060, v24, v25);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 56);
    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_15_5(xmmword_42D060, v22, v23);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t HangUpCallIntentRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = HangUpCallIntentRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);

  return static HangUpCallIntentExecutionBehavior.getIntentExecutionBehavior(app:intent:sharedGlobals:callRegistrationManager:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2[3] = v0;
  v2[4] = v1;
  v2[5] = v3;

  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = PhoneIntentExecutionBehavior.asSiriKitIntentExecutionBehavior.getter(v3, v1, v2);
  outlined consume of PhoneIntentExecutionBehavior(v3, v1, v2);
  OUTLINED_FUNCTION_17_5();

  return v5(v4);
}

uint64_t HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  type metadata accessor for DialogPhase();
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v16 = v0;
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
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003FLL, 0x800000000045BB90, &v15);
    _os_log_impl(&dword_0, v2, v3, "#HangUpCallIntentRCHFlowStrategy %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_26_0(v4);
  }

  v6 = *(v0 + 120);
  v7 = [*(v0 + 112) code];
  v8 = (**(v6 + 64) + class metadata base offset for HangUpCallCATsSimple);
  if (v7 == &dword_4 + 2)
  {
    v13 = (v8[2] + *v8[2]);
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v9[1] = HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
    v10 = v13;
  }

  else
  {
    v14 = (*v8 + **v8);
    v12 = swift_task_alloc();
    *(v0 + 168) = v12;
    *v12 = v0;
    v12[1] = HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
    v10 = v14;
  }

  return v10();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3[7] = v1;
  v3[8] = v2;
  v3[9] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  if (v0)
  {

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0, 0);
  }
}

{
  v1 = v0[8];
  v0[22] = v1;
  v2 = v1;
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_2_55();
  OUTLINED_FUNCTION_9_33();
  v3 = OUTLINED_FUNCTION_7_1();
  v4(v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  v0[23] = v5;
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v2;
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_1_64(v6);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3[10] = v1;
  v3[11] = v2;
  v3[12] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  if (v0)
  {

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0, 0);
  }
}

{
  v1 = v0[11];
  v0[22] = v1;
  v2 = v1;
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_2_55();
  OUTLINED_FUNCTION_9_33();
  v3 = OUTLINED_FUNCTION_7_1();
  v4(v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  v0[23] = v5;
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v2;
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_1_64(v6);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12, v13, v14);
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
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

void *HangUpCallIntentRCHFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  return v0;
}

uint64_t HangUpCallIntentRCHFlowStrategy.__deallocating_deinit()
{
  HangUpCallIntentRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 136) + **(**v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();

  return v8(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  *v10 = v5;
  v10[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  *v10 = v5;
  v10[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  *v10 = v5;
  v10[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  *v12 = v6;
  v12[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 152) + **(**v4 + 152));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 144) + **(**v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>;

  return v8(a1, a2);
}

void *specialized HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a6[12] = a8;
  a6[13] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6 + 9);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  a6[17] = a7;
  a6[18] = a9;
  v19 = __swift_allocate_boxed_opaque_existential_1(a6 + 14);
  (*(*(a7 - 8) + 32))(v19, a5, a7);
  a6[2] = a1;
  outlined init with take of SPHConversation(a2, (a6 + 3));
  a6[8] = a3;
  return a6;
}

uint64_t lazy protocol witness table accessor for type HangUpCallIntentRCHFlowStrategy and conformance HangUpCallIntentRCHFlowStrategy(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HangUpCallIntentRCHFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HangUpDirectInvocationFlowFactory.makeHangUpFlow(sharedGlobals:)(void *a1)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v19 = &type metadata for PhoneCallFeatureFlags;
  v20 = &protocol witness table for PhoneCallFeatureFlags;
  *&v18 = swift_allocObject();
  memcpy((v18 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v18, v21);
  outlined init with copy of PhoneCallFeatureFlags(__dst, v16);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = OUTLINED_FUNCTION_1_1();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_1_1();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v4 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v17);
    OUTLINED_FUNCTION_1_1();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v4 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v16, v17);
      OUTLINED_FUNCTION_1_1();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v4 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v4 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v5 = *v4;

  __swift_destroy_boxed_opaque_existential_1(v16);
  v6 = [objc_allocWithZone(INHangUpCallIntent) init];

  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v7, 0, a1);

  static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)();
  v9 = v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 40))(v16, v10, v11);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  type metadata accessor for SiriKitEvent();
  if (one-time initialization token for emptyHangUpCallIntent != -1)
  {
    swift_once();
  }

  v12 = [static PhoneCallIntentClassNames.emptyHangUpCallIntent typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of SignalProviding(a1, &v18);
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  outlined init with take of SPHConversation(&v18, v13 + 24);

  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  __swift_destroy_boxed_opaque_existential_1(v16);
  v16[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>();
  v14 = Flow.eraseToAnyFlow()();

  return v14;
}

uint64_t closure #1 in static HangUpDirectInvocationFlowFactory.makeHangUpFlow(sharedGlobals:)(uint64_t a1, uint64_t a2, void *a3)
{

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  v4 = a3[3];
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v4);
  (*(v5 + 120))(v7, v4, v5);
  static PhoneDomainContextMetricsUtils.populatePhoneDomainContextForHangUpDirectInvocation(callStateProvider:)(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

unint64_t lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>()
{
  result = lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>);
  }

  return result;
}

uint64_t static HangUpCallIntentExecutionBehavior.getIntentExecutionBehavior(app:intent:sharedGlobals:callRegistrationManager:)()
{
  return _swift_task_switch(static HangUpCallIntentExecutionBehavior.getIntentExecutionBehavior(app:intent:sharedGlobals:callRegistrationManager:), 0, 0);
}

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
    _os_log_impl(&dword_0, v2, v3, "#HangUpCallIntentExecutionBehavior getIntentExecutionBehavior using standard PhoneIntentHandler", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(0, 0, 0);
}

uint64_t HangUpTipGenerator.init(sharedGlobals:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = 0xD000000000000013;
  *(a2 + 16) = 0x8000000000455210;
  return outlined init with take of PhoneCallFeatureFlagProviding(a1, a2 + 24);
}

uint64_t HangUpTipGenerator.templateIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

Swift::Bool __swiftcall HangUpTipGenerator.isEnabled()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 8))(v4, v1, v2);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  LOBYTE(v1) = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

unint64_t instantiation function for generic protocol witness table for HangUpTipGenerator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HangUpTipGenerator and conformance HangUpTipGenerator();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HangUpTipGenerator and conformance HangUpTipGenerator()
{
  result = lazy protocol witness table cache variable for type HangUpTipGenerator and conformance HangUpTipGenerator;
  if (!lazy protocol witness table cache variable for type HangUpTipGenerator and conformance HangUpTipGenerator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpTipGenerator and conformance HangUpTipGenerator);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HangUpTipGenerator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for HangUpTipGenerator(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t HashableParse.Category.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  v6 = (*(v5 + 88))(a1, v2);
  if (v6 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v7 = OUTLINED_FUNCTION_5_43();
    v8(v7);
    return 0;
  }

  v9 = v6;
  if (v6 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v4 + 96))(a1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    v10 = type metadata accessor for NLIntent();
    (*(*(v10 - 8) + 8))(a1, v10);
    return 0;
  }

  if (v6 == enum case for Parse.NLv4IntentOnly(_:) || v6 == enum case for Parse.uso(_:))
  {
    v13 = OUTLINED_FUNCTION_5_43();
    v14(v13);
    return 1;
  }

  else
  {
    v15 = enum case for Parse.ifClientAction(_:);
    v16 = OUTLINED_FUNCTION_5_43();
    v17(v16);
    if (v9 == v15)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t HashableParse.Category.description.getter(char a1)
{
  result = 863390798;
  switch(a1)
  {
    case 1:
      result = 880168014;
      break;
    case 2:
      result = 0x746E65696C434649;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::HashableParse::Category_optional __swiftcall HashableParse.Category.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HashableParse.Category.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::HashableParse::Category_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HashableParse.Category@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::HashableParse::Category_optional *a2@<X8>)
{
  result.value = HashableParse.Category.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HashableParse.Category@<X0>(uint64_t *a1@<X8>)
{
  result = HashableParse.Category.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static HashableParse.from(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v107 = a2;
  type metadata accessor for MessagePayload.ClientAction();
  OUTLINED_FUNCTION_7();
  v94 = v4;
  v95 = v3;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v92 = v6 - v5;
  v93 = type metadata accessor for IFClientActionParse();
  OUTLINED_FUNCTION_7();
  v91 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v90 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v90 - v12;
  v100 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7();
  v98 = v14;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v97 = (v17 - v16);
  v18 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7();
  v96 = v19;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  v24 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v26 = v25;
  __chkstk_darwin(v27);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v90 - v31;
  v104 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v106 = v33;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_4();
  v37 = (v36 - v35);
  v38 = *(v26 + 16);
  v105 = a1;
  v103 = v38;
  v38(v32, a1, v24);
  v102 = *(v26 + 88);
  v39 = v102(v32, v24);
  v101 = enum case for Parse.NLv3IntentOnly(_:);
  if (v39 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v40 = OUTLINED_FUNCTION_1_65();
    v41(v40);
LABEL_5:
    v44 = *(v106 + 32);
    v45 = v104;
    v44(v37, v32, v104);
    v109 = v45;
    v46 = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
    v47 = OUTLINED_FUNCTION_6_42(v46);
    v44(v47, v37, v45);
    goto LABEL_6;
  }

  if (v39 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v42 = OUTLINED_FUNCTION_1_65();
    v43(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    goto LABEL_5;
  }

  if (v39 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v59 = *(v26 + 96);
    v59(v32, v24);
    static ConversionUtils.toUserParse(from:)();
    v60 = v100;
    if (__swift_getEnumTagSinglePayload(v13, 1, v100) == 1)
    {
      swift_unknownObjectRelease();
      result = outlined destroy of Siri_Nlu_External_UserParse?(v13);
      v61 = v107;
      *v107 = 0u;
      v61[1] = 0u;
      v61[2] = 0u;
      return result;
    }

    v99 = v59;
    v74 = v97;
    v75 = v13;
    v76 = *(v98 + 32);
    v76(v97, v75, v60);
    v109 = v60;
    OUTLINED_FUNCTION_3_45();
    v79 = _s10Foundation4UUIDVACSHAAWlTm_2(v77, v78, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
    v80 = OUTLINED_FUNCTION_6_42(v79);
    v76(v80, v74, v60);
    swift_unknownObjectRelease();
LABEL_29:
    v45 = v104;
LABEL_6:
    v103(v29, v105, v24);
    v48 = v102(v29, v24);
    if (v48 == v101)
    {
      v49 = OUTLINED_FUNCTION_4_35();
      v50(v49);
    }

    else
    {
      v51 = v48;
      if (v48 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        if (v48 == enum case for Parse.NLv4IntentOnly(_:) || v48 == enum case for Parse.uso(_:))
        {
          v63 = OUTLINED_FUNCTION_4_35();
          v64(v63);
          v52 = 1;
        }

        else
        {
          v71 = enum case for Parse.ifClientAction(_:);
          v72 = OUTLINED_FUNCTION_4_35();
          v73(v72);
          if (v51 == v71)
          {
            v52 = 2;
          }

          else
          {
            v52 = 3;
          }
        }

        goto LABEL_11;
      }

      v99(v29, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

      (*(v106 + 8))(v29, v45);
    }

    v52 = 0;
LABEL_11:
    v53 = __swift_project_boxed_opaque_existential_1(v108, v109);
    __chkstk_darwin(v53);
    OUTLINED_FUNCTION_4();
    (*(v56 + 16))(v55 - v54);
    v57 = v107;
    AnyHashable.init<A>(_:)();
    *v57 = v52;
    return __swift_destroy_boxed_opaque_existential_1(v108);
  }

  if (v39 == enum case for Parse.uso(_:))
  {
    v65 = OUTLINED_FUNCTION_1_65();
    v66(v65);
    v67 = v96;
    (*(v96 + 32))(v23, v32, v18);
    v109 = v100;
    OUTLINED_FUNCTION_3_45();
    v70 = _s10Foundation4UUIDVACSHAAWlTm_2(v68, v69, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
    OUTLINED_FUNCTION_6_42(v70);
    USOParse.userParse.getter();
    (*(v67 + 8))(v23, v18);
    goto LABEL_29;
  }

  if (v39 == enum case for Parse.ifClientAction(_:))
  {
    v81 = OUTLINED_FUNCTION_1_65();
    v82(v81);
    v83 = v91;
    v84 = v90;
    v85 = v32;
    v86 = v93;
    (*(v91 + 32))(v90, v85, v93);
    v87 = v92;
    IFClientActionParse.clientAction.getter();
    v109 = type metadata accessor for UUID();
    v88 = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    OUTLINED_FUNCTION_6_42(v88);
    MessagePayload.ClientAction.eventId.getter();
    (*(v94 + 8))(v87, v95);
    (*(v83 + 8))(v84, v86);
    goto LABEL_29;
  }

  v89 = v107;
  v107[1] = 0u;
  v89[2] = 0u;
  *v89 = 0u;
  return (*(v26 + 8))(v32, v24);
}

__n128 HashableParse.init(category:backingData:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

uint64_t outlined destroy of Siri_Nlu_External_UserParse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t static HashableParse.== infix(_:_:)(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 863390798;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 863390798;
  switch(v3)
  {
    case 1:
      v5 = 880168014;
      break;
    case 2:
      v5 = 0x746E65696C434649;
      v4 = 0xEE006E6F69746341;
      break;
    case 3:
      v4 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(*a2)
  {
    case 1:
      v2 = 880168014;
      break;
    case 2:
      v2 = 0x746E65696C434649;
      v6 = 0xEE006E6F69746341;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return static AnyHashable.== infix(_:_:)();
}

Swift::Int HashableParse.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableParse(uint64_t a1)
{
  Hasher.init(_seed:)();
  HashableParse.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type HashableParse.Category and conformance HashableParse.Category()
{
  result = lazy protocol witness table cache variable for type HashableParse.Category and conformance HashableParse.Category;
  if (!lazy protocol witness table cache variable for type HashableParse.Category and conformance HashableParse.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableParse.Category and conformance HashableParse.Category);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HashableParse and conformance HashableParse()
{
  result = lazy protocol witness table cache variable for type HashableParse and conformance HashableParse;
  if (!lazy protocol witness table cache variable for type HashableParse and conformance HashableParse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableParse and conformance HashableParse);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HashableParse(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for HashableParse(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HashableParse.Category(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t HoldControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(HoldControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t HoldControlFlow.executeAction(currentCall:)()
{
  v52 = v0;
  v1 = *(v0[5] + 56);
  if ((PhoneCallControlAction.isHoldAction.getter(v1) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    v7 = Logger.logObject.getter();
    ObjectType = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, ObjectType))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v7, ObjectType, "#HoldControlFlow used to handle a call control not related to hold.", v8, 2u);
      OUTLINED_FUNCTION_26_0(v8);
    }

    v9 = lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    OUTLINED_FUNCTION_3_46(&type metadata for ActionableCallControlFlow.ActionableCallControlFlowError, v9);
    OUTLINED_FUNCTION_2_56();
    v5 = 0;
    *v10 = v1;
    goto LABEL_13;
  }

  ObjectType = swift_getObjectType();
  if (SPHCall.isFTVideo.getter())
  {
    v3 = lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    OUTLINED_FUNCTION_3_46(&type metadata for ActionableCallControlFlow.ActionableCallControlFlowError, v3);
    OUTLINED_FUNCTION_2_56();
    *(v4 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedHoldActionReason;
    *(ObjectType + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason();
    v5 = 1;
    *ObjectType = 1;
LABEL_13:
    *(ObjectType + 40) = v5;
    swift_willThrow();
    v14 = v0[1];
    goto LABEL_14;
  }

  v11 = *(v0[4] + 16);
  if (v11(ObjectType) == 3 || (v11)(ObjectType, v0[4]) == 4)
  {
    v12 = lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    OUTLINED_FUNCTION_3_46(&type metadata for ActionableCallControlFlow.ActionableCallControlFlowError, v12);
    OUTLINED_FUNCTION_2_56();
    *(v13 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedHoldActionReason;
    *(ObjectType + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason();
    *ObjectType = 2;
LABEL_12:
    v5 = 1;
    goto LABEL_13;
  }

  if (((*(v0[4] + 192))(ObjectType) & 1) == 0)
  {
    v25 = lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    OUTLINED_FUNCTION_3_46(&type metadata for ActionableCallControlFlow.ActionableCallControlFlowError, v25);
    OUTLINED_FUNCTION_2_56();
    *(v26 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedHoldActionReason;
    *(ObjectType + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason();
    *ObjectType = 0;
    goto LABEL_12;
  }

  v16 = (v11)(ObjectType, v0[4]);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = v16 == 2;
    _os_log_impl(&dword_0, v18, v19, "#HoldControlFlow isHeld = %{BOOL}d", v20, 8u);
    OUTLINED_FUNCTION_26_0(v20);
  }

  v21 = PhoneCallControlAction.rawValue.getter(v1);
  if (v16 != 2)
  {
    if (v21 == 0x6F48656C62616E65 && v22 == 0xEA0000000000646CLL)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    (*(v0[4] + 200))(ObjectType);
    goto LABEL_48;
  }

  if (v21 != 0x48656C6261736964 || v22 != 0xEB00000000646C6FLL)
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_45;
    }

LABEL_35:

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v31 = 136315394;
      if (v16 == 2)
      {
        v32 = 0x646C6F68206E6FLL;
      }

      else
      {
        v32 = 0x646C6F682066666FLL;
      }

      if (v16 == 2)
      {
        v33 = 0xE700000000000000;
      }

      else
      {
        v33 = 0xE800000000000000;
      }

      v48 = v30;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v51);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = PhoneCallControlAction.description.getter(v1);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v51);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_0, v29, v48, "#HoldControlFlow not changing hold status because call is %s and action is %s", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v49);
      OUTLINED_FUNCTION_26_0(v31);
    }

    goto LABEL_48;
  }

LABEL_45:
  (*(v0[4] + 208))(ObjectType);
LABEL_48:
  swift_unknownObjectRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v0[4];
    v41 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51[0] = v50;
    *v41 = 136315138;
    (v11)(ObjectType, v40);
    v42 = TUStringForCallStatus();
    result = swift_unknownObjectRelease();
    if (!v42)
    {
      __break(1u);
      return result;
    }

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v51);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_0, v38, v39, "#HoldControlFlow: After applying action, callStatus=%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_26_0(v50);
    OUTLINED_FUNCTION_26_0(v41);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v47 = v0[2];
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 16) = 0;
  *(v47 + 24) = xmmword_42D060;
  v14 = v0[1];
LABEL_14:

  return v14();
}

uint64_t CarryOverCallFiltersProvider.__allocating_init(phoneCallNLIntent:)(void *a1)
{
  v2 = swift_allocObject();
  CarryOverCallFiltersProvider.init(phoneCallNLIntent:)(a1);
  return v2;
}

uint64_t key path setter for CarryOverCallFiltersProvider.phoneCallAudioRoute : CarryOverCallFiltersProvider(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t key path setter for CarryOverCallFiltersProvider.hasAudioCallSemantic : CarryOverCallFiltersProvider(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 17) = v2;
  return result;
}

uint64_t key path setter for CarryOverCallFiltersProvider.hasVideoCallSemantic : CarryOverCallFiltersProvider(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 18) = v2;
  return result;
}

uint64_t CarryOverCallFiltersProvider.init(phoneCallNLIntent:)(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 4;
  v4 = (v1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 48))(v5, v6);
  swift_beginAccess();
  *v4 = v7;
  OUTLINED_FUNCTION_1_34();
  *(v2 + 17) = PhoneCallNLIntent.hasAudioCallSemantic()();
  OUTLINED_FUNCTION_1_34();
  *(v2 + 18) = PhoneCallNLIntent.hasVideoCallSemantic()();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06AnswerbgH0O_Tt3g5Tm(void *a1, void *a2, uint64_t a3, id a4, uint64_t a5)
{
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(a3, a4, a2);
  v7 = [a1 _metadata];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 intentId];
  }

  else
  {
    v9 = 0;
  }

  [a1 setIdentifier:v9];

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v22 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315394;
    v23 = v14;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, a5, 0, 0);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v23);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v16 = [v22 debugDescription];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v11, v12, "%s Converted intent: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v14);
    OUTLINED_FUNCTION_26_0(v13);
  }

  return v22;
}

id static IdentifyCallerIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, id a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = a4;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INIdentifyIncomingCallerIntentCSgMd, &_sSo30INIdentifyIncomingCallerIntentCSgMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_0, v9, v10, "#IdentifyCallerIntentConversion is confirmation, returning previousIntent: %s.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_26_0(v12);
      OUTLINED_FUNCTION_26_0(v11);
    }

    v17 = v8;
  }

  else
  {
    v18 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
    a4 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06AnswerbgH0O_Tt3g5Tm(v18, a3, a2, a4, &_s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA014IdentifyCallergH0O_Tt3g5Tv_r);
  }

  return a4;
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATs::Properties_optional __swiftcall IdentifyIncomingCallerCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IdentifyIncomingCallerCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_IdentifyIncomingCallerCATs_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_IdentifyIncomingCallerCATs_Properties_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance IdentifyIncomingCallerCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATs::Properties_optional *a2@<X8>)
{
  result.value = IdentifyIncomingCallerCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance IdentifyIncomingCallerCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t IdentifyIncomingCallerCATs.intentHandledResponse(incomingCallConcept:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "incomingCallConcept");
  if (a1)
  {
    v6 = type metadata accessor for PhoneIncomingCall();
    v7 = a1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v7;
  *(v5 + 72) = v6;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t IdentifyIncomingCallerCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t IdentifyIncomingCallerCATs.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_35(v5);

  return v9(v7);
}

{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:);

  return v8(0xD00000000000002CLL, 0x80000000004526A0, v3);
}

uint64_t IdentifyIncomingCallerCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *(v3 + 16) = xmmword_424FD0;
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x8000000000457A70;
  if (a1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
    v5 = a1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v5;
  *(v3 + 72) = v4;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t IdentifyIncomingCallerCATs.offerFollowUpIntent(followUpOfferType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_35_1(v8);
  *(v9 + 16) = xmmword_424FD0;
  *(v9 + 32) = 0xD000000000000011;
  *(v9 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40();
    (*(v11 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t IdentifyIncomingCallerCATs.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[5];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v0[6] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0[7] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_10_35(v7);

  return v11(v9);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  v1 = v0[4];
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v0[5] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0[6] = v7;
  *v7 = v8;
  v7[1] = AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:);

  return v10(0xD00000000000002ALL, 0x80000000004526D0, v4);
}

uint64_t IdentifyIncomingCallerCATs.offerFollowUpIntent(followUpOfferType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_35_1(v6);
  *(v7 + 16) = xmmword_424FD0;
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_40();
    (*(v9 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t IdentifyIncomingCallerCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

unint64_t lazy protocol witness table accessor for type IdentifyIncomingCallerCATs.Properties and conformance IdentifyIncomingCallerCATs.Properties()
{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATs.Properties and conformance IdentifyIncomingCallerCATs.Properties;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATs.Properties and conformance IdentifyIncomingCallerCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATs.Properties and conformance IdentifyIncomingCallerCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for IdentifyIncomingCallerCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for IdentifyIncomingCallerCATs;
  if (!type metadata singleton initialization cache for IdentifyIncomingCallerCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdentifyIncomingCallerCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::Properties_optional __swiftcall IdentifyIncomingCallerCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IdentifyIncomingCallerCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_IdentifyIncomingCallerCATsSimple_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_IdentifyIncomingCallerCATsSimple_Properties_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance IdentifyIncomingCallerCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = IdentifyIncomingCallerCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t IdentifyIncomingCallerCATsSimple.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:);

  return v7(0xD00000000000002CLL, 0x80000000004526A0, v3);
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(char a1)
{
  result = 0x69486C6C61436F4ELL;
  switch(a1)
  {
    case 1:
      v3 = 0x317473726966;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
    case 2:
      v4 = 0x317473726966;
      goto LABEL_5;
    case 3:
      v3 = 0x327473726966;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
    case 4:
      v4 = 0x327473726966;
LABEL_5:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6423000000000000;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::IdentifyIncomingCallerCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t IdentifyIncomingCallerCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds();
  *v5 = v0;
  v5[1] = AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);

  return v8(0xD00000000000002CLL, 0x80000000004526A0, v3, &type metadata for IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds, v6);
}

unint64_t lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds and conformance IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v2 + 40) = v5;
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  *(v2 + 48) = v9;
  *v9 = v2;
  v9[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:);

  return v11(v3 + 25, 0x80000000004526D0, v5);
}

BOOL IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v2 + 40) = v5;
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  *(v2 + 48) = v9;
  v10 = lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds();
  *v9 = v2;
  v9[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:);

  return v12(v3 + 25, 0x80000000004526D0, v5, &type metadata for IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds, v10);
}

unint64_t lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds and conformance IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t IdentifyIncomingCallerCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t IdentifyIncomingCallerCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t IdentifyIncomingCallerCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type IdentifyIncomingCallerCATsSimple.Properties and conformance IdentifyIncomingCallerCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.Properties and conformance IdentifyIncomingCallerCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.Properties and conformance IdentifyIncomingCallerCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifyIncomingCallerCATsSimple.Properties and conformance IdentifyIncomingCallerCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for IdentifyIncomingCallerCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for IdentifyIncomingCallerCATsSimple;
  if (!type metadata singleton initialization cache for IdentifyIncomingCallerCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdentifyIncomingCallerCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IdentifyIncomingCallerCATsSimple.OfferFollowUpIntentDialogIds(_BYTE *result, int a2, int a3)
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

uint64_t protocol witness for IncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:) in conformance IdentifyIncomingCallerCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_13(v1);

  return v3(v2);
}

uint64_t protocol witness for IncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:) in conformance IdentifyIncomingCallerCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_13(v1);

  return v3(v2);
}

uint64_t *IdentifyIncomingCallerDirectAction.identifier.unsafeMutableAddressor()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_7_36(&one-time initialization token for identifier);
  }

  return &static IdentifyIncomingCallerDirectAction.identifier;
}

uint64_t static IdentifyIncomingCallerDirectAction.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_7_36(&one-time initialization token for identifier);
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t one-time initialization function for handleTypeKey()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IdentifyIncomingCallerDirectAction.handleTypeKey = result;
  *algn_553398 = v1;
  return result;
}

uint64_t one-time initialization function for handleValueKey()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IdentifyIncomingCallerDirectAction.handleValueKey = result;
  *algn_5533A8 = v1;
  return result;
}

uint64_t IdentifyIncomingCallerDirectAction.callUUID.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 56, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t IdentifyIncomingCallerDirectAction.callProviderBundleId.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 72, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.callProviderIdentifier : IdentifyIncomingCallerDirectAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 88) = v3;
  *(v4 + 96) = v2;
}

uint64_t IdentifyIncomingCallerDirectAction.callProviderIdentifier.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 88, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.callerContactIdentifiers : IdentifyIncomingCallerDirectAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.handleValue : IdentifyIncomingCallerDirectAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 112) = v3;
  *(v4 + 120) = v2;
}

uint64_t IdentifyIncomingCallerDirectAction.handleValue.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_4(v2 + 112, a2);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.handleType : IdentifyIncomingCallerDirectAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 128) = v2;
  *(v4 + 136) = v3;
  return result;
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.isVideo : IdentifyIncomingCallerDirectAction(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 137) = v2;
  return result;
}

uint64_t key path setter for IdentifyIncomingCallerDirectAction.isCallerIdBlocked : IdentifyIncomingCallerDirectAction(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 138) = v2;
  return result;
}

uint64_t IdentifyIncomingCallerDirectAction.__allocating_init(invocation:contactStore:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_32(a1, a2);
  OUTLINED_FUNCTION_4_36();
  __chkstk_darwin(v3);
  v5 = OUTLINED_FUNCTION_2_57(v4, v14);
  v6(v5);
  v7 = OUTLINED_FUNCTION_3_47();
  specialized IdentifyIncomingCallerDirectAction.__allocating_init(invocation:contactStore:)(v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v2;
}

uint64_t IdentifyIncomingCallerDirectAction.__allocating_init(from:contactStore:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_4_36();
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_2_57(v5, v15);
  v7(v6);
  v8 = OUTLINED_FUNCTION_3_47();
  specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(v8, v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v3;
}

uint64_t IdentifyIncomingCallerDirectAction.init(from:contactStore:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_32(a1, a2);
  OUTLINED_FUNCTION_4_36();
  __chkstk_darwin(v3);
  v5 = OUTLINED_FUNCTION_2_57(v4, v14);
  v6(v5);
  v7 = OUTLINED_FUNCTION_3_47();
  specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v2;
}

id IdentifyIncomingCallerDirectAction.callRecord.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  OUTLINED_FUNCTION_2_0();
  v5 = (*(v4 + 152))();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v6)
  {
    v8 = v6;
  }

  v34 = v8;
  v35 = v7;
  v9 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  v33 = IdentifyIncomingCallerDirectAction.callersAsPerson.getter();
  if ((*(*v0 + 296))())
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = IdentifyIncomingCallerDirectAction.preferredCallProvider.getter();
  v12 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  OUTLINED_FUNCTION_2_0();
  v14 = (*(v13 + 200))();
  v16 = v15;
  OUTLINED_FUNCTION_2_0();
  v18 = (*(v17 + 176))();
  v20 = v19;
  v21 = [objc_allocWithZone(NSNumber) initWithBool:(*(*v0 + 320))() & 1];
  v22 = objc_allocWithZone(INCallRecord);
  v23 = @nonobjc INCallRecord.init(__identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(v35, v34, v3, v33, 6, v10, 0, 0, v11, v12, v14, v16, v18, v20, v21);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriPhone);
  v25 = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_0, v26, v27, "#IdentifyIncomingCallerDirectAction: INCallRecord to announce = %@.", v28, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v29);
    OUTLINED_FUNCTION_26_0(v28);
  }

  return v25;
}

id IdentifyIncomingCallerDirectAction.handle.getter()
{
  OUTLINED_FUNCTION_2_0();
  v1 = (*(v0 + 248))();
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  OUTLINED_FUNCTION_2_0();
  v6 = (*(v5 + 272))();
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
  return TUHandle.__allocating_init(type:value:)(v8, v3, v4);
}

id TUHandle.__allocating_init(type:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithType:a1 value:v5];

  return v6;
}

Class IdentifyIncomingCallerDirectAction.callersAsPerson.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v71 - v3;
  OUTLINED_FUNCTION_2_0();
  v6 = (*(v5 + 224))();
  v7 = &unk_426000;
  if (v6)
  {
    v8 = v6;
    if (*(v6 + 16))
    {
      v9 = IdentifyIncomingCallerDirectAction.fetchPersons(identifiers:)(v6);
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
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = *(v8 + 16);

        *(v13 + 12) = 2048;
        *(v13 + 14) = specialized Array.count.getter(v9);

        _os_log_impl(&dword_0, v11, v12, "#IdentifyIncomingCallerDirectAction: Incoming call from number associated with %ld contact(s), %ld unique contact(s)", v13, 0x16u);
        OUTLINED_FUNCTION_26_0(v13);
      }

      else
      {
      }

      v14 = specialized Array.count.getter(v9);
      if (v14)
      {
        v15 = v14;

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v9 & 0xC000000000000001) == 0, v9);
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(v9 + 32);
        }

        v17 = v16;
        if (v15 < 1)
        {
          __break(1u);
        }

        else
        {
          specialized Array._checkIndex(_:)();
          specialized Array._checkIndex(_:)();
          if ((v9 & 0xC000000000000001) == 0 || v15 == 1)
          {
          }

          else
          {
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);

            v18 = 1;
            do
            {
              v19 = v18 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v18);
              v18 = v19;
            }

            while (v15 != v19);
          }

          if (!(v9 >> 62))
          {
            v28 = v9 & 0xFFFFFFFFFFFFFF8;
            v29 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
            v30 = 1;
            v31 = (2 * v15) | 1;
            if ((v31 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_52;
          }
        }

        v28 = _CocoaArrayWrapper.subscript.getter();
        v29 = v62;
        v31 = v63;
        v30 = v64;

        if ((v31 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_52:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v65 = swift_dynamicCastClass();
        if (!v65)
        {
          swift_unknownObjectRelease();
          v65 = _swiftEmptyArrayStorage;
        }

        v66 = v65[2];

        if (__OFSUB__(v31 >> 1, v30))
        {
          __break(1u);
        }

        else if (v66 == (v31 >> 1) - v30)
        {
          v33 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v33)
          {
LABEL_59:
            outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(v33, v17);

            v67 = IdentifyIncomingCallerDirectAction.handle.getter();
            if (v67)
            {
              v68 = v67;
              v69 = [v67 personHandle];
            }

            else
            {
              v69 = 0;
            }

            [v17 setPersonHandle:v69];

            return v17;
          }

          v33 = _swiftEmptyArrayStorage;
LABEL_58:
          swift_unknownObjectRelease();
          goto LABEL_59;
        }

        swift_unknownObjectRelease_n();
LABEL_23:
        specialized _copyCollectionToContiguousArray<A>(_:)(v28, v29, v30, v31);
        v33 = v32;
        goto LABEL_58;
      }

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v72 = v23;
        *v22 = 136315138;
        v24 = Array.description.getter();
        v26 = v25;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v72);
        v7 = &unk_426000;

        *(v22 + 4) = v27;
        _os_log_impl(&dword_0, v20, v21, "#IdentifyIncomingCallerDirectAction: Couldn't find contact for identifiers: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        OUTLINED_FUNCTION_26_0(v23);
        OUTLINED_FUNCTION_26_0(v22);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v34 = IdentifyIncomingCallerDirectAction.handle.getter();
  if (v34 && (v35 = v34, v36 = [v34 personHandle], v35, v36))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriPhone);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "#IdentifyIncomingCallerDirectAction: Incoming call from number not associated with contact, using handle", v40, 2u);
      OUTLINED_FUNCTION_26_0(v40);
    }

    if ([v36 type] || (type metadata accessor for App(), (*(*v1 + 176))(), App.__allocating_init(appIdentifier:)(), v41 = App.isFirstParty()(), , v41))
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      return INPerson.init(personHandle:)(v36).super.isa;
    }

    else
    {
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_0, v52, v53, "#IdentifyIncomingCallerDirectAction: Received a generic TUHandle. Using handle value as fullName.", v54, 2u);
        OUTLINED_FUNCTION_26_0(v54);
      }

      v55 = objc_allocWithZone(INPersonHandle);
      v56 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
      v57 = type metadata accessor for PersonNameComponents();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v57);
      v58 = outlined bridged method (pb) of @objc INPersonHandle.value.getter(v36);
      v60 = v59;
      v61 = objc_allocWithZone(INPerson);
      v17 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v56, v4, v58, v60, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v72 = v46;
      *v45 = v7[70];
      v47 = v1;
      v48 = (*(*v1 + 320))();
      v49 = (v48 & 1) == 0;
      if (v48)
      {
        v50 = 0x64656B636F6C42;
      }

      else
      {
        v50 = 0x656C6C6143206F4ELL;
      }

      if (v49)
      {
        v51 = 0xEC00000044492072;
      }

      else
      {
        v51 = 0xE700000000000000;
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v72);
      OUTLINED_FUNCTION_40_0();

      *(v45 + 4) = v47;
      _os_log_impl(&dword_0, v43, v44, "#IdentifyIncomingCallerDirectAction: Incoming call with no callers and no handle - %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_26_0(v46);
      OUTLINED_FUNCTION_26_0(v45);
    }

    return 0;
  }

  return v17;
}

uint64_t IdentifyIncomingCallerDirectAction.preferredCallProvider.getter()
{
  type metadata accessor for App();
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 176);
  v2();
  App.__allocating_init(appIdentifier:)();
  if (!App.isFirstParty()())
  {
    v3 = (v2)();
    v5 = specialized Optional<A>.isNilOrEmpty.getter(v3, v4);

    if (!v5)
    {

      return 3;
    }
  }

  v6 = (*(*v0 + 200))();
  if (!v7)
  {

    return 0;
  }

  v8 = v6;
  v9 = v7;
  v10 = v6 == 0xD000000000000017 && 0x800000000045BDA0 == v7;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v8 != 0xD00000000000003BLL || 0x800000000045BDC0 != v9)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 2;
    }

    return 0;
  }

  return 2;
}

uint64_t IdentifyIncomingCallerDirectAction.fetchPersons(identifiers:)(uint64_t result)
{
  v1 = 0;
  v18 = _swiftEmptyArrayStorage;
  v2 = *(result + 16);
  v3 = result + 40;
  v17 = v2;
  v15 = result + 40;
LABEL_2:
  for (i = (v3 + 16 * v1); ; i += 2)
  {
    if (v2 == v1)
    {
      KeyPath = swift_getKeyPath();
      v18 = _swiftEmptySetSingleton;

      specialized Sequence.filter(_:)(v12, &v18, KeyPath);
      v14 = v13;

      return v14;
    }

    if (v1 >= v2)
    {
      break;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v5 = *(i - 1);
    v6 = *i;
    v8 = v16[5];
    v7 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v8);
    v9 = *(v7 + 8);

    v10 = v9(v5, v6, v8, v7);

    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v1;
      v2 = v17;
      v3 = v15;
      goto LABEL_2;
    }

    ++v1;
    v2 = v17;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void key path getter for INPerson.displayName : INPerson(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void key path setter for INPerson.displayName : INPerson(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = String._bridgeToObjectiveC()();
  [v2 setDisplayName:v3];
}

void *IdentifyIncomingCallerDirectAction.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t IdentifyIncomingCallerDirectAction.__deallocating_deinit()
{
  IdentifyIncomingCallerDirectAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized IdentifyIncomingCallerDirectAction.__allocating_init(invocation:contactStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[3] = a4;
  v29[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = Parse.DirectInvocation.userData.getter();
  if (v10)
  {
    v11 = v10;
    if (one-time initialization token for announceTelephony != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.announceTelephony);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28[0] = v16;
      *v15 = 136315138;
      v17 = Dictionary.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v13, v14, "#IdentifyIncomingCallerDirectAction: Direct Invocation payload: %s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    outlined init with copy of SignalProviding(v29, v28);
    v20 = (*(a3 + 344))(v11, v28);
    v21 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v21 - 8) + 8))(a1, v21);
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

uint64_t specialized IdentifyIncomingCallerDirectAction.init(from:contactStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + 104) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 1;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v10, v11, a1, &v51);

  if (v52)
  {
    v12 = swift_dynamicCast();
    if (v12)
    {
      v13 = v49;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v50;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v51, &_sypSgMd, &_sypSgMR);
    v13 = 0;
    v14 = 0;
  }

  swift_beginAccess();
  *(a3 + 56) = v13;
  *(a3 + 64) = v14;

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v15, v16, a1, &v51);

  if (v52)
  {
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v47;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v48;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v51, &_sypSgMd, &_sypSgMR);
    v18 = 0;
    v19 = 0;
  }

  swift_beginAccess();
  *(a3 + 72) = v18;
  *(a3 + 80) = v19;

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v20, v21, a1, &v51);

  if (v52)
  {
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v45;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v46;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v51, &_sypSgMd, &_sypSgMR);
    v23 = 0;
    v24 = 0;
  }

  swift_beginAccess();
  *(a3 + 88) = v23;
  *(a3 + 96) = v24;

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v25, v26, a1, &v51);

  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v27 = v44;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v51, &_sypSgMd, &_sypSgMR);
    v27 = 0;
  }

  swift_beginAccess();
  *(a3 + 104) = v27;

  if (one-time initialization token for handleTypeKey != -1)
  {
    swift_once();
  }

  specialized Dictionary.subscript.getter(static IdentifyIncomingCallerDirectAction.handleTypeKey, *algn_553398, a1, &v51);
  if (v52)
  {
    if (swift_dynamicCast())
    {
      v28 = 0;
      v29 = v43;
      goto LABEL_37;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v51, &_sypSgMd, &_sypSgMR);
  }

  v29 = 0;
  v28 = 1;
LABEL_37:
  swift_beginAccess();
  *(a3 + 128) = v29;
  *(a3 + 136) = v28;
  if (one-time initialization token for handleValueKey != -1)
  {
    swift_once();
  }

  specialized Dictionary.subscript.getter(static IdentifyIncomingCallerDirectAction.handleValueKey, *algn_5533A8, a1, &v51);
  if (v52)
  {
    v30 = swift_dynamicCast();
    if (v30)
    {
      v31 = v41;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = v42;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v51, &_sypSgMd, &_sypSgMR);
    v31 = 0;
    v32 = 0;
  }

  swift_beginAccess();
  *(a3 + 112) = v31;
  *(a3 + 120) = v32;

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v33, v34, a1, &v51);

  if (v52)
  {
    if (swift_dynamicCast())
    {
      v35 = v40;
      goto LABEL_52;
    }
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v51, &_sypSgMd, &_sypSgMR);
  }

  v35 = 0;
LABEL_52:
  *(a3 + 137) = v35;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v36, v37, a1, &v51);

  if (!v52)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v51, &_sypSgMd, &_sypSgMR);
    goto LABEL_56;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    v38 = 0;
    goto LABEL_57;
  }

  v38 = v40;
LABEL_57:
  *(a3 + 138) = v38;
  outlined init with take of SPHConversation(&v53, a3 + 16);
  return a3;
}